; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $074", ROMX[$4000], BANK[$74]

	inc  sp                                          ; $4000: $33
	ld   [bc], a                                     ; $4001: $02
	add  [hl]                                        ; $4002: $86
	nop                                              ; $4003: $00
	ld   [$0a07], sp                                 ; $4004: $08 $07 $0a
	inc  b                                           ; $4007: $04
	rrca                                             ; $4008: $0f
	ld   [$0607], sp                                 ; $4009: $08 $07 $06
	add  hl, bc                                      ; $400c: $09
	ld   b, $85                                      ; $400d: $06 $85
	nop                                              ; $400f: $00
	nop                                              ; $4010: $00
	rst  $38                                         ; $4011: $ff
	add  b                                           ; $4012: $80
	xor  d                                           ; $4013: $aa
	dec  b                                           ; $4014: $05
	ld   d, l                                        ; $4015: $55
	push de                                          ; $4016: $d5
	xor  d                                           ; $4017: $aa
	ld   c, d                                        ; $4018: $4a
	db   $f4                                         ; $4019: $f4
	ld   l, e                                        ; $401a: $6b
	add  l                                           ; $401b: $85
	nop                                              ; $401c: $00
	nop                                              ; $401d: $00
	rst  $38                                         ; $401e: $ff
	add  b                                           ; $401f: $80
	xor  d                                           ; $4020: $aa
	add  b                                           ; $4021: $80
	ld   d, l                                        ; $4022: $55
	add  b                                           ; $4023: $80
	xor  d                                           ; $4024: $aa
	ld   bc, $ea15                                   ; $4025: $01 $15 $ea
	add  l                                           ; $4028: $85
	nop                                              ; $4029: $00
	ld   [$fc03], sp                                 ; $402a: $08 $03 $fc
	ld   a, $7e                                      ; $402d: $3e $7e
	ld   e, a                                        ; $402f: $5f
	cp   a                                           ; $4030: $bf
	xor  a                                           ; $4031: $af
	ld   e, a                                        ; $4032: $5f
	xor  a                                           ; $4033: $af
	add  [hl]                                        ; $4034: $86
	nop                                              ; $4035: $00
	inc  b                                           ; $4036: $04
	rst  $38                                         ; $4037: $ff
	jr   nz, @+$41                                   ; $4038: $20 $3f

	add  b                                           ; $403a: $80
	sbc  a                                           ; $403b: $9f
	add  b                                           ; $403c: $80
	ret  nz                                          ; $403d: $c0

	nop                                              ; $403e: $00
	rst  $38                                         ; $403f: $ff
	add  l                                           ; $4040: $85
	nop                                              ; $4041: $00
	dec  b                                           ; $4042: $05
	ld   bc, $03fe                                   ; $4043: $01 $fe $03
	rst  $38                                         ; $4046: $ff
	inc  bc                                          ; $4047: $03
	rst  $38                                         ; $4048: $ff
	add  b                                           ; $4049: $80
	nop                                              ; $404a: $00
	nop                                              ; $404b: $00
	rst  $38                                         ; $404c: $ff
	add  l                                           ; $404d: $85
	nop                                              ; $404e: $00
	ld   [$0083], sp                                 ; $404f: $08 $83 $00
	ld   b, d                                        ; $4052: $42
	nop                                              ; $4053: $00
	and  b                                           ; $4054: $a0
	add  b                                           ; $4055: $80
	ld   de, $f000                                   ; $4056: $11 $00 $f0
	add  l                                           ; $4059: $85
	nop                                              ; $405a: $00
	ld   [bc], a                                     ; $405b: $02
	daa                                              ; $405c: $27
	adc  c                                           ; $405d: $89
	cp   l                                           ; $405e: $bd
	add  c                                           ; $405f: $81
	and  l                                           ; $4060: $a5
	ld   [bc], a                                     ; $4061: $02
	ld   a, a                                        ; $4062: $7f
	inc  hl                                          ; $4063: $23
	ld   [$0085], a                                  ; $4064: $ea $85 $00
	add  b                                           ; $4067: $80
	call nc, $e880                                   ; $4068: $d4 $80 $e8
	add  b                                           ; $406b: $80
	ret  nc                                          ; $406c: $d0

	add  b                                           ; $406d: $80
	add  sp, -$7a                                    ; $406e: $e8 $86
	nop                                              ; $4070: $00
	nop                                              ; $4071: $00
	ld   b, b                                        ; $4072: $40

jr_074_4073:
	add  c                                           ; $4073: $81
	nop                                              ; $4074: $00
	inc  b                                           ; $4075: $04
	ld   [hl], c                                     ; $4076: $71
	nop                                              ; $4077: $00
	ld   c, $00                                      ; $4078: $0e $00
	ccf                                              ; $407a: $3f
	add  l                                           ; $407b: $85
	nop                                              ; $407c: $00
	nop                                              ; $407d: $00
	push af                                          ; $407e: $f5
	add  b                                           ; $407f: $80
	ld   a, e                                        ; $4080: $7b
	nop                                              ; $4081: $00
	dec  de                                          ; $4082: $1b
	add  c                                           ; $4083: $81
	ld   a, [bc]                                     ; $4084: $0a
	ld   bc, $4aae                                   ; $4085: $01 $ae $4a
	add  l                                           ; $4088: $85
	nop                                              ; $4089: $00
	nop                                              ; $408a: $00
	ldh  [$80], a                                    ; $408b: $e0 $80
	add  b                                           ; $408d: $80
	dec  b                                           ; $408e: $05
	nop                                              ; $408f: $00
	ld   de, $0e00                                   ; $4090: $11 $00 $0e
	and  b                                           ; $4093: $a0
	ld   e, a                                        ; $4094: $5f
	add  l                                           ; $4095: $85
	nop                                              ; $4096: $00
	inc  bc                                          ; $4097: $03
	jp   nz, Jump_074_4102                           ; $4098: $c2 $02 $41

	ld   bc, $0280                                   ; $409b: $01 $80 $02
	add  b                                           ; $409e: $80
	ld   bc, $8000                                   ; $409f: $01 $00 $80
	add  l                                           ; $40a2: $85
	nop                                              ; $40a3: $00
	ld   bc, $fcff                                   ; $40a4: $01 $ff $fc
	add  b                                           ; $40a7: $80
	ld   a, l                                        ; $40a8: $7d
	add  b                                           ; $40a9: $80
	db   $fd                                         ; $40aa: $fd
	ld   [bc], a                                     ; $40ab: $02
	ld   a, a                                        ; $40ac: $7f
	ld   a, [hl]                                     ; $40ad: $7e
	ld   [bc], a                                     ; $40ae: $02
	add  l                                           ; $40af: $85
	nop                                              ; $40b0: $00
	ld   [bc], a                                     ; $40b1: $02
	ld   h, $88                                      ; $40b2: $26 $88
	ld   [$2881], a                                  ; $40b4: $ea $81 $28
	ld   [bc], a                                     ; $40b7: $02
	db   $f4                                         ; $40b8: $f4
	jr   nz, jr_074_4073                             ; $40b9: $20 $b8

	add  l                                           ; $40bb: $85
	nop                                              ; $40bc: $00
	ld   [$030c], sp                                 ; $40bd: $08 $0c $03
	db   $10                                         ; $40c0: $10
	rlca                                             ; $40c1: $07
	jr   z, jr_074_40d3                              ; $40c2: $28 $0f

	ld   b, b                                        ; $40c4: $40
	nop                                              ; $40c5: $00
	ld   [hl], b                                     ; $40c6: $70
	add  b                                           ; $40c7: $80
	inc  b                                           ; $40c8: $04
	add  b                                           ; $40c9: $80
	ld   c, $89                                      ; $40ca: $0e $89
	rlca                                             ; $40cc: $07
	ld   b, $ef                                      ; $40cd: $06 $ef
	ld   a, b                                        ; $40cf: $78
	ld   h, [hl]                                     ; $40d0: $66
	sbc  [hl]                                        ; $40d1: $9e
	sbc  c                                           ; $40d2: $99

jr_074_40d3:
	ld   b, a                                        ; $40d3: $47
	ld   b, [hl]                                     ; $40d4: $46
	add  b                                           ; $40d5: $80
	jp   hl                                          ; $40d6: $e9


	add  b                                           ; $40d7: $80
	ldh  a, [c]                                      ; $40d8: $f2
	add  b                                           ; $40d9: $80
	ld   a, [$ff80]                                  ; $40da: $fa $80 $ff
	add  b                                           ; $40dd: $80
	rst  $30                                         ; $40de: $f7
	add  c                                           ; $40df: $81
	nop                                              ; $40e0: $00
	add  b                                           ; $40e1: $80
	add  b                                           ; $40e2: $80
	ld   c, $60                                      ; $40e3: $0e $60
	ldh  [$98], a                                    ; $40e5: $e0 $98
	ld   a, b                                        ; $40e7: $78
	ld   h, [hl]                                     ; $40e8: $66
	sbc  [hl]                                        ; $40e9: $9e
	sbc  c                                           ; $40ea: $99
	rst  ToBoot                                         ; $40eb: $c7
	add  $e9                                         ; $40ec: $c6 $e9
	ld   [$a9ab], a                                  ; $40ee: $ea $ab $a9
	ld   d, l                                        ; $40f1: $55
	ld   d, h                                        ; $40f2: $54
	add  b                                           ; $40f3: $80
	ld   a, [bc]                                     ; $40f4: $0a
	add  b                                           ; $40f5: $80
	dec  b                                           ; $40f6: $05
	add  b                                           ; $40f7: $80
	ld   [bc], a                                     ; $40f8: $02
	ld   b, $01                                      ; $40f9: $06 $01
	add  c                                           ; $40fb: $81
	add  b                                           ; $40fc: $80
	ld   h, b                                        ; $40fd: $60
	ldh  [$60], a                                    ; $40fe: $e0 $60
	db   $e3                                         ; $4100: $e3
	add  b                                           ; $4101: $80

Jump_074_4102:
	di                                               ; $4102: $f3
	inc  c                                           ; $4103: $0c
	ei                                               ; $4104: $fb
	ld   sp, hl                                      ; $4105: $f9
	inc  a                                           ; $4106: $3c
	ld   a, l                                        ; $4107: $7d
	ld   e, [hl]                                     ; $4108: $5e
	cp   [hl]                                        ; $4109: $be
	xor  a                                           ; $410a: $af
	ld   e, a                                        ; $410b: $5f
	ld   d, e                                        ; $410c: $53
	xor  a                                           ; $410d: $af
	xor  l                                           ; $410e: $ad
	ld   d, a                                        ; $410f: $57
	ld   d, [hl]                                     ; $4110: $56
	add  e                                           ; $4111: $83
	rst  $38                                         ; $4112: $ff
	ld   [bc], a                                     ; $4113: $02
	nop                                              ; $4114: $00
	rst  $38                                         ; $4115: $ff
	nop                                              ; $4116: $00
	add  b                                           ; $4117: $80
	rst  $38                                         ; $4118: $ff
	add  hl, de                                      ; $4119: $19
	ld   [hl], l                                     ; $411a: $75
	push af                                          ; $411b: $f5
	xor  d                                           ; $411c: $aa
	push de                                          ; $411d: $d5
	rst  $38                                         ; $411e: $ff
	daa                                              ; $411f: $27
	ret  z                                           ; $4120: $c8

	ret  c                                           ; $4121: $d8

	ret  nz                                          ; $4122: $c0

	call nz, $22c8                                   ; $4123: $c4 $c8 $22
	ret  nz                                          ; $4126: $c0

	ld   sp, $bcc4                                   ; $4127: $31 $c4 $bc
	inc  h                                           ; $412a: $24
	ld   d, h                                        ; $412b: $54
	ret  c                                           ; $412c: $d8

	ld   l, b                                        ; $412d: $68
	and  b                                           ; $412e: $a0
	adc  e                                           ; $412f: $8b
	jr   z, jr_074_4191                              ; $4130: $28 $5f

	ld   [$8129], sp                                 ; $4132: $08 $29 $81
	ld   [$140c], sp                                 ; $4135: $08 $0c $14
	nop                                              ; $4138: $00
	adc  c                                           ; $4139: $89
	nop                                              ; $413a: $00
	ld   b, a                                        ; $413b: $47
	nop                                              ; $413c: $00
	jr   nz, jr_074_413f                             ; $413d: $20 $00

jr_074_413f:
	db   $f4                                         ; $413f: $f4
	db   $10                                         ; $4140: $10
	rst  $20                                         ; $4141: $e7
	ld   h, b                                        ; $4142: $60
	inc  hl                                          ; $4143: $23
	add  c                                           ; $4144: $81
	and  b                                           ; $4145: $a0
	db   $10                                         ; $4146: $10
	or   b                                           ; $4147: $b0
	and  b                                           ; $4148: $a0
	rst  $28                                         ; $4149: $ef
	ld   [hl], b                                     ; $414a: $70
	adc  [hl]                                        ; $414b: $8e
	nop                                              ; $414c: $00

jr_074_414d:
	ld   bc, $7f00                                   ; $414d: $01 $00 $7f
	nop                                              ; $4150: $00
	add  b                                           ; $4151: $80
	ld   hl, $11a2                                   ; $4152: $21 $a2 $11
	inc  e                                           ; $4155: $1c
	ld   [bc], a                                     ; $4156: $02
	adc  h                                           ; $4157: $8c
	add  b                                           ; $4158: $80
	nop                                              ; $4159: $00
	inc  de                                          ; $415a: $13
	inc  b                                           ; $415b: $04
	call $b900                                       ; $415c: $cd $00 $b9
	ld   b, $4b                                      ; $415f: $06 $4b
	ld   d, e                                        ; $4161: $53
	rst  $30                                         ; $4162: $f7
	sbc  a                                           ; $4163: $9f
	dec  l                                           ; $4164: $2d
	ld   a, [hl]                                     ; $4165: $7e
	ld   l, d                                        ; $4166: $6a
	rlca                                             ; $4167: $07
	call c, $1af7                                    ; $4168: $dc $f7 $1a
	db   $e4                                         ; $416b: $e4
	db   $db                                         ; $416c: $db
	jr   z, jr_074_414d                              ; $416d: $28 $de

	add  b                                           ; $416f: $80
	dec  [hl]                                        ; $4170: $35
	dec  d                                           ; $4171: $15
	nop                                              ; $4172: $00
	ldh  [$30], a                                    ; $4173: $e0 $30
	ret                                              ; $4175: $c9


	db   $10                                         ; $4176: $10
	rst  ToBoot                                         ; $4177: $c7
	adc  b                                           ; $4178: $88
	add  [hl]                                        ; $4179: $86
	ldh  [$60], a                                    ; $417a: $e0 $60
	add  h                                           ; $417c: $84
	add  [hl]                                        ; $417d: $86
	sbc  b                                           ; $417e: $98
	ld   h, a                                        ; $417f: $67
	add  b                                           ; $4180: $80
	add  $00                                         ; $4181: $c6 $00
	ccf                                              ; $4183: $3f
	inc  bc                                          ; $4184: $03
	ld   a, [de]                                     ; $4185: $1a
	ld   [bc], a                                     ; $4186: $02
	ld   h, d                                        ; $4187: $62
	add  c                                           ; $4188: $81
	ld   [bc], a                                     ; $4189: $02
	ld   a, [bc]                                     ; $418a: $0a
	ld   b, a                                        ; $418b: $47
	inc  bc                                          ; $418c: $03
	db   $fc                                         ; $418d: $fc
	add  b                                           ; $418e: $80
	sbc  b                                           ; $418f: $98
	nop                                              ; $4190: $00

jr_074_4191:
	add  hl, hl                                      ; $4191: $29
	ld   [$c0ff], sp                                 ; $4192: $08 $ff $c0
	sub  h                                           ; $4195: $94
	add  c                                           ; $4196: $81
	add  b                                           ; $4197: $80
	inc  b                                           ; $4198: $04
	add  c                                           ; $4199: $81
	add  b                                           ; $419a: $80
	call nc, $3fc0                                   ; $419b: $d4 $c0 $3f
	add  c                                           ; $419e: $81
	nop                                              ; $419f: $00
	jr   nz, jr_074_41b2                             ; $41a0: $20 $10

	and  b                                           ; $41a2: $a0
	ret  nc                                          ; $41a3: $d0

	add  b                                           ; $41a4: $80
	add  c                                           ; $41a5: $81
	add  b                                           ; $41a6: $80
	and  e                                           ; $41a7: $a3
	add  b                                           ; $41a8: $80
	ld   b, [hl]                                     ; $41a9: $46
	nop                                              ; $41aa: $00
	adc  d                                           ; $41ab: $8a
	ld   [bc], a                                     ; $41ac: $02
	inc  de                                          ; $41ad: $13
	nop                                              ; $41ae: $00
	cpl                                              ; $41af: $2f
	rrca                                             ; $41b0: $0f
	ld   h, b                                        ; $41b1: $60

jr_074_41b2:
	rra                                              ; $41b2: $1f
	rst  JumpTable                                         ; $41b3: $df
	rra                                              ; $41b4: $1f
	sbc  a                                           ; $41b5: $9f
	rra                                              ; $41b6: $1f
	nop                                              ; $41b7: $00
	rra                                              ; $41b8: $1f
	ld   b, b                                        ; $41b9: $40
	rra                                              ; $41ba: $1f
	rst  $28                                         ; $41bb: $ef
	dec  h                                           ; $41bc: $25
	push de                                          ; $41bd: $d5
	ld   e, d                                        ; $41be: $5a
	dec  h                                           ; $41bf: $25
	cp   a                                           ; $41c0: $bf
	sub  b                                           ; $41c1: $90
	add  b                                           ; $41c2: $80
	ld   [$0f89], sp                                 ; $41c3: $08 $89 $0f
	add  b                                           ; $41c6: $80
	dec  c                                           ; $41c7: $0d
	nop                                              ; $41c8: $00
	rst  $38                                         ; $41c9: $ff
	add  b                                           ; $41ca: $80
	rst  $30                                         ; $41cb: $f7
	add  b                                           ; $41cc: $80
	rla                                              ; $41cd: $17
	add  b                                           ; $41ce: $80
	rst  ToBoot                                         ; $41cf: $c7
	add  b                                           ; $41d0: $80
	ret  c                                           ; $41d1: $d8

	add  c                                           ; $41d2: $81
	rst  JumpTable                                         ; $41d3: $df
	add  b                                           ; $41d4: $80
	adc  e                                           ; $41d5: $8b
	ld   [bc], a                                     ; $41d6: $02
	ld   d, l                                        ; $41d7: $55
	ld   [hl], l                                     ; $41d8: $75
	rst  $38                                         ; $41d9: $ff
	add  b                                           ; $41da: $80
	db   $fc                                         ; $41db: $fc
	add  b                                           ; $41dc: $80
	cp   $80                                         ; $41dd: $fe $80
	rst  $38                                         ; $41df: $ff
	add  b                                           ; $41e0: $80
	rst  JumpTable                                         ; $41e1: $df
	add  b                                           ; $41e2: $80
	rra                                              ; $41e3: $1f
	dec  bc                                          ; $41e4: $0b
	rst  $28                                         ; $41e5: $ef
	add  sp, -$01                                    ; $41e6: $e8 $ff
	ld   a, c                                        ; $41e8: $79
	ld   a, l                                        ; $41e9: $7d
	db   $e4                                         ; $41ea: $e4
	ld   a, b                                        ; $41eb: $78
	ld   h, [hl]                                     ; $41ec: $66
	sbc  a                                           ; $41ed: $9f
	sbc  b                                           ; $41ee: $98
	ld   b, a                                        ; $41ef: $47
	ld   b, [hl]                                     ; $41f0: $46
	add  b                                           ; $41f1: $80
	jp   hl                                          ; $41f2: $e9


	rlca                                             ; $41f3: $07
	or   $76                                         ; $41f4: $f6 $76
	cp   $3e                                         ; $41f6: $fe $3e
	rst  JumpTable                                         ; $41f8: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41f9: $cf
	rst  JumpTable                                         ; $41fa: $df
	adc  a                                           ; $41fb: $8f
	add  b                                           ; $41fc: $80
	xor  e                                           ; $41fd: $ab
	add  hl, de                                      ; $41fe: $19
	ld   d, a                                        ; $41ff: $57
	rst  $10                                         ; $4200: $d7
	xor  e                                           ; $4201: $ab
	ld   c, e                                        ; $4202: $4b
	push af                                          ; $4203: $f5
	adc  d                                           ; $4204: $8a
	ld   a, a                                        ; $4205: $7f
	ld   [hl], b                                     ; $4206: $70
	sbc  a                                           ; $4207: $9f
	add  a                                           ; $4208: $87
	ld   l, a                                        ; $4209: $6f
	ld   l, [hl]                                     ; $420a: $6e
	rst  $28                                         ; $420b: $ef
	ld   d, $f7                                      ; $420c: $16 $f7
	scf                                              ; $420e: $37
	rst  $30                                         ; $420f: $f7
	rst  $10                                         ; $4210: $d7
	rst  $30                                         ; $4211: $f7
	rst  $38                                         ; $4212: $ff
	ld   hl, sp+$70                                  ; $4213: $f8 $70
	rst  $30                                         ; $4215: $f7
	ccf                                              ; $4216: $3f
	ret  c                                           ; $4217: $d8

	ld   [hl], b                                     ; $4218: $70
	add  b                                           ; $4219: $80
	ldh  a, [rSC]                                    ; $421a: $f0 $02
	rst  $30                                         ; $421c: $f7
	ld   h, a                                        ; $421d: $67
	ld   h, b                                        ; $421e: $60
	add  b                                           ; $421f: $80
	ld   a, a                                        ; $4220: $7f
	add  b                                           ; $4221: $80
	halt                                             ; $4222: $76
	add  b                                           ; $4223: $80
	rst  $38                                         ; $4224: $ff
	rlca                                             ; $4225: $07
	ld   b, b                                        ; $4226: $40
	ld   b, a                                        ; $4227: $47
	ld   hl, sp-$01                                  ; $4228: $f8 $ff
	ld   b, b                                        ; $422a: $40
	ld   b, a                                        ; $422b: $47
	ld   a, a                                        ; $422c: $7f
	ld   a, b                                        ; $422d: $78
	add  b                                           ; $422e: $80
	nop                                              ; $422f: $00
	add  b                                           ; $4230: $80
	rst  $38                                         ; $4231: $ff
	add  b                                           ; $4232: $80
	push de                                          ; $4233: $d5
	add  b                                           ; $4234: $80
	rst  $38                                         ; $4235: $ff
	inc  b                                           ; $4236: $04
	nop                                              ; $4237: $00
	rst  $38                                         ; $4238: $ff
	nop                                              ; $4239: $00
	rst  $38                                         ; $423a: $ff
	nop                                              ; $423b: $00
	add  b                                           ; $423c: $80
	rst  $38                                         ; $423d: $ff
	add  b                                           ; $423e: $80
	nop                                              ; $423f: $00
	ld   [bc], a                                     ; $4240: $02
	xor  a                                           ; $4241: $af
	ld   d, b                                        ; $4242: $50
	rst  $38                                         ; $4243: $ff
	add  b                                           ; $4244: $80
	ld   d, l                                        ; $4245: $55
	add  b                                           ; $4246: $80
	rst  $38                                         ; $4247: $ff
	ld   b, $00                                      ; $4248: $06 $00
	rst  $38                                         ; $424a: $ff
	nop                                              ; $424b: $00
	rst  $38                                         ; $424c: $ff
	ld   bc, $fffe                                   ; $424d: $01 $fe $ff
	add  b                                           ; $4250: $80
	nop                                              ; $4251: $00
	ld   [bc], a                                     ; $4252: $02
	rst  $38                                         ; $4253: $ff
	nop                                              ; $4254: $00
	rst  $38                                         ; $4255: $ff
	add  b                                           ; $4256: $80
	ld   d, l                                        ; $4257: $55
	add  b                                           ; $4258: $80
	rst  $38                                         ; $4259: $ff
	ld   [bc], a                                     ; $425a: $02
	nop                                              ; $425b: $00
	rst  $38                                         ; $425c: $ff
	nop                                              ; $425d: $00
	add  b                                           ; $425e: $80
	rst  $38                                         ; $425f: $ff
	dec  c                                           ; $4260: $0d
	nop                                              ; $4261: $00
	rst  $38                                         ; $4262: $ff
	nop                                              ; $4263: $00
	inc  d                                           ; $4264: $14
	jp   hl                                          ; $4265: $e9


	ld   e, $f4                                      ; $4266: $1e $f4
	ld   h, d                                        ; $4268: $62
	ld   l, b                                        ; $4269: $68
	db   $ed                                         ; $426a: $ed
	push hl                                          ; $426b: $e5
	rra                                              ; $426c: $1f
	pop  af                                          ; $426d: $f1
	inc  b                                           ; $426e: $04
	add  b                                           ; $426f: $80
	rst  $38                                         ; $4270: $ff
	ld   bc, $ff00                                   ; $4271: $01 $00 $ff
	add  b                                           ; $4274: $80
	nop                                              ; $4275: $00
	ld   [bc], a                                     ; $4276: $02
	rst  $38                                         ; $4277: $ff
	nop                                              ; $4278: $00
	rst  $38                                         ; $4279: $ff
	add  b                                           ; $427a: $80
	xor  d                                           ; $427b: $aa
	add  b                                           ; $427c: $80
	rst  $38                                         ; $427d: $ff
	ld   [bc], a                                     ; $427e: $02
	nop                                              ; $427f: $00
	ld   a, a                                        ; $4280: $7f
	add  b                                           ; $4281: $80

Jump_074_4282:
	add  b                                           ; $4282: $80
	rst  $38                                         ; $4283: $ff
	ld   bc, $ff00                                   ; $4284: $01 $00 $ff
	add  b                                           ; $4287: $80
	nop                                              ; $4288: $00
	ld   [bc], a                                     ; $4289: $02
	ld   a, [$ff05]                                  ; $428a: $fa $05 $ff
	add  b                                           ; $428d: $80
	xor  d                                           ; $428e: $aa
	add  b                                           ; $428f: $80
	rst  $38                                         ; $4290: $ff
	ld   b, $00                                      ; $4291: $06 $00
	rst  $38                                         ; $4293: $ff
	nop                                              ; $4294: $00
	rst  $38                                         ; $4295: $ff
	ret  nz                                          ; $4296: $c0

	ccf                                              ; $4297: $3f
	rst  $38                                         ; $4298: $ff
	add  b                                           ; $4299: $80
	nop                                              ; $429a: $00
	ld   [bc], a                                     ; $429b: $02
	add  b                                           ; $429c: $80
	ld   a, a                                        ; $429d: $7f
	rst  $38                                         ; $429e: $ff
	add  b                                           ; $429f: $80
	xor  d                                           ; $42a0: $aa
	add  b                                           ; $42a1: $80
	rst  $38                                         ; $42a2: $ff
	inc  b                                           ; $42a3: $04
	nop                                              ; $42a4: $00
	rst  $38                                         ; $42a5: $ff
	nop                                              ; $42a6: $00
	rst  $38                                         ; $42a7: $ff
	nop                                              ; $42a8: $00
	add  b                                           ; $42a9: $80
	rst  $38                                         ; $42aa: $ff
	nop                                              ; $42ab: $00
	nop                                              ; $42ac: $00
	add  b                                           ; $42ad: $80
	rra                                              ; $42ae: $1f
	add  b                                           ; $42af: $80
	rst  $38                                         ; $42b0: $ff
	add  b                                           ; $42b1: $80
	xor  d                                           ; $42b2: $aa
	add  b                                           ; $42b3: $80
	rst  $38                                         ; $42b4: $ff
	inc  b                                           ; $42b5: $04
	nop                                              ; $42b6: $00
	cp   $01                                         ; $42b7: $fe $01
	rst  $38                                         ; $42b9: $ff
	nop                                              ; $42ba: $00
	add  b                                           ; $42bb: $80
	rst  $38                                         ; $42bc: $ff
	ld   bc, $f000                                   ; $42bd: $01 $00 $f0
	add  c                                           ; $42c0: $81
	rst  $30                                         ; $42c1: $f7
	add  b                                           ; $42c2: $80
	or   a                                           ; $42c3: $b7
	ld   b, $ff                                      ; $42c4: $06 $ff
	ld   hl, sp+$10                                  ; $42c6: $f8 $10
	rla                                              ; $42c8: $17
	rst  $38                                         ; $42c9: $ff
	ld   hl, sp+$10                                  ; $42ca: $f8 $10
	add  b                                           ; $42cc: $80
	rst  $30                                         ; $42cd: $f7
	ld   b, $1f                                      ; $42ce: $06 $1f
	ld   a, [$0f0a]                                  ; $42d0: $fa $0a $0f
	nop                                              ; $42d3: $00
	rlca                                             ; $42d4: $07
	ld   a, [bc]                                     ; $42d5: $0a
	add  b                                           ; $42d6: $80
	ld   b, $02                                      ; $42d7: $06 $02
	ld   a, [bc]                                     ; $42d9: $0a

jr_074_42da:
	rrca                                             ; $42da: $0f
	rlca                                             ; $42db: $07
	add  c                                           ; $42dc: $81
	rrca                                             ; $42dd: $0f
	dec  b                                           ; $42de: $05
	rlca                                             ; $42df: $07
	nop                                              ; $42e0: $00
	and  d                                           ; $42e1: $a2
	adc  d                                           ; $42e2: $8a
	ld   [hl], l                                     ; $42e3: $75
	ld   d, l                                        ; $42e4: $55
	add  b                                           ; $42e5: $80
	ld   a, [$d780]                                  ; $42e6: $fa $80 $d7
	add  b                                           ; $42e9: $80
	add  h                                           ; $42ea: $84
	nop                                              ; $42eb: $00
	inc  b                                           ; $42ec: $04
	add  b                                           ; $42ed: $80
	add  h                                           ; $42ee: $84
	daa                                              ; $42ef: $27
	call nz, $8444                                   ; $42f0: $c4 $44 $84
	cp   c                                           ; $42f3: $b9
	cp   h                                           ; $42f4: $bc
	ld   d, [hl]                                     ; $42f5: $56
	ld   d, b                                        ; $42f6: $50
	and  h                                           ; $42f7: $a4
	and  l                                           ; $42f8: $a5
	db   $ed                                         ; $42f9: $ed
	ld   [$2968], a                                  ; $42fa: $ea $68 $29
	cp   e                                           ; $42fd: $bb
	sbc  [hl]                                        ; $42fe: $9e
	and  h                                           ; $42ff: $a4
	ld   b, l                                        ; $4300: $45
	ld   [hl], b                                     ; $4301: $70
	ld   [hl], a                                     ; $4302: $77
	ret  z                                           ; $4303: $c8

	rra                                              ; $4304: $1f
	rst  $30                                         ; $4305: $f7
	ld   b, a                                        ; $4306: $47
	or   a                                           ; $4307: $b7
	ld   [hl], a                                     ; $4308: $77
	jp   $0bb3                                       ; $4309: $c3 $b3 $0b


	ld   c, e                                        ; $430c: $4b
	db   $eb                                         ; $430d: $eb
	xor  e                                           ; $430e: $ab
	dec  bc                                          ; $430f: $0b
	ld   c, e                                        ; $4310: $4b
	inc  de                                          ; $4311: $13
	rst  $38                                         ; $4312: $ff
	ld   a, [bc]                                     ; $4313: $0a
	rst  $38                                         ; $4314: $ff
	ld   sp, hl                                      ; $4315: $f9
	rst  $38                                         ; $4316: $ff
	ld   hl, sp-$77                                  ; $4317: $f8 $89
	rst  $38                                         ; $4319: $ff
	ld   bc, $ff07                                   ; $431a: $01 $07 $ff
	add  b                                           ; $431d: $80
	sbc  $80                                         ; $431e: $de $80
	call c, Call_074_5801                            ; $4320: $dc $01 $58
	ret  c                                           ; $4323: $d8

	add  b                                           ; $4324: $80
	call c, $d880                                    ; $4325: $dc $80 $d8
	add  b                                           ; $4328: $80
	call c, $d880                                    ; $4329: $dc $80 $d8
	nop                                              ; $432c: $00
	ld   c, a                                        ; $432d: $4f
	add  [hl]                                        ; $432e: $86
	ld   a, a                                        ; $432f: $7f

jr_074_4330:
	ld   bc, $0040                                   ; $4330: $01 $40 $00
	add  b                                           ; $4333: $80
	ld   a, $81                                      ; $4334: $3e $81
	ccf                                              ; $4336: $3f
	dec  c                                           ; $4337: $0d
	cp   [hl]                                        ; $4338: $be
	sbc  $dd                                         ; $4339: $de $dd
	db   $fd                                         ; $433b: $fd
	ld   a, [$d4da]                                  ; $433c: $fa $da $d4
	db   $f4                                         ; $433f: $f4
	rst  $38                                         ; $4340: $ff
	ld   b, a                                        ; $4341: $47
	ld   l, b                                        ; $4342: $68
	ret  nc                                          ; $4343: $d0

	add  b                                           ; $4344: $80
	and  b                                           ; $4345: $a0
	add  b                                           ; $4346: $80
	ld   h, b                                        ; $4347: $60
	ld   bc, sGlobalFlags1                                   ; $4348: $01 $80 $a0
	add  b                                           ; $434b: $80
	ld   b, b                                        ; $434c: $40
	adc  b                                           ; $434d: $88
	nop                                              ; $434e: $00
	add  b                                           ; $434f: $80
	ld   bc, $0080                                   ; $4350: $01 $80 $00
	add  b                                           ; $4353: $80
	ld   bc, $0780                                   ; $4354: $01 $80 $07
	add  b                                           ; $4357: $80
	jr   jr_074_42da                                 ; $4358: $18 $80

	jr   nz, @+$09                                   ; $435a: $20 $07

	ld   b, a                                        ; $435c: $47
	ld   b, b                                        ; $435d: $40
	adc  e                                           ; $435e: $8b
	add  h                                           ; $435f: $84
	rlca                                             ; $4360: $07
	rra                                              ; $4361: $1f
	call $82dd                                       ; $4362: $cd $dd $82
	ld   [hl+], a                                    ; $4365: $22
	ld   [bc], a                                     ; $4366: $02
	and  d                                           ; $4367: $a2
	nop                                              ; $4368: $00
	ld   e, l                                        ; $4369: $5d
	add  b                                           ; $436a: $80
	nop                                              ; $436b: $00
	ld   b, $b6                                      ; $436c: $06 $b6
	sbc  h                                           ; $436e: $9c
	pop  bc                                          ; $436f: $c1
	cp   [hl]                                        ; $4370: $be
	ld   [hl+], a                                    ; $4371: $22
	ld   [$8080], sp                                 ; $4372: $08 $80 $80
	ld   b, b                                        ; $4375: $40
	add  b                                           ; $4376: $80
	ld   [hl], b                                     ; $4377: $70
	ld   bc, $0c8c                                   ; $4378: $01 $8c $0c
	add  b                                           ; $437b: $80
	ld   [bc], a                                     ; $437c: $02
	ld   b, $71                                      ; $437d: $06 $71
	add  b                                           ; $437f: $80
	jp   hl                                          ; $4380: $e9


	sub  b                                           ; $4381: $90
	ldh  a, [$ec]                                    ; $4382: $f0 $ec
	inc  b                                           ; $4384: $04
	add  l                                           ; $4385: $85
	db   $10                                         ; $4386: $10
	add  d                                           ; $4387: $82
	nop                                              ; $4388: $00
	inc  b                                           ; $4389: $04
	add  b                                           ; $438a: $80
	nop                                              ; $438b: $00
	ret  nz                                          ; $438c: $c0

	nop                                              ; $438d: $00
	ld   b, h                                        ; $438e: $44
	add  l                                           ; $438f: $85
	inc  b                                           ; $4390: $04
	add  b                                           ; $4391: $80
	ld   a, a                                        ; $4392: $7f
	add  b                                           ; $4393: $80
	ld   b, b                                        ; $4394: $40
	nop                                              ; $4395: $00
	ld   [$0081], sp                                 ; $4396: $08 $81 $00
	nop                                              ; $4399: $00
	add  hl, bc                                      ; $439a: $09
	add  e                                           ; $439b: $83
	ld   bc, $0080                                   ; $439c: $01 $80 $00
	add  b                                           ; $439f: $80
	rst  $38                                         ; $43a0: $ff
	add  b                                           ; $43a1: $80
	ld   b, b                                        ; $43a2: $40
	add  b                                           ; $43a3: $80
	ld   bc, $4280                                   ; $43a4: $01 $80 $42
	add  b                                           ; $43a7: $80
	inc  de                                          ; $43a8: $13
	add  b                                           ; $43a9: $80
	ld   bc, $1080                                   ; $43aa: $01 $80 $10
	add  b                                           ; $43ad: $80
	jr   nc, jr_074_4330                             ; $43ae: $30 $80

	ret  nz                                          ; $43b0: $c0

	add  b                                           ; $43b1: $80
	add  b                                           ; $43b2: $80
	nop                                              ; $43b3: $00
	db   $10                                         ; $43b4: $10
	add  b                                           ; $43b5: $80
	nop                                              ; $43b6: $00
	ld   bc, $2830                                   ; $43b7: $01 $30 $28
	add  e                                           ; $43ba: $83
	nop                                              ; $43bb: $00
	ld   a, [bc]                                     ; $43bc: $0a
	inc  c                                           ; $43bd: $0c
	inc  bc                                          ; $43be: $03
	nop                                              ; $43bf: $00
	add  hl, bc                                      ; $43c0: $09
	inc  c                                           ; $43c1: $0c
	dec  c                                           ; $43c2: $0d
	inc  bc                                          ; $43c3: $03
	ld   a, [bc]                                     ; $43c4: $0a
	ld   b, $04                                      ; $43c5: $06 $04
	add  b                                           ; $43c7: $80
	add  c                                           ; $43c8: $81
	add  h                                           ; $43c9: $84
	add  b                                           ; $43ca: $80
	db   $f4                                         ; $43cb: $f4
	add  b                                           ; $43cc: $80
	ld   c, a                                        ; $43cd: $4f
	nop                                              ; $43ce: $00
	ld   b, b                                        ; $43cf: $40
	add  b                                           ; $43d0: $80
	ret  nz                                          ; $43d1: $c0

	add  e                                           ; $43d2: $83
	ld   b, b                                        ; $43d3: $40
	ld   a, [bc]                                     ; $43d4: $0a
	daa                                              ; $43d5: $27
	add  sp, -$78                                    ; $43d6: $e8 $88
	ld   c, b                                        ; $43d8: $48
	jr   c, jr_074_4453                              ; $43d9: $38 $78

	ld   [$3848], sp                                 ; $43db: $08 $48 $38
	ld   a, b                                        ; $43de: $78
	ld   [$4883], sp                                 ; $43df: $08 $83 $48
	nop                                              ; $43e2: $00
	ldh  a, [$80]                                    ; $43e3: $f0 $80
	inc  bc                                          ; $43e5: $03
	add  d                                           ; $43e6: $82
	ld   [bc], a                                     ; $43e7: $02
	add  b                                           ; $43e8: $80
	ld   [hl+], a                                    ; $43e9: $22
	add  l                                           ; $43ea: $85
	ld   h, d                                        ; $43eb: $62
	ld   [bc], a                                     ; $43ec: $02
	ld   l, d                                        ; $43ed: $6a
	rst  $38                                         ; $43ee: $ff
	rst  $30                                         ; $43ef: $f7
	add  c                                           ; $43f0: $81
	rlca                                             ; $43f1: $07
	add  c                                           ; $43f2: $81
	inc  bc                                          ; $43f3: $03
	add  l                                           ; $43f4: $85
	inc  hl                                          ; $43f5: $23
	ld   bc, $dc74                                   ; $43f6: $01 $74 $dc
	add  b                                           ; $43f9: $80
	ret  c                                           ; $43fa: $d8

	add  b                                           ; $43fb: $80
	call c, $d880                                    ; $43fc: $dc $80 $d8
	add  b                                           ; $43ff: $80
	call c, $d880                                    ; $4400: $dc $80 $d8
	add  b                                           ; $4403: $80
	call c, $d880                                    ; $4404: $dc $80 $d8
	ld   bc, $3e0e                                   ; $4407: $01 $0e $3e
	add  b                                           ; $440a: $80
	dec  a                                           ; $440b: $3d
	inc  bc                                          ; $440c: $03
	ccf                                              ; $440d: $3f
	rlca                                             ; $440e: $07
	dec  b                                           ; $440f: $05
	dec  a                                           ; $4410: $3d
	add  b                                           ; $4411: $80
	ld   a, [hl-]                                    ; $4412: $3a
	add  b                                           ; $4413: $80
	inc  [hl]                                        ; $4414: $34

jr_074_4415:
	add  b                                           ; $4415: $80
	jr   c, @+$0a                                    ; $4416: $38 $08

	inc  [hl]                                        ; $4418: $34
	ld   [hl], h                                     ; $4419: $74
	sub  b                                           ; $441a: $90
	ldh  [rBCPS], a                                  ; $441b: $e0 $68
	ld   h, b                                        ; $441d: $60
	ld   b, a                                        ; $441e: $47
	jp   $83f4                                       ; $441f: $c3 $f4 $83


	nop                                              ; $4422: $00
	nop                                              ; $4423: $00
	ld   [$7080], sp                                 ; $4424: $08 $80 $70
	rlca                                             ; $4427: $07
	jr   nz, jr_074_444c                             ; $4428: $20 $22

	nop                                              ; $442a: $00
	dec  h                                           ; $442b: $25
	daa                                              ; $442c: $27
	ld   hl, sp-$10                                  ; $442d: $f8 $f0
	inc  b                                           ; $442f: $04
	add  b                                           ; $4430: $80
	ld   [$0c80], sp                                 ; $4431: $08 $80 $0c
	add  d                                           ; $4434: $82
	rrca                                             ; $4435: $0f
	dec  b                                           ; $4436: $05
	inc  c                                           ; $4437: $0c
	ld   d, $32                                      ; $4438: $16 $32
	sbc  e                                           ; $443a: $9b
	ret  nz                                          ; $443b: $c0

	ld   b, b                                        ; $443c: $40
	add  c                                           ; $443d: $81
	ld   a, a                                        ; $443e: $7f
	add  b                                           ; $443f: $80
	ld   b, b                                        ; $4440: $40
	ld   [bc], a                                     ; $4441: $02
	ld   a, a                                        ; $4442: $7f
	rst  $38                                         ; $4443: $ff
	ret  nz                                          ; $4444: $c0

	add  b                                           ; $4445: $80
	rst  $38                                         ; $4446: $ff
	inc  bc                                          ; $4447: $03
	ld   a, a                                        ; $4448: $7f
	adc  b                                           ; $4449: $88
	push de                                          ; $444a: $d5
	db   $dd                                         ; $444b: $dd

jr_074_444c:
	add  b                                           ; $444c: $80
	nop                                              ; $444d: $00
	add  c                                           ; $444e: $81
	rst  $38                                         ; $444f: $ff
	add  b                                           ; $4450: $80
	nop                                              ; $4451: $00
	add  b                                           ; $4452: $80

jr_074_4453:
	rst  $38                                         ; $4453: $ff
	nop                                              ; $4454: $00
	nop                                              ; $4455: $00
	add  c                                           ; $4456: $81
	rst  $38                                         ; $4457: $ff
	ld   [bc], a                                     ; $4458: $02
	ld   c, e                                        ; $4459: $4b
	or   [hl]                                        ; $445a: $b6
	db   $fc                                         ; $445b: $fc
	add  b                                           ; $445c: $80
	ld   bc, $ff81                                   ; $445d: $01 $81 $ff
	add  b                                           ; $4460: $80
	ld   bc, $ff80                                   ; $4461: $01 $80 $ff
	nop                                              ; $4464: $00
	ld   bc, $ff81                                   ; $4465: $01 $81 $ff
	ld   b, $df                                      ; $4468: $06 $df
	nop                                              ; $446a: $00
	ret  nc                                          ; $446b: $d0

	ldh  a, [$03]                                    ; $446c: $f0 $03
	dec  bc                                          ; $446e: $0b
	db   $10                                         ; $446f: $10
	add  d                                           ; $4470: $82
	ld   [$e882], sp                                 ; $4471: $08 $82 $e8
	rlca                                             ; $4474: $07
	ld   [$0418], sp                                 ; $4475: $08 $18 $04
	ld   d, h                                        ; $4478: $54
	ld   b, [hl]                                     ; $4479: $46
	xor  $cf                                         ; $447a: $ee $cf
	dec  a                                           ; $447c: $3d
	add  e                                           ; $447d: $83
	nop                                              ; $447e: $00
	nop                                              ; $447f: $00

Call_074_4480:
	ld   [bc], a                                     ; $4480: $02
	add  b                                           ; $4481: $80

Call_074_4482:
	inc  e                                           ; $4482: $1c
	ld   [bc], a                                     ; $4483: $02
	ld   [$424a], sp                                 ; $4484: $08 $4a $42
	add  b                                           ; $4487: $80
	ld   c, a                                        ; $4488: $4f
	add  b                                           ; $4489: $80
	ld   hl, sp-$7d                                  ; $448a: $f8 $83
	inc  b                                           ; $448c: $04
	add  d                                           ; $448d: $82
	rlca                                             ; $448e: $07
	inc  bc                                          ; $448f: $03
	inc  b                                           ; $4490: $04
	jr   nc, jr_074_4503                             ; $4491: $30 $70

	jr   nc, jr_074_4415                             ; $4493: $30 $80

	add  b                                           ; $4495: $80
	add  c                                           ; $4496: $81
	ldh  a, [$80]                                    ; $4497: $f0 $80
	sub  b                                           ; $4499: $90
	add  b                                           ; $449a: $80
	ldh  a, [rP1]                                    ; $449b: $f0 $00
	add  b                                           ; $449d: $80
	add  d                                           ; $449e: $82
	ldh  a, [$81]                                    ; $449f: $f0 $81
	nop                                              ; $44a1: $00
	add  b                                           ; $44a2: $80
	ld   [$0780], sp                                 ; $44a3: $08 $80 $07
	add  [hl]                                        ; $44a6: $86
	inc  b                                           ; $44a7: $04
	add  h                                           ; $44a8: $84
	ld   b, b                                        ; $44a9: $40
	add  b                                           ; $44aa: $80
	rst  $38                                         ; $44ab: $ff
	add  [hl]                                        ; $44ac: $86
	inc  b                                           ; $44ad: $04
	nop                                              ; $44ae: $00
	ld   b, a                                        ; $44af: $47
	add  d                                           ; $44b0: $82
	ld   c, b                                        ; $44b1: $48
	nop                                              ; $44b2: $00
	ld   c, a                                        ; $44b3: $4f
	add  b                                           ; $44b4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44b5: $cf
	nop                                              ; $44b6: $00
	ld   c, a                                        ; $44b7: $4f
	add  b                                           ; $44b8: $80
	ld   c, h                                        ; $44b9: $4c
	add  e                                           ; $44ba: $83
	ld   c, b                                        ; $44bb: $48
	nop                                              ; $44bc: $00
	ldh  a, [$82]                                    ; $44bd: $f0 $82
	ld   h, d                                        ; $44bf: $62
	add  d                                           ; $44c0: $82
	ldh  [c], a                                      ; $44c1: $e2
	add  d                                           ; $44c2: $82
	ld   [bc], a                                     ; $44c3: $02
	add  b                                           ; $44c4: $80
	ld   [hl+], a                                    ; $44c5: $22
	ld   bc, $6662                                   ; $44c6: $01 $62 $66
	add  b                                           ; $44c9: $80
	inc  hl                                          ; $44ca: $23
	add  d                                           ; $44cb: $82
	ld   h, e                                        ; $44cc: $63
	add  d                                           ; $44cd: $82
	inc  bc                                          ; $44ce: $03
	add  e                                           ; $44cf: $83
	inc  hl                                          ; $44d0: $23
	nop                                              ; $44d1: $00
	daa                                              ; $44d2: $27

jr_074_44d3:
	add  b                                           ; $44d3: $80
	ld   a, [de]                                     ; $44d4: $1a
	add  b                                           ; $44d5: $80
	cp   d                                           ; $44d6: $ba
	add  b                                           ; $44d7: $80
	di                                               ; $44d8: $f3
	add  b                                           ; $44d9: $80
	ld   [hl], e                                     ; $44da: $73
	add  b                                           ; $44db: $80
	daa                                              ; $44dc: $27
	add  d                                           ; $44dd: $82
	rlca                                             ; $44de: $07
	ld   [bc], a                                     ; $44df: $02
	rrca                                             ; $44e0: $0f
	adc  a                                           ; $44e1: $8f
	ld   a, a                                        ; $44e2: $7f
	add  b                                           ; $44e3: $80
	ld   [hl], h                                     ; $44e4: $74
	add  b                                           ; $44e5: $80
	ld   l, b                                        ; $44e6: $68
	inc  bc                                          ; $44e7: $03
	ld   [hl], b                                     ; $44e8: $70
	ld   [hl], c                                     ; $44e9: $71
	ld   l, c                                        ; $44ea: $69
	ld   l, b                                        ; $44eb: $68
	add  b                                           ; $44ec: $80
	ld   [hl], b                                     ; $44ed: $70
	add  b                                           ; $44ee: $80
	ld   a, a                                        ; $44ef: $7f
	add  b                                           ; $44f0: $80
	ld   d, c                                        ; $44f1: $51
	add  d                                           ; $44f2: $82
	nop                                              ; $44f3: $00
	ld   [$00e0], sp                                 ; $44f4: $08 $e0 $00
	stop                                             ; $44f7: $10 $00
	add  a                                           ; $44f9: $87
	ld   b, b                                        ; $44fa: $40
	ld   c, b                                        ; $44fb: $48
	ld   [hl], e                                     ; $44fc: $73
	di                                               ; $44fd: $f3
	add  b                                           ; $44fe: $80
	rla                                              ; $44ff: $17
	ld   [bc], a                                     ; $4500: $02
	ld   a, $3d                                      ; $4501: $3e $3d

jr_074_4503:
	db   $fc                                         ; $4503: $fc
	add  d                                           ; $4504: $82
	ld   c, h                                        ; $4505: $4c
	add  d                                           ; $4506: $82
	inc  c                                           ; $4507: $0c
	ld   bc, $cc4c                                   ; $4508: $01 $4c $cc
	add  b                                           ; $450b: $80
	ld   c, h                                        ; $450c: $4c
	ld   [bc], a                                     ; $450d: $02

jr_074_450e:
	ld   e, h                                        ; $450e: $5c
	call c, $803f                                    ; $450f: $dc $3f $80
	ld   b, b                                        ; $4512: $40
	adc  d                                           ; $4513: $8a
	ld   b, h                                        ; $4514: $44
	ld   bc, $9c5c                                   ; $4515: $01 $5c $9c
	add  b                                           ; $4518: $80
	nop                                              ; $4519: $00
	adc  d                                           ; $451a: $8a
	jr   nz, jr_074_451e                             ; $451b: $20 $01

	db   $e3                                         ; $451d: $e3

jr_074_451e:
	ldh  [c], a                                      ; $451e: $e2
	add  b                                           ; $451f: $80
	ld   bc, $858a                                   ; $4520: $01 $8a $85
	ld   [bc], a                                     ; $4523: $02
	sbc  l                                           ; $4524: $9d
	ld   l, h                                        ; $4525: $6c

jr_074_4526:
	rra                                              ; $4526: $1f
	adc  b                                           ; $4527: $88
	ld   [$1f80], sp                                 ; $4528: $08 $80 $1f
	add  b                                           ; $452b: $80
	add  hl, bc                                      ; $452c: $09
	nop                                              ; $452d: $00
	db   $10                                         ; $452e: $10
	add  c                                           ; $452f: $81
	nop                                              ; $4530: $00
	ld   [bc], a                                     ; $4531: $02
	ld   c, $00                                      ; $4532: $0e $00
	ld   [de], a                                     ; $4534: $12
	add  c                                           ; $4535: $81
	inc  b                                           ; $4536: $04
	ld   [bc], a                                     ; $4537: $02
	ld   h, a                                        ; $4538: $67
	jr   jr_074_44d3                                 ; $4539: $18 $98

	add  b                                           ; $453b: $80
	rra                                              ; $453c: $1f
	ld   [bc], a                                     ; $453d: $02
	or   $fd                                         ; $453e: $f6 $fd
	db   $f4                                         ; $4540: $f4
	add  b                                           ; $4541: $80
	inc  h                                           ; $4542: $24
	add  h                                           ; $4543: $84
	inc  b                                           ; $4544: $04
	add  b                                           ; $4545: $80
	add  h                                           ; $4546: $84
	add  b                                           ; $4547: $80
	call nz, $e480                                   ; $4548: $c4 $80 $e4
	nop                                              ; $454b: $00
	ldh  a, [$8c]                                    ; $454c: $f0 $8c
	nop                                              ; $454e: $00
	ld   [bc], a                                     ; $454f: $02
	jr   nz, jr_074_4526                             ; $4550: $20 $d4

jr_074_4552:
	inc  b                                           ; $4552: $04
	add  b                                           ; $4553: $80
	inc  c                                           ; $4554: $0c
	add  b                                           ; $4555: $80
	inc  b                                           ; $4556: $04
	add  b                                           ; $4557: $80
	inc  c                                           ; $4558: $0c
	add  b                                           ; $4559: $80
	rlca                                             ; $455a: $07
	add  b                                           ; $455b: $80
	ld   [$0480], sp                                 ; $455c: $08 $80 $04
	add  b                                           ; $455f: $80
	ld   a, [bc]                                     ; $4560: $0a
	add  h                                           ; $4561: $84
	inc  b                                           ; $4562: $04
	add  b                                           ; $4563: $80
	ccf                                              ; $4564: $3f
	add  b                                           ; $4565: $80
	add  b                                           ; $4566: $80
	add  h                                           ; $4567: $84
	nop                                              ; $4568: $00
	nop                                              ; $4569: $00
	ld   b, a                                        ; $456a: $47
	add  c                                           ; $456b: $81
	ld   c, b                                        ; $456c: $48
	add  b                                           ; $456d: $80
	ret  z                                           ; $456e: $c8

	add  e                                           ; $456f: $83
	ld   [$0f00], sp                                 ; $4570: $08 $00 $0f
	add  c                                           ; $4573: $81
	ld   c, a                                        ; $4574: $4f
	ld   bc, $f048                                   ; $4575: $01 $48 $f0
	adc  b                                           ; $4578: $88
	ld   h, d                                        ; $4579: $62
	add  d                                           ; $457a: $82
	ldh  [c], a                                      ; $457b: $e2
	ld   bc, $0602                                   ; $457c: $01 $02 $06
	add  h                                           ; $457f: $84
	inc  hl                                          ; $4580: $23
	add  d                                           ; $4581: $82
	ld   h, e                                        ; $4582: $63
	add  d                                           ; $4583: $82
	inc  bc                                          ; $4584: $03
	ld   bc, $5823                                   ; $4585: $01 $23 $58
	add  c                                           ; $4588: $81
	ld   [hl], b                                     ; $4589: $70
	add  h                                           ; $458a: $84
	jr   nc, jr_074_450e                             ; $458b: $30 $81

	db   $10                                         ; $458d: $10
	add  c                                           ; $458e: $81
	sub  b                                           ; $458f: $90
	inc  bc                                          ; $4590: $03
	inc  de                                          ; $4591: $13
	ld   h, d                                        ; $4592: $62
	ld   d, c                                        ; $4593: $51
	ld   d, b                                        ; $4594: $50
	add  b                                           ; $4595: $80
	ld   h, c                                        ; $4596: $61
	add  b                                           ; $4597: $80
	ld   b, c                                        ; $4598: $41
	inc  bc                                          ; $4599: $03
	ccf                                              ; $459a: $3f

jr_074_459b:
	ld   a, $51                                      ; $459b: $3e $51
	ld   d, b                                        ; $459d: $50
	add  b                                           ; $459e: $80
	ld   b, c                                        ; $459f: $41
	add  b                                           ; $45a0: $80
	ld   b, e                                        ; $45a1: $43
	inc  b                                           ; $45a2: $04
	rst  $38                                         ; $45a3: $ff
	ld   h, a                                        ; $45a4: $67
	rst  $20                                         ; $45a5: $e7
	inc  sp                                          ; $45a6: $33
	or   e                                           ; $45a7: $b3
	add  b                                           ; $45a8: $80
	dec  d                                           ; $45a9: $15
	add  b                                           ; $45aa: $80
	ld   a, $80                                      ; $45ab: $3e $80
	ld   a, [$1980]                                  ; $45ad: $fa $80 $19
	add  b                                           ; $45b0: $80
	ccf                                              ; $45b1: $3f
	inc  bc                                          ; $45b2: $03
	ld   e, [hl]                                     ; $45b3: $5e
	db   $dd                                         ; $45b4: $dd
	db   $fc                                         ; $45b5: $fc
	ld   a, h                                        ; $45b6: $7c
	add  b                                           ; $45b7: $80
	inc  a                                           ; $45b8: $3c
	add  b                                           ; $45b9: $80
	db   $fc                                         ; $45ba: $fc
	add  d                                           ; $45bb: $82
	inc  a                                           ; $45bc: $3c
	add  d                                           ; $45bd: $82
	ld   a, h                                        ; $45be: $7c
	ld   bc, $ff3c                                   ; $45bf: $01 $3c $ff
	add  b                                           ; $45c2: $80
	ld   b, b                                        ; $45c3: $40
	add  [hl]                                        ; $45c4: $86
	ld   b, h                                        ; $45c5: $44
	add  b                                           ; $45c6: $80
	ld   e, h                                        ; $45c7: $5c
	add  b                                           ; $45c8: $80
	ld   b, b                                        ; $45c9: $40
	ld   bc, $8444                                   ; $45ca: $01 $44 $84
	add  b                                           ; $45cd: $80
	nop                                              ; $45ce: $00
	add  [hl]                                        ; $45cf: $86
	jr   nz, jr_074_4552                             ; $45d0: $20 $80

	db   $e3                                         ; $45d2: $e3
	add  b                                           ; $45d3: $80
	nop                                              ; $45d4: $00
	ld   bc, $2120                                   ; $45d5: $01 $20 $21
	add  b                                           ; $45d8: $80
	ld   bc, $0580                                   ; $45d9: $01 $80 $05
	add  h                                           ; $45dc: $84
	add  l                                           ; $45dd: $85
	add  b                                           ; $45de: $80
	sbc  l                                           ; $45df: $9d
	add  b                                           ; $45e0: $80
	ld   bc, $8501                                   ; $45e1: $01 $01 $85
	ld   h, e                                        ; $45e4: $63
	add  e                                           ; $45e5: $83
	ld   [$0980], sp                                 ; $45e6: $08 $80 $09
	ld   [bc], a                                     ; $45e9: $02
	rra                                              ; $45ea: $1f
	ld   e, $09                                      ; $45eb: $1e $09
	add  e                                           ; $45ed: $83
	ld   [$6f00], sp                                 ; $45ee: $08 $00 $6f
	add  b                                           ; $45f1: $80
	inc  l                                           ; $45f2: $2c
	ld   bc, $9616                                   ; $45f3: $01 $16 $96
	add  b                                           ; $45f6: $80
	ld   h, $80                                      ; $45f7: $26 $80
	ccf                                              ; $45f9: $3f
	inc  bc                                          ; $45fa: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45fb: $cf
	rrca                                             ; $45fc: $0f
	add  hl, sp                                      ; $45fd: $39
	ld   sp, hl                                      ; $45fe: $f9
	add  b                                           ; $45ff: $80
	ld   c, h                                        ; $4600: $4c
	inc  bc                                          ; $4601: $03
	rra                                              ; $4602: $1f
	inc  b                                           ; $4603: $04
	db   $e4                                         ; $4604: $e4
	db   $f4                                         ; $4605: $f4
	add  b                                           ; $4606: $80
	ld   [hl], h                                     ; $4607: $74
	add  b                                           ; $4608: $80
	inc  [hl]                                        ; $4609: $34
	add  c                                           ; $460a: $81
	db   $f4                                         ; $460b: $f4
	nop                                              ; $460c: $00
	db   $e4                                         ; $460d: $e4
	add  b                                           ; $460e: $80
	ld   h, h                                        ; $460f: $64
	inc  bc                                          ; $4610: $03
	db   $e4                                         ; $4611: $e4
	db   $f4                                         ; $4612: $f4
	or   h                                           ; $4613: $b4
	or   b                                           ; $4614: $b0
	adc  b                                           ; $4615: $88
	nop                                              ; $4616: $00
	add  b                                           ; $4617: $80
	jr   nz, jr_074_459b                             ; $4618: $20 $81

	nop                                              ; $461a: $00
	dec  b                                           ; $461b: $05
	rst  $30                                         ; $461c: $f7
	inc  b                                           ; $461d: $04
	dec  c                                           ; $461e: $0d
	nop                                              ; $461f: $00
	ld   [$8004], sp                                 ; $4620: $08 $04 $80

jr_074_4623:
	ld   [$0580], sp                                 ; $4623: $08 $80 $05
	add  b                                           ; $4626: $80
	ld   [$0580], sp                                 ; $4627: $08 $80 $05
	ld   bc, $0a08                                   ; $462a: $01 $08 $0a
	add  b                                           ; $462d: $80
	ld   e, $86                                      ; $462e: $1e $86
	ld   b, h                                        ; $4630: $44
	add  b                                           ; $4631: $80
	ld   b, b                                        ; $4632: $40
	add  b                                           ; $4633: $80
	ld   e, b                                        ; $4634: $58
	add  b                                           ; $4635: $80
	ldh  [rP1], a                                    ; $4636: $e0 $00
	ld   b, a                                        ; $4638: $47
	adc  c                                           ; $4639: $89
	ld   c, b                                        ; $463a: $48
	add  b                                           ; $463b: $80
	ld   [$4880], sp                                 ; $463c: $08 $80 $48
	nop                                              ; $463f: $00
	ldh  a, [$80]                                    ; $4640: $f0 $80
	ld   [bc], a                                     ; $4642: $02
	add  b                                           ; $4643: $80
	ld   [hl+], a                                    ; $4644: $22
	adc  b                                           ; $4645: $88
	ld   h, d                                        ; $4646: $62
	ld   bc, $7e7a                                   ; $4647: $01 $7a $7e
	adc  b                                           ; $464a: $88
	inc  hl                                          ; $464b: $23
	add  c                                           ; $464c: $81
	ld   h, e                                        ; $464d: $63
	inc  bc                                          ; $464e: $03
	ld   h, a                                        ; $464f: $67
	rlca                                             ; $4650: $07
	ld   d, h                                        ; $4651: $54
	call c, $d880                                    ; $4652: $dc $80 $d8
	inc  bc                                          ; $4655: $03
	rst  $10                                         ; $4656: $d7
	rst  JumpTable                                         ; $4657: $df
	ret  nc                                          ; $4658: $d0

	ret  c                                           ; $4659: $d8

	add  b                                           ; $465a: $80
	call c, $d880                                    ; $465b: $dc $80 $d8
	add  b                                           ; $465e: $80
	call c, $f880                                    ; $465f: $dc $80 $f8
	inc  bc                                          ; $4662: $03
	jr   nz, jr_074_46b5                             ; $4663: $20 $50

	ld   a, a                                        ; $4665: $7f
	ld   a, [hl]                                     ; $4666: $7e
	add  b                                           ; $4667: $80

jr_074_4668:
	ret  nz                                          ; $4668: $c0

	ld   bc, $4041                                   ; $4669: $01 $41 $40
	add  d                                           ; $466c: $82
	ld   b, c                                        ; $466d: $41
	add  b                                           ; $466e: $80
	ld   b, b                                        ; $466f: $40

jr_074_4670:
	add  b                                           ; $4670: $80
	ld   a, a                                        ; $4671: $7f
	ld   [bc], a                                     ; $4672: $02
	db   $fd                                         ; $4673: $fd
	add  e                                           ; $4674: $83
	add  l                                           ; $4675: $85
	add  b                                           ; $4676: $80
	inc  l                                           ; $4677: $2c
	ld   bc, $8164                                   ; $4678: $01 $64 $81
	add  c                                           ; $467b: $81
	rra                                              ; $467c: $1f
	inc  bc                                          ; $467d: $03
	add  d                                           ; $467e: $82
	db   $fc                                         ; $467f: $fc
	ld   b, d                                        ; $4680: $42
	ld   a, $80                                      ; $4681: $3e $80
	cp   [hl]                                        ; $4683: $be
	nop                                              ; $4684: $00
	rst  $38                                         ; $4685: $ff
	add  e                                           ; $4686: $83
	ld   a, h                                        ; $4687: $7c
	ld   a, [bc]                                     ; $4688: $0a
	ld   a, b                                        ; $4689: $78
	ld   a, h                                        ; $468a: $7c
	ld   a, e                                        ; $468b: $7b
	ld   a, a                                        ; $468c: $7f
	ld   [hl], h                                     ; $468d: $74
	ld   a, h                                        ; $468e: $7c
	ld   l, e                                        ; $468f: $6b
	rst  $38                                         ; $4690: $ff
	inc  d                                           ; $4691: $14
	ld   hl, sp-$31                                  ; $4692: $f8 $cf
	add  l                                           ; $4694: $85
	ld   b, h                                        ; $4695: $44
	nop                                              ; $4696: $00
	call nz, $dc80                                   ; $4697: $c4 $80 $dc
	add  c                                           ; $469a: $81
	ret  nz                                          ; $469b: $c0

	add  b                                           ; $469c: $80
	ld   b, b                                        ; $469d: $40
	nop                                              ; $469e: $00
	add  b                                           ; $469f: $80
	add  [hl]                                        ; $46a0: $86
	jr   nz, jr_074_4623                             ; $46a1: $20 $80

	db   $e3                                         ; $46a3: $e3
	add  e                                           ; $46a4: $83
	nop                                              ; $46a5: $00
	nop                                              ; $46a6: $00
	ld   bc, $8586                                   ; $46a7: $01 $86 $85
	add  b                                           ; $46aa: $80
	sbc  l                                           ; $46ab: $9d
	add  e                                           ; $46ac: $83
	ld   bc, $e601                                   ; $46ad: $01 $01 $e6
	ld   [$1a80], sp                                 ; $46b0: $08 $80 $1a
	rlca                                             ; $46b3: $07
	ld   a, [bc]                                     ; $46b4: $0a

jr_074_46b5:
	ld   [$080b], sp                                 ; $46b5: $08 $0b $08
	jp   hl                                          ; $46b8: $e9


	ld   sp, hl                                      ; $46b9: $f9
	sbc  l                                           ; $46ba: $9d
	sbc  c                                           ; $46bb: $99
	add  b                                           ; $46bc: $80
	ld   hl, sp-$80                                  ; $46bd: $f8 $80
	adc  a                                           ; $46bf: $8f
	nop                                              ; $46c0: $00
	ei                                               ; $46c1: $fb
	add  b                                           ; $46c2: $80
	ld   [de], a                                     ; $46c3: $12
	add  b                                           ; $46c4: $80
	inc  hl                                          ; $46c5: $23
	ld   bc, $c120                                   ; $46c6: $01 $20 $c1
	add  c                                           ; $46c9: $81
	rra                                              ; $46ca: $1f
	inc  bc                                          ; $46cb: $03
	add  d                                           ; $46cc: $82
	db   $fc                                         ; $46cd: $fc
	ld   b, d                                        ; $46ce: $42
	ld   a, $80                                      ; $46cf: $3e $80
	cp   [hl]                                        ; $46d1: $be
	inc  b                                           ; $46d2: $04
	rst  $30                                         ; $46d3: $f7
	inc  [hl]                                        ; $46d4: $34

jr_074_46d5:
	inc  a                                           ; $46d5: $3c
	ld   a, h                                        ; $46d6: $7c
	ld   [hl], h                                     ; $46d7: $74
	add  b                                           ; $46d8: $80
	inc  [hl]                                        ; $46d9: $34
	nop                                              ; $46da: $00
	ld   [hl], h                                     ; $46db: $74
	add  b                                           ; $46dc: $80
	ld   [hl], a                                     ; $46dd: $77
	ld   b, $71                                      ; $46de: $06 $71
	ld   a, c                                        ; $46e0: $79
	ld   l, a                                        ; $46e1: $6f
	rst  $38                                         ; $46e2: $ff
	jr   c, jr_074_46d5                              ; $46e3: $38 $f0

	jr   nz, jr_074_4668                             ; $46e5: $20 $81

	nop                                              ; $46e7: $00
	add  b                                           ; $46e8: $80
	rrca                                             ; $46e9: $0f
	add  c                                           ; $46ea: $81
	nop                                              ; $46eb: $00
	add  b                                           ; $46ec: $80
	jr   nz, jr_074_4670                             ; $46ed: $20 $81

	add  b                                           ; $46ef: $80
	add  b                                           ; $46f0: $80
	nop                                              ; $46f1: $00
	and  d                                           ; $46f2: $a2
	ld   bc, $0086                                   ; $46f3: $01 $86 $00
	ld   [$070a], sp                                 ; $46f6: $08 $0a $07
	nop                                              ; $46f9: $00
	rlca                                             ; $46fa: $07
	dec  b                                           ; $46fb: $05
	rlca                                             ; $46fc: $07
	dec  b                                           ; $46fd: $05
	rlca                                             ; $46fe: $07
	ld   a, [bc]                                     ; $46ff: $0a
	add  [hl]                                        ; $4700: $86
	nop                                              ; $4701: $00
	add  c                                           ; $4702: $81
	rst  $38                                         ; $4703: $ff
	inc  b                                           ; $4704: $04
	ld   e, a                                        ; $4705: $5f
	rst  $38                                         ; $4706: $ff
	dec  bc                                          ; $4707: $0b
	rst  $38                                         ; $4708: $ff
	xor  e                                           ; $4709: $ab
	add  l                                           ; $470a: $85
	nop                                              ; $470b: $00
	ld   bc, $fd02                                   ; $470c: $01 $02 $fd
	add  b                                           ; $470f: $80
	cp   $80                                         ; $4710: $fe $80
	rst  $38                                         ; $4712: $ff
	add  b                                           ; $4713: $80
	rra                                              ; $4714: $1f
	nop                                              ; $4715: $00
	rst  $38                                         ; $4716: $ff
	add  l                                           ; $4717: $85
	nop                                              ; $4718: $00
	ld   [$ffea], sp                                 ; $4719: $08 $ea $ff
	ret  nz                                          ; $471c: $c0

	ld   a, a                                        ; $471d: $7f
	ret  nc                                          ; $471e: $d0

	sbc  a                                           ; $471f: $9f
	ldh  a, [$ef]                                    ; $4720: $f0 $ef
	ld   a, [$0085]                                  ; $4722: $fa $85 $00
	ld   [$ffea], sp                                 ; $4725: $08 $ea $ff
	ld   c, l                                        ; $4728: $4d
	rst  $38                                         ; $4729: $ff
	ld   c, [hl]                                     ; $472a: $4e
	rst  $38                                         ; $472b: $ff
	ld   b, h                                        ; $472c: $44
	rst  $38                                         ; $472d: $ff
	xor  l                                           ; $472e: $ad
	add  [hl]                                        ; $472f: $86
	nop                                              ; $4730: $00
	nop                                              ; $4731: $00
	rst  $38                                         ; $4732: $ff
	add  b                                           ; $4733: $80
	ret  nz                                          ; $4734: $c0

	ld   [bc], a                                     ; $4735: $02
	rst  JumpTable                                         ; $4736: $df
	ldh  [$c0], a                                    ; $4737: $e0 $c0
	add  b                                           ; $4739: $80
	ldh  a, [$86]                                    ; $473a: $f0 $86
	nop                                              ; $473c: $00
	nop                                              ; $473d: $00
	rst  $38                                         ; $473e: $ff
	add  b                                           ; $473f: $80
	nop                                              ; $4740: $00
	nop                                              ; $4741: $00
	rst  $38                                         ; $4742: $ff
	adc  c                                           ; $4743: $89
	nop                                              ; $4744: $00
	ld   [$ff0b], sp                                 ; $4745: $08 $0b $ff
	dec  c                                           ; $4748: $0d
	rlca                                             ; $4749: $07
	ei                                               ; $474a: $fb
	inc  bc                                          ; $474b: $03
	dec  b                                           ; $474c: $05
	ld   bc, $8502                                   ; $474d: $01 $02 $85
	nop                                              ; $4750: $00
	add  b                                           ; $4751: $80
	rst  $38                                         ; $4752: $ff
	ld   b, $fe                                      ; $4753: $06 $fe
	rst  $38                                         ; $4755: $ff
	ei                                               ; $4756: $fb
	rst  $38                                         ; $4757: $ff
	ld   a, b                                        ; $4758: $78
	rst  $38                                         ; $4759: $ff
	add  d                                           ; $475a: $82
	add  l                                           ; $475b: $85
	nop                                              ; $475c: $00
	ld   [$ffd4], sp                                 ; $475d: $08 $d4 $ff
	add  c                                           ; $4760: $81
	rst  $38                                         ; $4761: $ff
	rst  $28                                         ; $4762: $ef
	rst  $38                                         ; $4763: $ff
	ld   de, $abff                                   ; $4764: $11 $ff $ab
	add  l                                           ; $4767: $85
	nop                                              ; $4768: $00
	ld   b, $48                                      ; $4769: $06 $48
	rst  $38                                         ; $476b: $ff
	ld   [hl], e                                     ; $476c: $73
	rst  $38                                         ; $476d: $ff
	cp   d                                           ; $476e: $ba
	rst  $38                                         ; $476f: $ff
	ld   a, [hl]                                     ; $4770: $7e
	add  b                                           ; $4771: $80
	rst  $38                                         ; $4772: $ff
	add  [hl]                                        ; $4773: $86
	nop                                              ; $4774: $00
	inc  bc                                          ; $4775: $03
	rst  $38                                         ; $4776: $ff
	rst  $10                                         ; $4777: $d7
	rst  $38                                         ; $4778: $ff
	rst  $10                                         ; $4779: $d7
	add  d                                           ; $477a: $82
	rst  $38                                         ; $477b: $ff
	add  [hl]                                        ; $477c: $86
	nop                                              ; $477d: $00
	add  e                                           ; $477e: $83
	rst  $38                                         ; $477f: $ff
	add  b                                           ; $4780: $80
	cp   $00                                         ; $4781: $fe $00
	rst  $38                                         ; $4783: $ff
	add  l                                           ; $4784: $85
	nop                                              ; $4785: $00
	ld   b, $3f                                      ; $4786: $06 $3f
	ret  nz                                          ; $4788: $c0

	cp   a                                           ; $4789: $bf
	add  b                                           ; $478a: $80
	ld   b, b                                        ; $478b: $40
	nop                                              ; $478c: $00
	add  b                                           ; $478d: $80
	add  a                                           ; $478e: $87
	nop                                              ; $478f: $00
	ld   [bc], a                                     ; $4790: $02
	rst  $38                                         ; $4791: $ff
	nop                                              ; $4792: $00
	rst  $38                                         ; $4793: $ff
	adc  e                                           ; $4794: $8b
	nop                                              ; $4795: $00
	ld   [$08f7], sp                                 ; $4796: $08 $f7 $08
	ld   hl, sp+$1c                                  ; $4799: $f8 $1c
	db   $10                                         ; $479b: $10
	ld   a, $a0                                      ; $479c: $3e $a0
	rst  $38                                         ; $479e: $ff
	ld   h, l                                        ; $479f: $65
	add  a                                           ; $47a0: $87
	rlca                                             ; $47a1: $07
	ld   [bc], a                                     ; $47a2: $02
	ld   [$020f], sp                                 ; $47a3: $08 $0f $02
	add  c                                           ; $47a6: $81
	inc  bc                                          ; $47a7: $03
	ld   de, $fff4                                   ; $47a8: $11 $f4 $ff
	ret  nc                                          ; $47ab: $d0

	rst  $38                                         ; $47ac: $ff
	call nc, $f4ff                                   ; $47ad: $d4 $ff $f4
	rst  $38                                         ; $47b0: $ff
	push af                                          ; $47b1: $f5
	rst  $38                                         ; $47b2: $ff
	ld   a, a                                        ; $47b3: $7f
	rst  $38                                         ; $47b4: $ff
	rra                                              ; $47b5: $1f
	rst  $38                                         ; $47b6: $ff
	add  a                                           ; $47b7: $87
	rst  $38                                         ; $47b8: $ff
	nop                                              ; $47b9: $00
	rst  $20                                         ; $47ba: $e7
	add  b                                           ; $47bb: $80
	ld   sp, hl                                      ; $47bc: $f9
	add  b                                           ; $47bd: $80
	cp   $88                                         ; $47be: $fe $88
	rst  $38                                         ; $47c0: $ff
	dec  c                                           ; $47c1: $0d
	ret  nc                                          ; $47c2: $d0

	ei                                               ; $47c3: $fb
	jp   Jump_074_61fc                               ; $47c4: $c3 $fc $61


	ld   a, a                                        ; $47c7: $7f
	or   b                                           ; $47c8: $b0
	cp   a                                           ; $47c9: $bf
	ret  z                                           ; $47ca: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47cb: $cf
	ldh  a, [$f3]                                    ; $47cc: $f0 $f3
	db   $fd                                         ; $47ce: $fd
	db   $fc                                         ; $47cf: $fc
	add  b                                           ; $47d0: $80
	rst  $38                                         ; $47d1: $ff
	inc  e                                           ; $47d2: $1c
	ld   d, a                                        ; $47d3: $57
	rst  $38                                         ; $47d4: $ff
	ld   [bc], a                                     ; $47d5: $02
	rst  $38                                         ; $47d6: $ff
	db   $10                                         ; $47d7: $10
	ld   a, a                                        ; $47d8: $7f
	and  b                                           ; $47d9: $a0
	sbc  a                                           ; $47da: $9f
	ld   b, d                                        ; $47db: $42
	rst  $20                                         ; $47dc: $e7
	rlca                                             ; $47dd: $07
	rst  $30                                         ; $47de: $f7
	add  [hl]                                        ; $47df: $86
	rst  $30                                         ; $47e0: $f7
	dec  b                                           ; $47e1: $05
	scf                                              ; $47e2: $37
	ld   l, b                                        ; $47e3: $68
	db   $fc                                         ; $47e4: $fc

jr_074_47e5:
	jr   c, jr_074_47e5                              ; $47e5: $38 $fe

	ld   l, $ff                                      ; $47e7: $2e $ff
	scf                                              ; $47e9: $37
	rst  $38                                         ; $47ea: $ff
	and  a                                           ; $47eb: $a7
	rst  $38                                         ; $47ec: $ff
	ret  nz                                          ; $47ed: $c0

	rst  $38                                         ; $47ee: $ff
	ccf                                              ; $47ef: $3f
	add  c                                           ; $47f0: $81
	rst  $38                                         ; $47f1: $ff
	add  d                                           ; $47f2: $82
	nop                                              ; $47f3: $00
	ld   [bc], a                                     ; $47f4: $02
	ld   a, a                                        ; $47f5: $7f
	rst  $38                                         ; $47f6: $ff
	add  b                                           ; $47f7: $80
	add  c                                           ; $47f8: $81
	rst  $38                                         ; $47f9: $ff
	nop                                              ; $47fa: $00
	nop                                              ; $47fb: $00
	add  e                                           ; $47fc: $83
	rst  $38                                         ; $47fd: $ff
	inc  bc                                          ; $47fe: $03
	ld   bc, $0100                                   ; $47ff: $01 $00 $01
	nop                                              ; $4802: $00
	add  b                                           ; $4803: $80
	rst  $38                                         ; $4804: $ff
	nop                                              ; $4805: $00
	nop                                              ; $4806: $00
	add  c                                           ; $4807: $81
	rst  $38                                         ; $4808: $ff
	nop                                              ; $4809: $00
	nop                                              ; $480a: $00
	add  e                                           ; $480b: $83
	rst  $38                                         ; $480c: $ff
	ld   [bc], a                                     ; $480d: $02
	ld   [$95ff], a                                  ; $480e: $ea $ff $95
	add  b                                           ; $4811: $80
	ld   a, a                                        ; $4812: $7f
	ld   bc, $7fff                                   ; $4813: $01 $ff $7f
	add  c                                           ; $4816: $81
	rst  $38                                         ; $4817: $ff
	nop                                              ; $4818: $00
	nop                                              ; $4819: $00
	add  e                                           ; $481a: $83
	rst  $38                                         ; $481b: $ff
	ld   [bc], a                                     ; $481c: $02
	add  b                                           ; $481d: $80
	rst  $38                                         ; $481e: $ff
	ld   a, a                                        ; $481f: $7f
	add  l                                           ; $4820: $85
	rst  $38                                         ; $4821: $ff
	nop                                              ; $4822: $00
	nop                                              ; $4823: $00
	add  e                                           ; $4824: $83
	rst  $38                                         ; $4825: $ff
	nop                                              ; $4826: $00
	nop                                              ; $4827: $00
	add  a                                           ; $4828: $87
	rst  $38                                         ; $4829: $ff
	nop                                              ; $482a: $00
	nop                                              ; $482b: $00
	add  e                                           ; $482c: $83
	rst  $38                                         ; $482d: $ff
	nop                                              ; $482e: $00
	nop                                              ; $482f: $00
	add  a                                           ; $4830: $87
	rst  $38                                         ; $4831: $ff
	nop                                              ; $4832: $00
	nop                                              ; $4833: $00
	add  e                                           ; $4834: $83
	rst  $38                                         ; $4835: $ff
	inc  b                                           ; $4836: $04
	ld   [bc], a                                     ; $4837: $02
	db   $fc                                         ; $4838: $fc
	db   $fd                                         ; $4839: $fd
	rst  $38                                         ; $483a: $ff
	db   $fc                                         ; $483b: $fc
	add  e                                           ; $483c: $83
	rst  $38                                         ; $483d: $ff
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	add  e                                           ; $4840: $83
	rst  $38                                         ; $4841: $ff
	add  b                                           ; $4842: $80
	nop                                              ; $4843: $00
	add  b                                           ; $4844: $80
	rst  $38                                         ; $4845: $ff
	nop                                              ; $4846: $00
	nop                                              ; $4847: $00
	add  e                                           ; $4848: $83
	rst  $38                                         ; $4849: $ff
	nop                                              ; $484a: $00
	nop                                              ; $484b: $00
	add  e                                           ; $484c: $83
	rst  $38                                         ; $484d: $ff
	inc  b                                           ; $484e: $04
	nop                                              ; $484f: $00

Call_074_4850:
	ld   bc, $fffd                                   ; $4850: $01 $fd $ff
	inc  bc                                          ; $4853: $03
	add  e                                           ; $4854: $83
	rst  $38                                         ; $4855: $ff
	nop                                              ; $4856: $00
	nop                                              ; $4857: $00
	add  e                                           ; $4858: $83
	rst  $38                                         ; $4859: $ff
	inc  bc                                          ; $485a: $03
	jr   nz, @+$01                                   ; $485b: $20 $ff

	rst  JumpTable                                         ; $485d: $df
	rst  $38                                         ; $485e: $ff
	add  b                                           ; $485f: $80
	cp   $80                                         ; $4860: $fe $80
	db   $f4                                         ; $4862: $f4
	add  b                                           ; $4863: $80
	and  b                                           ; $4864: $a0
	nop                                              ; $4865: $00
	ld   bc, $ff83                                   ; $4866: $01 $83 $ff
	nop                                              ; $4869: $00
	inc  c                                           ; $486a: $0c
	add  c                                           ; $486b: $81
	inc  bc                                          ; $486c: $03
	nop                                              ; $486d: $00
	ld   [bc], a                                     ; $486e: $02
	add  c                                           ; $486f: $81
	inc  bc                                          ; $4870: $03
	add  b                                           ; $4871: $80
	ld   bc, $0380                                   ; $4872: $01 $80 $03
	add  b                                           ; $4875: $80
	ld   bc, $0380                                   ; $4876: $01 $80 $03
	db   $10                                         ; $4879: $10
	and  [hl]                                        ; $487a: $a6
	rst  $38                                         ; $487b: $ff
	jr   z, @+$01                                    ; $487c: $28 $ff

	ld   a, [hl]                                     ; $487e: $7e
	rst  $38                                         ; $487f: $ff
	ccf                                              ; $4880: $3f
	rst  $38                                         ; $4881: $ff
	rlca                                             ; $4882: $07
	rst  $38                                         ; $4883: $ff
	reti                                             ; $4884: $d9


	rst  $38                                         ; $4885: $ff
	ldh  a, [rIE]                                    ; $4886: $f0 $ff
	or   $ff                                         ; $4888: $f6 $ff
	rst  $20                                         ; $488a: $e7
	add  d                                           ; $488b: $82
	nop                                              ; $488c: $00
	ld   [$0080], sp                                 ; $488d: $08 $80 $00
	ld   h, b                                        ; $4890: $60
	nop                                              ; $4891: $00
	jr   jr_074_4894                                 ; $4892: $18 $00

jr_074_4894:
	ld   b, $c0                                      ; $4894: $06 $c0
	pop  bc                                          ; $4896: $c1
	add  b                                           ; $4897: $80
	ld   [hl], b                                     ; $4898: $70
	ld   bc, $22dd                                   ; $4899: $01 $dd $22
	adc  c                                           ; $489c: $89
	nop                                              ; $489d: $00
	rrca                                             ; $489e: $0f
	add  b                                           ; $489f: $80
	nop                                              ; $48a0: $00
	ld   h, b                                        ; $48a1: $60
	and  b                                           ; $48a2: $a0
	rst  ToBoot                                         ; $48a3: $c7
	scf                                              ; $48a4: $37
	ldh  a, [rAUD1SWEEP]                             ; $48a5: $f0 $10
	ldh  a, [rP1]                                    ; $48a7: $f0 $00
	ldh  a, [$85]                                    ; $48a9: $f0 $85
	push af                                          ; $48ab: $f5
	rst  ToBoot                                         ; $48ac: $c7
	rst  $30                                         ; $48ad: $f7
	rst  $20                                         ; $48ae: $e7
	add  c                                           ; $48af: $81
	rst  $30                                         ; $48b0: $f7
	nop                                              ; $48b1: $00
	nop                                              ; $48b2: $00
	add  b                                           ; $48b3: $80
	rst  $38                                         ; $48b4: $ff
	nop                                              ; $48b5: $00
	nop                                              ; $48b6: $00
	add  b                                           ; $48b7: $80
	ld   e, [hl]                                     ; $48b8: $5e
	add  b                                           ; $48b9: $80
	cp   [hl]                                        ; $48ba: $be
	add  b                                           ; $48bb: $80
	cp   $06                                         ; $48bc: $fe $06
	db   $fc                                         ; $48be: $fc
	cp   $f8                                         ; $48bf: $fe $f8
	cp   $d0                                         ; $48c1: $fe $d0
	cp   $2a                                         ; $48c3: $fe $2a
	add  b                                           ; $48c5: $80
	rst  $38                                         ; $48c6: $ff
	nop                                              ; $48c7: $00
	nop                                              ; $48c8: $00
	add  b                                           ; $48c9: $80
	rst  $38                                         ; $48ca: $ff
	ld   a, [bc]                                     ; $48cb: $0a
	ei                                               ; $48cc: $fb
	rst  $38                                         ; $48cd: $ff
	ldh  a, [c]                                      ; $48ce: $f2
	rst  $38                                         ; $48cf: $ff
	db   $f4                                         ; $48d0: $f4
	rst  $38                                         ; $48d1: $ff
	db   $fc                                         ; $48d2: $fc
	rst  $38                                         ; $48d3: $ff
	db   $fc                                         ; $48d4: $fc
	rst  $38                                         ; $48d5: $ff
	ld   [bc], a                                     ; $48d6: $02
	add  b                                           ; $48d7: $80
	rst  $38                                         ; $48d8: $ff
	nop                                              ; $48d9: $00
	nop                                              ; $48da: $00
	add  b                                           ; $48db: $80
	rst  $28                                         ; $48dc: $ef
	ld   a, [bc]                                     ; $48dd: $0a
	ld   b, h                                        ; $48de: $44
	rst  $28                                         ; $48df: $ef
	ld   b, c                                        ; $48e0: $41
	rst  $28                                         ; $48e1: $ef
	ld   b, b                                        ; $48e2: $40
	rst  $28                                         ; $48e3: $ef
	nop                                              ; $48e4: $00
	rst  $28                                         ; $48e5: $ef
	ld   [$a2ef], sp                                 ; $48e6: $08 $ef $a2
	add  b                                           ; $48e9: $80
	rst  $38                                         ; $48ea: $ff
	nop                                              ; $48eb: $00
	nop                                              ; $48ec: $00
	add  b                                           ; $48ed: $80
	rst  $38                                         ; $48ee: $ff
	ld   a, [bc]                                     ; $48ef: $0a
	ld   b, e                                        ; $48f0: $43
	rst  $38                                         ; $48f1: $ff
	ld   [hl], $ff                                   ; $48f2: $36 $ff
	ld   [hl+], a                                    ; $48f4: $22
	rst  $38                                         ; $48f5: $ff
	ld   [hl+], a                                    ; $48f6: $22
	rst  $38                                         ; $48f7: $ff
	ld   h, a                                        ; $48f8: $67
	rst  $38                                         ; $48f9: $ff
	db   $ed                                         ; $48fa: $ed
	add  b                                           ; $48fb: $80
	rst  $38                                         ; $48fc: $ff
	nop                                              ; $48fd: $00
	nop                                              ; $48fe: $00
	add  b                                           ; $48ff: $80
	rst  $38                                         ; $4900: $ff
	ld   [bc], a                                     ; $4901: $02
	ld   d, b                                        ; $4902: $50
	rst  $38                                         ; $4903: $ff
	xor  a                                           ; $4904: $af
	adc  b                                           ; $4905: $88
	rst  $38                                         ; $4906: $ff
	nop                                              ; $4907: $00
	nop                                              ; $4908: $00
	add  b                                           ; $4909: $80
	rst  $38                                         ; $490a: $ff
	nop                                              ; $490b: $00
	ld   b, b                                        ; $490c: $40
	add  a                                           ; $490d: $87
	rst  $38                                         ; $490e: $ff
	nop                                              ; $490f: $00
	cp   a                                           ; $4910: $bf
	add  b                                           ; $4911: $80
	rst  $38                                         ; $4912: $ff
	nop                                              ; $4913: $00
	nop                                              ; $4914: $00

jr_074_4915:
	add  b                                           ; $4915: $80
	rst  $38                                         ; $4916: $ff
	nop                                              ; $4917: $00
	ld   [$ff81], sp                                 ; $4918: $08 $81 $ff
	inc  b                                           ; $491b: $04
	rst  $30                                         ; $491c: $f7
	rst  $38                                         ; $491d: $ff
	rst  $30                                         ; $491e: $f7
	rst  $38                                         ; $491f: $ff
	rst  $30                                         ; $4920: $f7
	add  d                                           ; $4921: $82
	rst  $38                                         ; $4922: $ff
	nop                                              ; $4923: $00
	nop                                              ; $4924: $00
	add  b                                           ; $4925: $80
	rst  $38                                         ; $4926: $ff
	inc  b                                           ; $4927: $04
	dec  b                                           ; $4928: $05
	rst  $38                                         ; $4929: $ff
	ld   hl, sp-$01                                  ; $492a: $f8 $ff
	db   $fd                                         ; $492c: $fd
	add  [hl]                                        ; $492d: $86
	rst  $38                                         ; $492e: $ff
	nop                                              ; $492f: $00
	nop                                              ; $4930: $00
	add  b                                           ; $4931: $80
	ld   a, a                                        ; $4932: $7f
	ld   a, [bc]                                     ; $4933: $0a
	ld   d, l                                        ; $4934: $55
	ld   a, a                                        ; $4935: $7f
	nop                                              ; $4936: $00
	ld   a, a                                        ; $4937: $7f
	nop                                              ; $4938: $00
	ld   a, a                                        ; $4939: $7f
	jr   nz, jr_074_49bb                             ; $493a: $20 $7f

	ld   h, b                                        ; $493c: $60
	ld   a, a                                        ; $493d: $7f
	ld   l, d                                        ; $493e: $6a
	add  b                                           ; $493f: $80
	rst  $38                                         ; $4940: $ff
	nop                                              ; $4941: $00
	nop                                              ; $4942: $00
	add  b                                           ; $4943: $80
	rst  $28                                         ; $4944: $ef
	dec  c                                           ; $4945: $0d
	ld   b, l                                        ; $4946: $45
	rst  $28                                         ; $4947: $ef
	nop                                              ; $4948: $00
	rst  $28                                         ; $4949: $ef
	ld   de, $1bff                                   ; $494a: $11 $ff $1b
	rst  $38                                         ; $494d: $ff
	rra                                              ; $494e: $1f
	rst  $38                                         ; $494f: $ff
	xor  [hl]                                        ; $4950: $ae
	rst  $38                                         ; $4951: $ff
	cp   $00                                         ; $4952: $fe $00
	add  b                                           ; $4954: $80
	rst  $38                                         ; $4955: $ff
	dec  bc                                          ; $4956: $0b
	ld   d, l                                        ; $4957: $55
	rst  $38                                         ; $4958: $ff
	ld   bc, $11ff                                   ; $4959: $01 $ff $11
	rst  $38                                         ; $495c: $ff
	ld   sp, $21ff                                   ; $495d: $31 $ff $21
	rst  $38                                         ; $4960: $ff
	ld   e, e                                        ; $4961: $5b
	ld   bc, $0380                                   ; $4962: $01 $80 $03
	add  b                                           ; $4965: $80
	ld   bc, $0380                                   ; $4966: $01 $80 $03
	add  b                                           ; $4969: $80
	ld   bc, $0380                                   ; $496a: $01 $80 $03
	add  b                                           ; $496d: $80
	ld   bc, $0380                                   ; $496e: $01 $80 $03
	ld   c, $e0                                      ; $4971: $0e $e0
	rst  $38                                         ; $4973: $ff
	rst  $30                                         ; $4974: $f7
	rst  $38                                         ; $4975: $ff
	ld   sp, hl                                      ; $4976: $f9
	rst  $38                                         ; $4977: $ff
	ld   hl, sp-$01                                  ; $4978: $f8 $ff
	or   $ff                                         ; $497a: $f6 $ff
	rst  $30                                         ; $497c: $f7
	rst  $38                                         ; $497d: $ff
	rst  $30                                         ; $497e: $f7
	rst  $38                                         ; $497f: $ff
	pop  af                                          ; $4980: $f1
	add  c                                           ; $4981: $81
	rst  $38                                         ; $4982: $ff
	ld   a, [bc]                                     ; $4983: $0a
	ldh  [c], a                                      ; $4984: $e2
	rst  $38                                         ; $4985: $ff
	db   $fc                                         ; $4986: $fc
	rst  $38                                         ; $4987: $ff
	rra                                              ; $4988: $1f
	rst  $38                                         ; $4989: $ff
	ld   bc, $e0ff                                   ; $498a: $01 $ff $e0
	rst  $38                                         ; $498d: $ff
	cp   $81                                         ; $498e: $fe $81
	rst  $38                                         ; $4990: $ff
	inc  bc                                          ; $4991: $03
	rra                                              ; $4992: $1f
	jr   jr_074_4915                                 ; $4993: $18 $80

	add  h                                           ; $4995: $84
	add  b                                           ; $4996: $80
	db   $e4                                         ; $4997: $e4
	ld   bc, $5c7c                                   ; $4998: $01 $7c $5c
	add  b                                           ; $499b: $80
	call nz, Call_074_4480                           ; $499c: $c4 $80 $44
	add  b                                           ; $499f: $80
	call nz, Call_074_4480                           ; $49a0: $c4 $80 $44
	add  hl, bc                                      ; $49a3: $09
	dec  hl                                          ; $49a4: $2b
	rst  $30                                         ; $49a5: $f7
	push af                                          ; $49a6: $f5
	rst  $30                                         ; $49a7: $f7
	db   $f4                                         ; $49a8: $f4
	rst  $30                                         ; $49a9: $f7
	db   $f4                                         ; $49aa: $f4
	rst  $30                                         ; $49ab: $f7
	ldh  a, [c]                                      ; $49ac: $f2
	ldh  a, [$84]                                    ; $49ad: $f0 $84
	rst  $30                                         ; $49af: $f7
	add  hl, bc                                      ; $49b0: $09
	xor  d                                           ; $49b1: $aa
	cp   $00                                         ; $49b2: $fe $00
	cp   $44                                         ; $49b4: $fe $44
	cp   $44                                         ; $49b6: $fe $44
	cp   $aa                                         ; $49b8: $fe $aa
	nop                                              ; $49ba: $00

jr_074_49bb:
	add  d                                           ; $49bb: $82
	cp   $24                                         ; $49bc: $fe $24
	or   $fe                                         ; $49be: $f6 $fe
	ldh  a, [c]                                      ; $49c0: $f2
	rst  $38                                         ; $49c1: $ff
	ret  nc                                          ; $49c2: $d0

	rst  $38                                         ; $49c3: $ff
	add  h                                           ; $49c4: $84
	rst  $38                                         ; $49c5: $ff
	ld   b, h                                        ; $49c6: $44
	rst  $38                                         ; $49c7: $ff
	push hl                                          ; $49c8: $e5
	rrca                                             ; $49c9: $0f
	push af                                          ; $49ca: $f5
	rst  $38                                         ; $49cb: $ff
	db   $e4                                         ; $49cc: $e4
	rst  $38                                         ; $49cd: $ff
	call nz, $a0ff                                   ; $49ce: $c4 $ff $a0
	rst  $28                                         ; $49d1: $ef
	jr   nc, @+$01                                   ; $49d2: $30 $ff

	db   $10                                         ; $49d4: $10
	rst  $38                                         ; $49d5: $ff
	ld   bc, $6cef                                   ; $49d6: $01 $ef $6c
	rst  ToBoot                                         ; $49d9: $c7
	ld   b, b                                        ; $49da: $40
	rst  $28                                         ; $49db: $ef
	ccf                                              ; $49dc: $3f
	rst  $38                                         ; $49dd: $ff
	ld   a, a                                        ; $49de: $7f
	rst  $38                                         ; $49df: $ff
	call $dfff                                       ; $49e0: $cd $ff $df
	add  e                                           ; $49e3: $83
	rst  $38                                         ; $49e4: $ff
	ld   [bc], a                                     ; $49e5: $02
	ld   [hl-], a                                    ; $49e6: $32
	rst  $38                                         ; $49e7: $ff
	ld   [hl-], a                                    ; $49e8: $32
	add  c                                           ; $49e9: $81
	rst  $38                                         ; $49ea: $ff
	nop                                              ; $49eb: $00
	db   $fd                                         ; $49ec: $fd
	add  a                                           ; $49ed: $87
	rst  $38                                         ; $49ee: $ff
	ld   [bc], a                                     ; $49ef: $02
	ld   a, $ff                                      ; $49f0: $3e $ff
	ld   a, $85                                      ; $49f2: $3e $85
	rst  $38                                         ; $49f4: $ff
	ld   a, [bc]                                     ; $49f5: $0a
	cp   a                                           ; $49f6: $bf
	rst  $38                                         ; $49f7: $ff
	cp   a                                           ; $49f8: $bf
	rst  $38                                         ; $49f9: $ff
	cp   a                                           ; $49fa: $bf
	rst  $38                                         ; $49fb: $ff
	ld   e, a                                        ; $49fc: $5f
	rst  $38                                         ; $49fd: $ff
	ld   e, a                                        ; $49fe: $5f
	rst  $38                                         ; $49ff: $ff
	cp   a                                           ; $4a00: $bf
	add  a                                           ; $4a01: $87
	rst  $38                                         ; $4a02: $ff
	ld   b, $f7                                      ; $4a03: $06 $f7
	rst  $38                                         ; $4a05: $ff
	ret  z                                           ; $4a06: $c8

	rst  $38                                         ; $4a07: $ff
	ret  z                                           ; $4a08: $c8

	rst  $38                                         ; $4a09: $ff
	rst  $30                                         ; $4a0a: $f7
	adc  c                                           ; $4a0b: $89
	rst  $38                                         ; $4a0c: $ff
	ld   [bc], a                                     ; $4a0d: $02
	pop  af                                          ; $4a0e: $f1
	cp   $f0                                         ; $4a0f: $fe $f0
	add  e                                           ; $4a11: $83
	rst  $38                                         ; $4a12: $ff
	inc  b                                           ; $4a13: $04
	push de                                          ; $4a14: $d5
	ld   a, a                                        ; $4a15: $7f
	dec  b                                           ; $4a16: $05
	ld   a, a                                        ; $4a17: $7f
	cpl                                              ; $4a18: $2f
	add  c                                           ; $4a19: $81
	ld   a, a                                        ; $4a1a: $7f
	ld   b, $7e                                      ; $4a1b: $06 $7e
	ld   bc, $ff80                                   ; $4a1d: $01 $80 $ff
	db   $dd                                         ; $4a20: $dd
	rst  $38                                         ; $4a21: $ff
	db   $dd                                         ; $4a22: $dd
	add  b                                           ; $4a23: $80
	rst  $38                                         ; $4a24: $ff
	ld   de, $6eef                                   ; $4a25: $11 $ef $6e
	rst  $28                                         ; $4a28: $ef
	call z, $ccef                                    ; $4a29: $cc $ef $cc
	rst  $28                                         ; $4a2c: $ef
	ld   l, [hl]                                     ; $4a2d: $6e
	add  b                                           ; $4a2e: $80
	inc  bc                                          ; $4a2f: $03
	rst  $28                                         ; $4a30: $ef
	set  5, a                                        ; $4a31: $cb $ef
	add  [hl]                                        ; $4a33: $86
	xor  $5e                                         ; $4a34: $ee $5e
	db   $fd                                         ; $4a36: $fd
	jp   hl                                          ; $4a37: $e9


	add  b                                           ; $4a38: $80
	push af                                          ; $4a39: $f5
	add  b                                           ; $4a3a: $80
	sub  l                                           ; $4a3b: $95
	nop                                              ; $4a3c: $00
	dec  d                                           ; $4a3d: $15
	add  d                                           ; $4a3e: $82
	ld   de, $1580                                   ; $4a3f: $11 $80 $15
	add  b                                           ; $4a42: $80
	ld   d, l                                        ; $4a43: $55
	ld   bc, $010e                                   ; $4a44: $01 $0e $01
	add  b                                           ; $4a47: $80
	inc  bc                                          ; $4a48: $03
	add  b                                           ; $4a49: $80
	ld   bc, $0380                                   ; $4a4a: $01 $80 $03
	add  b                                           ; $4a4d: $80
	ld   bc, $0380                                   ; $4a4e: $01 $80 $03
	add  b                                           ; $4a51: $80
	ld   bc, $0380                                   ; $4a52: $01 $80 $03
	inc  d                                           ; $4a55: $14
	pop  hl                                          ; $4a56: $e1
	rst  $38                                         ; $4a57: $ff
	or   $ff                                         ; $4a58: $f6 $ff
	rst  $30                                         ; $4a5a: $f7
	rst  $38                                         ; $4a5b: $ff
	rst  $30                                         ; $4a5c: $f7
	rst  $38                                         ; $4a5d: $ff
	ld   hl, sp-$01                                  ; $4a5e: $f8 $ff
	ld   hl, sp-$01                                  ; $4a60: $f8 $ff
	pop  af                                          ; $4a62: $f1
	rst  $38                                         ; $4a63: $ff
	pop  af                                          ; $4a64: $f1
	rst  $38                                         ; $4a65: $ff
	rla                                              ; $4a66: $17
	rst  $38                                         ; $4a67: $ff
	nop                                              ; $4a68: $00
	rst  $38                                         ; $4a69: $ff
	ldh  a, [$81]                                    ; $4a6a: $f0 $81
	rst  $38                                         ; $4a6c: $ff
	ld   [bc], a                                     ; $4a6d: $02
	nop                                              ; $4a6e: $00
	rst  $38                                         ; $4a6f: $ff
	nop                                              ; $4a70: $00
	add  c                                           ; $4a71: $81
	rst  $38                                         ; $4a72: $ff
	inc  bc                                          ; $4a73: $03
	ld   hl, sp-$01                                  ; $4a74: $f8 $ff
	ldh  [$c4], a                                    ; $4a76: $e0 $c4
	add  b                                           ; $4a78: $80
	ld   b, h                                        ; $4a79: $44
	add  b                                           ; $4a7a: $80
	call nz, Call_074_4480                           ; $4a7b: $c4 $80 $44
	add  b                                           ; $4a7e: $80
	call nz, Call_074_4480                           ; $4a7f: $c4 $80 $44
	add  d                                           ; $4a82: $82
	call nz, $2b00                                   ; $4a83: $c4 $00 $2b
	add  e                                           ; $4a86: $83
	rst  $30                                         ; $4a87: $f7
	add  b                                           ; $4a88: $80
	ret  nz                                          ; $4a89: $c0

	inc  bc                                          ; $4a8a: $03
	nop                                              ; $4a8b: $00
	rra                                              ; $4a8c: $1f
	jr   @+$09                                       ; $4a8d: $18 $07

	add  b                                           ; $4a8f: $80
	ld   a, a                                        ; $4a90: $7f
	inc  l                                           ; $4a91: $2c
	ld   h, e                                        ; $4a92: $63
	ld   a, l                                        ; $4a93: $7d
	or   h                                           ; $4a94: $b4
	cp   $00                                         ; $4a95: $fe $00
	cp   $04                                         ; $4a97: $fe $04
	cp   $84                                         ; $4a99: $fe $84
	cp   $40                                         ; $4a9b: $fe $40
	cp   $20                                         ; $4a9d: $fe $20
	cp   $64                                         ; $4a9f: $fe $64
	cp   $de                                         ; $4aa1: $fe $de
	ld   c, $aa                                      ; $4aa3: $0e $aa
	rst  $38                                         ; $4aa5: $ff
	nop                                              ; $4aa6: $00
	rst  $38                                         ; $4aa7: $ff
	ld   [de], a                                     ; $4aa8: $12
	rst  $38                                         ; $4aa9: $ff
	ld   [hl-], a                                    ; $4aaa: $32
	rst  $38                                         ; $4aab: $ff
	ld   h, d                                        ; $4aac: $62
	rst  $38                                         ; $4aad: $ff
	sub  $ff                                         ; $4aae: $d6 $ff
	cp   [hl]                                        ; $4ab0: $be
	rst  $38                                         ; $4ab1: $ff
	ld   a, a                                        ; $4ab2: $7f
	rst  $38                                         ; $4ab3: $ff
	ld   l, a                                        ; $4ab4: $6f
	rst  $38                                         ; $4ab5: $ff
	ccf                                              ; $4ab6: $3f
	rst  $38                                         ; $4ab7: $ff
	ccf                                              ; $4ab8: $3f
	rst  $38                                         ; $4ab9: $ff
	ld   a, a                                        ; $4aba: $7f
	rst  $38                                         ; $4abb: $ff
	ld   a, a                                        ; $4abc: $7f
	rst  $38                                         ; $4abd: $ff
	ld   a, a                                        ; $4abe: $7f
	add  e                                           ; $4abf: $83
	rst  $38                                         ; $4ac0: $ff
	ld   [bc], a                                     ; $4ac1: $02
	db   $ed                                         ; $4ac2: $ed
	rst  $38                                         ; $4ac3: $ff
	db   $fd                                         ; $4ac4: $fd
	add  l                                           ; $4ac5: $85
	rst  $38                                         ; $4ac6: $ff
	nop                                              ; $4ac7: $00
	db   $fd                                         ; $4ac8: $fd
	add  e                                           ; $4ac9: $83
	rst  $38                                         ; $4aca: $ff
	nop                                              ; $4acb: $00
	db   $fd                                         ; $4acc: $fd
	sbc  c                                           ; $4acd: $99
	rst  $38                                         ; $4ace: $ff
	ld   [bc], a                                     ; $4acf: $02
	cp   a                                           ; $4ad0: $bf
	rst  $38                                         ; $4ad1: $ff
	cp   a                                           ; $4ad2: $bf
	adc  c                                           ; $4ad3: $89
	rst  $38                                         ; $4ad4: $ff
	nop                                              ; $4ad5: $00
	rst  $30                                         ; $4ad6: $f7
	add  e                                           ; $4ad7: $83
	rst  $38                                         ; $4ad8: $ff
	nop                                              ; $4ad9: $00
	rst  $30                                         ; $4ada: $f7
	adc  e                                           ; $4adb: $8b
	rst  $38                                         ; $4adc: $ff
	ld   [bc], a                                     ; $4add: $02
	rst  JumpTable                                         ; $4ade: $df
	rst  $38                                         ; $4adf: $ff
	ld   e, a                                        ; $4ae0: $5f
	add  e                                           ; $4ae1: $83
	rst  $38                                         ; $4ae2: $ff
	dec  e                                           ; $4ae3: $1d
	rst  JumpTable                                         ; $4ae4: $df
	rst  $38                                         ; $4ae5: $ff
	rst  JumpTable                                         ; $4ae6: $df
	rst  $38                                         ; $4ae7: $ff
	cp   $ff                                         ; $4ae8: $fe $ff
	ld   a, [hl]                                     ; $4aea: $7e
	ld   a, a                                        ; $4aeb: $7f
	ld   e, h                                        ; $4aec: $5c
	ld   a, a                                        ; $4aed: $7f
	pop  af                                          ; $4aee: $f1
	db   $ed                                         ; $4aef: $ed
	dec  bc                                          ; $4af0: $0b
	db   $eb                                         ; $4af1: $eb
	sub  h                                           ; $4af2: $94
	rst  $30                                         ; $4af3: $f7
	sub  a                                           ; $4af4: $97
	rst  $30                                         ; $4af5: $f7
	rla                                              ; $4af6: $17
	rst  $30                                         ; $4af7: $f7
	rla                                              ; $4af8: $17
	rst  $30                                         ; $4af9: $f7
	rla                                              ; $4afa: $17
	rst  $30                                         ; $4afb: $f7
	ld   [hl], a                                     ; $4afc: $77
	rst  $30                                         ; $4afd: $f7
	ld   h, e                                        ; $4afe: $63
	ld   d, b                                        ; $4aff: $50
	db   $fc                                         ; $4b00: $fc
	inc  c                                           ; $4b01: $0c
	add  d                                           ; $4b02: $82
	ld   a, [hl-]                                    ; $4b03: $3a
	add  d                                           ; $4b04: $82
	ld   d, [hl]                                     ; $4b05: $56
	add  d                                           ; $4b06: $82
	ld   l, [hl]                                     ; $4b07: $6e
	ld   bc, $01f1                                   ; $4b08: $01 $f1 $01
	add  b                                           ; $4b0b: $80
	inc  bc                                          ; $4b0c: $03
	add  b                                           ; $4b0d: $80
	ld   bc, $0380                                   ; $4b0e: $01 $80 $03
	add  b                                           ; $4b11: $80
	ld   bc, $0380                                   ; $4b12: $01 $80 $03
	add  b                                           ; $4b15: $80
	ld   bc, $0380                                   ; $4b16: $01 $80 $03
	ld   hl, $ffe1                                   ; $4b19: $21 $e1 $ff
	ldh  a, [rIE]                                    ; $4b1c: $f0 $ff
	pop  af                                          ; $4b1e: $f1
	rst  $38                                         ; $4b1f: $ff
	di                                               ; $4b20: $f3
	rst  $38                                         ; $4b21: $ff
	di                                               ; $4b22: $f3
	rst  $38                                         ; $4b23: $ff
	ldh  a, [rIE]                                    ; $4b24: $f0 $ff
	db   $fc                                         ; $4b26: $fc
	rst  $38                                         ; $4b27: $ff
	ld   sp, hl                                      ; $4b28: $f9
	rst  $38                                         ; $4b29: $ff
	dec  e                                           ; $4b2a: $1d
	rst  $38                                         ; $4b2b: $ff
	rlca                                             ; $4b2c: $07
	rst  $38                                         ; $4b2d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b2e: $cf
	rst  $38                                         ; $4b2f: $ff
	ret  nz                                          ; $4b30: $c0

	rst  $38                                         ; $4b31: $ff
	nop                                              ; $4b32: $00
	rst  $38                                         ; $4b33: $ff
	dec  c                                           ; $4b34: $0d
	rst  $38                                         ; $4b35: $ff
	add  sp, -$01                                    ; $4b36: $e8 $ff
	ld   b, c                                        ; $4b38: $41
	rst  $38                                         ; $4b39: $ff
	ld   c, h                                        ; $4b3a: $4c
	call nz, Call_074_4480                           ; $4b3b: $c4 $80 $44
	add  b                                           ; $4b3e: $80
	call nz, Call_074_4480                           ; $4b3f: $c4 $80 $44
	add  l                                           ; $4b42: $85
	call nz, $e435                                   ; $4b43: $c4 $35 $e4
	xor  a                                           ; $4b46: $af
	ld   a, l                                        ; $4b47: $7d
	ld   c, l                                        ; $4b48: $4d
	ld   a, l                                        ; $4b49: $7d
	ld   hl, $633f                                   ; $4b4a: $21 $3f $63
	ld   a, l                                        ; $4b4d: $7d
	ld   c, l                                        ; $4b4e: $4d
	ld   a, l                                        ; $4b4f: $7d
	ld   c, l                                        ; $4b50: $4d
	ld   a, l                                        ; $4b51: $7d
	ld   c, l                                        ; $4b52: $4d
	ld   a, l                                        ; $4b53: $7d
	ld   c, a                                        ; $4b54: $4f
	ld   a, a                                        ; $4b55: $7f
	ld   l, h                                        ; $4b56: $6c
	ld   a, l                                        ; $4b57: $7d
	ld   l, l                                        ; $4b58: $6d
	ld   a, l                                        ; $4b59: $7d
	ld   c, l                                        ; $4b5a: $4d
	ld   a, l                                        ; $4b5b: $7d
	ld   c, l                                        ; $4b5c: $4d
	ld   a, l                                        ; $4b5d: $7d
	nop                                              ; $4b5e: $00
	rra                                              ; $4b5f: $1f
	ld   d, d                                        ; $4b60: $52
	ld   a, l                                        ; $4b61: $7d
	ld   c, l                                        ; $4b62: $4d
	ld   a, l                                        ; $4b63: $7d
	ld   c, l                                        ; $4b64: $4d
	ld   a, l                                        ; $4b65: $7d
	cpl                                              ; $4b66: $2f
	rst  $38                                         ; $4b67: $ff
	ld   hl, sp+$07                                  ; $4b68: $f8 $07
	and  b                                           ; $4b6a: $a0
	rst  $38                                         ; $4b6b: $ff
	rra                                              ; $4b6c: $1f
	rst  $38                                         ; $4b6d: $ff
	rra                                              ; $4b6e: $1f
	rst  $38                                         ; $4b6f: $ff
	rrca                                             ; $4b70: $0f
	rst  $38                                         ; $4b71: $ff
	rrca                                             ; $4b72: $0f
	rst  $38                                         ; $4b73: $ff
	dec  bc                                          ; $4b74: $0b
	rst  $38                                         ; $4b75: $ff
	cp   e                                           ; $4b76: $bb
	rst  $38                                         ; $4b77: $ff
	db   $10                                         ; $4b78: $10
	rst  $38                                         ; $4b79: $ff
	db   $10                                         ; $4b7a: $10
	adc  c                                           ; $4b7b: $89
	rst  $38                                         ; $4b7c: $ff
	inc  b                                           ; $4b7d: $04
	db   $ed                                         ; $4b7e: $ed
	rst  $38                                         ; $4b7f: $ff
	ldh  [c], a                                      ; $4b80: $e2
	rst  $38                                         ; $4b81: $ff
	ldh  [c], a                                      ; $4b82: $e2
	add  c                                           ; $4b83: $81
	rst  $38                                         ; $4b84: $ff
	nop                                              ; $4b85: $00
	ldh  a, [c]                                      ; $4b86: $f2
	add  l                                           ; $4b87: $85
	ld   hl, sp+$04                                  ; $4b88: $f8 $04
	rst  $30                                         ; $4b8a: $f7
	rst  $38                                         ; $4b8b: $ff
	dec  a                                           ; $4b8c: $3d
	rst  $38                                         ; $4b8d: $ff
	dec  a                                           ; $4b8e: $3d
	add  c                                           ; $4b8f: $81
	rst  $38                                         ; $4b90: $ff
	add  b                                           ; $4b91: $80
	dec  d                                           ; $4b92: $15
	add  b                                           ; $4b93: $80
	dec  hl                                          ; $4b94: $2b
	add  b                                           ; $4b95: $80
	ld   d, a                                        ; $4b96: $57
	add  b                                           ; $4b97: $80
	xor  [hl]                                        ; $4b98: $ae
	inc  b                                           ; $4b99: $04
	cp   a                                           ; $4b9a: $bf
	rst  $38                                         ; $4b9b: $ff
	ld   b, e                                        ; $4b9c: $43
	rst  $38                                         ; $4b9d: $ff
	ld   b, e                                        ; $4b9e: $43
	add  c                                           ; $4b9f: $81
	rst  $38                                         ; $4ba0: $ff
	ld   bc, $d494                                   ; $4ba1: $01 $94 $d4
	add  b                                           ; $4ba4: $80
	xor  b                                           ; $4ba5: $a8
	add  b                                           ; $4ba6: $80
	ld   b, c                                        ; $4ba7: $41
	add  b                                           ; $4ba8: $80
	add  d                                           ; $4ba9: $82
	inc  b                                           ; $4baa: $04
	rst  $30                                         ; $4bab: $f7
	rst  $38                                         ; $4bac: $ff
	ld   [$08ff], sp                                 ; $4bad: $08 $ff $08
	add  c                                           ; $4bb0: $81
	rst  $38                                         ; $4bb1: $ff
	ld   bc, $5f53                                   ; $4bb2: $01 $53 $5f
	add  b                                           ; $4bb5: $80
	cp   a                                           ; $4bb6: $bf
	add  b                                           ; $4bb7: $80
	ld   [hl], a                                     ; $4bb8: $77
	add  b                                           ; $4bb9: $80
	rst  $28                                         ; $4bba: $ef
	inc  b                                           ; $4bbb: $04
	ei                                               ; $4bbc: $fb
	rst  $38                                         ; $4bbd: $ff
	jr   c, @+$01                                    ; $4bbe: $38 $ff

	jr   c, @-$7b                                    ; $4bc0: $38 $83

	rst  $38                                         ; $4bc2: $ff
	ld   h, $fb                                      ; $4bc3: $26 $fb
	rst  $38                                         ; $4bc5: $ff
	di                                               ; $4bc6: $f3
	rst  $38                                         ; $4bc7: $ff
	and  $ff                                         ; $4bc8: $e6 $ff
	db   $ec                                         ; $4bca: $ec
	ld   a, a                                        ; $4bcb: $7f
	ld   [bc], a                                     ; $4bcc: $02
	ld   a, a                                        ; $4bcd: $7f
	nop                                              ; $4bce: $00
	ld   a, a                                        ; $4bcf: $7f
	ret  z                                           ; $4bd0: $c8

	rst  $38                                         ; $4bd1: $ff
	ld   [$d8ff], a                                  ; $4bd2: $ea $ff $d8
	rst  $38                                         ; $4bd5: $ff
	ldh  a, [rIE]                                    ; $4bd6: $f0 $ff
	call nz, $faff                                   ; $4bd8: $c4 $ff $fa
	rst  $30                                         ; $4bdb: $f7
	rst  ToBoot                                         ; $4bdc: $c7
	add  a                                           ; $4bdd: $87
	or   a                                           ; $4bde: $b7
	rst  $30                                         ; $4bdf: $f7
	inc  [hl]                                        ; $4be0: $34
	rst  $30                                         ; $4be1: $f7
	inc  [hl]                                        ; $4be2: $34
	rst  $30                                         ; $4be3: $f7
	scf                                              ; $4be4: $37
	rst  $30                                         ; $4be5: $f7
	inc  hl                                          ; $4be6: $23
	pop  hl                                          ; $4be7: $e1
	cp   [hl]                                        ; $4be8: $be
	rst  $38                                         ; $4be9: $ff
	xor  c                                           ; $4bea: $a9
	add  c                                           ; $4beb: $81
	rst  $38                                         ; $4bec: $ff
	nop                                              ; $4bed: $00
	inc  de                                          ; $4bee: $13
	add  c                                           ; $4bef: $81
	ld   a, a                                        ; $4bf0: $7f
	inc  bc                                          ; $4bf1: $03
	ld   b, l                                        ; $4bf2: $45
	ld   a, a                                        ; $4bf3: $7f
	inc  bc                                          ; $4bf4: $03
	ld   a, a                                        ; $4bf5: $7f
	add  b                                           ; $4bf6: $80
	rst  $38                                         ; $4bf7: $ff
	inc  bc                                          ; $4bf8: $03
	sbc  a                                           ; $4bf9: $9f
	rst  $28                                         ; $4bfa: $ef
	db   $fd                                         ; $4bfb: $fd
	ld   bc, $0380                                   ; $4bfc: $01 $80 $03
	add  b                                           ; $4bff: $80
	ld   bc, $0380                                   ; $4c00: $01 $80 $03
	add  b                                           ; $4c03: $80
	ld   bc, $0080                                   ; $4c04: $01 $80 $00
	add  b                                           ; $4c07: $80
	inc  bc                                          ; $4c08: $03
	ld   [hl+], a                                    ; $4c09: $22
	ld   a, [bc]                                     ; $4c0a: $0a
	rrca                                             ; $4c0b: $0f
	ldh  [rIE], a                                    ; $4c0c: $e0 $ff
	pop  af                                          ; $4c0e: $f1
	rst  $38                                         ; $4c0f: $ff
	ld   a, [$c7ff]                                  ; $4c10: $fa $ff $c7
	cp   $19                                         ; $4c13: $fe $19
	pop  bc                                          ; $4c15: $c1
	ld   a, [hl+]                                    ; $4c16: $2a
	ccf                                              ; $4c17: $3f
	ld   [$aaff], a                                  ; $4c18: $ea $ff $aa
	rst  $38                                         ; $4c1b: $ff
	add  hl, hl                                      ; $4c1c: $29
	rst  $38                                         ; $4c1d: $ff
	ld   h, b                                        ; $4c1e: $60
	rst  $38                                         ; $4c1f: $ff
	ld   a, h                                        ; $4c20: $7c
	ldh  [$8a], a                                    ; $4c21: $e0 $8a
	rra                                              ; $4c23: $1f
	ld   [$aaff], a                                  ; $4c24: $ea $ff $aa
	rst  $38                                         ; $4c27: $ff
	xor  d                                           ; $4c28: $aa
	rst  $38                                         ; $4c29: $ff
	xor  d                                           ; $4c2a: $aa
	rst  $38                                         ; $4c2b: $ff
	ld   d, l                                        ; $4c2c: $55
	add  b                                           ; $4c2d: $80
	rst  $38                                         ; $4c2e: $ff
	nop                                              ; $4c2f: $00
	nop                                              ; $4c30: $00
	add  b                                           ; $4c31: $80
	rst  $38                                         ; $4c32: $ff
	ld   a, [bc]                                     ; $4c33: $0a
	xor  d                                           ; $4c34: $aa
	rst  $38                                         ; $4c35: $ff
	xor  d                                           ; $4c36: $aa
	rst  $38                                         ; $4c37: $ff
	xor  d                                           ; $4c38: $aa
	rst  $38                                         ; $4c39: $ff
	xor  d                                           ; $4c3a: $aa
	rst  $38                                         ; $4c3b: $ff
	xor  d                                           ; $4c3c: $aa
	rst  $38                                         ; $4c3d: $ff
	ld   d, l                                        ; $4c3e: $55
	add  b                                           ; $4c3f: $80
	rst  $38                                         ; $4c40: $ff
	nop                                              ; $4c41: $00
	nop                                              ; $4c42: $00
	add  b                                           ; $4c43: $80
	rst  $38                                         ; $4c44: $ff
	ld   a, [bc]                                     ; $4c45: $0a
	xor  d                                           ; $4c46: $aa
	rst  $38                                         ; $4c47: $ff
	xor  d                                           ; $4c48: $aa
	rst  $38                                         ; $4c49: $ff
	xor  d                                           ; $4c4a: $aa
	rst  $38                                         ; $4c4b: $ff
	xor  d                                           ; $4c4c: $aa
	rst  $38                                         ; $4c4d: $ff
	xor  d                                           ; $4c4e: $aa
	rst  $38                                         ; $4c4f: $ff
	ld   d, l                                        ; $4c50: $55
	add  b                                           ; $4c51: $80
	rst  $38                                         ; $4c52: $ff
	nop                                              ; $4c53: $00
	nop                                              ; $4c54: $00
	add  b                                           ; $4c55: $80
	rst  $38                                         ; $4c56: $ff
	ld   a, [de]                                     ; $4c57: $1a
	xor  e                                           ; $4c58: $ab
	rst  $38                                         ; $4c59: $ff
	xor  d                                           ; $4c5a: $aa
	rst  $38                                         ; $4c5b: $ff
	cp   b                                           ; $4c5c: $b8
	rst  $38                                         ; $4c5d: $ff
	and  b                                           ; $4c5e: $a0
	rst  $38                                         ; $4c5f: $ff
	add  c                                           ; $4c60: $81
	rst  $38                                         ; $4c61: $ff
	ld   h, [hl]                                     ; $4c62: $66
	rst  $38                                         ; $4c63: $ff
	db   $ed                                         ; $4c64: $ed
	rra                                              ; $4c65: $1f

jr_074_4c66:
	pop  hl                                          ; $4c66: $e1
	rst  $38                                         ; $4c67: $ff
	and  e                                           ; $4c68: $a3
	rst  $38                                         ; $4c69: $ff
	rrca                                             ; $4c6a: $0f
	rst  $38                                         ; $4c6b: $ff
	add  hl, sp                                      ; $4c6c: $39
	rst  $38                                         ; $4c6d: $ff
	ld   [hl], c                                     ; $4c6e: $71
	ei                                               ; $4c6f: $fb
	jp   $dafb                                       ; $4c70: $c3 $fb $da


	add  e                                           ; $4c73: $83
	rst  $38                                         ; $4c74: $ff
	ld   c, $bf                                      ; $4c75: $0e $bf
	rst  $38                                         ; $4c77: $ff
	ccf                                              ; $4c78: $3f
	rst  $38                                         ; $4c79: $ff
	cpl                                              ; $4c7a: $2f
	rst  $28                                         ; $4c7b: $ef
	ld   l, [hl]                                     ; $4c7c: $6e
	pop  bc                                          ; $4c7d: $c1
	ld   d, l                                        ; $4c7e: $55
	rst  $38                                         ; $4c7f: $ff
	and  h                                           ; $4c80: $a4
	ld   sp, hl                                      ; $4c81: $f9
	ld   hl, sp-$01                                  ; $4c82: $f8 $ff
	ldh  a, [c]                                      ; $4c84: $f2
	add  e                                           ; $4c85: $83
	rst  $38                                         ; $4c86: $ff
	add  b                                           ; $4c87: $80
	db   $fd                                         ; $4c88: $fd
	ld   [$f00d], sp                                 ; $4c89: $08 $0d $f0
	ld   d, l                                        ; $4c8c: $55
	rst  $38                                         ; $4c8d: $ff
	add  hl, bc                                      ; $4c8e: $09
	ld   e, h                                        ; $4c8f: $5c
	nop                                              ; $4c90: $00
	rst  $38                                         ; $4c91: $ff
	nop                                              ; $4c92: $00
	add  l                                           ; $4c93: $85
	rst  $38                                         ; $4c94: $ff
	ld   [$1fe0], sp                                 ; $4c95: $08 $e0 $1f
	ld   d, l                                        ; $4c98: $55
	rst  $38                                         ; $4c99: $ff
	ld   d, b                                        ; $4c9a: $50
	dec  b                                           ; $4c9b: $05
	nop                                              ; $4c9c: $00
	rst  $38                                         ; $4c9d: $ff
	ld   b, b                                        ; $4c9e: $40
	add  l                                           ; $4c9f: $85
	rst  $38                                         ; $4ca0: $ff
	ld   sp, $ff40                                   ; $4ca1: $31 $40 $ff
	ld   d, l                                        ; $4ca4: $55
	rst  $38                                         ; $4ca5: $ff
	adc  [hl]                                        ; $4ca6: $8e
	rst  JumpTable                                         ; $4ca7: $df
	rlca                                             ; $4ca8: $07
	rst  $38                                         ; $4ca9: $ff
	dec  bc                                          ; $4caa: $0b
	rst  $38                                         ; $4cab: $ff
	cp   $ff                                         ; $4cac: $fe $ff
	cp   $ff                                         ; $4cae: $fe $ff
	ld   a, [$0dff]                                  ; $4cb0: $fa $ff $0d
	rst  $38                                         ; $4cb3: $ff
	ld   d, l                                        ; $4cb4: $55
	rst  $38                                         ; $4cb5: $ff
	xor  d                                           ; $4cb6: $aa
	rst  $38                                         ; $4cb7: $ff
	cp   [hl]                                        ; $4cb8: $be
	rst  $38                                         ; $4cb9: $ff
	inc  a                                           ; $4cba: $3c
	rst  $38                                         ; $4cbb: $ff
	jr   c, @+$01                                    ; $4cbc: $38 $ff

	db   $10                                         ; $4cbe: $10
	rst  $38                                         ; $4cbf: $ff
	nop                                              ; $4cc0: $00
	rst  $38                                         ; $4cc1: $ff
	ld   d, h                                        ; $4cc2: $54
	cp   $5f                                         ; $4cc3: $fe $5f
	rst  $38                                         ; $4cc5: $ff
	dec  bc                                          ; $4cc6: $0b
	rst  $38                                         ; $4cc7: $ff
	ld   bc, $017f                                   ; $4cc8: $01 $7f $01
	ld   a, a                                        ; $4ccb: $7f
	inc  bc                                          ; $4ccc: $03
	ld   a, a                                        ; $4ccd: $7f
	rlca                                             ; $4cce: $07
	ld   a, a                                        ; $4ccf: $7f
	rrca                                             ; $4cd0: $0f
	ld   a, a                                        ; $4cd1: $7f
	jr   nz, jr_074_4cd4                             ; $4cd2: $20 $00

jr_074_4cd4:
	add  b                                           ; $4cd4: $80
	ld   hl, sp+$01                                  ; $4cd5: $f8 $01
	rst  JumpTable                                         ; $4cd7: $df
	rra                                              ; $4cd8: $1f
	add  b                                           ; $4cd9: $80
	call c, $1b80                                    ; $4cda: $dc $80 $1b
	add  b                                           ; $4cdd: $80
	inc  bc                                          ; $4cde: $03
	add  b                                           ; $4cdf: $80
	db   $db                                         ; $4ce0: $db
	add  b                                           ; $4ce1: $80
	jr   jr_074_4c66                                 ; $4ce2: $18 $82

	dec  de                                          ; $4ce4: $1b
	inc  de                                          ; $4ce5: $13
	and  e                                           ; $4ce6: $a3
	rst  $28                                         ; $4ce7: $ef
	ld   a, h                                        ; $4ce8: $7c
	ldh  a, [rTIMA]                                  ; $4ce9: $f0 $05
	rst  $38                                         ; $4ceb: $ff
	ldh  a, [rIE]                                    ; $4cec: $f0 $ff
	ldh  a, [rIE]                                    ; $4cee: $f0 $ff
	ld   a, [bc]                                     ; $4cf0: $0a
	ldh  a, [$2f]                                    ; $4cf1: $f0 $2f
	rst  $38                                         ; $4cf3: $ff
	rst  ToBoot                                         ; $4cf4: $c7
	rst  $38                                         ; $4cf5: $ff
	jr   jr_074_4d07                                 ; $4cf6: $18 $0f

	nop                                              ; $4cf8: $00
	rrca                                             ; $4cf9: $0f
	add  d                                           ; $4cfa: $82
	nop                                              ; $4cfb: $00
	add  b                                           ; $4cfc: $80
	inc  bc                                          ; $4cfd: $03
	add  b                                           ; $4cfe: $80
	ld   [bc], a                                     ; $4cff: $02
	add  b                                           ; $4d00: $80
	ld   bc, $0080                                   ; $4d01: $01 $80 $00
	inc  bc                                          ; $4d04: $03
	ldh  a, [rIE]                                    ; $4d05: $f0 $ff

jr_074_4d07:
	nop                                              ; $4d07: $00
	rst  $38                                         ; $4d08: $ff
	add  d                                           ; $4d09: $82
	nop                                              ; $4d0a: $00
	add  b                                           ; $4d0b: $80
	rst  $38                                         ; $4d0c: $ff
	add  b                                           ; $4d0d: $80
	xor  d                                           ; $4d0e: $aa
	add  b                                           ; $4d0f: $80
	ld   d, l                                        ; $4d10: $55
	add  c                                           ; $4d11: $81
	nop                                              ; $4d12: $00
	ld   [bc], a                                     ; $4d13: $02
	rst  $38                                         ; $4d14: $ff
	nop                                              ; $4d15: $00
	rst  $38                                         ; $4d16: $ff
	add  d                                           ; $4d17: $82
	nop                                              ; $4d18: $00
	add  b                                           ; $4d19: $80
	rst  $38                                         ; $4d1a: $ff
	add  b                                           ; $4d1b: $80
	xor  d                                           ; $4d1c: $aa
	add  b                                           ; $4d1d: $80
	ld   d, l                                        ; $4d1e: $55
	add  c                                           ; $4d1f: $81
	nop                                              ; $4d20: $00
	ld   [bc], a                                     ; $4d21: $02
	rst  $38                                         ; $4d22: $ff
	nop                                              ; $4d23: $00
	rst  $38                                         ; $4d24: $ff
	add  d                                           ; $4d25: $82
	nop                                              ; $4d26: $00
	add  b                                           ; $4d27: $80
	rst  $38                                         ; $4d28: $ff
	add  b                                           ; $4d29: $80
	xor  d                                           ; $4d2a: $aa
	add  b                                           ; $4d2b: $80
	ld   d, l                                        ; $4d2c: $55
	add  c                                           ; $4d2d: $81
	nop                                              ; $4d2e: $00
	ld   [bc], a                                     ; $4d2f: $02
	rst  $38                                         ; $4d30: $ff
	nop                                              ; $4d31: $00
	rst  $38                                         ; $4d32: $ff
	add  b                                           ; $4d33: $80
	ld   [bc], a                                     ; $4d34: $02
	add  b                                           ; $4d35: $80
	ld   bc, $fa80                                   ; $4d36: $01 $80 $fa
	add  b                                           ; $4d39: $80
	xor  c                                           ; $4d3a: $a9
	add  b                                           ; $4d3b: $80
	ld   d, d                                        ; $4d3c: $52
	add  b                                           ; $4d3d: $80
	ld   bc, $6024                                   ; $4d3e: $01 $24 $60
	rst  $38                                         ; $4d41: $ff
	ld   e, $ff                                      ; $4d42: $1e $ff
	cp   h                                           ; $4d44: $bc
	rst  $38                                         ; $4d45: $ff
	ld   sp, $637f                                   ; $4d46: $31 $7f $63
	ld   a, a                                        ; $4d49: $7f
	inc  e                                           ; $4d4a: $1c
	ld   a, a                                        ; $4d4b: $7f
	ld   a, [de]                                     ; $4d4c: $1a
	ld   a, a                                        ; $4d4d: $7f
	ld   [hl], c                                     ; $4d4e: $71
	ld   a, a                                        ; $4d4f: $7f
	ld   l, $fb                                      ; $4d50: $2e $fb
	dec  hl                                          ; $4d52: $2b
	ei                                               ; $4d53: $fb
	ld   a, e                                        ; $4d54: $7b
	ei                                               ; $4d55: $fb
	sub  e                                           ; $4d56: $93
	ei                                               ; $4d57: $fb
	inc  bc                                          ; $4d58: $03
	ei                                               ; $4d59: $fb
	ld   l, e                                        ; $4d5a: $6b
	ei                                               ; $4d5b: $fb
	set  7, e                                        ; $4d5c: $cb $fb
	adc  a                                           ; $4d5e: $8f
	rst  $38                                         ; $4d5f: $ff
	ld   [$50ff], sp                                 ; $4d60: $08 $ff $50
	rst  $38                                         ; $4d63: $ff
	ld   a, [$ff89]                                  ; $4d64: $fa $89 $ff
	ld   b, $55                                      ; $4d67: $06 $55
	rst  $38                                         ; $4d69: $ff
	nop                                              ; $4d6a: $00
	rst  $38                                         ; $4d6b: $ff
	xor  b                                           ; $4d6c: $a8
	rst  $38                                         ; $4d6d: $ff
	db   $fd                                         ; $4d6e: $fd
	add  a                                           ; $4d6f: $87
	rst  $38                                         ; $4d70: $ff
	ld   [$ff55], sp                                 ; $4d71: $08 $55 $ff
	nop                                              ; $4d74: $00
	rst  $38                                         ; $4d75: $ff
	nop                                              ; $4d76: $00
	rst  $38                                         ; $4d77: $ff
	ld   d, b                                        ; $4d78: $50
	rst  $38                                         ; $4d79: $ff
	ld   a, [$ff85]                                  ; $4d7a: $fa $85 $ff
	ld   bc, $55aa                                   ; $4d7d: $01 $aa $55
	add  b                                           ; $4d80: $80
	xor  d                                           ; $4d81: $aa
	ld   bc, $5554                                   ; $4d82: $01 $54 $55
	add  b                                           ; $4d85: $80
	xor  e                                           ; $4d86: $ab
	add  b                                           ; $4d87: $80
	push af                                          ; $4d88: $f5
	add  h                                           ; $4d89: $84
	rst  $38                                         ; $4d8a: $ff
	ld   bc, $5554                                   ; $4d8b: $01 $54 $55
	add  b                                           ; $4d8e: $80
	xor  d                                           ; $4d8f: $aa
	ld   bc, $ff00                                   ; $4d90: $01 $00 $ff
	add  b                                           ; $4d93: $80
	add  e                                           ; $4d94: $83
	add  b                                           ; $4d95: $80
	ld   a, h                                        ; $4d96: $7c
	add  b                                           ; $4d97: $80
	nop                                              ; $4d98: $00
	nop                                              ; $4d99: $00
	rst  $38                                         ; $4d9a: $ff
	add  b                                           ; $4d9b: $80
	ld   d, l                                        ; $4d9c: $55
	ld   [bc], a                                     ; $4d9d: $02
	xor  d                                           ; $4d9e: $aa
	cp   $54                                         ; $4d9f: $fe $54
	add  b                                           ; $4da1: $80
	xor  d                                           ; $4da2: $aa
	ld   bc, $ff00                                   ; $4da3: $01 $00 $ff
	add  b                                           ; $4da6: $80
	adc  a                                           ; $4da7: $8f
	add  b                                           ; $4da8: $80
	ld   h, b                                        ; $4da9: $60
	add  b                                           ; $4daa: $80
	nop                                              ; $4dab: $00
	nop                                              ; $4dac: $00
	rst  $38                                         ; $4dad: $ff
	add  b                                           ; $4dae: $80
	ld   d, l                                        ; $4daf: $55
	add  b                                           ; $4db0: $80
	xor  d                                           ; $4db1: $aa
	nop                                              ; $4db2: $00
	nop                                              ; $4db3: $00
	add  b                                           ; $4db4: $80
	add  b                                           ; $4db5: $80
	ld   bc, $ff00                                   ; $4db6: $01 $00 $ff
	add  b                                           ; $4db9: $80
	ret  nz                                          ; $4dba: $c0

	add  b                                           ; $4dbb: $80
	inc  sp                                          ; $4dbc: $33
	add  b                                           ; $4dbd: $80
	nop                                              ; $4dbe: $00
	nop                                              ; $4dbf: $00
	rst  $38                                         ; $4dc0: $ff
	add  b                                           ; $4dc1: $80
	ld   d, l                                        ; $4dc2: $55
	ld   [bc], a                                     ; $4dc3: $02
	xor  d                                           ; $4dc4: $aa
	ld   l, d                                        ; $4dc5: $6a
	nop                                              ; $4dc6: $00
	add  d                                           ; $4dc7: $82
	dec  de                                          ; $4dc8: $1b
	add  b                                           ; $4dc9: $80
	sbc  e                                           ; $4dca: $9b
	add  b                                           ; $4dcb: $80
	ld   e, e                                        ; $4dcc: $5b
	dec  d                                           ; $4dcd: $15
	inc  bc                                          ; $4dce: $03
	inc  hl                                          ; $4dcf: $23
	ldh  [$60], a                                    ; $4dd0: $e0 $60
	ld   h, l                                        ; $4dd2: $65
	and  l                                           ; $4dd3: $a5
	jr   nz, @+$01                                   ; $4dd4: $20 $ff

	cp   a                                           ; $4dd6: $bf
	rst  $38                                         ; $4dd7: $ff
	sbc  a                                           ; $4dd8: $9f
	rst  $38                                         ; $4dd9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dda: $cf
	rst  $38                                         ; $4ddb: $ff
	push hl                                          ; $4ddc: $e5
	rst  $38                                         ; $4ddd: $ff
	ldh  a, [c]                                      ; $4dde: $f2
	rst  $38                                         ; $4ddf: $ff
	ld   sp, hl                                      ; $4de0: $f9
	rst  $38                                         ; $4de1: $ff
	cp   $ff                                         ; $4de2: $fe $ff
	ld   c, h                                        ; $4de4: $4c
	ld   [bc], a                                     ; $4de5: $02
	add  [hl]                                        ; $4de6: $86
	nop                                              ; $4de7: $00
	nop                                              ; $4de8: $00
	rrca                                             ; $4de9: $0f
	add  b                                           ; $4dea: $80
	dec  bc                                          ; $4deb: $0b
	add  e                                           ; $4dec: $83
	ld   a, [bc]                                     ; $4ded: $0a
	nop                                              ; $4dee: $00
	dec  b                                           ; $4def: $05
	add  l                                           ; $4df0: $85
	nop                                              ; $4df1: $00
	ld   [bc], a                                     ; $4df2: $02
	db   $fc                                         ; $4df3: $fc
	ldh  a, [$f3]                                    ; $4df4: $f0 $f3
	add  b                                           ; $4df6: $80
	db   $fc                                         ; $4df7: $fc
	add  b                                           ; $4df8: $80
	cp   a                                           ; $4df9: $bf
	ld   bc, $50af                                   ; $4dfa: $01 $af $50
	add  [hl]                                        ; $4dfd: $86
	nop                                              ; $4dfe: $00
	add  b                                           ; $4dff: $80
	rst  $38                                         ; $4e00: $ff

jr_074_4e01:
	ld   bc, $ff3f                                   ; $4e01: $01 $3f $ff
	add  b                                           ; $4e04: $80
	rrca                                             ; $4e05: $0f
	ld   bc, $33f3                                   ; $4e06: $01 $f3 $33
	add  [hl]                                        ; $4e09: $86
	nop                                              ; $4e0a: $00
	add  [hl]                                        ; $4e0b: $86
	rst  $38                                         ; $4e0c: $ff
	rlca                                             ; $4e0d: $07
	and  b                                           ; $4e0e: $a0
	jr   nz, jr_074_4e61                             ; $4e0f: $20 $50

	or   b                                           ; $4e11: $b0
	add  b                                           ; $4e12: $80
	ldh  a, [rLCDC]                                  ; $4e13: $f0 $40
	ld   d, b                                        ; $4e15: $50
	add  b                                           ; $4e16: $80
	and  b                                           ; $4e17: $a0
	add  b                                           ; $4e18: $80
	ld   d, b                                        ; $4e19: $50
	add  b                                           ; $4e1a: $80
	and  b                                           ; $4e1b: $a0
	dec  b                                           ; $4e1c: $05
	ld   d, b                                        ; $4e1d: $50
	ld   d, [hl]                                     ; $4e1e: $56
	nop                                              ; $4e1f: $00
	rlca                                             ; $4e20: $07
	nop                                              ; $4e21: $00
	ld   bc, $0085                                   ; $4e22: $01 $85 $00
	ld   [bc], a                                     ; $4e25: $02
	rst  $38                                         ; $4e26: $ff
	nop                                              ; $4e27: $00
	rst  $38                                         ; $4e28: $ff
	adc  b                                           ; $4e29: $88
	nop                                              ; $4e2a: $00
	add  b                                           ; $4e2b: $80
	dec  bc                                          ; $4e2c: $0b
	add  b                                           ; $4e2d: $80
	dec  b                                           ; $4e2e: $05
	add  b                                           ; $4e2f: $80
	dec  bc                                          ; $4e30: $0b
	add  b                                           ; $4e31: $80
	dec  b                                           ; $4e32: $05
	add  l                                           ; $4e33: $85
	nop                                              ; $4e34: $00
	nop                                              ; $4e35: $00
	ld   [$f785], sp                                 ; $4e36: $08 $85 $f7
	ld   b, $ff                                      ; $4e39: $06 $ff
	and  b                                           ; $4e3b: $a0
	ld   b, b                                        ; $4e3c: $40
	db   $10                                         ; $4e3d: $10
	ldh  [hScriptOpcodeParams], a                                    ; $4e3e: $e0 $a0
	or   b                                           ; $4e40: $b0
	add  b                                           ; $4e41: $80
	ld   d, b                                        ; $4e42: $50
	inc  bc                                          ; $4e43: $03
	and  b                                           ; $4e44: $a0
	ld   d, b                                        ; $4e45: $50
	nop                                              ; $4e46: $00
	ldh  a, [$80]                                    ; $4e47: $f0 $80
	and  b                                           ; $4e49: $a0
	add  b                                           ; $4e4a: $80
	ld   d, b                                        ; $4e4b: $50
	add  [hl]                                        ; $4e4c: $86
	nop                                              ; $4e4d: $00
	add  d                                           ; $4e4e: $82
	ld   bc, $8380                                   ; $4e4f: $01 $80 $83
	add  b                                           ; $4e52: $80
	rst  ToBoot                                         ; $4e53: $c7
	add  [hl]                                        ; $4e54: $86
	nop                                              ; $4e55: $00
	add  b                                           ; $4e56: $80
	rst  $38                                         ; $4e57: $ff
	add  b                                           ; $4e58: $80
	pop  bc                                          ; $4e59: $c1
	add  b                                           ; $4e5a: $80
	db   $e3                                         ; $4e5b: $e3
	add  b                                           ; $4e5c: $80
	rst  $38                                         ; $4e5d: $ff
	add  [hl]                                        ; $4e5e: $86
	nop                                              ; $4e5f: $00
	add  d                                           ; $4e60: $82

jr_074_4e61:
	ldh  a, [$80]                                    ; $4e61: $f0 $80
	ld   hl, sp-$80                                  ; $4e63: $f8 $80
	db   $fc                                         ; $4e65: $fc
	add  [hl]                                        ; $4e66: $86
	nop                                              ; $4e67: $00
	add  d                                           ; $4e68: $82
	rra                                              ; $4e69: $1f
	dec  b                                           ; $4e6a: $05
	ccf                                              ; $4e6b: $3f
	dec  sp                                          ; $4e6c: $3b
	ld   a, e                                        ; $4e6d: $7b
	ld   a, h                                        ; $4e6e: $7c
	nop                                              ; $4e6f: $00
	inc  bc                                          ; $4e70: $03
	add  l                                           ; $4e71: $85
	nop                                              ; $4e72: $00
	ld   b, $ff                                      ; $4e73: $06 $ff
	nop                                              ; $4e75: $00
	sbc  a                                           ; $4e76: $9f
	nop                                              ; $4e77: $00
	ld   a, b                                        ; $4e78: $78
	nop                                              ; $4e79: $00
	jr   jr_074_4e01                                 ; $4e7a: $18 $85

	nop                                              ; $4e7c: $00
	nop                                              ; $4e7d: $00
	add  b                                           ; $4e7e: $80
	add  b                                           ; $4e7f: $80
	ld   a, [hl]                                     ; $4e80: $7e
	add  b                                           ; $4e81: $80
	ld   a, l                                        ; $4e82: $7d
	add  b                                           ; $4e83: $80
	ld   a, [hl]                                     ; $4e84: $7e
	ld   bc, $fd7d                                   ; $4e85: $01 $7d $fd
	add  [hl]                                        ; $4e88: $86
	nop                                              ; $4e89: $00
	add  b                                           ; $4e8a: $80
	add  a                                           ; $4e8b: $87
	add  b                                           ; $4e8c: $80
	rlca                                             ; $4e8d: $07
	inc  bc                                          ; $4e8e: $03
	add  a                                           ; $4e8f: $87
	add  [hl]                                        ; $4e90: $86
	ld   b, $08                                      ; $4e91: $06 $08
	adc  d                                           ; $4e93: $8a
	ld   a, [bc]                                     ; $4e94: $0a
	add  b                                           ; $4e95: $80
	ld   c, $01                                      ; $4e96: $0e $01
	rrca                                             ; $4e98: $0f
	rst  $38                                         ; $4e99: $ff
	add  b                                           ; $4e9a: $80
	xor  e                                           ; $4e9b: $ab
	adc  e                                           ; $4e9c: $8b
	xor  d                                           ; $4e9d: $aa
	nop                                              ; $4e9e: $00
	sub  l                                           ; $4e9f: $95
	add  b                                           ; $4ea0: $80
	db   $ec                                         ; $4ea1: $ec
	add  b                                           ; $4ea2: $80
	rst  $10                                         ; $4ea3: $d7
	add  b                                           ; $4ea4: $80
	ld   [$c580], a                                  ; $4ea5: $ea $80 $c5
	add  b                                           ; $4ea8: $80
	ret  c                                           ; $4ea9: $d8

	add  b                                           ; $4eaa: $80
	add  $80                                         ; $4eab: $c6 $80
	push bc                                          ; $4ead: $c5
	ld   bc, $04c4                                   ; $4eae: $01 $c4 $04
	add  b                                           ; $4eb1: $80
	rst  $38                                         ; $4eb2: $ff
	rlca                                             ; $4eb3: $07
	ccf                                              ; $4eb4: $3f
	ld   a, a                                        ; $4eb5: $7f
	adc  a                                           ; $4eb6: $8f
	cp   a                                           ; $4eb7: $bf
	ld   b, e                                        ; $4eb8: $43
	ld   c, a                                        ; $4eb9: $4f
	pop  af                                          ; $4eba: $f1
	ldh  a, [c]                                      ; $4ebb: $f2
	add  b                                           ; $4ebc: $80
	ld   a, h                                        ; $4ebd: $7c
	add  b                                           ; $4ebe: $80
	ld   e, a                                        ; $4ebf: $5f
	ld   bc, $2857                                   ; $4ec0: $01 $57 $28
	adc  b                                           ; $4ec3: $88
	rst  $38                                         ; $4ec4: $ff
	ld   bc, $bf7f                                   ; $4ec5: $01 $7f $bf
	add  b                                           ; $4ec8: $80
	rra                                              ; $4ec9: $1f
	ld   bc, $37f7                                   ; $4eca: $01 $f7 $37
	adc  [hl]                                        ; $4ecd: $8e
	rst  $38                                         ; $4ece: $ff
	add  b                                           ; $4ecf: $80
	dec  bc                                          ; $4ed0: $0b
	add  b                                           ; $4ed1: $80
	dec  b                                           ; $4ed2: $05
	add  b                                           ; $4ed3: $80
	dec  bc                                          ; $4ed4: $0b
	add  b                                           ; $4ed5: $80
	dec  b                                           ; $4ed6: $05
	add  b                                           ; $4ed7: $80
	dec  bc                                          ; $4ed8: $0b
	add  b                                           ; $4ed9: $80
	dec  b                                           ; $4eda: $05
	add  b                                           ; $4edb: $80
	dec  bc                                          ; $4edc: $0b
	ld   bc, $0d05                                   ; $4edd: $01 $05 $0d
	add  l                                           ; $4ee0: $85
	rst  $30                                         ; $4ee1: $f7
	add  d                                           ; $4ee2: $82
	rst  $38                                         ; $4ee3: $ff
	add  d                                           ; $4ee4: $82
	rst  $30                                         ; $4ee5: $f7
	ld   b, $ff                                      ; $4ee6: $06 $ff
	pop  hl                                          ; $4ee8: $e1
	db   $fc                                         ; $4ee9: $fc
	add  d                                           ; $4eea: $82
	cp   a                                           ; $4eeb: $bf
	rst  JumpTable                                         ; $4eec: $df
	rst  $38                                         ; $4eed: $ff
	add  b                                           ; $4eee: $80
	di                                               ; $4eef: $f3
	add  b                                           ; $4ef0: $80
	pop  hl                                          ; $4ef1: $e1
	add  b                                           ; $4ef2: $80
	db   $e3                                         ; $4ef3: $e3
	add  b                                           ; $4ef4: $80
	pop  hl                                          ; $4ef5: $e1
	ld   [bc], a                                     ; $4ef6: $02
	db   $e3                                         ; $4ef7: $e3
	di                                               ; $4ef8: $f3
	rst  $28                                         ; $4ef9: $ef
	add  b                                           ; $4efa: $80
	scf                                              ; $4efb: $37
	add  b                                           ; $4efc: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4efd: $cf
	add  [hl]                                        ; $4efe: $86
	rst  JumpTable                                         ; $4eff: $df
	add  b                                           ; $4f00: $80
	sbc  $80                                         ; $4f01: $de $80
	rst  $38                                         ; $4f03: $ff
	add  b                                           ; $4f04: $80
	db   $e3                                         ; $4f05: $e3
	add  h                                           ; $4f06: $84
	rst  $30                                         ; $4f07: $f7
	add  b                                           ; $4f08: $80
	db   $e3                                         ; $4f09: $e3
	add  b                                           ; $4f0a: $80
	pop  bc                                          ; $4f0b: $c1
	add  b                                           ; $4f0c: $80
	inc  d                                           ; $4f0d: $14
	add  b                                           ; $4f0e: $80
	rst  $38                                         ; $4f0f: $ff
	add  b                                           ; $4f10: $80
	cp   $88                                         ; $4f11: $fe $88
	rst  $38                                         ; $4f13: $ff
	add  b                                           ; $4f14: $80
	ccf                                              ; $4f15: $3f
	inc  bc                                          ; $4f16: $03
	ld   a, a                                        ; $4f17: $7f
	ld   a, [hl]                                     ; $4f18: $7e
	push bc                                          ; $4f19: $c5
	call nz, $3f80                                   ; $4f1a: $c4 $80 $3f
	nop                                              ; $4f1d: $00
	cp   a                                           ; $4f1e: $bf
	add  b                                           ; $4f1f: $80
	cp   b                                           ; $4f20: $b8
	inc  bc                                          ; $4f21: $03
	cp   h                                           ; $4f22: $bc
	db   $fc                                         ; $4f23: $fc
	ld   hl, sp-$48                                  ; $4f24: $f8 $b8
	add  b                                           ; $4f26: $80
	cp   h                                           ; $4f27: $bc
	dec  b                                           ; $4f28: $05
	cp   b                                           ; $4f29: $b8
	ld   hl, sp+$7f                                  ; $4f2a: $f8 $7f
	rst  $38                                         ; $4f2c: $ff
	rra                                              ; $4f2d: $1f
	rst  JumpTable                                         ; $4f2e: $df
	add  d                                           ; $4f2f: $82
	cp   a                                           ; $4f30: $bf
	nop                                              ; $4f31: $00
	ccf                                              ; $4f32: $3f
	add  h                                           ; $4f33: $84
	ld   a, a                                        ; $4f34: $7f
	nop                                              ; $4f35: $00
	rst  $38                                         ; $4f36: $ff
	add  b                                           ; $4f37: $80
	ld   a, [hl]                                     ; $4f38: $7e
	add  b                                           ; $4f39: $80
	ld   a, l                                        ; $4f3a: $7d
	add  b                                           ; $4f3b: $80
	ld   a, [hl]                                     ; $4f3c: $7e
	add  b                                           ; $4f3d: $80
	ld   a, l                                        ; $4f3e: $7d
	add  b                                           ; $4f3f: $80
	ld   a, [hl]                                     ; $4f40: $7e
	dec  d                                           ; $4f41: $15
	ld   a, l                                        ; $4f42: $7d
	db   $fd                                         ; $4f43: $fd
	cp   $7e                                         ; $4f44: $fe $7e
	ld   a, l                                        ; $4f46: $7d
	db   $fd                                         ; $4f47: $fd
	add  a                                           ; $4f48: $87
	add  d                                           ; $4f49: $82
	ld   [bc], a                                     ; $4f4a: $02
	dec  b                                           ; $4f4b: $05
	add  l                                           ; $4f4c: $85
	add  d                                           ; $4f4d: $82
	ld   [bc], a                                     ; $4f4e: $02
	dec  b                                           ; $4f4f: $05
	add  l                                           ; $4f50: $85
	add  d                                           ; $4f51: $82
	ld   [bc], a                                     ; $4f52: $02
	dec  b                                           ; $4f53: $05
	add  l                                           ; $4f54: $85
	add  d                                           ; $4f55: $82
	ld   [bc], a                                     ; $4f56: $02
	ld   [$0f82], sp                                 ; $4f57: $08 $82 $0f
	add  b                                           ; $4f5a: $80
	add  hl, bc                                      ; $4f5b: $09
	add  a                                           ; $4f5c: $87
	ld   [$f800], sp                                 ; $4f5d: $08 $00 $f8
	add  b                                           ; $4f60: $80
	ld   [$fe80], a                                  ; $4f61: $ea $80 $fe
	add  b                                           ; $4f64: $80
	rst  $38                                         ; $4f65: $ff
	add  b                                           ; $4f66: $80
	ccf                                              ; $4f67: $3f
	add  b                                           ; $4f68: $80
	inc  hl                                          ; $4f69: $23
	add  e                                           ; $4f6a: $83
	jr   nz, jr_074_4f6d                             ; $4f6b: $20 $00

jr_074_4f6d:
	rra                                              ; $4f6d: $1f
	add  b                                           ; $4f6e: $80
	ret  nz                                          ; $4f6f: $c0

	add  b                                           ; $4f70: $80
	ret  nc                                          ; $4f71: $d0

	add  b                                           ; $4f72: $80
	call z, $c380                                    ; $4f73: $cc $80 $c3
	add  h                                           ; $4f76: $84
	ret  nz                                          ; $4f77: $c0

	ld   bc, $73cc                                   ; $4f78: $01 $cc $73
	adc  b                                           ; $4f7b: $88
	ld   d, l                                        ; $4f7c: $55
	add  b                                           ; $4f7d: $80
	ld   [hl], l                                     ; $4f7e: $75
	add  b                                           ; $4f7f: $80
	ld   a, l                                        ; $4f80: $7d
	inc  bc                                          ; $4f81: $03
	ld   a, a                                        ; $4f82: $7f
	ret  nz                                          ; $4f83: $c0

	db   $dd                                         ; $4f84: $dd
	call c, Call_074_6a80                            ; $4f85: $dc $80 $6a
	add  b                                           ; $4f88: $80
	ld   b, l                                        ; $4f89: $45
	add  b                                           ; $4f8a: $80
	ld   e, c                                        ; $4f8b: $59
	add  h                                           ; $4f8c: $84
	ld   b, l                                        ; $4f8d: $45
	add  hl, bc                                      ; $4f8e: $09
	db   $dd                                         ; $4f8f: $dd
	inc  e                                           ; $4f90: $1c
	rst  $38                                         ; $4f91: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f92: $cf
	ld   c, a                                        ; $4f93: $4f
	or   a                                           ; $4f94: $b7
	rla                                              ; $4f95: $17
	jr   z, @-$3e                                    ; $4f96: $28 $c0

	rst  ToBoot                                         ; $4f98: $c7
	add  b                                           ; $4f99: $80
	db   $fd                                         ; $4f9a: $fd
	add  b                                           ; $4f9b: $80
	ld   [hl], e                                     ; $4f9c: $73
	rrca                                             ; $4f9d: $0f
	ld   d, c                                        ; $4f9e: $51
	ld   d, d                                        ; $4f9f: $52
	ld   e, h                                        ; $4fa0: $5c
	xor  a                                           ; $4fa1: $af
	nop                                              ; $4fa2: $00
	add  b                                           ; $4fa3: $80
	nop                                              ; $4fa4: $00
	ldh  [rP1], a                                    ; $4fa5: $e0 $00
	ld   a, b                                        ; $4fa7: $78
	nop                                              ; $4fa8: $00
	ld   e, $00                                      ; $4fa9: $1e $00
	ld   sp, hl                                      ; $4fab: $f9
	nop                                              ; $4fac: $00
	rst  $38                                         ; $4fad: $ff
	add  d                                           ; $4fae: $82
	nop                                              ; $4faf: $00
	nop                                              ; $4fb0: $00
	rst  $38                                         ; $4fb1: $ff
	add  b                                           ; $4fb2: $80
	rst  $30                                         ; $4fb3: $f7
	add  l                                           ; $4fb4: $85
	rst  $38                                         ; $4fb5: $ff
	add  b                                           ; $4fb6: $80
	ld   hl, sp+$03                                  ; $4fb7: $f8 $03
	rst  $38                                         ; $4fb9: $ff
	pop  hl                                          ; $4fba: $e1
	ldh  [$fe], a                                    ; $4fbb: $e0 $fe
	add  b                                           ; $4fbd: $80
	pop  hl                                          ; $4fbe: $e1
	add  b                                           ; $4fbf: $80
	db   $e3                                         ; $4fc0: $e3
	add  b                                           ; $4fc1: $80
	pop  hl                                          ; $4fc2: $e1
	add  b                                           ; $4fc3: $80
	db   $e3                                         ; $4fc4: $e3
	add  b                                           ; $4fc5: $80
	pop  hl                                          ; $4fc6: $e1
	add  b                                           ; $4fc7: $80
	inc  hl                                          ; $4fc8: $23
	add  b                                           ; $4fc9: $80
	pop  hl                                          ; $4fca: $e1
	ld   [bc], a                                     ; $4fcb: $02
	inc  hl                                          ; $4fcc: $23
	ld   bc, $80dd                                   ; $4fcd: $01 $dd $80
	reti                                             ; $4fd0: $d9


	nop                                              ; $4fd1: $00
	rst  JumpTable                                         ; $4fd2: $df
	add  d                                           ; $4fd3: $82

jr_074_4fd4:
	pop  de                                          ; $4fd4: $d1
	ld   bc, $f9d9                                   ; $4fd5: $01 $d9 $f9
	add  b                                           ; $4fd8: $80
	ldh  [$80], a                                    ; $4fd9: $e0 $80
	rst  $38                                         ; $4fdb: $ff
	ld   [bc], a                                     ; $4fdc: $02
	ldh  [$8b], a                                    ; $4fdd: $e0 $8b
	sub  h                                           ; $4fdf: $94
	add  b                                           ; $4fe0: $80
	pop  hl                                          ; $4fe1: $e1
	add  b                                           ; $4fe2: $80
	di                                               ; $4fe3: $f3
	nop                                              ; $4fe4: $00
	rst  $38                                         ; $4fe5: $ff
	add  d                                           ; $4fe6: $82
	db   $e3                                         ; $4fe7: $e3
	add  b                                           ; $4fe8: $80
	nop                                              ; $4fe9: $00
	add  b                                           ; $4fea: $80
	rst  $38                                         ; $4feb: $ff
	ld   [bc], a                                     ; $4fec: $02
	nop                                              ; $4fed: $00
	jr   nz, @-$1f                                   ; $4fee: $20 $df

	add  b                                           ; $4ff0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ff1: $cf
	nop                                              ; $4ff2: $00
	rst  $38                                         ; $4ff3: $ff
	add  c                                           ; $4ff4: $81
	rst  ToBoot                                         ; $4ff5: $c7
	ld   [bc], a                                     ; $4ff6: $02
	add  $ce                                         ; $4ff7: $c6 $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ff9: $cf
	add  b                                           ; $4ffa: $80
	nop                                              ; $4ffb: $00
	add  b                                           ; $4ffc: $80
	rst  $38                                         ; $4ffd: $ff
	add  b                                           ; $4ffe: $80
	nop                                              ; $4fff: $00
	dec  b                                           ; $5000: $05
	db   $fc                                         ; $5001: $fc
	cp   h                                           ; $5002: $bc
	cp   b                                           ; $5003: $b8
	ld   hl, sp-$04                                  ; $5004: $f8 $fc
	cp   h                                           ; $5006: $bc
	add  b                                           ; $5007: $80
	cp   b                                           ; $5008: $b8
	dec  b                                           ; $5009: $05
	cp   h                                           ; $500a: $bc
	db   $fc                                         ; $500b: $fc
	jr   c, jr_074_5086                              ; $500c: $38 $78

	cp   h                                           ; $500e: $bc
	db   $fc                                         ; $500f: $fc
	add  b                                           ; $5010: $80
	jr   c, jr_074_5013                              ; $5011: $38 $00

jr_074_5013:
	ld   a, a                                        ; $5013: $7f
	add  b                                           ; $5014: $80
	ld   a, [hl]                                     ; $5015: $7e
	add  b                                           ; $5016: $80
	ld   [hl], l                                     ; $5017: $75
	add  b                                           ; $5018: $80
	ld   l, d                                        ; $5019: $6a
	add  b                                           ; $501a: $80
	ld   d, l                                        ; $501b: $55
	nop                                              ; $501c: $00
	ld   a, a                                        ; $501d: $7f
	add  b                                           ; $501e: $80
	ld   b, b                                        ; $501f: $40
	inc  bc                                          ; $5020: $03
	ld   a, a                                        ; $5021: $7f
	ld   a, c                                        ; $5022: $79
	ld   b, b                                        ; $5023: $40
	ld   b, [hl]                                     ; $5024: $46
	add  b                                           ; $5025: $80
	cp   $07                                         ; $5026: $fe $07
	db   $fd                                         ; $5028: $fd
	ld   a, l                                        ; $5029: $7d
	ld   a, [hl]                                     ; $502a: $7e
	cp   $fd                                         ; $502b: $fe $fd
	ld   a, l                                        ; $502d: $7d
	ld   a, [hl]                                     ; $502e: $7e
	cp   $80                                         ; $502f: $fe $80
	db   $fd                                         ; $5031: $fd
	add  b                                           ; $5032: $80
	cp   $0b                                         ; $5033: $fe $0b
	ld   a, l                                        ; $5035: $7d
	ld   a, a                                        ; $5036: $7f
	add  l                                           ; $5037: $85
	add  d                                           ; $5038: $82
	ld   [bc], a                                     ; $5039: $02
	dec  b                                           ; $503a: $05
	add  l                                           ; $503b: $85
	add  d                                           ; $503c: $82
	ld   [bc], a                                     ; $503d: $02
	ld   bc, $8781                                   ; $503e: $01 $81 $87
	add  b                                           ; $5041: $80
	nop                                              ; $5042: $00
	inc  bc                                          ; $5043: $03
	add  a                                           ; $5044: $87
	add  b                                           ; $5045: $80
	nop                                              ; $5046: $00
	ld   [$0f80], sp                                 ; $5047: $08 $80 $0f
	adc  b                                           ; $504a: $88
	ld   [$0f80], sp                                 ; $504b: $08 $80 $0f
	ld   bc, $f808                                   ; $504e: $01 $08 $f8
	add  b                                           ; $5051: $80
	jr   nz, jr_074_4fd4                             ; $5052: $20 $80

	ld   hl, sp-$80                                  ; $5054: $f8 $80
	daa                                              ; $5056: $27
	add  h                                           ; $5057: $84
	jr   nz, @-$7e                                   ; $5058: $20 $80

	ldh  [rSB], a                                    ; $505a: $e0 $01
	ld   a, $01                                      ; $505c: $3e $01
	add  b                                           ; $505e: $80
	rst  ToBoot                                         ; $505f: $c7
	add  b                                           ; $5060: $80
	call nz, $c080                                   ; $5061: $c4 $80 $c0
	add  b                                           ; $5064: $80
	call nz, $dc80                                   ; $5065: $c4 $80 $dc
	add  b                                           ; $5068: $80
	rst  ToBoot                                         ; $5069: $c7
	add  c                                           ; $506a: $81
	ret  nz                                          ; $506b: $c0

	nop                                              ; $506c: $00
	ld   a, a                                        ; $506d: $7f
	add  b                                           ; $506e: $80
	ld   c, a                                        ; $506f: $4f
	add  b                                           ; $5070: $80
	call nz, Call_074_4482                           ; $5071: $c4 $82 $44
	add  b                                           ; $5074: $80
	ld   a, h                                        ; $5075: $7c
	add  b                                           ; $5076: $80
	ld   b, a                                        ; $5077: $47
	add  b                                           ; $5078: $80
	call nz, $4401                                   ; $5079: $c4 $01 $44
	ld   a, [$c780]                                  ; $507c: $fa $80 $c7
	add  d                                           ; $507f: $82
	pop  bc                                          ; $5080: $c1
	add  b                                           ; $5081: $80

jr_074_5082:
	ret                                              ; $5082: $c9


	add  b                                           ; $5083: $80
	rst  ToBoot                                         ; $5084: $c7
	add  d                                           ; $5085: $82

jr_074_5086:
	push bc                                          ; $5086: $c5
	inc  bc                                          ; $5087: $03
	push de                                          ; $5088: $d5
	and  $51                                         ; $5089: $e6 $51
	ld   e, a                                        ; $508b: $5f
	add  b                                           ; $508c: $80
	ld   d, b                                        ; $508d: $50
	ld   bc, $ccd0                                   ; $508e: $01 $d0 $cc
	add  b                                           ; $5091: $80
	db   $e3                                         ; $5092: $e3
	ld   bc, $5242                                   ; $5093: $01 $42 $52
	add  b                                           ; $5096: $80
	ld   d, h                                        ; $5097: $54
	add  b                                           ; $5098: $80
	ld   e, a                                        ; $5099: $5f
	ld   bc, $01f1                                   ; $509a: $01 $f1 $01
	add  b                                           ; $509d: $80
	adc  e                                           ; $509e: $8b
	add  b                                           ; $509f: $80
	add  l                                           ; $50a0: $85
	add  b                                           ; $50a1: $80
	res  0, b                                        ; $50a2: $cb $80
	push hl                                          ; $50a4: $e5
	add  b                                           ; $50a5: $80
	ld   a, e                                        ; $50a6: $7b
	add  b                                           ; $50a7: $80
	dec  [hl]                                        ; $50a8: $35
	add  b                                           ; $50a9: $80
	dec  de                                          ; $50aa: $1b
	ld   [$1705], sp                                 ; $50ab: $08 $05 $17
	add  sp, -$17                                    ; $50ae: $e8 $e9
	add  sp, -$14                                    ; $50b0: $e8 $ec
	add  sp, -$05                                    ; $50b2: $e8 $fb
	ld   a, [$fe80]                                  ; $50b4: $fa $80 $fe
	ld   bc, $f0f1                                   ; $50b7: $01 $f1 $f0
	add  c                                           ; $50ba: $81
	rst  $30                                         ; $50bb: $f7
	rlca                                             ; $50bc: $07
	db   $f4                                         ; $50bd: $f4
	sbc  h                                           ; $50be: $9c
	ld   bc, $23a1                                   ; $50bf: $01 $a1 $23
	ld   h, e                                        ; $50c2: $63
	ld   h, c                                        ; $50c3: $61
	pop  hl                                          ; $50c4: $e1
	add  b                                           ; $50c5: $80
	inc  hl                                          ; $50c6: $23

jr_074_50c7:
	dec  c                                           ; $50c7: $0d
	ld   hl, $0341                                   ; $50c8: $21 $41 $03

jr_074_50cb:
	ld   h, e                                        ; $50cb: $63
	pop  hl                                          ; $50cc: $e1
	add  c                                           ; $50cd: $81
	inc  bc                                          ; $50ce: $03
	ld   e, e                                        ; $50cf: $5b
	ret  nz                                          ; $50d0: $c0

	sbc  $d8                                         ; $50d1: $de $d8
	rst  JumpTable                                         ; $50d3: $df
	sub  $d7                                         ; $50d4: $d6 $d7
	add  b                                           ; $50d6: $80
	adc  $04                                         ; $50d7: $ce $04
	call c, $c0c3                                    ; $50d9: $dc $c3 $c0
	rst  JumpTable                                         ; $50dc: $df
	call c, $c480                                    ; $50dd: $dc $80 $c4
	nop                                              ; $50e0: $00
	db   $fc                                         ; $50e1: $fc
	add  c                                           ; $50e2: $81
	nop                                              ; $50e3: $00
	ld   [$0080], sp                                 ; $50e4: $08 $80 $00
	ld   b, b                                        ; $50e7: $40
	nop                                              ; $50e8: $00
	ldh  [rP1], a                                    ; $50e9: $e0 $00
	ret  nz                                          ; $50eb: $c0

	nop                                              ; $50ec: $00
	ret  nz                                          ; $50ed: $c0

	add  b                                           ; $50ee: $80
	ld   b, b                                        ; $50ef: $40
	ld   bc, $e0c0                                   ; $50f0: $01 $c0 $e0
	adc  e                                           ; $50f3: $8b
	nop                                              ; $50f4: $00
	ld   [bc], a                                     ; $50f5: $02
	ld   bc, $0100                                   ; $50f6: $01 $00 $01
	add  b                                           ; $50f9: $80
	inc  a                                           ; $50fa: $3c
	add  b                                           ; $50fb: $80
	jr   c, @-$7e                                    ; $50fc: $38 $80

	inc  a                                           ; $50fe: $3c
	add  b                                           ; $50ff: $80
	jr   c, jr_074_5082                              ; $5100: $38 $80

	inc  a                                           ; $5102: $3c
	add  b                                           ; $5103: $80
	jr   c, jr_074_510b                              ; $5104: $38 $05

	inc  a                                           ; $5106: $3c
	cp   h                                           ; $5107: $bc
	jr   c, jr_074_50c7                              ; $5108: $38 $bd

	ld   a, d                                        ; $510a: $7a

jr_074_510b:
	ld   h, a                                        ; $510b: $67
	add  c                                           ; $510c: $81
	ld   b, b                                        ; $510d: $40
	nop                                              ; $510e: $00
	ld   e, b                                        ; $510f: $58
	add  b                                           ; $5110: $80
	ld   b, h                                        ; $5111: $44
	add  b                                           ; $5112: $80
	call nz, $6880                                   ; $5113: $c4 $80 $68
	dec  b                                           ; $5116: $05
	ld   d, b                                        ; $5117: $50
	jr   nc, jr_074_511a                             ; $5118: $30 $00

jr_074_511a:
	jr   nz, jr_074_515a                             ; $511a: $20 $3e

	cp   [hl]                                        ; $511c: $be
	add  b                                           ; $511d: $80
	dec  a                                           ; $511e: $3d
	inc  bc                                          ; $511f: $03
	ld   a, $be                                      ; $5120: $3e $be
	dec  a                                           ; $5122: $3d
	ld   a, l                                        ; $5123: $7d
	add  b                                           ; $5124: $80
	ld   a, [hl]                                     ; $5125: $7e
	add  b                                           ; $5126: $80
	ld   a, l                                        ; $5127: $7d
	add  b                                           ; $5128: $80
	ld   a, [hl]                                     ; $5129: $7e
	inc  bc                                          ; $512a: $03
	ld   a, l                                        ; $512b: $7d
	ld   a, a                                        ; $512c: $7f
	add  h                                           ; $512d: $84
	add  a                                           ; $512e: $87
	add  b                                           ; $512f: $80
	inc  b                                           ; $5130: $04
	ld   bc, $8584                                   ; $5131: $01 $84 $85
	add  b                                           ; $5134: $80
	ld   b, $80                                      ; $5135: $06 $80
	add  [hl]                                        ; $5137: $86
	ld   bc, $0405                                   ; $5138: $01 $05 $04
	add  b                                           ; $513b: $80
	add  h                                           ; $513c: $84
	ld   bc, $0a04                                   ; $513d: $01 $04 $0a
	add  [hl]                                        ; $5140: $86
	ld   [$0f80], sp                                 ; $5141: $08 $80 $0f
	add  e                                           ; $5144: $83
	ld   [$f800], sp                                 ; $5145: $08 $00 $f8
	add  [hl]                                        ; $5148: $86
	jr   nz, jr_074_50cb                             ; $5149: $20 $80

	rst  $38                                         ; $514b: $ff
	add  e                                           ; $514c: $83
	jr   nz, jr_074_514f                             ; $514d: $20 $00

jr_074_514f:
	rra                                              ; $514f: $1f
	add  b                                           ; $5150: $80
	ret  nz                                          ; $5151: $c0

	add  b                                           ; $5152: $80
	ld   hl, sp-$80                                  ; $5153: $f8 $80
	rst  ToBoot                                         ; $5155: $c7
	add  [hl]                                        ; $5156: $86
	call nz, $df01                                   ; $5157: $c4 $01 $df

jr_074_515a:
	ld   h, b                                        ; $515a: $60
	add  b                                           ; $515b: $80
	ld   b, h                                        ; $515c: $44
	add  b                                           ; $515d: $80
	ld   a, a                                        ; $515e: $7f
	add  h                                           ; $515f: $84
	ld   b, h                                        ; $5160: $44
	add  b                                           ; $5161: $80
	ld   a, a                                        ; $5162: $7f
	add  c                                           ; $5163: $81
	ld   b, h                                        ; $5164: $44
	nop                                              ; $5165: $00
	ld   a, [$cf80]                                  ; $5166: $fa $80 $cf
	add  d                                           ; $5169: $82
	pop  bc                                          ; $516a: $c1
	add  b                                           ; $516b: $80
	reti                                             ; $516c: $d9


	add  h                                           ; $516d: $84
	push bc                                          ; $516e: $c5
	ld   bc, $ecdd                                   ; $516f: $01 $dd $ec
	add  b                                           ; $5172: $80
	ld   d, b                                        ; $5173: $50
	add  b                                           ; $5174: $80
	ld   e, a                                        ; $5175: $5f
	add  b                                           ; $5176: $80
	jp   nc, $7080                                   ; $5177: $d2 $80 $70

	add  b                                           ; $517a: $80
	ld   e, a                                        ; $517b: $5f
	add  b                                           ; $517c: $80
	ld   d, c                                        ; $517d: $51
	add  b                                           ; $517e: $80
	ldh  a, [rTIMA]                                  ; $517f: $f0 $05
	ld   d, b                                        ; $5181: $50
	and  [hl]                                        ; $5182: $a6
	nop                                              ; $5183: $00
	rlca                                             ; $5184: $07
	nop                                              ; $5185: $00
	ld   bc, $0083                                   ; $5186: $01 $83 $00
	ld   [bc], a                                     ; $5189: $02
	rst  $38                                         ; $518a: $ff
	nop                                              ; $518b: $00
	rst  $38                                         ; $518c: $ff
	add  c                                           ; $518d: $81
	nop                                              ; $518e: $00
	nop                                              ; $518f: $00
	ld   [$f080], sp                                 ; $5190: $08 $80 $f0
	add  b                                           ; $5193: $80
	pop  af                                          ; $5194: $f1
	add  b                                           ; $5195: $80
	di                                               ; $5196: $f3
	add  b                                           ; $5197: $80
	or   $80                                         ; $5198: $f6 $80
	push af                                          ; $519a: $f5
	rlca                                             ; $519b: $07
	di                                               ; $519c: $f3
	db   $f4                                         ; $519d: $f4
	ldh  a, [$f7]                                    ; $519e: $f0 $f7
	ldh  a, [$38]                                    ; $51a0: $f0 $38
	ld   sp, $80f1                                   ; $51a2: $31 $f1 $80
	dec  sp                                          ; $51a5: $3b
	ld   bc, $a929                                   ; $51a6: $01 $29 $a9
	add  b                                           ; $51a9: $80
	ld   b, e                                        ; $51aa: $43
	add  b                                           ; $51ab: $80
	ld   hl, $6307                                   ; $51ac: $21 $07 $63

jr_074_51af:
	inc  bc                                          ; $51af: $03
	ld   bc, $03e1                                   ; $51b0: $01 $e1 $03
	cpl                                              ; $51b3: $2f
	jp   $808f                                       ; $51b4: $c3 $8f $80


	sub  e                                           ; $51b7: $93
	ld   bc, $d292                                   ; $51b8: $01 $92 $d2

jr_074_51bb:
	add  b                                           ; $51bb: $80
	call z, $d980                                    ; $51bc: $cc $80 $d9
	inc  c                                           ; $51bf: $0c
	db   $d3                                         ; $51c0: $d3
	call z, $ffc0                                    ; $51c1: $cc $c0 $ff
	ret  nz                                          ; $51c4: $c0

	ldh  [$8f], a                                    ; $51c5: $e0 $8f
	adc  [hl]                                        ; $51c7: $8e
	ld   c, $0b                                      ; $51c8: $0e $0b
	ld   c, e                                        ; $51ca: $4b
	ld   c, a                                        ; $51cb: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51cc: $cf
	add  b                                           ; $51cd: $80
	jp   z, $cf80                                    ; $51ce: $ca $80 $cf

	ld   b, $1f                                      ; $51d1: $06 $1f
	nop                                              ; $51d3: $00
	ldh  a, [rP1]                                    ; $51d4: $f0 $00
	inc  bc                                          ; $51d6: $03
	nop                                              ; $51d7: $00

jr_074_51d8:
	inc  bc                                          ; $51d8: $03
	add  b                                           ; $51d9: $80
	nop                                              ; $51da: $00
	inc  b                                           ; $51db: $04
	ld   l, h                                        ; $51dc: $6c
	ld   c, h                                        ; $51dd: $4c
	ld   c, a                                        ; $51de: $4f
	ld   l, e                                        ; $51df: $6b
	ld   l, c                                        ; $51e0: $69
	add  b                                           ; $51e1: $80
	ld   c, l                                        ; $51e2: $4d
	nop                                              ; $51e3: $00
	ld   l, l                                        ; $51e4: $6d
	add  c                                           ; $51e5: $81
	nop                                              ; $51e6: $00
	ld   [bc], a                                     ; $51e7: $02
	ld   b, b                                        ; $51e8: $40
	inc  a                                           ; $51e9: $3c
	ld   e, h                                        ; $51ea: $5c
	add  b                                           ; $51eb: $80
	sbc  b                                           ; $51ec: $98
	ld   bc, $bc9c                                   ; $51ed: $01 $9c $bc
	add  b                                           ; $51f0: $80
	cp   b                                           ; $51f1: $b8
	inc  bc                                          ; $51f2: $03
	cp   h                                           ; $51f3: $bc
	inc  a                                           ; $51f4: $3c
	jr   c, jr_074_51af                              ; $51f5: $38 $b8

	add  b                                           ; $51f7: $80
	inc  a                                           ; $51f8: $3c
	inc  bc                                          ; $51f9: $03
	jr   c, jr_074_5204                              ; $51fa: $38 $08

	ld   b, b                                        ; $51fc: $40
	ld   [hl], b                                     ; $51fd: $70
	add  d                                           ; $51fe: $82
	ld   c, b                                        ; $51ff: $48
	add  b                                           ; $5200: $80
	ld   [hl], b                                     ; $5201: $70
	add  l                                           ; $5202: $85
	ld   b, b                                        ; $5203: $40

jr_074_5204:
	inc  b                                           ; $5204: $04
	and  b                                           ; $5205: $a0
	ld   e, $de                                      ; $5206: $1e $de
	ld   e, l                                        ; $5208: $5d
	db   $dd                                         ; $5209: $dd
	add  b                                           ; $520a: $80
	ld   e, [hl]                                     ; $520b: $5e
	add  b                                           ; $520c: $80
	ld   e, l                                        ; $520d: $5d
	add  b                                           ; $520e: $80
	ld   e, [hl]                                     ; $520f: $5e
	add  b                                           ; $5210: $80
	ld   e, l                                        ; $5211: $5d
	add  b                                           ; $5212: $80
	ld   e, [hl]                                     ; $5213: $5e
	ld   bc, $fc5d                                   ; $5214: $01 $5d $fc
	add  b                                           ; $5217: $80
	add  h                                           ; $5218: $84
	add  b                                           ; $5219: $80
	inc  b                                           ; $521a: $04
	add  b                                           ; $521b: $80
	add  h                                           ; $521c: $84
	add  b                                           ; $521d: $80
	inc  b                                           ; $521e: $04
	add  b                                           ; $521f: $80
	add  h                                           ; $5220: $84
	add  b                                           ; $5221: $80
	inc  b                                           ; $5222: $04
	add  b                                           ; $5223: $80
	add  h                                           ; $5224: $84
	ld   bc, $0a04                                   ; $5225: $01 $04 $0a
	add  b                                           ; $5228: $80
	ld   [$0f83], sp                                 ; $5229: $08 $83 $0f
	nop                                              ; $522c: $00
	nop                                              ; $522d: $00
	add  d                                           ; $522e: $82
	ld   [bc], a                                     ; $522f: $02
	add  b                                           ; $5230: $80
	rrca                                             ; $5231: $0f
	ld   bc, $ff00                                   ; $5232: $01 $00 $ff
	add  b                                           ; $5235: $80
	jr   nz, jr_074_51bb                             ; $5236: $20 $83

	rst  $38                                         ; $5238: $ff
	add  c                                           ; $5239: $81
	nop                                              ; $523a: $00
	add  b                                           ; $523b: $80
	ccf                                              ; $523c: $3f
	add  c                                           ; $523d: $81
	db   $10                                         ; $523e: $10
	ld   bc, $c0d0                                   ; $523f: $01 $d0 $c0
	add  h                                           ; $5242: $84
	ldh  [rP1], a                                    ; $5243: $e0 $00
	nop                                              ; $5245: $00
	add  b                                           ; $5246: $80
	add  b                                           ; $5247: $80
	add  b                                           ; $5248: $80
	db   $fc                                         ; $5249: $fc
	add  b                                           ; $524a: $80
	nop                                              ; $524b: $00
	inc  bc                                          ; $524c: $03
	inc  b                                           ; $524d: $04
	ld   a, e                                        ; $524e: $7b
	ld   b, h                                        ; $524f: $44
	call nz, $ff81                                   ; $5250: $c4 $81 $ff
	nop                                              ; $5253: $00
	nop                                              ; $5254: $00
	add  b                                           ; $5255: $80
	jr   nz, jr_074_51d8                             ; $5256: $20 $80

	rst  $30                                         ; $5258: $f7
	add  h                                           ; $5259: $84
	ld   [bc], a                                     ; $525a: $02
	add  b                                           ; $525b: $80
	pop  bc                                          ; $525c: $c1
	add  b                                           ; $525d: $80
	db   $e3                                         ; $525e: $e3
	add  b                                           ; $525f: $80
	ldh  [$80], a                                    ; $5260: $e0 $80
	ld   b, a                                        ; $5262: $47
	add  b                                           ; $5263: $80
	db   $ec                                         ; $5264: $ec
	add  b                                           ; $5265: $80
	inc  b                                           ; $5266: $04
	add  b                                           ; $5267: $80
	nop                                              ; $5268: $00
	add  b                                           ; $5269: $80
	rrca                                             ; $526a: $0f
	add  b                                           ; $526b: $80
	rst  $38                                         ; $526c: $ff
	add  b                                           ; $526d: $80
	ld   a, [$8080]                                  ; $526e: $fa $80 $80
	add  b                                           ; $5271: $80
	ei                                               ; $5272: $fb
	nop                                              ; $5273: $00
	db   $10                                         ; $5274: $10
	add  b                                           ; $5275: $80
	ld   de, $1004                                   ; $5276: $11 $04 $10
	ccf                                              ; $5279: $3f
	ret  nz                                          ; $527a: $c0

	rst  $38                                         ; $527b: $ff
	nop                                              ; $527c: $00
	add  b                                           ; $527d: $80
	dec  bc                                          ; $527e: $0b
	add  b                                           ; $527f: $80
	dec  b                                           ; $5280: $05
	add  b                                           ; $5281: $80
	dec  bc                                          ; $5282: $0b
	add  b                                           ; $5283: $80
	dec  b                                           ; $5284: $05
	add  b                                           ; $5285: $80
	dec  bc                                          ; $5286: $0b
	add  b                                           ; $5287: $80
	dec  b                                           ; $5288: $05
	inc  bc                                          ; $5289: $03
	dec  bc                                          ; $528a: $0b
	adc  e                                           ; $528b: $8b
	dec  b                                           ; $528c: $05
	adc  d                                           ; $528d: $8a
	add  e                                           ; $528e: $83
	ldh  a, [rP1]                                    ; $528f: $f0 $00
	ld   hl, sp-$7c                                  ; $5291: $f8 $84
	rst  $38                                         ; $5293: $ff
	nop                                              ; $5294: $00
	ld   hl, sp-$80                                  ; $5295: $f8 $80
	ldh  a, [$03]                                    ; $5297: $f0 $03
	rra                                              ; $5299: $1f
	ld   bc, $1c02                                   ; $529a: $01 $02 $1c
	add  b                                           ; $529d: $80
	ld   e, $01                                      ; $529e: $1e $01
	inc  e                                           ; $52a0: $1c
	db   $fc                                         ; $52a1: $fc
	add  b                                           ; $52a2: $80
	cp   $01                                         ; $52a3: $fe $01
	db   $fc                                         ; $52a5: $fc
	inc  e                                           ; $52a6: $1c
	add  b                                           ; $52a7: $80
	ld   e, $80                                      ; $52a8: $1e $80
	inc  e                                           ; $52aa: $1c
	ld   [bc], a                                     ; $52ab: $02
	ret  nz                                          ; $52ac: $c0

	nop                                              ; $52ad: $00
	ret  nz                                          ; $52ae: $c0

	add  d                                           ; $52af: $82
	nop                                              ; $52b0: $00
	add  c                                           ; $52b1: $81
	ld   [bc], a                                     ; $52b2: $02
	inc  bc                                          ; $52b3: $03
	inc  bc                                          ; $52b4: $03
	inc  de                                          ; $52b5: $13
	ld   de, $8013                                   ; $52b6: $11 $13 $80
	rra                                              ; $52b9: $1f
	ld   bc, $0414                                   ; $52ba: $01 $14 $04
	add  d                                           ; $52bd: $82
	nop                                              ; $52be: $00
	dec  b                                           ; $52bf: $05
	inc  b                                           ; $52c0: $04
	ld   a, a                                        ; $52c1: $7f
	add  a                                           ; $52c2: $87
	rst  $38                                         ; $52c3: $ff
	db   $fc                                         ; $52c4: $fc
	rst  $38                                         ; $52c5: $ff
	add  b                                           ; $52c6: $80
	nop                                              ; $52c7: $00
	ld   [bc], a                                     ; $52c8: $02
	db   $e4                                         ; $52c9: $e4
	rst  $38                                         ; $52ca: $ff
	dec  de                                          ; $52cb: $1b
	add  d                                           ; $52cc: $82
	nop                                              ; $52cd: $00
	add  b                                           ; $52ce: $80
	db   $10                                         ; $52cf: $10
	inc  c                                           ; $52d0: $0c
	ret  nc                                          ; $52d1: $d0

	ret  nz                                          ; $52d2: $c0

	ldh  a, [c]                                      ; $52d3: $f2
	ld   [hl+], a                                    ; $52d4: $22
	ldh  a, [c]                                      ; $52d5: $f2
	ld   [hl-], a                                    ; $52d6: $32
	ld   a, [bc]                                     ; $52d7: $0a
	ld   [$c3fe], sp                                 ; $52d8: $08 $fe $c3
	inc  a                                           ; $52db: $3c
	nop                                              ; $52dc: $00
	inc  bc                                          ; $52dd: $03
	add  b                                           ; $52de: $80
	rlca                                             ; $52df: $07
	add  b                                           ; $52e0: $80
	inc  bc                                          ; $52e1: $03
	add  b                                           ; $52e2: $80
	rlca                                             ; $52e3: $07
	ld   bc, $8303                                   ; $52e4: $01 $03 $83
	add  b                                           ; $52e7: $80
	add  a                                           ; $52e8: $87
	add  b                                           ; $52e9: $80
	add  e                                           ; $52ea: $83
	add  l                                           ; $52eb: $85
	nop                                              ; $52ec: $00
	ld   b, $78                                      ; $52ed: $06 $78
	ld   a, c                                        ; $52ef: $79
	ld   a, [hl]                                     ; $52f0: $7e
	rra                                              ; $52f1: $1f
	ld   a, a                                        ; $52f2: $7f
	ld   l, a                                        ; $52f3: $6f
	ld   [hl], b                                     ; $52f4: $70
	add  b                                           ; $52f5: $80
	ld   a, a                                        ; $52f6: $7f
	nop                                              ; $52f7: $00
	rst  JumpTable                                         ; $52f8: $df
	add  b                                           ; $52f9: $80
	ld   e, [hl]                                     ; $52fa: $5e
	dec  b                                           ; $52fb: $05
	ld   e, l                                        ; $52fc: $5d
	db   $dd                                         ; $52fd: $dd
	ld   e, [hl]                                     ; $52fe: $5e
	sbc  [hl]                                        ; $52ff: $9e
	dec  e                                           ; $5300: $1d
	db   $fd                                         ; $5301: $fd
	add  b                                           ; $5302: $80
	ld   a, [hl]                                     ; $5303: $7e
	add  b                                           ; $5304: $80
	ld   a, l                                        ; $5305: $7d
	inc  bc                                          ; $5306: $03
	ld   a, [hl]                                     ; $5307: $7e
	cp   $7d                                         ; $5308: $fe $7d
	ld   a, [$8080]                                  ; $530a: $fa $80 $80
	add  b                                           ; $530d: $80
	nop                                              ; $530e: $00
	add  b                                           ; $530f: $80
	add  b                                           ; $5310: $80
	add  b                                           ; $5311: $80
	nop                                              ; $5312: $00
	add  b                                           ; $5313: $80
	add  b                                           ; $5314: $80
	add  b                                           ; $5315: $80
	nop                                              ; $5316: $00
	add  b                                           ; $5317: $80
	add  b                                           ; $5318: $80
	ld   bc, $080f                                   ; $5319: $01 $0f $08
	add  [hl]                                        ; $531c: $86
	nop                                              ; $531d: $00
	add  b                                           ; $531e: $80
	rlca                                             ; $531f: $07
	nop                                              ; $5320: $00
	nop                                              ; $5321: $00
	add  d                                           ; $5322: $82
	rrca                                             ; $5323: $0f
	nop                                              ; $5324: $00
	nop                                              ; $5325: $00
	add  h                                           ; $5326: $84
	db   $10                                         ; $5327: $10
	inc  bc                                          ; $5328: $03
	ld   a, $39                                      ; $5329: $3e $39
	add  a                                           ; $532b: $87
	ld   a, a                                        ; $532c: $7f
	add  e                                           ; $532d: $83
	rst  $38                                         ; $532e: $ff
	nop                                              ; $532f: $00
	nop                                              ; $5330: $00
	add  c                                           ; $5331: $81
	inc  b                                           ; $5332: $04
	inc  b                                           ; $5333: $04
	dec  b                                           ; $5334: $05
	ccf                                              ; $5335: $3f
	ld   bc, $ff3f                                   ; $5336: $01 $3f $ff
	add  b                                           ; $5339: $80
	ret  nz                                          ; $533a: $c0

	add  e                                           ; $533b: $83
	rst  $38                                         ; $533c: $ff
	inc  b                                           ; $533d: $04
	nop                                              ; $533e: $00
	inc  bc                                          ; $533f: $03
	inc  c                                           ; $5340: $0c
	rst  $38                                         ; $5341: $ff
	rrca                                             ; $5342: $0f
	add  d                                           ; $5343: $82
	rst  $38                                         ; $5344: $ff
	add  b                                           ; $5345: $80
	nop                                              ; $5346: $00
	add  b                                           ; $5347: $80
	rst  $38                                         ; $5348: $ff
	add  b                                           ; $5349: $80
	pop  af                                          ; $534a: $f1
	inc  bc                                          ; $534b: $03
	ldh  [$60], a                                    ; $534c: $e0 $60
	rst  $38                                         ; $534e: $ff
	ld   a, a                                        ; $534f: $7f
	add  e                                           ; $5350: $83
	rst  $38                                         ; $5351: $ff
	nop                                              ; $5352: $00
	cp   $80                                         ; $5353: $fe $80
	ld   bc, $f105                                   ; $5355: $01 $05 $f1
	adc  c                                           ; $5358: $89
	ld   sp, hl                                      ; $5359: $f9
	ld   a, b                                        ; $535a: $78
	ld   hl, sp+$00                                  ; $535b: $f8 $00
	add  c                                           ; $535d: $81
	rst  $38                                         ; $535e: $ff
	inc  b                                           ; $535f: $04
	db   $fc                                         ; $5360: $fc
	rst  $38                                         ; $5361: $ff
	db   $e3                                         ; $5362: $e3
	rst  $38                                         ; $5363: $ff
	rra                                              ; $5364: $1f
	add  e                                           ; $5365: $83
	rst  $38                                         ; $5366: $ff
	add  b                                           ; $5367: $80
	ld   hl, sp+$11                                  ; $5368: $f8 $11
	ret  nc                                          ; $536a: $d0

	nop                                              ; $536b: $00
	jr   c, jr_074_536e                              ; $536c: $38 $00

jr_074_536e:
	jr   c, jr_074_5370                              ; $536e: $38 $00

jr_074_5370:
	jr   c, jr_074_5372                              ; $5370: $38 $00

jr_074_5372:
	jr   c, jr_074_5374                              ; $5372: $38 $00

jr_074_5374:
	jr   c, jr_074_5376                              ; $5374: $38 $00

jr_074_5376:
	jr   c, jr_074_5378                              ; $5376: $38 $00

jr_074_5378:
	jr   c, jr_074_537a                              ; $5378: $38 $00

jr_074_537a:
	rst  $28                                         ; $537a: $ef
	rlca                                             ; $537b: $07
	add  b                                           ; $537c: $80
	ld   b, $82                                      ; $537d: $06 $82
	nop                                              ; $537f: $00
	dec  de                                          ; $5380: $1b
	ld   bc, $0700                                   ; $5381: $01 $00 $07
	nop                                              ; $5384: $00
	rlca                                             ; $5385: $07
	nop                                              ; $5386: $00
	ld   a, $1c                                      ; $5387: $3e $1c
	and  d                                           ; $5389: $a2
	add  c                                           ; $538a: $81
	ld   de, $2b03                                   ; $538b: $11 $03 $2b
	inc  bc                                          ; $538e: $03
	db   $e3                                         ; $538f: $e3
	inc  bc                                          ; $5390: $03
	ret  c                                           ; $5391: $d8

	ld   [bc], a                                     ; $5392: $02
	ld   a, h                                        ; $5393: $7c
	rlca                                             ; $5394: $07
	add  e                                           ; $5395: $83
	rrca                                             ; $5396: $0f
	rlca                                             ; $5397: $07
	ccf                                              ; $5398: $3f
	ld   d, b                                        ; $5399: $50
	sbc  a                                           ; $539a: $9f
	ret  nz                                          ; $539b: $c0

	cp   a                                           ; $539c: $bf
	add  b                                           ; $539d: $80
	rst  $38                                         ; $539e: $ff
	ld   b, $87                                      ; $539f: $06 $87
	rst  $38                                         ; $53a1: $ff
	rlca                                             ; $53a2: $07
	nop                                              ; $53a3: $00
	rra                                              ; $53a4: $1f
	rst  $38                                         ; $53a5: $ff
	ldh  [$81], a                                    ; $53a6: $e0 $81
	rst  $38                                         ; $53a8: $ff
	ld   [bc], a                                     ; $53a9: $02
	dec  sp                                          ; $53aa: $3b
	rst  $38                                         ; $53ab: $ff
	ccf                                              ; $53ac: $3f
	add  e                                           ; $53ad: $83
	rst  $38                                         ; $53ae: $ff
	ld   [bc], a                                     ; $53af: $02
	ei                                               ; $53b0: $fb
	nop                                              ; $53b1: $00
	inc  b                                           ; $53b2: $04
	add  e                                           ; $53b3: $83
	rst  $38                                         ; $53b4: $ff
	nop                                              ; $53b5: $00
	ei                                               ; $53b6: $fb
	add  b                                           ; $53b7: $80
	cp   $84                                         ; $53b8: $fe $84
	rst  $38                                         ; $53ba: $ff
	add  b                                           ; $53bb: $80
	nop                                              ; $53bc: $00
	add  e                                           ; $53bd: $83
	rst  $38                                         ; $53be: $ff
	jr   nz, jr_074_5439                             ; $53bf: $20 $78

	add  b                                           ; $53c1: $80
	rlca                                             ; $53c2: $07
	add  b                                           ; $53c3: $80
	sbc  a                                           ; $53c4: $9f
	ret  nz                                          ; $53c5: $c0

	ret  nc                                          ; $53c6: $d0

	ldh  [$df], a                                    ; $53c7: $e0 $df
	jr   nc, jr_074_53ce                             ; $53c9: $30 $03

	ld   hl, sp-$06                                  ; $53cb: $f8 $fa
	db   $fc                                         ; $53cd: $fc

jr_074_53ce:
	db   $fd                                         ; $53ce: $fd
	cp   $c1                                         ; $53cf: $fe $c1
	ccf                                              ; $53d1: $3f
	add  a                                           ; $53d2: $87
	rlca                                             ; $53d3: $07
	ld   d, c                                        ; $53d4: $51
	ld   bc, $0074                                   ; $53d5: $01 $74 $00
	cp   l                                           ; $53d8: $bd
	ld   h, b                                        ; $53d9: $60
	rst  $30                                         ; $53da: $f7
	ld   h, b                                        ; $53db: $60
	ld   h, c                                        ; $53dc: $61
	ld   h, b                                        ; $53dd: $60
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53de: $cf
	ld   h, b                                        ; $53df: $60
	ld   b, b                                        ; $53e0: $40
	adc  l                                           ; $53e1: $8d
	nop                                              ; $53e2: $00
	db   $10                                         ; $53e3: $10
	ld   e, b                                        ; $53e4: $58
	rlca                                             ; $53e5: $07
	ld   h, a                                        ; $53e6: $67
	rlca                                             ; $53e7: $07
	ld   h, a                                        ; $53e8: $67
	rlca                                             ; $53e9: $07
	ld   h, b                                        ; $53ea: $60
	rlca                                             ; $53eb: $07
	ld   h, a                                        ; $53ec: $67
	rlca                                             ; $53ed: $07
	ld   h, e                                        ; $53ee: $63
	inc  bc                                          ; $53ef: $03
	ld   h, e                                        ; $53f0: $63
	inc  bc                                          ; $53f1: $03
	ld   h, c                                        ; $53f2: $61
	ld   bc, $8ac8                                   ; $53f3: $01 $c8 $8a
	rrca                                             ; $53f6: $0f
	add  b                                           ; $53f7: $80
	ld   c, $01                                      ; $53f8: $0e $01
	ld   b, $f6                                      ; $53fa: $06 $f6
	add  l                                           ; $53fc: $85
	rst  $38                                         ; $53fd: $ff
	dec  b                                           ; $53fe: $05
	pop  af                                          ; $53ff: $f1
	rst  $38                                         ; $5400: $ff
	adc  l                                           ; $5401: $8d
	db   $fd                                         ; $5402: $fd
	ld   a, l                                        ; $5403: $7d
	db   $fd                                         ; $5404: $fd
	add  b                                           ; $5405: $80
	db   $ed                                         ; $5406: $ed
	inc  b                                           ; $5407: $04
	ld   bc, $c2c3                                   ; $5408: $01 $c3 $c2
	add  e                                           ; $540b: $83
	add  c                                           ; $540c: $81
	add  a                                           ; $540d: $87
	inc  bc                                          ; $540e: $03
	add  c                                           ; $540f: $81
	nop                                              ; $5410: $00
	ld   [bc], a                                     ; $5411: $02
	ldh  [rAUD4LEN], a                               ; $5412: $e0 $20
	ldh  [$84], a                                    ; $5414: $e0 $84
	and  b                                           ; $5416: $a0
	add  b                                           ; $5417: $80
	ldh  [$80], a                                    ; $5418: $e0 $80
	and  b                                           ; $541a: $a0
	add  b                                           ; $541b: $80
	jr   nz, jr_074_541e                             ; $541c: $20 $00

jr_074_541e:
	call c, $fc81                                    ; $541e: $dc $81 $fc
	add  b                                           ; $5421: $80
	ld   hl, sp-$80                                  ; $5422: $f8 $80
	ret  nz                                          ; $5424: $c0

	add  d                                           ; $5425: $82
	nop                                              ; $5426: $00
	dec  b                                           ; $5427: $05
	inc  bc                                          ; $5428: $03
	nop                                              ; $5429: $00
	inc  c                                           ; $542a: $0c
	nop                                              ; $542b: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $542c: $cf
	ret  nz                                          ; $542d: $c0

	add  b                                           ; $542e: $80
	nop                                              ; $542f: $00
	ld   [$0003], sp                                 ; $5430: $08 $03 $00
	inc  c                                           ; $5433: $0c
	nop                                              ; $5434: $00
	jr   nc, jr_074_5437                             ; $5435: $30 $00

jr_074_5437:
	ccf                                              ; $5437: $3f
	nop                                              ; $5438: $00

jr_074_5439:
	cp   $81                                         ; $5439: $fe $81
	nop                                              ; $543b: $00
	add  hl, de                                      ; $543c: $19
	ld   l, $00                                      ; $543d: $2e $00
	jr   c, jr_074_5441                              ; $543f: $38 $00

jr_074_5441:
	jr   c, jr_074_5443                              ; $5441: $38 $00

jr_074_5443:
	jr   c, jr_074_5445                              ; $5443: $38 $00

jr_074_5445:
	jr   c, jr_074_5447                              ; $5445: $38 $00

jr_074_5447:
	ld   hl, sp+$00                                  ; $5447: $f8 $00

jr_074_5449:
	xor  b                                           ; $5449: $a8
	nop                                              ; $544a: $00
	ld   l, [hl]                                     ; $544b: $6e
	nop                                              ; $544c: $00
	sub  c                                           ; $544d: $91
	inc  a                                           ; $544e: $3c
	cp   h                                           ; $544f: $bc
	ld   a, h                                        ; $5450: $7c
	db   $fc                                         ; $5451: $fc
	db   $fd                                         ; $5452: $fd
	db   $fc                                         ; $5453: $fc
	rst  $38                                         ; $5454: $ff
	ld   a, [$80fb]                                  ; $5455: $fa $fb $80
	rst  $20                                         ; $5458: $e7
	add  b                                           ; $5459: $80
	rst  JumpTable                                         ; $545a: $df
	add  b                                           ; $545b: $80
	cp   a                                           ; $545c: $bf
	dec  b                                           ; $545d: $05
	ld   b, b                                        ; $545e: $40
	ld   a, a                                        ; $545f: $7f
	ccf                                              ; $5460: $3f
	rst  $38                                         ; $5461: $ff
	ld   a, a                                        ; $5462: $7f
	db   $fc                                         ; $5463: $fc
	add  b                                           ; $5464: $80
	cp   $04                                         ; $5465: $fe $04
	ld   a, [hl-]                                    ; $5467: $3a
	ld   hl, sp-$40                                  ; $5468: $f8 $c0
	ld   hl, sp-$06                                  ; $546a: $f8 $fa
	add  b                                           ; $546c: $80
	db   $fc                                         ; $546d: $fc
	ld   c, $ff                                      ; $546e: $0e $ff
	inc  bc                                          ; $5470: $03
	rst  $38                                         ; $5471: $ff
	di                                               ; $5472: $f3
	ldh  a, [c]                                      ; $5473: $f2
	xor  $70                                         ; $5474: $ee $70
	daa                                              ; $5476: $27
	rst  $38                                         ; $5477: $ff
	ld   a, b                                        ; $5478: $78
	ccf                                              ; $5479: $3f
	rrca                                             ; $547a: $0f
	ccf                                              ; $547b: $3f
	or   a                                           ; $547c: $b7
	ld   a, a                                        ; $547d: $7f
	add  b                                           ; $547e: $80
	rst  $38                                         ; $547f: $ff
	nop                                              ; $5480: $00
	inc  bc                                          ; $5481: $03
	add  c                                           ; $5482: $81
	rst  $38                                         ; $5483: $ff
	nop                                              ; $5484: $00
	rra                                              ; $5485: $1f
	add  c                                           ; $5486: $81
	rst  $38                                         ; $5487: $ff
	nop                                              ; $5488: $00
	rra                                              ; $5489: $1f
	add  l                                           ; $548a: $85
	rst  $38                                         ; $548b: $ff
	nop                                              ; $548c: $00
	ei                                               ; $548d: $fb
	add  c                                           ; $548e: $81
	rst  $38                                         ; $548f: $ff
	add  b                                           ; $5490: $80
	db   $fc                                         ; $5491: $fc
	inc  b                                           ; $5492: $04
	ei                                               ; $5493: $fb
	db   $fc                                         ; $5494: $fc
	ld   sp, hl                                      ; $5495: $f9
	rst  $38                                         ; $5496: $ff
	cp   $88                                         ; $5497: $fe $88
	rst  $38                                         ; $5499: $ff
	ld   [bc], a                                     ; $549a: $02
	cp   a                                           ; $549b: $bf
	add  e                                           ; $549c: $83
	ccf                                              ; $549d: $3f
	add  b                                           ; $549e: $80
	rst  $38                                         ; $549f: $ff
	nop                                              ; $54a0: $00
	inc  bc                                          ; $54a1: $03
	add  e                                           ; $54a2: $83
	rst  $38                                         ; $54a3: $ff
	ld   a, [bc]                                     ; $54a4: $0a
	sub  b                                           ; $54a5: $90
	ld   h, b                                        ; $54a6: $60
	jr   nz, jr_074_5449                             ; $54a7: $20 $a0

	add  b                                           ; $54a9: $80
	ret  nz                                          ; $54aa: $c0

	ret  z                                           ; $54ab: $c8

	ldh  [$e4], a                                    ; $54ac: $e0 $e4
	ldh  a, [$f3]                                    ; $54ae: $f0 $f3
	add  b                                           ; $54b0: $80
	db   $fc                                         ; $54b1: $fc
	add  b                                           ; $54b2: $80
	cp   $80                                         ; $54b3: $fe $80
	rst  $38                                         ; $54b5: $ff
	add  e                                           ; $54b6: $83
	nop                                              ; $54b7: $00
	inc  bc                                          ; $54b8: $03
	ld   c, $00                                      ; $54b9: $0e $00
	rrca                                             ; $54bb: $0f
	ld   c, $80                                      ; $54bc: $0e $80
	rrca                                             ; $54be: $0f
	inc  de                                          ; $54bf: $13
	adc  a                                           ; $54c0: $8f
	rrca                                             ; $54c1: $0f
	ld   a, [hl]                                     ; $54c2: $7e
	rrca                                             ; $54c3: $0f
	and  a                                           ; $54c4: $a7
	ld   bc, $0060                                   ; $54c5: $01 $60 $00
	ld   h, h                                        ; $54c8: $64
	nop                                              ; $54c9: $00
	ld   h, e                                        ; $54ca: $63
	nop                                              ; $54cb: $00
	ld   l, [hl]                                     ; $54cc: $6e

jr_074_54cd:
	nop                                              ; $54cd: $00
	pop  af                                          ; $54ce: $f1
	nop                                              ; $54cf: $00
	xor  e                                           ; $54d0: $ab
	nop                                              ; $54d1: $00
	jr   nc, jr_074_54d4                             ; $54d2: $30 $00

jr_074_54d4:
	ld   c, a                                        ; $54d4: $4f
	ld   [bc], a                                     ; $54d5: $02
	sub  [hl]                                        ; $54d6: $96
	nop                                              ; $54d7: $00
	add  b                                           ; $54d8: $80
	dec  bc                                          ; $54d9: $0b
	adc  h                                           ; $54da: $8c
	nop                                              ; $54db: $00
	dec  b                                           ; $54dc: $05
	cp   $f1                                         ; $54dd: $fe $f1
	ld   [hl], b                                     ; $54df: $70
	ld   a, [hl]                                     ; $54e0: $7e
	cp   [hl]                                        ; $54e1: $be
	cp   a                                           ; $54e2: $bf
	add  b                                           ; $54e3: $80
	ld   d, a                                        ; $54e4: $57
	add  [hl]                                        ; $54e5: $86
	nop                                              ; $54e6: $00
	ld   bc, $7887                                   ; $54e7: $01 $87 $78
	add  b                                           ; $54ea: $80
	ld   a, $04                                      ; $54eb: $3e $04
	rlca                                             ; $54ed: $07
	rst  ToBoot                                         ; $54ee: $c7
	ret  nz                                          ; $54ef: $c0

	ld   hl, sp+$07                                  ; $54f0: $f8 $07
	add  l                                           ; $54f2: $85
	nop                                              ; $54f3: $00
	ld   bc, $39c6                                   ; $54f4: $01 $c6 $39
	add  b                                           ; $54f7: $80
	ld   c, $80                                      ; $54f8: $0e $80
	jp   $f080                                       ; $54fa: $c3 $80 $f0


	nop                                              ; $54fd: $00
	rst  $38                                         ; $54fe: $ff

Jump_074_54ff:
	add  l                                           ; $54ff: $85
	nop                                              ; $5500: $00
	ld   bc, $bf40                                   ; $5501: $01 $40 $bf
	add  b                                           ; $5504: $80
	nop                                              ; $5505: $00
	add  b                                           ; $5506: $80
	ld   a, a                                        ; $5507: $7f
	add  b                                           ; $5508: $80
	nop                                              ; $5509: $00
	nop                                              ; $550a: $00
	rst  $38                                         ; $550b: $ff
	add  [hl]                                        ; $550c: $86
	nop                                              ; $550d: $00
	nop                                              ; $550e: $00
	rst  $38                                         ; $550f: $ff
	add  b                                           ; $5510: $80
	nop                                              ; $5511: $00
	add  b                                           ; $5512: $80
	rst  $38                                         ; $5513: $ff
	add  b                                           ; $5514: $80
	nop                                              ; $5515: $00
	nop                                              ; $5516: $00
	rst  $38                                         ; $5517: $ff
	add  [hl]                                        ; $5518: $86
	nop                                              ; $5519: $00
	nop                                              ; $551a: $00
	rst  $38                                         ; $551b: $ff
	add  b                                           ; $551c: $80
	nop                                              ; $551d: $00
	add  b                                           ; $551e: $80
	rst  $38                                         ; $551f: $ff
	add  b                                           ; $5520: $80
	nop                                              ; $5521: $00
	nop                                              ; $5522: $00
	rst  $38                                         ; $5523: $ff
	add  l                                           ; $5524: $85
	nop                                              ; $5525: $00
	inc  bc                                          ; $5526: $03
	inc  b                                           ; $5527: $04
	ld   hl, sp+$02                                  ; $5528: $f8 $02
	ld   bc, $f980                                   ; $552a: $01 $80 $f9
	add  b                                           ; $552d: $80
	nop                                              ; $552e: $00
	nop                                              ; $552f: $00
	rst  $38                                         ; $5530: $ff
	adc  b                                           ; $5531: $88
	nop                                              ; $5532: $00
	add  b                                           ; $5533: $80
	add  b                                           ; $5534: $80
	add  b                                           ; $5535: $80
	rst  $38                                         ; $5536: $ff
	add  a                                           ; $5537: $87
	nop                                              ; $5538: $00
	add  b                                           ; $5539: $80
	stop                                             ; $553a: $10 $00
	nop                                              ; $553c: $00
	add  b                                           ; $553d: $80
	jr   c, jr_074_5542                              ; $553e: $38 $02

	rst  $38                                         ; $5540: $ff
	rst  ToBoot                                         ; $5541: $c7

jr_074_5542:
	jr   c, jr_074_54cd                              ; $5542: $38 $89

	nop                                              ; $5544: $00
	add  b                                           ; $5545: $80
	inc  bc                                          ; $5546: $03
	inc  bc                                          ; $5547: $03
	rst  $38                                         ; $5548: $ff
	cp   $00                                         ; $5549: $fe $00
	ld   bc, $0085                                   ; $554b: $01 $85 $00
	inc  bc                                          ; $554e: $03
	ld   b, b                                        ; $554f: $40
	ccf                                              ; $5550: $3f
	add  b                                           ; $5551: $80
	nop                                              ; $5552: $00
	add  b                                           ; $5553: $80
	ccf                                              ; $5554: $3f
	add  b                                           ; $5555: $80
	nop                                              ; $5556: $00
	nop                                              ; $5557: $00
	rst  $38                                         ; $5558: $ff
	add  [hl]                                        ; $5559: $86
	nop                                              ; $555a: $00
	nop                                              ; $555b: $00
	rst  $38                                         ; $555c: $ff
	add  b                                           ; $555d: $80
	nop                                              ; $555e: $00
	add  b                                           ; $555f: $80
	rst  $38                                         ; $5560: $ff
	add  b                                           ; $5561: $80
	nop                                              ; $5562: $00
	nop                                              ; $5563: $00
	rst  $38                                         ; $5564: $ff
	add  [hl]                                        ; $5565: $86
	nop                                              ; $5566: $00
	nop                                              ; $5567: $00
	rst  $38                                         ; $5568: $ff
	add  b                                           ; $5569: $80
	nop                                              ; $556a: $00
	add  b                                           ; $556b: $80
	rst  $38                                         ; $556c: $ff
	add  b                                           ; $556d: $80
	nop                                              ; $556e: $00
	nop                                              ; $556f: $00
	rst  $38                                         ; $5570: $ff
	add  l                                           ; $5571: $85
	nop                                              ; $5572: $00
	ld   bc, $4eb1                                   ; $5573: $01 $b1 $4e
	add  b                                           ; $5576: $80
	jr   c, @-$7e                                    ; $5577: $38 $80

	and  c                                           ; $5579: $a1
	add  b                                           ; $557a: $80
	ld   [bc], a                                     ; $557b: $02
	nop                                              ; $557c: $00
	rst  $38                                         ; $557d: $ff
	sbc  l                                           ; $557e: $9d
	nop                                              ; $557f: $00
	add  b                                           ; $5580: $80
	dec  hl                                          ; $5581: $2b
	add  b                                           ; $5582: $80
	dec  b                                           ; $5583: $05
	add  b                                           ; $5584: $80
	ld   a, [bc]                                     ; $5585: $0a
	add  b                                           ; $5586: $80
	dec  b                                           ; $5587: $05
	add  b                                           ; $5588: $80
	ld   [bc], a                                     ; $5589: $02
	add  h                                           ; $558a: $84
	nop                                              ; $558b: $00
	add  h                                           ; $558c: $84
	rst  $38                                         ; $558d: $ff
	add  b                                           ; $558e: $80
	ld   a, a                                        ; $558f: $7f
	add  b                                           ; $5590: $80
	cp   a                                           ; $5591: $bf
	add  b                                           ; $5592: $80
	ld   a, a                                        ; $5593: $7f
	add  b                                           ; $5594: $80
	ccf                                              ; $5595: $3f
	add  b                                           ; $5596: $80
	ld   e, a                                        ; $5597: $5f
	ld   [bc], a                                     ; $5598: $02
	db   $e3                                         ; $5599: $e3
	inc  e                                           ; $559a: $1c
	inc  bc                                          ; $559b: $03
	add  b                                           ; $559c: $80
	db   $e3                                         ; $559d: $e3
	add  a                                           ; $559e: $87
	rst  $38                                         ; $559f: $ff
	nop                                              ; $55a0: $00
	db   $fc                                         ; $55a1: $fc
	add  b                                           ; $55a2: $80
	ret  nz                                          ; $55a3: $c0

	nop                                              ; $55a4: $00
	nop                                              ; $55a5: $00
	add  b                                           ; $55a6: $80
	rst  $38                                         ; $55a7: $ff
	ld   [bc], a                                     ; $55a8: $02
	nop                                              ; $55a9: $00
	rst  $38                                         ; $55aa: $ff
	ld   hl, sp-$7a                                  ; $55ab: $f8 $86
	rst  $30                                         ; $55ad: $f7
	nop                                              ; $55ae: $00
	rlca                                             ; $55af: $07
	add  b                                           ; $55b0: $80
	nop                                              ; $55b1: $00
	add  b                                           ; $55b2: $80
	rst  $38                                         ; $55b3: $ff
	inc  b                                           ; $55b4: $04

jr_074_55b5:
	nop                                              ; $55b5: $00
	rst  $38                                         ; $55b6: $ff
	rlca                                             ; $55b7: $07
	ei                                               ; $55b8: $fb
	ld   a, [$f985]                                  ; $55b9: $fa $85 $f9
	add  b                                           ; $55bc: $80
	nop                                              ; $55bd: $00
	add  b                                           ; $55be: $80
	rst  $38                                         ; $55bf: $ff
	nop                                              ; $55c0: $00
	nop                                              ; $55c1: $00
	add  c                                           ; $55c2: $81
	rst  $38                                         ; $55c3: $ff
	nop                                              ; $55c4: $00
	rrca                                             ; $55c5: $0f
	add  b                                           ; $55c6: $80
	di                                               ; $55c7: $f3
	add  b                                           ; $55c8: $80
	pop  af                                          ; $55c9: $f1
	add  c                                           ; $55ca: $81
	ldh  a, [$80]                                    ; $55cb: $f0 $80
	nop                                              ; $55cd: $00
	add  b                                           ; $55ce: $80
	ldh  [rP1], a                                    ; $55cf: $e0 $00
	nop                                              ; $55d1: $00
	add  b                                           ; $55d2: $80
	rst  $28                                         ; $55d3: $ef
	add  b                                           ; $55d4: $80
	add  sp, -$80                                    ; $55d5: $e8 $80
	db   $eb                                         ; $55d7: $eb
	add  b                                           ; $55d8: $80
	ld   [$6a81], a                                  ; $55d9: $ea $81 $6a
	ld   a, [bc]                                     ; $55dc: $0a
	sub  l                                           ; $55dd: $95
	nop                                              ; $55de: $00
	rst  $38                                         ; $55df: $ff
	nop                                              ; $55e0: $00
	ld   bc, $fffe                                   ; $55e1: $01 $fe $ff
	nop                                              ; $55e4: $00
	ld   bc, $fffe                                   ; $55e5: $01 $fe $ff
	add  e                                           ; $55e8: $83
	ld   [$f70a], sp                                 ; $55e9: $08 $0a $f7
	jr   c, jr_074_55b5                              ; $55ec: $38 $c7

	nop                                              ; $55ee: $00
	cp   $01                                         ; $55ef: $fe $01
	rst  $38                                         ; $55f1: $ff
	nop                                              ; $55f2: $00
	xor  $01                                         ; $55f3: $ee $01
	rst  $38                                         ; $55f5: $ff
	add  e                                           ; $55f6: $83
	jr   c, jr_074_55fb                              ; $55f7: $38 $02

	sub  $00                                         ; $55f9: $d6 $00

jr_074_55fb:
	cp   $80                                         ; $55fb: $fe $80
	nop                                              ; $55fd: $00
	add  b                                           ; $55fe: $80
	rst  $38                                         ; $55ff: $ff
	add  b                                           ; $5600: $80
	nop                                              ; $5601: $00
	add  b                                           ; $5602: $80
	rst  $38                                         ; $5603: $ff
	add  h                                           ; $5604: $84
	jr   nz, jr_074_5607                             ; $5605: $20 $00

jr_074_5607:
	nop                                              ; $5607: $00
	add  b                                           ; $5608: $80
	ccf                                              ; $5609: $3f
	ld   [bc], a                                     ; $560a: $02
	nop                                              ; $560b: $00
	cp   a                                           ; $560c: $bf
	xor  c                                           ; $560d: $a9
	add  b                                           ; $560e: $80
	inc  h                                           ; $560f: $24
	ld   bc, $8da4                                   ; $5610: $01 $a4 $8d
	add  c                                           ; $5613: $81
	add  b                                           ; $5614: $80
	add  b                                           ; $5615: $80
	sbc  c                                           ; $5616: $99
	ld   bc, $00bf                                   ; $5617: $01 $bf $00
	add  b                                           ; $561a: $80
	rst  $38                                         ; $561b: $ff
	nop                                              ; $561c: $00
	nop                                              ; $561d: $00
	add  b                                           ; $561e: $80
	ccf                                              ; $561f: $3f
	add  c                                           ; $5620: $81
	rst  JumpTable                                         ; $5621: $df
	nop                                              ; $5622: $00
	cpl                                              ; $5623: $2f
	add  c                                           ; $5624: $81
	rra                                              ; $5625: $1f
	add  b                                           ; $5626: $80
	sbc  a                                           ; $5627: $9f
	ld   bc, $00ef                                   ; $5628: $01 $ef $00
	add  b                                           ; $562b: $80
	rst  $38                                         ; $562c: $ff
	nop                                              ; $562d: $00
	nop                                              ; $562e: $00
	adc  c                                           ; $562f: $89
	rst  $38                                         ; $5630: $ff
	ld   bc, $15ea                                   ; $5631: $01 $ea $15
	add  b                                           ; $5634: $80
	add  sp, $01                                     ; $5635: $e8 $01
	ld   h, b                                        ; $5637: $60
	ldh  [$80], a                                    ; $5638: $e0 $80
	and  $82                                         ; $563a: $e6 $82
	xor  $82                                         ; $563c: $ee $82
	db   $ec                                         ; $563e: $ec
	nop                                              ; $563f: $00
	ld   a, a                                        ; $5640: $7f
	and  c                                           ; $5641: $a1
	nop                                              ; $5642: $00
	ld   bc, $ff7f                                   ; $5643: $01 $7f $ff
	add  d                                           ; $5646: $82
	ret  nz                                          ; $5647: $c0

	rlca                                             ; $5648: $07
	ret  nc                                          ; $5649: $d0

	push de                                          ; $564a: $d5
	rst  ToBoot                                         ; $564b: $c7
	jp   z, $dfd7                                    ; $564c: $ca $d7 $df

	adc  a                                           ; $564f: $8f
	rrca                                             ; $5650: $0f
	add  b                                           ; $5651: $80
	rlca                                             ; $5652: $07
	add  b                                           ; $5653: $80
	ei                                               ; $5654: $fb
	add  b                                           ; $5655: $80
	rla                                              ; $5656: $17
	add  b                                           ; $5657: $80
	inc  de                                          ; $5658: $13
	inc  bc                                          ; $5659: $03
	dec  d                                           ; $565a: $15
	ld   d, l                                        ; $565b: $55
	jp   nc, $8092                                   ; $565c: $d2 $92 $80

	ld   d, c                                        ; $565f: $51
	add  b                                           ; $5660: $80
	rst  $38                                         ; $5661: $ff
	nop                                              ; $5662: $00
	ldh  [$80], a                                    ; $5663: $e0 $80
	rst  JumpTable                                         ; $5665: $df
	ld   bc, $dbd8                                   ; $5666: $01 $d8 $db
	add  b                                           ; $5669: $80
	ei                                               ; $566a: $fb
	nop                                              ; $566b: $00
	ld   a, [$fe84]                                  ; $566c: $fa $84 $fe
	ld   [bc], a                                     ; $566f: $02
	and  $ff                                         ; $5670: $e6 $ff
	nop                                              ; $5672: $00
	add  c                                           ; $5673: $81
	rst  $38                                         ; $5674: $ff
	nop                                              ; $5675: $00
	nop                                              ; $5676: $00
	add  b                                           ; $5677: $80
	rst  $38                                         ; $5678: $ff
	nop                                              ; $5679: $00
	nop                                              ; $567a: $00
	add  d                                           ; $567b: $82
	rst  $38                                         ; $567c: $ff
	inc  b                                           ; $567d: $04
	cp   $ff                                         ; $567e: $fe $ff
	ld   bc, $40ff                                   ; $5680: $01 $ff $40
	add  c                                           ; $5683: $81
	cp   a                                           ; $5684: $bf
	nop                                              ; $5685: $00
	nop                                              ; $5686: $00
	add  b                                           ; $5687: $80
	cp   a                                           ; $5688: $bf
	nop                                              ; $5689: $00
	and  b                                           ; $568a: $a0
	add  d                                           ; $568b: $82
	xor  a                                           ; $568c: $af
	ld   [$ffef], sp                                 ; $568d: $08 $ef $ff
	or   b                                           ; $5690: $b0
	rst  $38                                         ; $5691: $ff
	inc  bc                                          ; $5692: $03
	db   $fc                                         ; $5693: $fc
	cp   $e2                                         ; $5694: $fe $e2
	ld   a, [de]                                     ; $5696: $1a
	add  b                                           ; $5697: $80
	ld   a, [$0a00]                                  ; $5698: $fa $00 $0a
	add  h                                           ; $569b: $84
	cp   $00                                         ; $569c: $fe $00
	inc  e                                           ; $569e: $1c
	add  b                                           ; $569f: $80
	ld   a, d                                        ; $56a0: $7a
	add  b                                           ; $56a1: $80
	ld   a, [hl-]                                    ; $56a2: $3a
	add  b                                           ; $56a3: $80
	dec  de                                          ; $56a4: $1b
	add  e                                           ; $56a5: $83
	ld   a, [de]                                     ; $56a6: $1a
	add  d                                           ; $56a7: $82
	dec  de                                          ; $56a8: $1b
	nop                                              ; $56a9: $00
	ld   a, [bc]                                     ; $56aa: $0a
	add  d                                           ; $56ab: $82

jr_074_56ac:
	ld   [$ff80], sp                                 ; $56ac: $08 $80 $ff
	add  e                                           ; $56af: $83
	ld   [$f701], sp                                 ; $56b0: $08 $01 $f7
	nop                                              ; $56b3: $00
	add  b                                           ; $56b4: $80
	inc  l                                           ; $56b5: $2c
	nop                                              ; $56b6: $00
	rst  $28                                         ; $56b7: $ef
	add  d                                           ; $56b8: $82
	jr   c, @-$7e                                    ; $56b9: $38 $80

	rst  $38                                         ; $56bb: $ff
	add  e                                           ; $56bc: $83
	jr   c, jr_074_56bf                              ; $56bd: $38 $00

jr_074_56bf:
	ld   hl, sp-$7f                                  ; $56bf: $f8 $81
	jr   c, @+$03                                    ; $56c1: $38 $01

	add  sp, $20                                     ; $56c3: $e8 $20
	add  b                                           ; $56c5: $80
	ld   [hl+], a                                    ; $56c6: $22
	nop                                              ; $56c7: $00
	ld   h, $80                                      ; $56c8: $26 $80
	cp   $87                                         ; $56ca: $fe $87
	ld   h, $01                                      ; $56cc: $26 $01
	jr   nz, @+$01                                   ; $56ce: $20 $ff

jr_074_56d0:
	add  c                                           ; $56d0: $81
	nop                                              ; $56d1: $00
	nop                                              ; $56d2: $00
	ld   b, b                                        ; $56d3: $40
	add  b                                           ; $56d4: $80
	ld   b, c                                        ; $56d5: $41
	ld   bc, $5f5b                                   ; $56d6: $01 $5b $5f
	add  d                                           ; $56d9: $82
	ld   d, a                                        ; $56da: $57
	add  b                                           ; $56db: $80
	ld   d, [hl]                                     ; $56dc: $56
	inc  bc                                          ; $56dd: $03
	and  h                                           ; $56de: $a4
	rst  $38                                         ; $56df: $ff
	ld   h, a                                        ; $56e0: $67
	ld   a, b                                        ; $56e1: $78
	add  b                                           ; $56e2: $80
	ldh  a, [$80]                                    ; $56e3: $f0 $80
	ldh  [c], a                                      ; $56e5: $e2
	add  b                                           ; $56e6: $80
	add  $80                                         ; $56e7: $c6 $80
	adc  [hl]                                        ; $56e9: $8e
	add  b                                           ; $56ea: $80
	ld   e, $80                                      ; $56eb: $1e $80
	ld   a, $08                                      ; $56ed: $3e $08
	ld   bc, $dfff                                   ; $56ef: $01 $ff $df
	add  e                                           ; $56f2: $83
	add  l                                           ; $56f3: $85
	add  b                                           ; $56f4: $80
	sbc  e                                           ; $56f5: $9b
	add  b                                           ; $56f6: $80
	add  c                                           ; $56f7: $81
	add  b                                           ; $56f8: $80
	sbc  b                                           ; $56f9: $98
	ld   bc, $9880                                   ; $56fa: $01 $80 $98
	add  c                                           ; $56fd: $81
	add  b                                           ; $56fe: $80
	ld   a, [bc]                                     ; $56ff: $0a
	ld   [hl-], a                                    ; $5700: $32
	add  sp, $43                                     ; $5701: $e8 $43
	jp   $3f3e                                       ; $5703: $c3 $3e $3f


	jp   $16c7                                       ; $5706: $c3 $c7 $16


	rla                                              ; $5709: $17

Jump_074_570a:
	ld   d, e                                        ; $570a: $53
	add  e                                           ; $570b: $83
	ld   d, a                                        ; $570c: $57
	nop                                              ; $570d: $00
	rst  $38                                         ; $570e: $ff
	adc  e                                           ; $570f: $8b
	nop                                              ; $5710: $00
	add  b                                           ; $5711: $80
	ld   [$0084], sp                                 ; $5712: $08 $84 $00
	add  b                                           ; $5715: $80
	ld   bc, $0e01                                   ; $5716: $01 $01 $0e
	ld   e, $81                                      ; $5719: $1e $81
	jr   jr_074_5720                                 ; $571b: $18 $03

	ld   a, [de]                                     ; $571d: $1a
	dec  e                                           ; $571e: $1d
	rra                                              ; $571f: $1f

jr_074_5720:
	ld   d, h                                        ; $5720: $54
	add  b                                           ; $5721: $80
	call nz, $c580                                   ; $5722: $c4 $80 $c5
	inc  b                                           ; $5725: $04
	call nz, $f570                                   ; $5726: $c4 $70 $f5
	dec  l                                           ; $5729: $2d
	jr   z, jr_074_56ac                              ; $572a: $28 $80

	inc  hl                                          ; $572c: $23
	rlca                                             ; $572d: $07
	jr   nz, jr_074_56d0                             ; $572e: $20 $a0

	jr   nz, @-$59                                   ; $5730: $20 $a5

	rla                                              ; $5732: $17
	sub  d                                           ; $5733: $92
	sub  c                                           ; $5734: $91
	ld   de, $1080                                   ; $5735: $11 $80 $10
	inc  bc                                          ; $5738: $03
	ld   de, $5051                                   ; $5739: $11 $51 $50
	db   $10                                         ; $573c: $10
	add  b                                           ; $573d: $80
	ret  nc                                          ; $573e: $d0

	add  c                                           ; $573f: $81
	db   $10                                         ; $5740: $10
	ld   [bc], a                                     ; $5741: $02
	ld   d, b                                        ; $5742: $50
	and  a                                           ; $5743: $a7
	cp   $80                                         ; $5744: $fe $80
	ld   a, [hl]                                     ; $5746: $7e
	add  b                                           ; $5747: $80
	cp   $80                                         ; $5748: $fe $80
	ld   a, [hl]                                     ; $574a: $7e
	add  b                                           ; $574b: $80
	cp   [hl]                                        ; $574c: $be
	add  b                                           ; $574d: $80
	ld   a, [hl]                                     ; $574e: $7e
	ld   bc, $bbba                                   ; $574f: $01 $ba $bb
	add  b                                           ; $5752: $80
	ld   a, c                                        ; $5753: $79
	inc  c                                           ; $5754: $0c
	sbc  e                                           ; $5755: $9b
	rst  $38                                         ; $5756: $ff
	ccf                                              ; $5757: $3f
	rst  $38                                         ; $5758: $ff
	dec  e                                           ; $5759: $1d
	rst  $38                                         ; $575a: $ff
	ld   c, $ff                                      ; $575b: $0e $ff
	rlca                                             ; $575d: $07
	rst  $38                                         ; $575e: $ff
	ld   d, a                                        ; $575f: $57
	rst  $38                                         ; $5760: $ff
	nop                                              ; $5761: $00
	add  c                                           ; $5762: $81
	rst  $38                                         ; $5763: $ff
	ld   bc, $5ff8                                   ; $5764: $01 $f8 $5f
	add  b                                           ; $5767: $80
	rst  $38                                         ; $5768: $ff
	ld   [bc], a                                     ; $5769: $02
	rla                                              ; $576a: $17
	rst  $38                                         ; $576b: $ff
	cp   a                                           ; $576c: $bf
	add  e                                           ; $576d: $83
	xor  a                                           ; $576e: $af
	nop                                              ; $576f: $00
	and  b                                           ; $5770: $a0
	add  c                                           ; $5771: $81
	rst  $38                                         ; $5772: $ff
	nop                                              ; $5773: $00
	dec  c                                           ; $5774: $0d
	adc  c                                           ; $5775: $89
	cp   $01                                         ; $5776: $fe $01
	ld   a, [bc]                                     ; $5778: $0a
	ld   a, [$f280]                                  ; $5779: $fa $80 $f2
	inc  bc                                          ; $577c: $03
	db   $ed                                         ; $577d: $ed
	dec  de                                          ; $577e: $1b
	ld   a, [bc]                                     ; $577f: $0a
	rst  $38                                         ; $5780: $ff
	add  b                                           ; $5781: $80
	ld   b, e                                        ; $5782: $43
	add  b                                           ; $5783: $80
	ld   b, a                                        ; $5784: $47
	add  b                                           ; $5785: $80
	ld   c, [hl]                                     ; $5786: $4e
	add  b                                           ; $5787: $80
	ld   e, h                                        ; $5788: $5c
	add  b                                           ; $5789: $80
	ld   a, b                                        ; $578a: $78
	add  b                                           ; $578b: $80
	ld   [hl], b                                     ; $578c: $70
	add  b                                           ; $578d: $80
	ld   bc, $ff80                                   ; $578e: $01 $80 $ff
	ld   [bc], a                                     ; $5791: $02
	sub  b                                           ; $5792: $90
	sbc  c                                           ; $5793: $99
	add  hl, bc                                      ; $5794: $09
	add  b                                           ; $5795: $80
	rrca                                             ; $5796: $0f
	ld   bc, $7000                                   ; $5797: $01 $00 $70
	add  b                                           ; $579a: $80
	ld   a, d                                        ; $579b: $7a
	add  b                                           ; $579c: $80
	ld   a, b                                        ; $579d: $78
	dec  b                                           ; $579e: $05
	ld   a, a                                        ; $579f: $7f
	rrca                                             ; $57a0: $0f
	ccf                                              ; $57a1: $3f
	ret  nz                                          ; $57a2: $c0

	rst  $38                                         ; $57a3: $ff
	nop                                              ; $57a4: $00
	add  b                                           ; $57a5: $80
	ld   [hl+], a                                    ; $57a6: $22
	add  b                                           ; $57a7: $80
	rst  $38                                         ; $57a8: $ff
	add  b                                           ; $57a9: $80
	nop                                              ; $57aa: $00
	add  hl, bc                                      ; $57ab: $09
	xor  d                                           ; $57ac: $aa
	xor  c                                           ; $57ad: $a9
	adc  e                                           ; $57ae: $8b
	adc  b                                           ; $57af: $88
	db   $fc                                         ; $57b0: $fc
	db   $fd                                         ; $57b1: $fd
	cp   $02                                         ; $57b2: $fe $02
	cp   $06                                         ; $57b4: $fe $06
	add  b                                           ; $57b6: $80
	ld   h, $80                                      ; $57b7: $26 $80
	and  $80                                         ; $57b9: $e6 $80
	ld   b, $09                                      ; $57bb: $06 $09
	and  [hl]                                        ; $57bd: $a6
	ld   h, [hl]                                     ; $57be: $66
	and  $26                                         ; $57bf: $e6 $26
	ld   d, $23                                      ; $57c1: $16 $23
	ld   [hl], h                                     ; $57c3: $74
	ld   b, h                                        ; $57c4: $44
	ld   a, a                                        ; $57c5: $7f
	ld   bc, $7f81                                   ; $57c6: $01 $81 $7f
	add  d                                           ; $57c9: $82
	ld   bc, $7980                                   ; $57ca: $01 $80 $79
	ld   b, $01                                      ; $57cd: $06 $01
	ld   a, a                                        ; $57cf: $7f
	ld   bc, $007e                                   ; $57d0: $01 $7e $00
	rst  $38                                         ; $57d3: $ff
	ld   h, l                                        ; $57d4: $65
	add  c                                           ; $57d5: $81
	sbc  d                                           ; $57d6: $9a
	ld   [bc], a                                     ; $57d7: $02
	nop                                              ; $57d8: $00
	rst  $38                                         ; $57d9: $ff
	ldh  a, [$82]                                    ; $57da: $f0 $82
	nop                                              ; $57dc: $00
	dec  b                                           ; $57dd: $05
	ldh  a, [$da]                                    ; $57de: $f0 $da
	add  b                                           ; $57e0: $80
	and  b                                           ; $57e1: $a0
	ld   a, [$8122]                                  ; $57e2: $fa $22 $81
	jp   c, $0203                                    ; $57e5: $da $03 $02

	ld   a, [$c303]                                  ; $57e8: $fa $03 $c3
	add  b                                           ; $57eb: $80
	jp   nz, $c302                                   ; $57ec: $c2 $02 $c3

	pop  bc                                          ; $57ef: $c1
	sub  l                                           ; $57f0: $95
	add  c                                           ; $57f1: $81
	ld   d, a                                        ; $57f2: $57
	nop                                              ; $57f3: $00
	ld   d, e                                        ; $57f4: $53
	add  e                                           ; $57f5: $83
	ld   d, a                                        ; $57f6: $57
	ld   bc, $fffb                                   ; $57f7: $01 $fb $ff
	add  b                                           ; $57fa: $80
	nop                                              ; $57fb: $00
	add  b                                           ; $57fc: $80
	rst  $38                                         ; $57fd: $ff
	nop                                              ; $57fe: $00
	ldh  a, [$81]                                    ; $57ff: $f0 $81

Call_074_5801:
	rrca                                             ; $5801: $0f
	nop                                              ; $5802: $00
	add  hl, bc                                      ; $5803: $09
	add  e                                           ; $5804: $83
	rrca                                             ; $5805: $0f
	ld   bc, $0f09                                   ; $5806: $01 $09 $0f
	add  b                                           ; $5809: $80
	inc  c                                           ; $580a: $0c
	add  b                                           ; $580b: $80
	nop                                              ; $580c: $00
	inc  bc                                          ; $580d: $03
	ld   [$1d1a], sp                                 ; $580e: $08 $1a $1d
	rra                                              ; $5811: $1f
	add  b                                           ; $5812: $80
	ld   a, [de]                                     ; $5813: $1a
	add  b                                           ; $5814: $80
	inc  e                                           ; $5815: $1c
	add  b                                           ; $5816: $80
	dec  de                                          ; $5817: $1b
	add  e                                           ; $5818: $83
	jr   jr_074_5825                                 ; $5819: $18 $0a

	rra                                              ; $581b: $1f
	or   a                                           ; $581c: $b7
	xor  d                                           ; $581d: $aa
	cp   [hl]                                        ; $581e: $be
	or   l                                           ; $581f: $b5
	and  [hl]                                        ; $5820: $a6
	and  a                                           ; $5821: $a7
	jr   nz, jr_074_5854                             ; $5822: $20 $30

	or   b                                           ; $5824: $b0

jr_074_5825:
	and  b                                           ; $5825: $a0
	add  b                                           ; $5826: $80
	dec  h                                           ; $5827: $25
	inc  bc                                          ; $5828: $03
	rrca                                             ; $5829: $0f
	rst  $28                                         ; $582a: $ef
	or   l                                           ; $582b: $b5
	push de                                          ; $582c: $d5
	add  c                                           ; $582d: $81
	sub  b                                           ; $582e: $90
	nop                                              ; $582f: $00
	db   $10                                         ; $5830: $10
	add  b                                           ; $5831: $80
	sub  b                                           ; $5832: $90
	ld   [bc], a                                     ; $5833: $02
	db   $10                                         ; $5834: $10
	ld   d, b                                        ; $5835: $50
	ld   d, e                                        ; $5836: $53
	add  b                                           ; $5837: $80
	sub  b                                           ; $5838: $90
	nop                                              ; $5839: $00
	inc  de                                          ; $583a: $13
	add  b                                           ; $583b: $80
	pop  de                                          ; $583c: $d1
	add  b                                           ; $583d: $80
	ld   de, $2705                                   ; $583e: $11 $05 $27
	jr   c, jr_074_5861                              ; $5841: $38 $1e

	add  hl, de                                      ; $5843: $19
	dec  de                                          ; $5844: $1b
	ld   a, [de]                                     ; $5845: $1a
	add  b                                           ; $5846: $80
	ld   e, $00                                      ; $5847: $1e $00
	and  $80                                         ; $5849: $e6 $80
	rlca                                             ; $584b: $07
	ld   [bc], a                                     ; $584c: $02
	ld   hl, sp+$67                                  ; $584d: $f8 $67
	sbc  a                                           ; $584f: $9f
	add  b                                           ; $5850: $80
	cp   a                                           ; $5851: $bf
	add  c                                           ; $5852: $81
	nop                                              ; $5853: $00

jr_074_5854:
	dec  bc                                          ; $5854: $0b
	rst  JumpTable                                         ; $5855: $df
	sbc  $31                                         ; $5856: $de $31
	ccf                                              ; $5858: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5859: $cf
	ldh  a, [$30]                                    ; $585a: $f0 $30
	ret  nz                                          ; $585c: $c0

	jp   $a483                                       ; $585d: $c3 $83 $a4


	inc  h                                           ; $5860: $24

jr_074_5861:
	add  b                                           ; $5861: $80
	ld   b, b                                        ; $5862: $40
	add  b                                           ; $5863: $80
	nop                                              ; $5864: $00
	ld   [de], a                                     ; $5865: $12
	rst  $20                                         ; $5866: $e7
	daa                                              ; $5867: $27
	ld   hl, sp-$38                                  ; $5868: $f8 $c8
	db   $fc                                         ; $586a: $fc
	jr   nc, jr_074_58ac                             ; $586b: $30 $3f

	rrca                                             ; $586d: $0f
	inc  c                                           ; $586e: $0c
	rlca                                             ; $586f: $07
	sub  a                                           ; $5870: $97
	sub  e                                           ; $5871: $93
	dec  bc                                          ; $5872: $0b
	ld   a, [bc]                                     ; $5873: $0a
	ld   [bc], a                                     ; $5874: $02
	ld   c, $f2                                      ; $5875: $0e $f2
	ld   a, [$800a]                                  ; $5877: $fa $0a $80
	ld   a, [hl]                                     ; $587a: $7e
	nop                                              ; $587b: $00
	inc  c                                           ; $587c: $0c
	add  b                                           ; $587d: $80
	add  b                                           ; $587e: $80
	rlca                                             ; $587f: $07
	ld   a, a                                        ; $5880: $7f
	rst  $38                                         ; $5881: $ff
	add  b                                           ; $5882: $80
	ld   hl, sp-$06                                  ; $5883: $f8 $fa
	sbc  l                                           ; $5885: $9d
	ld   h, b                                        ; $5886: $60
	ld   b, b                                        ; $5887: $40
	add  d                                           ; $5888: $82
	ld   b, c                                        ; $5889: $41
	add  b                                           ; $588a: $80
	ld   b, b                                        ; $588b: $40
	rlca                                             ; $588c: $07
	ld   a, a                                        ; $588d: $7f
	ld   b, b                                        ; $588e: $40
	ld   a, a                                        ; $588f: $7f
	ld   c, a                                        ; $5890: $4f
	ld   b, b                                        ; $5891: $40
	ld   d, b                                        ; $5892: $50
	ld   b, b                                        ; $5893: $40
	rra                                              ; $5894: $1f
	add  b                                           ; $5895: $80
	nop                                              ; $5896: $00
	add  b                                           ; $5897: $80
	ld   d, l                                        ; $5898: $55
	dec  bc                                          ; $5899: $0b
	rst  $38                                         ; $589a: $ff
	xor  a                                           ; $589b: $af
	pop  af                                          ; $589c: $f1
	and  c                                           ; $589d: $a1
	rst  $38                                         ; $589e: $ff
	ld   d, d                                        ; $589f: $52
	rst  $38                                         ; $58a0: $ff
	ret  nc                                          ; $58a1: $d0

	ld   a, $00                                      ; $58a2: $3e $00
	ld   a, a                                        ; $58a4: $7f
	jp   nz, $8d80                                   ; $58a5: $c2 $80 $8d

	add  b                                           ; $58a8: $80
	ld   d, l                                        ; $58a9: $55
	add  b                                           ; $58aa: $80
	db   $fd                                         ; $58ab: $fd

jr_074_58ac:
	add  b                                           ; $58ac: $80
	sub  l                                           ; $58ad: $95
	rlca                                             ; $58ae: $07
	db   $fd                                         ; $58af: $fd
	ld   d, l                                        ; $58b0: $55
	db   $fd                                         ; $58b1: $fd
	sub  h                                           ; $58b2: $94
	rst  $20                                         ; $58b3: $e7
	daa                                              ; $58b4: $27
	ret  nc                                          ; $58b5: $d0

	dec  [hl]                                        ; $58b6: $35
	add  [hl]                                        ; $58b7: $86
	or   $03                                         ; $58b8: $f6 $03
	cp   $f6                                         ; $58ba: $fe $f6
	cp   $16                                         ; $58bc: $fe $16
	add  b                                           ; $58be: $80
	or   $01                                         ; $58bf: $f6 $01
	add  [hl]                                        ; $58c1: $86
	add  e                                           ; $58c2: $83
	add  b                                           ; $58c3: $80
	nop                                              ; $58c4: $00
	ld   b, $7f                                      ; $58c5: $06 $7f
	inc  h                                           ; $58c7: $24
	ld   a, a                                        ; $58c8: $7f
	inc  h                                           ; $58c9: $24
	ld   a, a                                        ; $58ca: $7f
	ld   b, a                                        ; $58cb: $47
	jr   c, @-$7e                                    ; $58cc: $38 $80

	ld   [hl], b                                     ; $58ce: $70
	add  b                                           ; $58cf: $80
	ld   h, b                                        ; $58d0: $60
	ld   [bc], a                                     ; $58d1: $02
	ld   b, c                                        ; $58d2: $41
	ld   b, b                                        ; $58d3: $40
	add  hl, bc                                      ; $58d4: $09
	add  b                                           ; $58d5: $80
	inc  c                                           ; $58d6: $0c
	inc  bc                                          ; $58d7: $03
	db   $fc                                         ; $58d8: $fc
	sbc  l                                           ; $58d9: $9d
	db   $fd                                         ; $58da: $fd
	sbc  a                                           ; $58db: $9f
	add  b                                           ; $58dc: $80
	rst  $38                                         ; $58dd: $ff
	ld   a, [bc]                                     ; $58de: $0a
	rrca                                             ; $58df: $0f
	dec  bc                                          ; $58e0: $0b
	nop                                              ; $58e1: $00
	jr   nc, jr_074_58e4                             ; $58e2: $30 $00

jr_074_58e4:
	rst  $28                                         ; $58e4: $ef
	nop                                              ; $58e5: $00
	and  l                                           ; $58e6: $a5
	ld   [hl], b                                     ; $58e7: $70
	ldh  [$e1], a                                    ; $58e8: $e0 $e1
	add  b                                           ; $58ea: $80
	ret                                              ; $58eb: $c9


	ld   bc, $8889                                   ; $58ec: $01 $89 $88
	add  b                                           ; $58ef: $80
	ld   [$9808], sp                                 ; $58f0: $08 $08 $98
	jr   jr_074_596d                                 ; $58f3: $18 $78

	ld   a, [de]                                     ; $58f5: $1a
	ld   e, d                                        ; $58f6: $5a
	inc  bc                                          ; $58f7: $03
	cp   [hl]                                        ; $58f8: $be
	rst  $38                                         ; $58f9: $ff
	ld   [bc], a                                     ; $58fa: $02
	add  b                                           ; $58fb: $80
	add  a                                           ; $58fc: $87
	add  c                                           ; $58fd: $81
	rlca                                             ; $58fe: $07
	nop                                              ; $58ff: $00
	ld   [bc], a                                     ; $5900: $02
	add  l                                           ; $5901: $85
	rlca                                             ; $5902: $07
	nop                                              ; $5903: $00
	rst  $38                                         ; $5904: $ff
	adc  b                                           ; $5905: $88
	nop                                              ; $5906: $00
	add  h                                           ; $5907: $84
	ld   bc, $1c80                                   ; $5908: $01 $80 $1c
	add  e                                           ; $590b: $83
	nop                                              ; $590c: $00
	add  b                                           ; $590d: $80
	inc  e                                           ; $590e: $1c
	add  b                                           ; $590f: $80
	db   $e4                                         ; $5910: $e4
	add  d                                           ; $5911: $82
	add  h                                           ; $5912: $84
	ld   bc, $e868                                   ; $5913: $01 $68 $e8
	add  b                                           ; $5916: $80
	ret  nz                                          ; $5917: $c0

	inc  b                                           ; $5918: $04
	call nz, $c3c7                                   ; $5919: $c4 $c7 $c3
	db   $fc                                         ; $591c: $fc
	cp   h                                           ; $591d: $bc
	add  b                                           ; $591e: $80
	ldh  [$81], a                                    ; $591f: $e0 $81
	nop                                              ; $5921: $00
	ld   [bc], a                                     ; $5922: $02
	inc  bc                                          ; $5923: $03
	nop                                              ; $5924: $00
	ld   [de], a                                     ; $5925: $12
	add  b                                           ; $5926: $80
	ld   de, $7101                                   ; $5927: $11 $01 $71
	ld   h, c                                        ; $592a: $61
	add  b                                           ; $592b: $80
	add  c                                           ; $592c: $81
	ld   [$0301], sp                                 ; $592d: $08 $01 $03
	ld   bc, $010d                                   ; $5930: $01 $0d $01
	ld   [hl], c                                     ; $5933: $71
	nop                                              ; $5934: $00
	add  b                                           ; $5935: $80
	nop                                              ; $5936: $00
	add  b                                           ; $5937: $80
	cp   a                                           ; $5938: $bf
	add  h                                           ; $5939: $84
	cp   [hl]                                        ; $593a: $be
	add  b                                           ; $593b: $80
	sbc  b                                           ; $593c: $98
	add  b                                           ; $593d: $80
	adc  a                                           ; $593e: $8f
	add  b                                           ; $593f: $80
	ld   a, a                                        ; $5940: $7f
	add  b                                           ; $5941: $80
	rrca                                             ; $5942: $0f
	nop                                              ; $5943: $00
	nop                                              ; $5944: $00
	add  b                                           ; $5945: $80
	ld   a, h                                        ; $5946: $7c
	add  b                                           ; $5947: $80
	add  h                                           ; $5948: $84
	add  b                                           ; $5949: $80
	db   $fc                                         ; $594a: $fc
	inc  bc                                          ; $594b: $03
	add  b                                           ; $594c: $80
	db   $10                                         ; $594d: $10
	sbc  a                                           ; $594e: $9f
	ldh  a, [$83]                                    ; $594f: $f0 $83
	rst  $38                                         ; $5951: $ff
	ld   [bc], a                                     ; $5952: $02
	inc  bc                                          ; $5953: $03
	ei                                               ; $5954: $fb
	ld   sp, hl                                      ; $5955: $f9
	add  b                                           ; $5956: $80
	add  l                                           ; $5957: $85
	add  b                                           ; $5958: $80
	db   $fd                                         ; $5959: $fd
	inc  bc                                          ; $595a: $03
	dec  b                                           ; $595b: $05
	nop                                              ; $595c: $00
	db   $e4                                         ; $595d: $e4
	rra                                              ; $595e: $1f
	add  e                                           ; $595f: $83
	rst  $38                                         ; $5960: $ff
	nop                                              ; $5961: $00
	ld   hl, sp-$7f                                  ; $5962: $f8 $81
	ld   a, [$fc01]                                  ; $5964: $fa $01 $fc
	cp   $80                                         ; $5967: $fe $80
	ld   a, [$7a80]                                  ; $5969: $fa $80 $7a
	add  b                                           ; $596c: $80

jr_074_596d:
	sbc  d                                           ; $596d: $9a
	add  b                                           ; $596e: $80
	ldh  [c], a                                      ; $596f: $e2
	add  b                                           ; $5970: $80
	ld   a, [$bf02]                                  ; $5971: $fa $02 $bf
	ld   a, h                                        ; $5974: $7c
	inc  a                                           ; $5975: $3c
	add  b                                           ; $5976: $80
	ld   a, h                                        ; $5977: $7c
	add  d                                           ; $5978: $82
	ld   hl, sp-$7f                                  ; $5979: $f8 $81
	ldh  a, [rDIV]                                   ; $597b: $f0 $04
	or   b                                           ; $597d: $b0
	ld   a, a                                        ; $597e: $7f
	ld   a, b                                        ; $597f: $78
	ld   b, b                                        ; $5980: $40

Call_074_5981:
	rlca                                             ; $5981: $07
	add  b                                           ; $5982: $80
	jr   nz, @+$05                                   ; $5983: $20 $03

	stop                                             ; $5985: $10 $00
	jr   jr_074_5989                                 ; $5987: $18 $00

jr_074_5989:
	add  d                                           ; $5989: $82
	inc  c                                           ; $598a: $0c
	dec  b                                           ; $598b: $05
	nop                                              ; $598c: $00
	ld   l, b                                        ; $598d: $68
	add  b                                           ; $598e: $80
	ldh  [rP1], a                                    ; $598f: $e0 $00
	ld   b, b                                        ; $5991: $40
	add  b                                           ; $5992: $80
	ret  z                                           ; $5993: $c8

	add  b                                           ; $5994: $80
	call nz, $c380                                   ; $5995: $c4 $80 $c3
	add  c                                           ; $5998: $81
	ret  nz                                          ; $5999: $c0

	add  b                                           ; $599a: $80
	pop  bc                                          ; $599b: $c1
	dec  b                                           ; $599c: $05
	ret  nz                                          ; $599d: $c0

	rst  $38                                         ; $599e: $ff
	rst  $30                                         ; $599f: $f7
	ei                                               ; $59a0: $fb
	cp   [hl]                                        ; $59a1: $be
	adc  [hl]                                        ; $59a2: $8e
	add  b                                           ; $59a3: $80
	sbc  [hl]                                        ; $59a4: $9e
	ld   bc, $3ebe                                   ; $59a5: $01 $be $3e
	add  b                                           ; $59a8: $80
	halt                                             ; $59a9: $76
	add  b                                           ; $59aa: $80
	and  $80                                         ; $59ab: $e6 $80
	add  $04                                         ; $59ad: $c6 $04
	ld   b, $fe                                      ; $59af: $06 $fe
	ld   a, [hl]                                     ; $59b1: $7e
	sbc  [hl]                                        ; $59b2: $9e
	dec  de                                          ; $59b3: $1b
	add  a                                           ; $59b4: $87
	nop                                              ; $59b5: $00
	add  b                                           ; $59b6: $80
	rlca                                             ; $59b7: $07
	add  c                                           ; $59b8: $81
	rra                                              ; $59b9: $1f
	ld   [bc], a                                     ; $59ba: $02
	ccf                                              ; $59bb: $3f
	sub  [hl]                                        ; $59bc: $96
	ld   c, c                                        ; $59bd: $49
	add  b                                           ; $59be: $80
	ld   b, [hl]                                     ; $59bf: $46
	ld   bc, $0020                                   ; $59c0: $01 $20 $00
	add  e                                           ; $59c3: $83
	ld   b, $80                                      ; $59c4: $06 $80
	add  [hl]                                        ; $59c6: $86
	nop                                              ; $59c7: $00
	add  $80                                         ; $59c8: $c6 $80
	and  $06                                         ; $59ca: $e6 $06
	jp   nc, $2333                                   ; $59cc: $d2 $33 $23

	ld   [hl+], a                                    ; $59cf: $22
	ld   b, e                                        ; $59d0: $43
	inc  bc                                          ; $59d1: $03
	ld   [bc], a                                     ; $59d2: $02
	add  h                                           ; $59d3: $84
	ld   [hl+], a                                    ; $59d4: $22
	nop                                              ; $59d5: $00
	inc  hl                                          ; $59d6: $23
	add  c                                           ; $59d7: $81
	ld   h, e                                        ; $59d8: $63
	add  c                                           ; $59d9: $81
	rlca                                             ; $59da: $07
	inc  bc                                          ; $59db: $03
	jp   $ffc7                                       ; $59dc: $c3 $c7 $ff


	cp   $80                                         ; $59df: $fe $80
	rst  $38                                         ; $59e1: $ff
	add  b                                           ; $59e2: $80
	rra                                              ; $59e3: $1f
	ld   bc, $c101                                   ; $59e4: $01 $01 $c1
	add  b                                           ; $59e7: $80
	cp   $00                                         ; $59e8: $fe $00
	ccf                                              ; $59ea: $3f
	add  l                                           ; $59eb: $85
	ld   bc, $0202                                   ; $59ec: $01 $02 $02
	nop                                              ; $59ef: $00
	inc  c                                           ; $59f0: $0c
	add  c                                           ; $59f1: $81
	nop                                              ; $59f2: $00
	inc  bc                                          ; $59f3: $03
	ld   bc, $a200                                   ; $59f4: $01 $00 $a2
	xor  h                                           ; $59f7: $ac
	add  b                                           ; $59f8: $80

jr_074_59f9:
	call nc, $8701                                   ; $59f9: $d4 $01 $87
	add  h                                           ; $59fc: $84
	add  b                                           ; $59fd: $80
	call nc, $8c14                                   ; $59fe: $d4 $14 $8c
	add  b                                           ; $5a01: $80
	or   a                                           ; $5a02: $b7
	add  b                                           ; $5a03: $80
	ld   hl, sp+$00                                  ; $5a04: $f8 $00
	ret  nz                                          ; $5a06: $c0

	nop                                              ; $5a07: $00
	rra                                              ; $5a08: $1f
	nop                                              ; $5a09: $00
	ldh  [rP1], a                                    ; $5a0a: $e0 $00
	rlca                                             ; $5a0c: $07
	nop                                              ; $5a0d: $00
	jr   c, jr_074_5a11                              ; $5a0e: $38 $01

	rst  ToBoot                                         ; $5a10: $c7

jr_074_5a11:
	ld   bc, $001b                                   ; $5a11: $01 $1b $00
	inc  e                                           ; $5a14: $1c
	add  c                                           ; $5a15: $81
	nop                                              ; $5a16: $00
	inc  c                                           ; $5a17: $0c
	di                                               ; $5a18: $f3
	rrca                                             ; $5a19: $0f
	di                                               ; $5a1a: $f3
	rst  $38                                         ; $5a1b: $ff
	adc  a                                           ; $5a1c: $8f
	ccf                                              ; $5a1d: $3f
	adc  a                                           ; $5a1e: $8f
	ccf                                              ; $5a1f: $3f
	ret                                              ; $5a20: $c9


	rst  ToBoot                                         ; $5a21: $c7
	ld   sp, hl                                      ; $5a22: $f9
	ld   a, b                                        ; $5a23: $78
	ld   a, a                                        ; $5a24: $7f
	add  b                                           ; $5a25: $80
	rra                                              ; $5a26: $1f
	inc  bc                                          ; $5a27: $03
	inc  bc                                          ; $5a28: $03
	db   $fd                                         ; $5a29: $fd
	rst  $38                                         ; $5a2a: $ff
	cp   $84                                         ; $5a2b: $fe $84
	rst  $38                                         ; $5a2d: $ff
	ld   [bc], a                                     ; $5a2e: $02
	ld   hl, sp-$01                                  ; $5a2f: $f8 $ff
	rlca                                             ; $5a31: $07
	add  b                                           ; $5a32: $80
	rst  $38                                         ; $5a33: $ff
	ld   a, [bc]                                     ; $5a34: $0a
	rst  $30                                         ; $5a35: $f7
	ldh  a, [$f8]                                    ; $5a36: $f0 $f8
	rst  $38                                         ; $5a38: $ff
	ccf                                              ; $5a39: $3f
	rst  $38                                         ; $5a3a: $ff
	rst  JumpTable                                         ; $5a3b: $df
	rst  $38                                         ; $5a3c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a3d: $cf
	jr   nz, @-$0e                                   ; $5a3e: $20 $f0

	add  b                                           ; $5a40: $80
	ldh  [$80], a                                    ; $5a41: $e0 $80
	ret  nz                                          ; $5a43: $c0

	add  c                                           ; $5a44: $81
	nop                                              ; $5a45: $00
	ld   b, $18                                      ; $5a46: $06 $18
	rst  $20                                         ; $5a48: $e7
	add  e                                           ; $5a49: $83
	sub  e                                           ; $5a4a: $93
	ld   de, $2021                                   ; $5a4b: $11 $21 $20
	add  b                                           ; $5a4e: $80
	add  b                                           ; $5a4f: $80
	rlca                                             ; $5a50: $07
	ld   b, d                                        ; $5a51: $42
	jp   nz, Jump_074_6f2c                           ; $5a52: $c2 $2c $6f

	db   $10                                         ; $5a55: $10
	inc  a                                           ; $5a56: $3c
	nop                                              ; $5a57: $00
	dec  d                                           ; $5a58: $15
	add  c                                           ; $5a59: $81
	cp   $00                                         ; $5a5a: $fe $00
	ld   hl, sp-$7f                                  ; $5a5c: $f8 $81
	cp   $00                                         ; $5a5e: $fe $00
	or   $81                                         ; $5a60: $f6 $81
	cp   $08                                         ; $5a62: $fe $08
	xor  $7e                                         ; $5a64: $ee $7e
	ld   l, [hl]                                     ; $5a66: $6e
	ld   a, $7a                                      ; $5a67: $3e $7a
	ld   b, c                                        ; $5a69: $41
	ld   [hl], c                                     ; $5a6a: $71
	ld   h, e                                        ; $5a6b: $63
	ld   h, b                                        ; $5a6c: $60
	add  b                                           ; $5a6d: $80
	ld   h, e                                        ; $5a6e: $63
	ld   [bc], a                                     ; $5a6f: $02
	ld   [hl], e                                     ; $5a70: $73
	ldh  a, [rP1]                                    ; $5a71: $f0 $00
	add  b                                           ; $5a73: $80
	ld   e, $00                                      ; $5a74: $1e $00
	jr   jr_074_59f9                                 ; $5a76: $18 $81

	rra                                              ; $5a78: $1f
	ld   [de], a                                     ; $5a79: $12
	ld   a, [hl]                                     ; $5a7a: $7e
	ld   b, $4e                                      ; $5a7b: $06 $4e
	ld   c, $de                                      ; $5a7d: $0e $de
	ld   e, $7c                                      ; $5a7f: $1e $7c
	inc  a                                           ; $5a81: $3c
	cp   [hl]                                        ; $5a82: $be
	nop                                              ; $5a83: $00
	ld   [$000c], sp                                 ; $5a84: $08 $0c $00
	ld   hl, sp-$40                                  ; $5a87: $f8 $c0
	jp   nz, $fb48                                   ; $5a89: $c2 $48 $fb

	di                                               ; $5a8c: $f3
	add  b                                           ; $5a8d: $80
	db   $d3                                         ; $5a8e: $d3
	ld   [bc], a                                     ; $5a8f: $02
	call $d1dd                                       ; $5a90: $cd $dd $d1
	add  b                                           ; $5a93: $80
	pop  af                                          ; $5a94: $f1
	ld   bc, $e4e5                                   ; $5a95: $01 $e5 $e4
	add  b                                           ; $5a98: $80
	call z, $dc80                                    ; $5a99: $cc $80 $dc
	ld   [bc], a                                     ; $5a9c: $02
	dec  b                                           ; $5a9d: $05
	sbc  [hl]                                        ; $5a9e: $9e
	ld   e, $85                                      ; $5a9f: $1e $85
	ld   d, $03                                      ; $5aa1: $16 $03
	ld   e, $ee                                      ; $5aa3: $1e $ee
	cp   $1e                                         ; $5aa5: $fe $1e
	add  b                                           ; $5aa7: $80
	ld   a, $0d                                      ; $5aa8: $3e $0d
	ld   l, h                                        ; $5aaa: $6c
	rra                                              ; $5aab: $1f
	sub  e                                           ; $5aac: $93
	rra                                              ; $5aad: $1f
	dec  l                                           ; $5aae: $2d
	rrca                                             ; $5aaf: $0f
	ld   b, $07                                      ; $5ab0: $06 $07
	inc  de                                          ; $5ab2: $13
	inc  bc                                          ; $5ab3: $03
	stop                                             ; $5ab4: $10 $00
	jr   c, jr_074_5ad0                              ; $5ab6: $38 $18

	add  b                                           ; $5ab8: $80
	rlca                                             ; $5ab9: $07
	ld   bc, $f616                                   ; $5aba: $01 $16 $f6
	add  b                                           ; $5abd: $80
	db   $fc                                         ; $5abe: $fc
	inc  bc                                          ; $5abf: $03
	ret  nc                                          ; $5ac0: $d0

	ldh  a, [rAUD4POLY]                              ; $5ac1: $f0 $22
	ldh  [c], a                                      ; $5ac3: $e2
	add  b                                           ; $5ac4: $80
	db   $e4                                         ; $5ac5: $e4
	add  b                                           ; $5ac6: $80
	rst  ToBoot                                         ; $5ac7: $c7
	add  b                                           ; $5ac8: $80
	daa                                              ; $5ac9: $27
	add  b                                           ; $5aca: $80
	and  $00                                         ; $5acb: $e6 $00
	ld   [bc], a                                     ; $5acd: $02
	add  b                                           ; $5ace: $80
	inc  bc                                          ; $5acf: $03

jr_074_5ad0:
	inc  bc                                          ; $5ad0: $03
	ld   [hl+], a                                    ; $5ad1: $22
	and  d                                           ; $5ad2: $a2
	db   $e3                                         ; $5ad3: $e3
	ld   h, e                                        ; $5ad4: $63
	add  c                                           ; $5ad5: $81
	ld   h, d                                        ; $5ad6: $62
	nop                                              ; $5ad7: $00
	ldh  [c], a                                      ; $5ad8: $e2
	add  c                                           ; $5ad9: $81
	adc  d                                           ; $5ada: $8a
	add  b                                           ; $5adb: $80
	ld   a, [bc]                                     ; $5adc: $0a
	inc  bc                                          ; $5add: $03
	add  hl, bc                                      ; $5ade: $09
	add  a                                           ; $5adf: $87
	ld   b, $82                                      ; $5ae0: $06 $82
	add  c                                           ; $5ae2: $81
	inc  bc                                          ; $5ae3: $03
	ld   bc, $2123                                   ; $5ae4: $01 $23 $21
	add  b                                           ; $5ae7: $80
	ld   d, e                                        ; $5ae8: $53
	add  b                                           ; $5ae9: $80
	adc  e                                           ; $5aea: $8b
	add  c                                           ; $5aeb: $81
	xor  e                                           ; $5aec: $ab
	ld   [bc], a                                     ; $5aed: $02
	ld   e, a                                        ; $5aee: $5f
	nop                                              ; $5aef: $00
	ld   [$0f8c], sp                                 ; $5af0: $08 $8c $0f
	ld   [bc], a                                     ; $5af3: $02
	ld   bc, $03fd                                   ; $5af4: $01 $fd $03
	adc  e                                           ; $5af7: $8b
	rst  $38                                         ; $5af8: $ff
	ld   [bc], a                                     ; $5af9: $02
	db   $fc                                         ; $5afa: $fc
	db   $fd                                         ; $5afb: $fd
	cp   $8b                                         ; $5afc: $fe $8b
	rst  $38                                         ; $5afe: $ff
	ld   [bc], a                                     ; $5aff: $02
	nop                                              ; $5b00: $00
	cp   $01                                         ; $5b01: $fe $01
	adc  d                                           ; $5b03: $8a
	rst  $38                                         ; $5b04: $ff
	ld   [bc], a                                     ; $5b05: $02
	ld   hl, sp+$00                                  ; $5b06: $f8 $00
	rlca                                             ; $5b08: $07
	add  b                                           ; $5b09: $80
	add  b                                           ; $5b0a: $80
	adc  d                                           ; $5b0b: $8a
	rst  $38                                         ; $5b0c: $ff
	add  c                                           ; $5b0d: $81
	nop                                              ; $5b0e: $00
	inc  bc                                          ; $5b0f: $03

jr_074_5b10:
	inc  a                                           ; $5b10: $3c
	ret  nz                                          ; $5b11: $c0

	rst  $38                                         ; $5b12: $ff
	db   $fc                                         ; $5b13: $fc
	add  [hl]                                        ; $5b14: $86
	rst  $38                                         ; $5b15: $ff
	ld   bc, $1ce3                                   ; $5b16: $01 $e3 $1c
	add  b                                           ; $5b19: $80
	ld   [bc], a                                     ; $5b1a: $02
	add  hl, bc                                      ; $5b1b: $09
	ld   h, c                                        ; $5b1c: $61
	ld   l, c                                        ; $5b1d: $69
	sbc  b                                           ; $5b1e: $98
	inc  d                                           ; $5b1f: $14
	call nc, $ca92                                   ; $5b20: $d4 $92 $ca
	ld   [$e5f6], a                                  ; $5b23: $ea $f6 $e5
	add  b                                           ; $5b26: $80
	pop  hl                                          ; $5b27: $e1
	ld   [bc], a                                     ; $5b28: $02
	ei                                               ; $5b29: $fb
	rra                                              ; $5b2a: $1f
	rla                                              ; $5b2b: $17
	add  b                                           ; $5b2c: $80
	rra                                              ; $5b2d: $1f
	nop                                              ; $5b2e: $00
	rrca                                             ; $5b2f: $0f
	add  b                                           ; $5b30: $80
	adc  a                                           ; $5b31: $8f
	nop                                              ; $5b32: $00
	ld   c, $81                                      ; $5b33: $0e $81
	rlca                                             ; $5b35: $07
	ld   bc, $4347                                   ; $5b36: $01 $47 $43
	add  b                                           ; $5b39: $80
	ld   bc, $e700                                   ; $5b3a: $01 $00 $e7
	add  c                                           ; $5b3d: $81
	rra                                              ; $5b3e: $1f
	ld   bc, $1f1b                                   ; $5b3f: $01 $1b $1f
	add  b                                           ; $5b42: $80
	adc  a                                           ; $5b43: $8f
	ld   bc, $8f8d                                   ; $5b44: $01 $8d $8f
	add  b                                           ; $5b47: $80
	rst  ToBoot                                         ; $5b48: $c7
	ld   bc, $e362                                   ; $5b49: $01 $62 $e3
	add  b                                           ; $5b4c: $80
	pop  af                                          ; $5b4d: $f1
	ld   bc, $a2dd                                   ; $5b4e: $01 $dd $a2
	add  b                                           ; $5b51: $80
	ld   [bc], a                                     ; $5b52: $02
	inc  c                                           ; $5b53: $0c
	cp   d                                           ; $5b54: $ba
	cp   b                                           ; $5b55: $b8
	call nc, $61d1                                   ; $5b56: $d4 $d1 $61
	pop  hl                                          ; $5b59: $e1
	adc  e                                           ; $5b5a: $8b
	inc  bc                                          ; $5b5b: $03
	rst  $30                                         ; $5b5c: $f7
	rst  $20                                         ; $5b5d: $e7
	ldh  [$1f], a                                    ; $5b5e: $e0 $1f
	sbc  b                                           ; $5b60: $98
	add  b                                           ; $5b61: $80
	ld   hl, sp+$04                                  ; $5b62: $f8 $04
	ld   sp, hl                                      ; $5b64: $f9
	pop  bc                                          ; $5b65: $c1
	rst  $38                                         ; $5b66: $ff
	cp   h                                           ; $5b67: $bc
	jp   $e180                                       ; $5b68: $c3 $80 $e1


	ld   b, $f0                                      ; $5b6b: $06 $f0
	ret  nc                                          ; $5b6d: $d0

	call c, $28cc                                    ; $5b6e: $dc $cc $28
	rst  $20                                         ; $5b71: $e7
	ld   a, [hl-]                                    ; $5b72: $3a
	add  b                                           ; $5b73: $80
	ld   a, [hl]                                     ; $5b74: $7e
	rrca                                             ; $5b75: $0f
	add  [hl]                                        ; $5b76: $86
	sub  d                                           ; $5b77: $92
	ld   [de], a                                     ; $5b78: $12
	ld   [hl+], a                                    ; $5b79: $22
	and  c                                           ; $5b7a: $a1
	nop                                              ; $5b7b: $00
	ret  nz                                          ; $5b7c: $c0

	add  b                                           ; $5b7d: $80
	db   $e3                                         ; $5b7e: $e3
	ld   b, e                                        ; $5b7f: $43
	ld   a, a                                        ; $5b80: $7f
	nop                                              ; $5b81: $00
	ldh  [$30], a                                    ; $5b82: $e0 $30
	nop                                              ; $5b84: $00
	ld   c, $82                                      ; $5b85: $0e $82
	nop                                              ; $5b87: $00
	ld   bc, $003e                                   ; $5b88: $01 $3e $00
	add  b                                           ; $5b8b: $80
	inc  a                                           ; $5b8c: $3c
	add  b                                           ; $5b8d: $80
	jr   nc, jr_074_5b10                             ; $5b8e: $30 $80

jr_074_5b90:
	nop                                              ; $5b90: $00
	add  hl, bc                                      ; $5b91: $09
	ld   a, $de                                      ; $5b92: $3e $de
	ldh  [rP1], a                                    ; $5b94: $e0 $00
	inc  bc                                          ; $5b96: $03
	ld   h, a                                        ; $5b97: $67
	inc  bc                                          ; $5b98: $03
	nop                                              ; $5b99: $00
	ld   h, a                                        ; $5b9a: $67
	nop                                              ; $5b9b: $00
	add  b                                           ; $5b9c: $80
	inc  b                                           ; $5b9d: $04
	add  c                                           ; $5b9e: $81
	nop                                              ; $5b9f: $00
	ld   [bc], a                                     ; $5ba0: $02
	ld   b, $01                                      ; $5ba1: $06 $01
	dec  b                                           ; $5ba3: $05
	add  e                                           ; $5ba4: $83
	jp   z, $0a01                                    ; $5ba5: $ca $01 $0a

	jp   nz, $0281                                   ; $5ba8: $c2 $81 $02

	add  d                                           ; $5bab: $82
	inc  bc                                          ; $5bac: $03
	ld   bc, $cacb                                   ; $5bad: $01 $cb $ca
	add  c                                           ; $5bb0: $81
	xor  e                                           ; $5bb1: $ab
	nop                                              ; $5bb2: $00
	xor  c                                           ; $5bb3: $a9
	add  b                                           ; $5bb4: $80
	xor  e                                           ; $5bb5: $ab
	add  b                                           ; $5bb6: $80
	ld   [hl], e                                     ; $5bb7: $73
	add  b                                           ; $5bb8: $80
	inc  hl                                          ; $5bb9: $23
	ld   bc, $0103                                   ; $5bba: $01 $03 $01
	add  b                                           ; $5bbd: $80
	inc  bc                                          ; $5bbe: $03
	nop                                              ; $5bbf: $00
	add  e                                           ; $5bc0: $83
	dec  b                                           ; $5bc1: $05
	ld   [bc], a                                     ; $5bc2: $02
	add  [hl]                                        ; $5bc3: $86
	nop                                              ; $5bc4: $00
	nop                                              ; $5bc5: $00
	inc  bc                                          ; $5bc6: $03
	add  e                                           ; $5bc7: $83
	ld   bc, $0d02                                   ; $5bc8: $01 $02 $0d
	ld   bc, $850e                                   ; $5bcb: $01 $0e $85
	nop                                              ; $5bce: $00
	inc  b                                           ; $5bcf: $04
	sbc  a                                           ; $5bd0: $9f
	ld   l, a                                        ; $5bd1: $6f
	ld   c, a                                        ; $5bd2: $4f
	ld   b, e                                        ; $5bd3: $43
	inc  bc                                          ; $5bd4: $03
	add  b                                           ; $5bd5: $80
	inc  d                                           ; $5bd6: $14
	ld   bc, $bd42                                   ; $5bd7: $01 $42 $bd
	add  l                                           ; $5bda: $85
	nop                                              ; $5bdb: $00
	add  b                                           ; $5bdc: $80
	ldh  a, [$80]                                    ; $5bdd: $f0 $80
	db   $fc                                         ; $5bdf: $fc
	nop                                              ; $5be0: $00
	rst  $38                                         ; $5be1: $ff
	add  b                                           ; $5be2: $80
	ld   a, a                                        ; $5be3: $7f
	ld   bc, $c03f                                   ; $5be4: $01 $3f $c0
	add  l                                           ; $5be7: $85
	nop                                              ; $5be8: $00
	nop                                              ; $5be9: $00
	ld   c, $81                                      ; $5bea: $0e $81
	dec  b                                           ; $5bec: $05
	add  b                                           ; $5bed: $80
	add  l                                           ; $5bee: $85
	ld   [bc], a                                     ; $5bef: $02
	db   $f4                                         ; $5bf0: $f4
	ldh  a, [rIF]                                    ; $5bf1: $f0 $0f
	add  l                                           ; $5bf3: $85
	nop                                              ; $5bf4: $00
	nop                                              ; $5bf5: $00
	ld   a, a                                        ; $5bf6: $7f
	add  d                                           ; $5bf7: $82
	cp   a                                           ; $5bf8: $bf
	add  b                                           ; $5bf9: $80
	and  e                                           ; $5bfa: $a3
	ld   bc, $eb94                                   ; $5bfb: $01 $94 $eb
	add  l                                           ; $5bfe: $85
	nop                                              ; $5bff: $00
	add  b                                           ; $5c00: $80
	ret  nz                                          ; $5c01: $c0

	add  b                                           ; $5c02: $80
	ldh  a, [$80]                                    ; $5c03: $f0 $80
	cp   $80                                         ; $5c05: $fe $80
	rst  $38                                         ; $5c07: $ff
	add  [hl]                                        ; $5c08: $86
	nop                                              ; $5c09: $00
	nop                                              ; $5c0a: $00
	jr   c, jr_074_5b90                              ; $5c0b: $38 $83

	rla                                              ; $5c0d: $17
	add  b                                           ; $5c0e: $80
	rst  $10                                         ; $5c0f: $d7
	nop                                              ; $5c10: $00
	cpl                                              ; $5c11: $2f
	add  l                                           ; $5c12: $85
	nop                                              ; $5c13: $00
	nop                                              ; $5c14: $00
	ccf                                              ; $5c15: $3f
	add  l                                           ; $5c16: $85
	rst  JumpTable                                         ; $5c17: $df
	nop                                              ; $5c18: $00
	ldh  [$85], a                                    ; $5c19: $e0 $85
	nop                                              ; $5c1b: $00
	nop                                              ; $5c1c: $00
	cp   a                                           ; $5c1d: $bf
	add  b                                           ; $5c1e: $80
	rla                                              ; $5c1f: $17
	add  b                                           ; $5c20: $80
	rrca                                             ; $5c21: $0f
	add  b                                           ; $5c22: $80
	rlca                                             ; $5c23: $07
	ld   bc, $b00f                                   ; $5c24: $01 $0f $b0
	add  l                                           ; $5c27: $85
	nop                                              ; $5c28: $00
	nop                                              ; $5c29: $00
	jp   nz, $8185                                   ; $5c2a: $c2 $85 $81

	nop                                              ; $5c2d: $00
	ld   b, e                                        ; $5c2e: $43
	add  l                                           ; $5c2f: $85
	nop                                              ; $5c30: $00
	ld   [$c57f], sp                                 ; $5c31: $08 $7f $c5
	dec  b                                           ; $5c34: $05
	push bc                                          ; $5c35: $c5
	dec  b                                           ; $5c36: $05
	push bc                                          ; $5c37: $c5
	add  l                                           ; $5c38: $85
	push bc                                          ; $5c39: $c5
	ld   a, [$0085]                                  ; $5c3a: $fa $85 $00
	nop                                              ; $5c3d: $00
	db   $e3                                         ; $5c3e: $e3
	add  c                                           ; $5c3f: $81
	db   $dd                                         ; $5c40: $dd
	inc  b                                           ; $5c41: $04
	ret                                              ; $5c42: $c9


	xor  e                                           ; $5c43: $ab
	and  e                                           ; $5c44: $a3
	ld   [hl], e                                     ; $5c45: $73
	adc  h                                           ; $5c46: $8c
	add  l                                           ; $5c47: $85
	nop                                              ; $5c48: $00
	nop                                              ; $5c49: $00
	rst  $38                                         ; $5c4a: $ff
	add  d                                           ; $5c4b: $82
	rst  $20                                         ; $5c4c: $e7
	add  c                                           ; $5c4d: $81
	ldh  [rP1], a                                    ; $5c4e: $e0 $00
	rra                                              ; $5c50: $1f
	add  l                                           ; $5c51: $85
	nop                                              ; $5c52: $00
	nop                                              ; $5c53: $00
	ld   a, a                                        ; $5c54: $7f
	add  l                                           ; $5c55: $85
	add  b                                           ; $5c56: $80
	nop                                              ; $5c57: $00
	rst  $38                                         ; $5c58: $ff
	add  l                                           ; $5c59: $85
	nop                                              ; $5c5a: $00
	ld   [$00ff], sp                                 ; $5c5b: $08 $ff $00
	rlca                                             ; $5c5e: $07
	nop                                              ; $5c5f: $00
	jr   jr_074_5c62                                 ; $5c60: $18 $00

jr_074_5c62:
	ld   h, b                                        ; $5c62: $60
	nop                                              ; $5c63: $00
	add  b                                           ; $5c64: $80
	add  l                                           ; $5c65: $85
	nop                                              ; $5c66: $00
	rrca                                             ; $5c67: $0f
	cp   $01                                         ; $5c68: $fe $01
	ld   hl, sp+$00                                  ; $5c6a: $f8 $00
	ld   b, $00                                      ; $5c6c: $06 $00
	ld   bc, $0f00                                   ; $5c6e: $01 $00 $0f
	inc  c                                           ; $5c71: $0c
	inc  b                                           ; $5c72: $04
	ld   [bc], a                                     ; $5c73: $02
	rrca                                             ; $5c74: $0f
	ld   [$0c0e], sp                                 ; $5c75: $08 $0e $0c
	add  b                                           ; $5c78: $80
	ld   a, [bc]                                     ; $5c79: $0a
	nop                                              ; $5c7a: $00
	rrca                                             ; $5c7b: $0f
	add  b                                           ; $5c7c: $80
	ld   c, $80                                      ; $5c7d: $0e $80
	rrca                                             ; $5c7f: $0f
	add  hl, bc                                      ; $5c80: $09
	ld   bc, $05e1                                   ; $5c81: $01 $e1 $05
	rra                                              ; $5c84: $1f
	dec  d                                           ; $5c85: $15
	rra                                              ; $5c86: $1f
	adc  [hl]                                        ; $5c87: $8e
	ld   c, $57                                      ; $5c88: $0e $57
	rst  $10                                         ; $5c8a: $d7
	add  b                                           ; $5c8b: $80
	ld   c, d                                        ; $5c8c: $4a
	add  b                                           ; $5c8d: $80
	inc  b                                           ; $5c8e: $04
	add  b                                           ; $5c8f: $80
	ld   c, d                                        ; $5c90: $4a
	add  b                                           ; $5c91: $80
	add  h                                           ; $5c92: $84
	add  hl, bc                                      ; $5c93: $09
	add  b                                           ; $5c94: $80
	sub  e                                           ; $5c95: $93
	nop                                              ; $5c96: $00
	inc  de                                          ; $5c97: $13
	add  h                                           ; $5c98: $84
	add  l                                           ; $5c99: $85
	ld   [hl], c                                     ; $5c9a: $71
	ld   h, b                                        ; $5c9b: $60
	ld   [$80fa], a                                  ; $5c9c: $ea $fa $80
	inc  e                                           ; $5c9f: $1c
	add  b                                           ; $5ca0: $80
	ld   c, $80                                      ; $5ca1: $0e $80
	ld   b, $07                                      ; $5ca3: $06 $07
	add  hl, bc                                      ; $5ca5: $09
	ld   sp, hl                                      ; $5ca6: $f9
	inc  bc                                          ; $5ca7: $03
	di                                               ; $5ca8: $f3
	ld   bc, $e2e0                                   ; $5ca9: $01 $e0 $e2
	add  e                                           ; $5cac: $83
	add  b                                           ; $5cad: $80
	adc  l                                           ; $5cae: $8d
	ld   bc, $3fbf                                   ; $5caf: $01 $bf $3f
	add  b                                           ; $5cb2: $80
	ld   a, [hl+]                                    ; $5cb3: $2a
	add  hl, bc                                      ; $5cb4: $09
	add  a                                           ; $5cb5: $87
	add  e                                           ; $5cb6: $83
	ld   c, d                                        ; $5cb7: $4a
	rra                                              ; $5cb8: $1f
	xor  [hl]                                        ; $5cb9: $ae
	rst  ToBoot                                         ; $5cba: $c7
	push bc                                          ; $5cbb: $c5
	jp   hl                                          ; $5cbc: $e9


	ld   [$80fe], a                                  ; $5cbd: $ea $fe $80
	xor  l                                           ; $5cc0: $ad
	add  b                                           ; $5cc1: $80
	rra                                              ; $5cc2: $1f
	add  b                                           ; $5cc3: $80
	adc  e                                           ; $5cc4: $8b
	add  c                                           ; $5cc5: $81
	nop                                              ; $5cc6: $00
	ld   b, $3f                                      ; $5cc7: $06 $3f
	nop                                              ; $5cc9: $00
	ccf                                              ; $5cca: $3f
	nop                                              ; $5ccb: $00
	cp   a                                           ; $5ccc: $bf
	ccf                                              ; $5ccd: $3f
	sbc  a                                           ; $5cce: $9f
	add  b                                           ; $5ccf: $80
	rra                                              ; $5cd0: $1f
	ld   a, [bc]                                     ; $5cd1: $0a
	rst  JumpTable                                         ; $5cd2: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cd3: $cf
	xor  a                                           ; $5cd4: $af
	and  b                                           ; $5cd5: $a0
	ret  nz                                          ; $5cd6: $c0

	rst  ToBoot                                         ; $5cd7: $c7

Jump_074_5cd8:
	rla                                              ; $5cd8: $17
	rst  $30                                         ; $5cd9: $f7
	rla                                              ; $5cda: $17
	ldh  a, [rP1]                                    ; $5cdb: $f0 $00
	add  b                                           ; $5cdd: $80
	ld   hl, sp+$01                                  ; $5cde: $f8 $01
	ld   sp, hl                                      ; $5ce0: $f9
	ld   hl, sp-$80                                  ; $5ce1: $f8 $80
	db   $fc                                         ; $5ce3: $fc
	inc  b                                           ; $5ce4: $04
	db   $fd                                         ; $5ce5: $fd
	db   $fc                                         ; $5ce6: $fc
	inc  bc                                          ; $5ce7: $03
	nop                                              ; $5ce8: $00
	jp   $df81                                       ; $5ce9: $c3 $81 $df


	nop                                              ; $5cec: $00
	ld   e, a                                        ; $5ced: $5f
	add  b                                           ; $5cee: $80
	ld   e, c                                        ; $5cef: $59
	ld   bc, $d250                                   ; $5cf0: $01 $50 $d2
	add  c                                           ; $5cf3: $81
	ld   d, b                                        ; $5cf4: $50
	inc  b                                           ; $5cf5: $04
	jp   nc, $9050                                   ; $5cf6: $d2 $50 $90

	nop                                              ; $5cf9: $00

jr_074_5cfa:
	ret  nz                                          ; $5cfa: $c0

	add  b                                           ; $5cfb: $80
	rla                                              ; $5cfc: $17
	add  b                                           ; $5cfd: $80
	rrca                                             ; $5cfe: $0f
	add  b                                           ; $5cff: $80
	rla                                              ; $5d00: $17
	add  b                                           ; $5d01: $80
	dec  bc                                          ; $5d02: $0b
	add  b                                           ; $5d03: $80
	rlca                                             ; $5d04: $07
	add  b                                           ; $5d05: $80
	ld   a, [bc]                                     ; $5d06: $0a
	inc  b                                           ; $5d07: $04
	ld   bc, $0041                                   ; $5d08: $01 $41 $00
	inc  a                                           ; $5d0b: $3c
	add  b                                           ; $5d0c: $80
	add  b                                           ; $5d0d: $80
	add  c                                           ; $5d0e: $81
	ld   b, $8d                                      ; $5d0f: $06 $8d
	add  c                                           ; $5d11: $81
	sub  c                                           ; $5d12: $91
	add  c                                           ; $5d13: $81
	add  e                                           ; $5d14: $83
	add  c                                           ; $5d15: $81
	add  l                                           ; $5d16: $85
	add  b                                           ; $5d17: $80
	add  c                                           ; $5d18: $81
	ld   bc, $2601                                   ; $5d19: $01 $01 $26
	add  b                                           ; $5d1c: $80
	nop                                              ; $5d1d: $00
	nop                                              ; $5d1e: $00
	inc  b                                           ; $5d1f: $04
	add  d                                           ; $5d20: $82
	db   $f4                                         ; $5d21: $f4
	ld   [$e0e4], sp                                 ; $5d22: $08 $e4 $e0
	push hl                                          ; $5d25: $e5
	pop  hl                                          ; $5d26: $e1
	push hl                                          ; $5d27: $e5
	pop  hl                                          ; $5d28: $e1
	ldh  [$e8], a                                    ; $5d29: $e0 $e8
	ld   [$0e80], sp                                 ; $5d2b: $08 $80 $0e
	add  c                                           ; $5d2e: $81
	ccf                                              ; $5d2f: $3f
	ld   [$3f00], sp                                 ; $5d30: $08 $00 $3f
	ret  nz                                          ; $5d33: $c0

	rst  JumpTable                                         ; $5d34: $df
	ldh  a, [$ef]                                    ; $5d35: $f0 $ef
	cpl                                              ; $5d37: $2f
	jr   nz, jr_074_5cfa                             ; $5d38: $20 $c0

	add  c                                           ; $5d3a: $81
	nop                                              ; $5d3b: $00
	nop                                              ; $5d3c: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d3d: $cf
	add  c                                           ; $5d3e: $81
	ldh  [rDIV], a                                   ; $5d3f: $e0 $04
	rra                                              ; $5d41: $1f
	rst  $38                                         ; $5d42: $ff
	nop                                              ; $5d43: $00
	rst  $38                                         ; $5d44: $ff
	rlca                                             ; $5d45: $07
	add  b                                           ; $5d46: $80
	rst  $38                                         ; $5d47: $ff
	inc  c                                           ; $5d48: $0c
	rrca                                             ; $5d49: $0f
	rlca                                             ; $5d4a: $07
	rra                                              ; $5d4b: $1f
	rrca                                             ; $5d4c: $0f
	ccf                                              ; $5d4d: $3f
	ld   e, [hl]                                     ; $5d4e: $5e
	add  b                                           ; $5d4f: $80
	add  d                                           ; $5d50: $82
	add  b                                           ; $5d51: $80
	db   $fc                                         ; $5d52: $fc
	ld   hl, sp+$08                                  ; $5d53: $f8 $08
	ldh  a, [$82]                                    ; $5d55: $f0 $82
	ldh  [$82], a                                    ; $5d57: $e0 $82
	ret  nz                                          ; $5d59: $c0

	adc  b                                           ; $5d5a: $88
	nop                                              ; $5d5b: $00
	ld   [bc], a                                     ; $5d5c: $02
	ld   b, $00                                      ; $5d5d: $06 $00
	ld   [$0081], sp                                 ; $5d5f: $08 $81 $00
	ld   b, $0e                                      ; $5d62: $06 $0e
	nop                                              ; $5d64: $00
	ld   h, b                                        ; $5d65: $60
	nop                                              ; $5d66: $00
	ld   b, b                                        ; $5d67: $40
	nop                                              ; $5d68: $00
	ld   d, b                                        ; $5d69: $50
	add  e                                           ; $5d6a: $83
	nop                                              ; $5d6b: $00
	inc  b                                           ; $5d6c: $04
	ret  nc                                          ; $5d6d: $d0

	nop                                              ; $5d6e: $00
	ldh  [rP1], a                                    ; $5d6f: $e0 $00
	ld   c, a                                        ; $5d71: $4f
	add  b                                           ; $5d72: $80
	inc  bc                                          ; $5d73: $03
	add  b                                           ; $5d74: $80
	dec  bc                                          ; $5d75: $0b
	add  b                                           ; $5d76: $80
	ld   [bc], a                                     ; $5d77: $02
	add  b                                           ; $5d78: $80
	add  hl, bc                                      ; $5d79: $09
	add  l                                           ; $5d7a: $85
	nop                                              ; $5d7b: $00
	inc  c                                           ; $5d7c: $0c
	ldh  a, [$0c]                                    ; $5d7d: $f0 $0c
	inc  b                                           ; $5d7f: $04
	ld   d, h                                        ; $5d80: $54
	ld   c, b                                        ; $5d81: $48
	ld   a, [hl+]                                    ; $5d82: $2a
	ccf                                              ; $5d83: $3f
	ld   e, h                                        ; $5d84: $5c
	ld   e, l                                        ; $5d85: $5d
	inc  a                                           ; $5d86: $3c
	ccf                                              ; $5d87: $3f
	ld   e, b                                        ; $5d88: $58
	ld   e, h                                        ; $5d89: $5c
	add  c                                           ; $5d8a: $81
	nop                                              ; $5d8b: $00
	ld   [bc], a                                     ; $5d8c: $02
	ld   h, a                                        ; $5d8d: $67
	dec  b                                           ; $5d8e: $05
	add  l                                           ; $5d8f: $85
	add  b                                           ; $5d90: $80
	inc  c                                           ; $5d91: $0c
	dec  bc                                          ; $5d92: $0b
	inc  b                                           ; $5d93: $04
	and  h                                           ; $5d94: $a4
	nop                                              ; $5d95: $00
	ld   b, b                                        ; $5d96: $40
	ld   [bc], a                                     ; $5d97: $02
	ld   b, d                                        ; $5d98: $42
	nop                                              ; $5d99: $00
	ldh  a, [rP1]                                    ; $5d9a: $f0 $00
	ld   [$b800], sp                                 ; $5d9c: $08 $00 $b8
	add  b                                           ; $5d9f: $80
	ld   b, $80                                      ; $5da0: $06 $80
	adc  d                                           ; $5da2: $8a
	add  b                                           ; $5da3: $80
	ld   d, l                                        ; $5da4: $55
	add  b                                           ; $5da5: $80
	ret  nz                                          ; $5da6: $c0

	ld   bc, $a981                                   ; $5da7: $01 $81 $a9
	add  d                                           ; $5daa: $82
	add  b                                           ; $5dab: $80
	ld   bc, $2901                                   ; $5dac: $01 $01 $29
	add  b                                           ; $5daf: $80
	add  e                                           ; $5db0: $83
	add  b                                           ; $5db1: $80
	ld   b, b                                        ; $5db2: $40
	add  d                                           ; $5db3: $82
	nop                                              ; $5db4: $00
	add  b                                           ; $5db5: $80
	ld   b, b                                        ; $5db6: $40
	add  b                                           ; $5db7: $80
	ld   a, [hl+]                                    ; $5db8: $2a
	inc  bc                                          ; $5db9: $03
	dec  a                                           ; $5dba: $3d
	jr   @+$5c                                       ; $5dbb: $18 $5a

	ld   h, b                                        ; $5dbd: $60
	add  b                                           ; $5dbe: $80
	ret  nz                                          ; $5dbf: $c0

	rrca                                             ; $5dc0: $0f
	add  b                                           ; $5dc1: $80
	and  b                                           ; $5dc2: $a0
	nop                                              ; $5dc3: $00
	ld   [hl], $80                                   ; $5dc4: $36 $80
	xor  c                                           ; $5dc6: $a9
	ld   d, d                                        ; $5dc7: $52
	ld   [hl+], a                                    ; $5dc8: $22
	xor  d                                           ; $5dc9: $aa
	rst  $38                                         ; $5dca: $ff
	ld   a, b                                        ; $5dcb: $78
	ld   a, l                                        ; $5dcc: $7d
	db   $ec                                         ; $5dcd: $ec
	inc  d                                           ; $5dce: $14
	nop                                              ; $5dcf: $00
	ld   [bc], a                                     ; $5dd0: $02
	add  h                                           ; $5dd1: $84
	nop                                              ; $5dd2: $00
	ld   bc, $fff8                                   ; $5dd3: $01 $f8 $ff
	add  c                                           ; $5dd6: $81
	nop                                              ; $5dd7: $00
	rlca                                             ; $5dd8: $07
	add  b                                           ; $5dd9: $80
	nop                                              ; $5dda: $00
	or   a                                           ; $5ddb: $b7
	ld   a, [bc]                                     ; $5ddc: $0a
	jp   z, $1a0a                                    ; $5ddd: $ca $0a $1a

	sbc  d                                           ; $5de0: $9a
	add  c                                           ; $5de1: $81
	sbc  b                                           ; $5de2: $98
	ld   bc, $ab18                                   ; $5de3: $01 $18 $ab
	add  c                                           ; $5de6: $81
	ld   c, e                                        ; $5de7: $4b
	add  b                                           ; $5de8: $80
	ld   b, e                                        ; $5de9: $43
	nop                                              ; $5dea: $00
	sbc  a                                           ; $5deb: $9f
	add  [hl]                                        ; $5dec: $86
	nop                                              ; $5ded: $00
	add  b                                           ; $5dee: $80
	ld   a, a                                        ; $5def: $7f
	ld   bc, $8000                                   ; $5df0: $01 $00 $80
	add  c                                           ; $5df3: $81
	nop                                              ; $5df4: $00
	ld   [$3c1e], sp                                 ; $5df5: $08 $1e $3c
	ld   sp, $103e                                   ; $5df8: $31 $3e $10
	ld   a, [hl]                                     ; $5dfb: $7e
	inc  a                                           ; $5dfc: $3c
	ld   a, $2e                                      ; $5dfd: $3e $2e
	add  l                                           ; $5dff: $85
	cp   [hl]                                        ; $5e00: $be
	nop                                              ; $5e01: $00
	adc  $80                                         ; $5e02: $ce $80
	ld   [bc], a                                     ; $5e04: $02
	ld   bc, $0200                                   ; $5e05: $01 $00 $02
	add  c                                           ; $5e08: $81
	ld   [$0a09], sp                                 ; $5e09: $08 $09 $0a
	add  sp, $00                                     ; $5e0c: $e8 $00
	ldh  [c], a                                      ; $5e0e: $e2
	ld   l, d                                        ; $5e0f: $6a
	ld   h, e                                        ; $5e10: $63
	and  e                                           ; $5e11: $a3
	cp   a                                           ; $5e12: $bf
	ldh  [rP1], a                                    ; $5e13: $e0 $00
	add  c                                           ; $5e15: $81
	ldh  [rTMA], a                                   ; $5e16: $e0 $06
	pop  hl                                          ; $5e18: $e1
	ldh  [$e3], a                                    ; $5e19: $e0 $e3
	pop  hl                                          ; $5e1b: $e1
	rst  $38                                         ; $5e1c: $ff
	inc  hl                                          ; $5e1d: $23
	ccf                                              ; $5e1e: $3f
	add  c                                           ; $5e1f: $81
	rra                                              ; $5e20: $1f
	dec  b                                           ; $5e21: $05
	rst  $38                                         ; $5e22: $ff
	ccf                                              ; $5e23: $3f
	ld   a, a                                        ; $5e24: $7f
	ccf                                              ; $5e25: $3f
	rst  $38                                         ; $5e26: $ff
	ld   a, a                                        ; $5e27: $7f
	add  c                                           ; $5e28: $81
	rst  $38                                         ; $5e29: $ff
	add  d                                           ; $5e2a: $82
	cp   $82                                         ; $5e2b: $fe $82
	db   $fc                                         ; $5e2d: $fc
	add  b                                           ; $5e2e: $80
	add  h                                           ; $5e2f: $84
	add  b                                           ; $5e30: $80
	adc  d                                           ; $5e31: $8a
	add  b                                           ; $5e32: $80
	dec  b                                           ; $5e33: $05
	add  b                                           ; $5e34: $80
	dec  hl                                          ; $5e35: $2b
	add  b                                           ; $5e36: $80
	dec  e                                           ; $5e37: $1d
	add  b                                           ; $5e38: $80
	ld   a, [bc]                                     ; $5e39: $0a
	inc  b                                           ; $5e3a: $04
	jr   jr_074_5e5a                                 ; $5e3b: $18 $1d

	ld   b, c                                        ; $5e3d: $41
	ld   c, [hl]                                     ; $5e3e: $4e
	inc  c                                           ; $5e3f: $0c
	add  c                                           ; $5e40: $81
	nop                                              ; $5e41: $00
	rlca                                             ; $5e42: $07
	ld   [$1200], sp                                 ; $5e43: $08 $00 $12
	nop                                              ; $5e46: $00
	ld   b, $00                                      ; $5e47: $06 $00
	ld   d, $00                                      ; $5e49: $16 $00
	add  b                                           ; $5e4b: $80
	ld   [bc], a                                     ; $5e4c: $02
	dec  b                                           ; $5e4d: $05
	db   $10                                         ; $5e4e: $10
	inc  b                                           ; $5e4f: $04
	ld   hl, sp+$00                                  ; $5e50: $f8 $00
	sub  b                                           ; $5e52: $90
	nop                                              ; $5e53: $00
	add  b                                           ; $5e54: $80
	add  b                                           ; $5e55: $80
	nop                                              ; $5e56: $00
	sub  b                                           ; $5e57: $90
	add  c                                           ; $5e58: $81
	ret  nz                                          ; $5e59: $c0

jr_074_5e5a:
	ld   [bc], a                                     ; $5e5a: $02

jr_074_5e5b:
	ret  nc                                          ; $5e5b: $d0

	ldh  [rBCPS], a                                  ; $5e5c: $e0 $68
	add  b                                           ; $5e5e: $80
	ldh  [$03], a                                    ; $5e5f: $e0 $03
	ldh  a, [$87]                                    ; $5e61: $f0 $87
	nop                                              ; $5e63: $00
	rrca                                             ; $5e64: $0f
	add  c                                           ; $5e65: $81
	nop                                              ; $5e66: $00
	ld   bc, $0708                                   ; $5e67: $01 $08 $07
	add  b                                           ; $5e6a: $80
	dec  bc                                          ; $5e6b: $0b
	add  b                                           ; $5e6c: $80
	dec  b                                           ; $5e6d: $05
	add  b                                           ; $5e6e: $80
	inc  bc                                          ; $5e6f: $03
	add  b                                           ; $5e70: $80
	rlca                                             ; $5e71: $07

jr_074_5e72:
	rlca                                             ; $5e72: $07
	pop  af                                          ; $5e73: $f1
	ld   a, [bc]                                     ; $5e74: $0a
	pop  hl                                          ; $5e75: $e1
	nop                                              ; $5e76: $00
	ld   e, $08                                      ; $5e77: $1e $08
	inc  d                                           ; $5e79: $14
	db   $f4                                         ; $5e7a: $f4
	add  b                                           ; $5e7b: $80
	db   $ed                                         ; $5e7c: $ed
	nop                                              ; $5e7d: $00
	db   $fc                                         ; $5e7e: $fc
	add  b                                           ; $5e7f: $80
	cp   $80                                         ; $5e80: $fe $80
	ldh  a, [c]                                      ; $5e82: $f2
	dec  b                                           ; $5e83: $05
	db   $fc                                         ; $5e84: $fc
	ld   c, a                                        ; $5e85: $4f
	jr   z, @+$74                                    ; $5e86: $28 $72

	db   $e4                                         ; $5e88: $e4
	db   $ed                                         ; $5e89: $ed
	add  b                                           ; $5e8a: $80
	ld   [$0403], sp                                 ; $5e8b: $08 $03 $04
	db   $e4                                         ; $5e8e: $e4
	db   $ec                                         ; $5e8f: $ec
	inc  c                                           ; $5e90: $0c
	add  c                                           ; $5e91: $81
	ld   c, $02                                      ; $5e92: $0e $02
	inc  c                                           ; $5e94: $0c
	or   $3c                                         ; $5e95: $f6 $3c
	add  b                                           ; $5e97: $80
	ld   [bc], a                                     ; $5e98: $02
	dec  d                                           ; $5e99: $15
	ld   bc, $00c1                                   ; $5e9a: $01 $c1 $00
	jr   nz, jr_074_5e9f                             ; $5e9d: $20 $00

jr_074_5e9f:
	inc  b                                           ; $5e9f: $04
	nop                                              ; $5ea0: $00
	ld   [bc], a                                     ; $5ea1: $02
	nop                                              ; $5ea2: $00
	dec  c                                           ; $5ea3: $0d
	nop                                              ; $5ea4: $00
	ld   a, [bc]                                     ; $5ea5: $0a
	nop                                              ; $5ea6: $00
	daa                                              ; $5ea7: $27
	pop  de                                          ; $5ea8: $d1
	jp   c, $3f3a                                    ; $5ea9: $da $3a $3f

	ld   e, a                                        ; $5eac: $5f
	ld   e, [hl]                                     ; $5ead: $5e
	cp   [hl]                                        ; $5eae: $be
	cp   a                                           ; $5eaf: $bf
	add  b                                           ; $5eb0: $80
	ld   d, d                                        ; $5eb1: $52
	add  b                                           ; $5eb2: $80
	add  hl, bc                                      ; $5eb3: $09
	dec  bc                                          ; $5eb4: $0b
	ld   bc, $0281                                   ; $5eb5: $01 $81 $02
	add  d                                           ; $5eb8: $82
	add  e                                           ; $5eb9: $83
	adc  e                                           ; $5eba: $8b
	dec  b                                           ; $5ebb: $05
	dec  e                                           ; $5ebc: $1d
	adc  b                                           ; $5ebd: $88
	sub  b                                           ; $5ebe: $90
	push bc                                          ; $5ebf: $c5
	call $9680                                       ; $5ec0: $cd $80 $96
	add  b                                           ; $5ec3: $80
	dec  bc                                          ; $5ec4: $0b
	add  b                                           ; $5ec5: $80
	add  a                                           ; $5ec6: $87
	inc  b                                           ; $5ec7: $04
	ld   a, [bc]                                     ; $5ec8: $0a
	scf                                              ; $5ec9: $37
	nop                                              ; $5eca: $00
	add  b                                           ; $5ecb: $80
	nop                                              ; $5ecc: $00
	add  b                                           ; $5ecd: $80
	add  b                                           ; $5ece: $80
	inc  bc                                          ; $5ecf: $03
	pop  bc                                          ; $5ed0: $c1
	nop                                              ; $5ed1: $00
	push bc                                          ; $5ed2: $c5
	nop                                              ; $5ed3: $00
	add  b                                           ; $5ed4: $80
	add  b                                           ; $5ed5: $80
	inc  b                                           ; $5ed6: $04
	add  [hl]                                        ; $5ed7: $86
	nop                                              ; $5ed8: $00
	jr   c, jr_074_5e5b                              ; $5ed9: $38 $80

	jr   nc, @-$7b                                   ; $5edb: $30 $83

	ld   b, a                                        ; $5edd: $47
	ld   b, $c0                                      ; $5ede: $06 $c0
	nop                                              ; $5ee0: $00
	ld   b, c                                        ; $5ee1: $41
	nop                                              ; $5ee2: $00
	ld   b, l                                        ; $5ee3: $45
	nop                                              ; $5ee4: $00
	res  1, l                                        ; $5ee5: $cb $8d
	nop                                              ; $5ee7: $00
	add  b                                           ; $5ee8: $80
	dec  d                                           ; $5ee9: $15
	add  b                                           ; $5eea: $80
	ld   c, $03                                      ; $5eeb: $0e $03
	ld   l, a                                        ; $5eed: $6f
	sbc  h                                           ; $5eee: $9c
	cp   [hl]                                        ; $5eef: $be
	jr   nc, jr_074_5e72                             ; $5ef0: $30 $80

	jr   c, jr_074_5ef7                              ; $5ef2: $38 $03

	ld   a, [hl]                                     ; $5ef4: $7e
	ld   a, h                                        ; $5ef5: $7c
	ld   a, [hl]                                     ; $5ef6: $7e

jr_074_5ef7:
	cp   $80                                         ; $5ef7: $fe $80
	sbc  $80                                         ; $5ef9: $de $80
	xor  $80                                         ; $5efb: $ee $80
	rst  $28                                         ; $5efd: $ef
	ld   bc, $7788                                   ; $5efe: $01 $88 $77
	add  b                                           ; $5f01: $80
	cpl                                              ; $5f02: $2f
	add  b                                           ; $5f03: $80
	ld   d, a                                        ; $5f04: $57
	add  b                                           ; $5f05: $80
	cpl                                              ; $5f06: $2f
	add  b                                           ; $5f07: $80
	rra                                              ; $5f08: $1f
	add  b                                           ; $5f09: $80
	xor  e                                           ; $5f0a: $ab
	add  b                                           ; $5f0b: $80
	ld   [hl], a                                     ; $5f0c: $77
	sub  b                                           ; $5f0d: $90
	rst  $38                                         ; $5f0e: $ff
	add  b                                           ; $5f0f: $80
	db   $fc                                         ; $5f10: $fc
	add  l                                           ; $5f11: $85
	ld   hl, sp+$01                                  ; $5f12: $f8 $01
	ld   sp, hl                                      ; $5f14: $f9
	pop  af                                          ; $5f15: $f1
	add  b                                           ; $5f16: $80
	ldh  a, [c]                                      ; $5f17: $f2
	add  b                                           ; $5f18: $80
	pop  af                                          ; $5f19: $f1
	ld   de, $18f2                                   ; $5f1a: $11 $f2 $18
	rra                                              ; $5f1d: $1f
	dec  b                                           ; $5f1e: $05
	xor  [hl]                                        ; $5f1f: $ae
	add  h                                           ; $5f20: $84
	ld   a, a                                        ; $5f21: $7f
	dec  h                                           ; $5f22: $25
	cp   $ae                                         ; $5f23: $fe $ae
	ld   [hl], h                                     ; $5f25: $74
	ld   h, b                                        ; $5f26: $60
	cp   [hl]                                        ; $5f27: $be
	and  h                                           ; $5f28: $a4
	ld   a, $04                                      ; $5f29: $3e $04
	cp   [hl]                                        ; $5f2b: $be
	or   h                                           ; $5f2c: $b4
	add  b                                           ; $5f2d: $80
	inc  c                                           ; $5f2e: $0c
	ld   bc, $1808                                   ; $5f2f: $01 $08 $18
	add  b                                           ; $5f32: $80
	inc  bc                                          ; $5f33: $03
	nop                                              ; $5f34: $00
	ld   [bc], a                                     ; $5f35: $02
	add  b                                           ; $5f36: $80
	inc  bc                                          ; $5f37: $03
	ld   a, [bc]                                     ; $5f38: $0a
	ld   [bc], a                                     ; $5f39: $02
	ld   b, $17                                      ; $5f3a: $06 $17
	rlca                                             ; $5f3c: $07
	ld   b, $0e                                      ; $5f3d: $06 $0e
	ld   l, b                                        ; $5f3f: $68

jr_074_5f40:
	ldh  a, [$78]                                    ; $5f40: $f0 $78
	ldh  [$f0], a                                    ; $5f42: $e0 $f0
	add  b                                           ; $5f44: $80
	ret  nz                                          ; $5f45: $c0

	inc  bc                                          ; $5f46: $03
	nop                                              ; $5f47: $00
	ld   a, [bc]                                     ; $5f48: $0a
	nop                                              ; $5f49: $00
	ld   de, $8880                                   ; $5f4a: $11 $80 $88
	add  b                                           ; $5f4d: $80
	ld   a, [de]                                     ; $5f4e: $1a
	ld   [bc], a                                     ; $5f4f: $02
	jr   jr_074_5f40                                 ; $5f50: $18 $ee

	ld   [bc], a                                     ; $5f52: $02
	add  b                                           ; $5f53: $80
	ld   bc, $0880                                   ; $5f54: $01 $80 $08
	add  b                                           ; $5f57: $80
	dec  b                                           ; $5f58: $05
	add  b                                           ; $5f59: $80
	ld   [bc], a                                     ; $5f5a: $02
	add  b                                           ; $5f5b: $80
	nop                                              ; $5f5c: $00
	inc  b                                           ; $5f5d: $04
	inc  bc                                          ; $5f5e: $03
	nop                                              ; $5f5f: $00
	inc  c                                           ; $5f60: $0c
	nop                                              ; $5f61: $00
	rra                                              ; $5f62: $1f
	add  d                                           ; $5f63: $82
	rst  $38                                         ; $5f64: $ff
	rlca                                             ; $5f65: $07
	rst  $28                                         ; $5f66: $ef
	ld   l, [hl]                                     ; $5f67: $6e
	ld   h, a                                        ; $5f68: $67
	db   $ec                                         ; $5f69: $ec
	db   $eb                                         ; $5f6a: $eb
	ld   h, h                                        ; $5f6b: $64
	ld   l, a                                        ; $5f6c: $6f
	push af                                          ; $5f6d: $f5

Call_074_5f6e:
jr_074_5f6e:
	add  b                                           ; $5f6e: $80
	rrca                                             ; $5f6f: $0f
	ld   de, $fc07                                   ; $5f70: $11 $07 $fc
	halt                                             ; $5f73: $76
	ld   [hl], h                                     ; $5f74: $74
	ld   b, $82                                      ; $5f75: $06 $82
	cp   d                                           ; $5f77: $ba
	ld   a, b                                        ; $5f78: $78
	call c, $de5c                                    ; $5f79: $dc $5c $de
	ld   e, [hl]                                     ; $5f7c: $5e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f7d: $cf
	ccf                                              ; $5f7e: $3f
	add  a                                           ; $5f7f: $87
	and  a                                           ; $5f80: $a7
	add  a                                           ; $5f81: $87
	ccf                                              ; $5f82: $3f
	add  e                                           ; $5f83: $83
	nop                                              ; $5f84: $00
	dec  b                                           ; $5f85: $05
	jr   z, jr_074_5f88                              ; $5f86: $28 $00

jr_074_5f88:
	db   $fc                                         ; $5f88: $fc
	nop                                              ; $5f89: $00
	inc  bc                                          ; $5f8a: $03
	nop                                              ; $5f8b: $00
	add  d                                           ; $5f8c: $82
	add  b                                           ; $5f8d: $80
	ld   [$003f], sp                                 ; $5f8e: $08 $3f $00
	add  b                                           ; $5f91: $80
	nop                                              ; $5f92: $00
	jr   nz, jr_074_5fd5                             ; $5f93: $20 $40

	ld   c, e                                        ; $5f95: $4b
	ld   b, b                                        ; $5f96: $40
	nop                                              ; $5f97: $00
	add  c                                           ; $5f98: $81
	add  hl, bc                                      ; $5f99: $09
	ld   d, $ea                                      ; $5f9a: $16 $ea
	ld   [$0023], sp                                 ; $5f9c: $08 $23 $00
	db   $e3                                         ; $5f9f: $e3
	nop                                              ; $5fa0: $00
	dec  c                                           ; $5fa1: $0d
	nop                                              ; $5fa2: $00
	ld   [hl], b                                     ; $5fa3: $70
	inc  c                                           ; $5fa4: $0c
	adc  h                                           ; $5fa5: $8c
	ld   a, h                                        ; $5fa6: $7c
	ld   a, c                                        ; $5fa7: $79
	ld   hl, sp-$79                                  ; $5fa8: $f8 $87
	add  b                                           ; $5faa: $80
	ld   e, b                                        ; $5fab: $58
	rlca                                             ; $5fac: $07
	add  a                                           ; $5fad: $87
	ld   c, a                                        ; $5fae: $4f
	rst  $20                                         ; $5faf: $e7
	nop                                              ; $5fb0: $00
	add  b                                           ; $5fb1: $80
	add  b                                           ; $5fb2: $80
	ld   h, b                                        ; $5fb3: $60
	dec  b                                           ; $5fb4: $05
	ldh  [$90], a                                    ; $5fb5: $e0 $90
	add  b                                           ; $5fb7: $80
	ld   [hl], b                                     ; $5fb8: $70
	nop                                              ; $5fb9: $00
	add  b                                           ; $5fba: $80
	add  b                                           ; $5fbb: $80
	ld   h, b                                        ; $5fbc: $60
	inc  bc                                          ; $5fbd: $03
	ldh  [$d4], a                                    ; $5fbe: $e0 $d4
	jp   nz, $8dfe                                   ; $5fc0: $c2 $fe $8d

	nop                                              ; $5fc3: $00
	add  b                                           ; $5fc4: $80
	ld   e, l                                        ; $5fc5: $5d
	add  b                                           ; $5fc6: $80
	cp   a                                           ; $5fc7: $bf
	add  b                                           ; $5fc8: $80
	ld   a, a                                        ; $5fc9: $7f
	add  b                                           ; $5fca: $80
	cp   a                                           ; $5fcb: $bf
	add  b                                           ; $5fcc: $80
	ld   e, a                                        ; $5fcd: $5f
	add  b                                           ; $5fce: $80
	ld   a, $80                                      ; $5fcf: $3e $80
	ld   [hl], a                                     ; $5fd1: $77
	add  b                                           ; $5fd2: $80
	xor  d                                           ; $5fd3: $aa
	nop                                              ; $5fd4: $00

jr_074_5fd5:
	db   $10                                         ; $5fd5: $10
	add  a                                           ; $5fd6: $87
	rst  $28                                         ; $5fd7: $ef
	ld   [bc], a                                     ; $5fd8: $02
	add  hl, sp                                      ; $5fd9: $39
	nop                                              ; $5fda: $00
	ld   hl, $0081                                   ; $5fdb: $21 $81 $00
	ld   bc, $ff18                                   ; $5fde: $01 $18 $ff
	add  b                                           ; $5fe1: $80
	db   $fd                                         ; $5fe2: $fd
	add  b                                           ; $5fe3: $80
	ld   a, [$fd80]                                  ; $5fe4: $fa $80 $fd
	add  b                                           ; $5fe7: $80
	cp   [hl]                                        ; $5fe8: $be
	add  b                                           ; $5fe9: $80
	ld   [hl], l                                     ; $5fea: $75
	add  b                                           ; $5feb: $80
	jr   z, jr_074_5f6e                              ; $5fec: $28 $80

	ld   d, b                                        ; $5fee: $50
	add  d                                           ; $5fef: $82
	rst  $38                                         ; $5ff0: $ff
	add  b                                           ; $5ff1: $80
	cp   [hl]                                        ; $5ff2: $be
	add  b                                           ; $5ff3: $80
	dec  e                                           ; $5ff4: $1d
	add  b                                           ; $5ff5: $80
	xor  e                                           ; $5ff6: $ab
	add  b                                           ; $5ff7: $80
	ld   de, $0b80                                   ; $5ff8: $11 $80 $0b
	add  b                                           ; $5ffb: $80
	dec  d                                           ; $5ffc: $15
	inc  b                                           ; $5ffd: $04
	ldh  a, [$f1]                                    ; $5ffe: $f0 $f1
	ld   [hl], c                                     ; $6000: $71
	ld   [hl], b                                     ; $6001: $70
	ldh  [$80], a                                    ; $6002: $e0 $80
	push hl                                          ; $6004: $e5
	add  b                                           ; $6005: $80
	db   $eb                                         ; $6006: $eb
	add  b                                           ; $6007: $80
	push hl                                          ; $6008: $e5
	dec  b                                           ; $6009: $05
	xor  $ae                                         ; $600a: $ee $ae
	and  l                                           ; $600c: $a5
	ld   b, l                                        ; $600d: $45
	ld   b, d                                        ; $600e: $42
	ld   [bc], a                                     ; $600f: $02
	add  b                                           ; $6010: $80
	cp   l                                           ; $6011: $bd
	add  b                                           ; $6012: $80
	cp   [hl]                                        ; $6013: $be
	add  b                                           ; $6014: $80
	cp   l                                           ; $6015: $bd
	add  b                                           ; $6016: $80
	ld   a, $80                                      ; $6017: $3e $80
	dec  [hl]                                        ; $6019: $35
	add  b                                           ; $601a: $80
	jr   c, @-$7e                                    ; $601b: $38 $80

	inc  d                                           ; $601d: $14
	dec  b                                           ; $601e: $05
	ld   [$0617], sp                                 ; $601f: $08 $17 $06
	ld   d, $05                                      ; $6022: $16 $05
	dec  c                                           ; $6024: $0d
	add  b                                           ; $6025: $80
	inc  bc                                          ; $6026: $03
	add  c                                           ; $6027: $81
	ld   [bc], a                                     ; $6028: $02
	ld   bc, $040b                                   ; $6029: $01 $0b $04
	add  b                                           ; $602c: $80
	rlca                                             ; $602d: $07
	add  b                                           ; $602e: $80
	ld   b, $11                                      ; $602f: $06 $11
	pop  af                                          ; $6031: $f1
	ld   [$0809], sp                                 ; $6032: $08 $09 $08
	inc  c                                           ; $6035: $0c
	inc  b                                           ; $6036: $04
	nop                                              ; $6037: $00
	ld   [$9c0c], sp                                 ; $6038: $08 $0c $9c
	jp   c, Jump_074_5cd8                            ; $603b: $da $d8 $5c

	ld   e, b                                        ; $603e: $58
	ld   e, h                                        ; $603f: $5c
	ret  nc                                          ; $6040: $d0

	add  sp, $00                                     ; $6041: $e8 $00
	add  b                                           ; $6043: $80
	ld   [$0c80], sp                                 ; $6044: $08 $80 $0c
	add  c                                           ; $6047: $81
	ld   c, $01                                      ; $6048: $0e $01
	ld   b, $07                                      ; $604a: $06 $07
	add  b                                           ; $604c: $80
	inc  bc                                          ; $604d: $03
	add  c                                           ; $604e: $81
	dec  bc                                          ; $604f: $0b
	ld   bc, $0704                                   ; $6050: $01 $04 $07
	add  b                                           ; $6053: $80
	inc  bc                                          ; $6054: $03
	inc  c                                           ; $6055: $0c
	inc  b                                           ; $6056: $04
	nop                                              ; $6057: $00
	ld   [bc], a                                     ; $6058: $02
	nop                                              ; $6059: $00
	rra                                              ; $605a: $1f
	nop                                              ; $605b: $00
	cp   $00                                         ; $605c: $fe $00
	rst  $28                                         ; $605e: $ef
	nop                                              ; $605f: $00
	ldh  a, [rP1]                                    ; $6060: $f0 $00
	ld   h, b                                        ; $6062: $60
	add  b                                           ; $6063: $80
	ld   h, a                                        ; $6064: $67
	rra                                              ; $6065: $1f
	ld   a, a                                        ; $6066: $7f
	ccf                                              ; $6067: $3f
	ld   l, a                                        ; $6068: $6f
	ld   e, [hl]                                     ; $6069: $5e
	scf                                              ; $606a: $37
	jp   $e017                                       ; $606b: $c3 $17 $e0


	rla                                              ; $606e: $17
	db   $10                                         ; $606f: $10
	rla                                              ; $6070: $17
	ld   de, $3b17                                   ; $6071: $11 $17 $3b
	ret  nz                                          ; $6074: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6075: $cf
	ret  nz                                          ; $6076: $c0

	cp   [hl]                                        ; $6077: $be
	ret  nz                                          ; $6078: $c0

	cp   [hl]                                        ; $6079: $be
	ret  nz                                          ; $607a: $c0

	cp   h                                           ; $607b: $bc
	call z, $fc3c                                    ; $607c: $cc $3c $fc
	nop                                              ; $607f: $00
	ret  nz                                          ; $6080: $c0

	ld   b, b                                        ; $6081: $40
	ret  nz                                          ; $6082: $c0

	rra                                              ; $6083: $1f
	inc  bc                                          ; $6084: $03
	and  e                                           ; $6085: $a3
	add  c                                           ; $6086: $81
	ccf                                              ; $6087: $3f
	add  b                                           ; $6088: $80
	jr   c, @-$7e                                    ; $6089: $38 $80

	ld   bc, $0a80                                   ; $608b: $01 $80 $0a
	add  b                                           ; $608e: $80
	rla                                              ; $608f: $17
	add  b                                           ; $6090: $80
	ccf                                              ; $6091: $3f
	ld   bc, $ce5e                                   ; $6092: $01 $5e $ce
	add  b                                           ; $6095: $80
	ret  nz                                          ; $6096: $c0

	ld   bc, $0111                                   ; $6097: $01 $11 $01
	add  b                                           ; $609a: $80
	dec  bc                                          ; $609b: $0b
	add  b                                           ; $609c: $80
	ld   d, a                                        ; $609d: $57
	add  h                                           ; $609e: $84
	rst  $38                                         ; $609f: $ff
	add  b                                           ; $60a0: $80
	dec  b                                           ; $60a1: $05
	inc  b                                           ; $60a2: $04
	xor  a                                           ; $60a3: $af
	xor  h                                           ; $60a4: $ac
	ld   a, h                                        ; $60a5: $7c
	ld   a, [hl]                                     ; $60a6: $7e
	cp   $80                                         ; $60a7: $fe $80
	push af                                          ; $60a9: $f5
	add  b                                           ; $60aa: $80
	xor  d                                           ; $60ab: $aa
	add  b                                           ; $60ac: $80
	rst  JumpTable                                         ; $60ad: $df
	add  b                                           ; $60ae: $80
	xor  d                                           ; $60af: $aa
	inc  bc                                          ; $60b0: $03
	ld   d, b                                        ; $60b1: $50
	ret  nc                                          ; $60b2: $d0

	nop                                              ; $60b3: $00
	add  b                                           ; $60b4: $80
	sbc  c                                           ; $60b5: $99
	nop                                              ; $60b6: $00
	ld   [bc], a                                     ; $60b7: $02
	inc  bc                                          ; $60b8: $03
	inc  b                                           ; $60b9: $04
	rlca                                             ; $60ba: $07
	adc  b                                           ; $60bb: $88
	nop                                              ; $60bc: $00
	add  b                                           ; $60bd: $80
	inc  bc                                          ; $60be: $03
	inc  bc                                          ; $60bf: $03
	ld   a, a                                        ; $60c0: $7f
	ld   h, b                                        ; $60c1: $60
	rst  $38                                         ; $60c2: $ff
	ldh  [$86], a                                    ; $60c3: $e0 $86
	nop                                              ; $60c5: $00
	rlca                                             ; $60c6: $07
	rrca                                             ; $60c7: $0f
	ccf                                              ; $60c8: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60c9: $cf
	add  b                                           ; $60ca: $80
	rst  $30                                         ; $60cb: $f7
	ld   [hl], a                                     ; $60cc: $77
	add  b                                           ; $60cd: $80
	ld   a, a                                        ; $60ce: $7f
	add  [hl]                                        ; $60cf: $86
	nop                                              ; $60d0: $00
	ld   bc, $00ff                                   ; $60d1: $01 $ff $00
	add  b                                           ; $60d4: $80
	rst  $38                                         ; $60d5: $ff
	add  c                                           ; $60d6: $81
	nop                                              ; $60d7: $00
	nop                                              ; $60d8: $00
	rst  $38                                         ; $60d9: $ff
	add  e                                           ; $60da: $83
	nop                                              ; $60db: $00
	ld   bc, $ad40                                   ; $60dc: $01 $40 $ad
	add  b                                           ; $60df: $80
	call $0000                                      ; $60e0: $cd $00 $00
	add  b                                           ; $60e3: $80
	call $0081                                       ; $60e4: $cd $81 $00
	nop                                              ; $60e7: $00
	db   $ed                                         ; $60e8: $ed
	add  c                                           ; $60e9: $81
	nop                                              ; $60ea: $00
	ld   [bc], a                                     ; $60eb: $02
	ld   [bc], a                                     ; $60ec: $02
	dec  b                                           ; $60ed: $05
	ld   b, $80                                      ; $60ee: $06 $80
	ld   e, [hl]                                     ; $60f0: $5e
	dec  bc                                          ; $60f1: $0b
	ld   a, $60                                      ; $60f2: $3e $60
	ld   e, [hl]                                     ; $60f4: $5e
	ld   a, $00                                      ; $60f5: $3e $00
	ld   h, b                                        ; $60f7: $60
	nop                                              ; $60f8: $00
	ld   d, e                                        ; $60f9: $53
	ld   b, $56                                      ; $60fa: $06 $56
	ld   a, [bc]                                     ; $60fc: $0a
	adc  b                                           ; $60fd: $88
	add  c                                           ; $60fe: $81
	ld   [de], a                                     ; $60ff: $12
	add  b                                           ; $6100: $80
	ld   [hl-], a                                    ; $6101: $32
	ld   d, $12                                      ; $6102: $16 $12
	ld   [bc], a                                     ; $6104: $02
	jr   nz, @+$28                                   ; $6105: $20 $26

	ld   b, $46                                      ; $6107: $06 $46
	and  [hl]                                        ; $6109: $a6
	ld   d, h                                        ; $610a: $54
	ld   [de], a                                     ; $610b: $12
	ld   [$3e0d], sp                                 ; $610c: $08 $0d $3e
	ld   a, [hl-]                                    ; $610f: $3a
	ld   a, d                                        ; $6110: $7a
	cp   [hl]                                        ; $6111: $be
	ld   a, $fe                                      ; $6112: $3e $fe
	ld   l, [hl]                                     ; $6114: $6e
	xor  $66                                         ; $6115: $ee $66
	and  $62                                         ; $6117: $e6 $62
	ld   [de], a                                     ; $6119: $12
	adc  l                                           ; $611a: $8d
	dec  bc                                          ; $611b: $0b
	nop                                              ; $611c: $00
	ei                                               ; $611d: $fb
	add  a                                           ; $611e: $87
	nop                                              ; $611f: $00
	ld   b, $02                                      ; $6120: $06 $02
	nop                                              ; $6122: $00
	ld   d, l                                        ; $6123: $55
	nop                                              ; $6124: $00
	add  sp, $00                                     ; $6125: $e8 $00
	xor  b                                           ; $6127: $a8
	add  l                                           ; $6128: $85
	rla                                              ; $6129: $17
	add  b                                           ; $612a: $80
	rlca                                             ; $612b: $07
	ld   b, $80                                      ; $612c: $06 $80
	nop                                              ; $612e: $00
	jp   $a901                                       ; $612f: $c3 $01 $a9


	nop                                              ; $6132: $00
	dec  hl                                          ; $6133: $2b
	add  c                                           ; $6134: $81
	ret  nz                                          ; $6135: $c0

	add  b                                           ; $6136: $80
	call nz, $eb80                                   ; $6137: $c4 $80 $eb
	ld   [$dedf], sp                                 ; $613a: $08 $df $de
	ld   a, $3c                                      ; $613d: $3e $3c
	db   $fc                                         ; $613f: $fc
	ld   a, [hl]                                     ; $6140: $7e
	ld   e, [hl]                                     ; $6141: $5e
	sbc  l                                           ; $6142: $9d
	db   $fd                                         ; $6143: $fd
	add  c                                           ; $6144: $81
	ccf                                              ; $6145: $3f
	ld   [bc], a                                     ; $6146: $02
	rst  $38                                         ; $6147: $ff
	ld   l, [hl]                                     ; $6148: $6e
	xor  $80                                         ; $6149: $ee $80
	ld   d, l                                        ; $614b: $55
	add  b                                           ; $614c: $80
	adc  b                                           ; $614d: $88
	add  b                                           ; $614e: $80
	inc  b                                           ; $614f: $04
	add  b                                           ; $6150: $80
	ld   [$0080], sp                                 ; $6151: $08 $80 $00
	add  b                                           ; $6154: $80
	cp   $80                                         ; $6155: $fe $80
	ld   a, a                                        ; $6157: $7f
	add  b                                           ; $6158: $80
	xor  [hl]                                        ; $6159: $ae
	add  b                                           ; $615a: $80
	ld   d, h                                        ; $615b: $54
	add  b                                           ; $615c: $80
	add  b                                           ; $615d: $80
	add  h                                           ; $615e: $84
	nop                                              ; $615f: $00
	add  b                                           ; $6160: $80
	adc  b                                           ; $6161: $88
	add  b                                           ; $6162: $80
	nop                                              ; $6163: $00
	add  b                                           ; $6164: $80
	add  b                                           ; $6165: $80
	adc  h                                           ; $6166: $8c
	nop                                              ; $6167: $00
	ld   b, $03                                      ; $6168: $06 $03
	inc  b                                           ; $616a: $04
	ld   bc, $060d                                   ; $616b: $01 $0d $06
	ld   a, [bc]                                     ; $616e: $0a
	inc  e                                           ; $616f: $1c
	add  b                                           ; $6170: $80
	inc  a                                           ; $6171: $3c
	ld   [de], a                                     ; $6172: $12
	ld   e, b                                        ; $6173: $58
	ld   a, h                                        ; $6174: $7c
	ld   a, $3f                                      ; $6175: $3e $3f
	ld   hl, $9efe                                   ; $6177: $21 $fe $9e
	ldh  [$60], a                                    ; $617a: $e0 $60
	add  b                                           ; $617c: $80
	add  c                                           ; $617d: $81
	nop                                              ; $617e: $00
	ld   c, $00                                      ; $617f: $0e $00
	jr   nc, jr_074_6183                             ; $6181: $30 $00

jr_074_6183:
	ld   b, b                                        ; $6183: $40
	nop                                              ; $6184: $00
	ld   a, a                                        ; $6185: $7f
	add  b                                           ; $6186: $80
	ld   h, b                                        ; $6187: $60
	add  c                                           ; $6188: $81
	nop                                              ; $6189: $00
	ld   [bc], a                                     ; $618a: $02
	rra                                              ; $618b: $1f
	nop                                              ; $618c: $00
	ldh  [$85], a                                    ; $618d: $e0 $85
	nop                                              ; $618f: $00
	inc  b                                           ; $6190: $04
	rst  $38                                         ; $6191: $ff
	nop                                              ; $6192: $00
	ld   bc, $fe00                                   ; $6193: $01 $00 $fe
	adc  c                                           ; $6196: $89
	nop                                              ; $6197: $00
	ld   [bc], a                                     ; $6198: $02
	rst  $38                                         ; $6199: $ff
	nop                                              ; $619a: $00
	rst  $38                                         ; $619b: $ff
	add  c                                           ; $619c: $81
	nop                                              ; $619d: $00
	add  b                                           ; $619e: $80
	dec  d                                           ; $619f: $15
	add  b                                           ; $61a0: $80
	xor  e                                           ; $61a1: $ab
	add  b                                           ; $61a2: $80
	ld   b, a                                        ; $61a3: $47
	add  b                                           ; $61a4: $80
	dec  hl                                          ; $61a5: $2b
	add  b                                           ; $61a6: $80
	inc  b                                           ; $61a7: $04
	add  h                                           ; $61a8: $84
	nop                                              ; $61a9: $00
	add  b                                           ; $61aa: $80
	ld   c, l                                        ; $61ab: $4d
	add  b                                           ; $61ac: $80
	adc  b                                           ; $61ad: $88
	add  b                                           ; $61ae: $80
	call z, $8880                                    ; $61af: $cc $80 $88
	add  b                                           ; $61b2: $80
	ld   b, h                                        ; $61b3: $44
	inc  bc                                          ; $61b4: $03
	ld   c, $01                                      ; $61b5: $0e $01
	ld   d, $0e                                      ; $61b7: $16 $0e
	add  b                                           ; $61b9: $80
	inc  c                                           ; $61ba: $0c
	ld   bc, $5c64                                   ; $61bb: $01 $64 $5c
	add  b                                           ; $61be: $80
	sbc  h                                           ; $61bf: $9c
	add  b                                           ; $61c0: $80
	call c, $cc09                                    ; $61c1: $dc $09 $cc
	db   $fc                                         ; $61c4: $fc
	ldh  [$fc], a                                    ; $61c5: $e0 $fc
	rst  $38                                         ; $61c7: $ff
	ld   h, [hl]                                     ; $61c8: $66
	ld   b, [hl]                                     ; $61c9: $46
	ld   b, a                                        ; $61ca: $47
	ld   h, e                                        ; $61cb: $63
	and  $80                                         ; $61cc: $e6 $80
	push hl                                          ; $61ce: $e5
	ld   bc, $f6e4                                   ; $61cf: $01 $e4 $f6
	add  b                                           ; $61d2: $80
	di                                               ; $61d3: $f3
	inc  b                                           ; $61d4: $04
	ldh  a, [$f2]                                    ; $61d5: $f0 $f2
	cp   $73                                         ; $61d7: $fe $73
	ld   a, h                                        ; $61d9: $7c
	add  d                                           ; $61da: $82
	inc  sp                                          ; $61db: $33
	ld   bc, $b232                                   ; $61dc: $01 $32 $b2
	add  b                                           ; $61df: $80
	jp   c, $ca00                                    ; $61e0: $da $00 $ca

	add  b                                           ; $61e3: $80
	ld   [$aa05], a                                  ; $61e4: $ea $05 $aa
	ld   [$c2ca], a                                  ; $61e7: $ea $ca $c2
	pop  af                                          ; $61ea: $f1
	nop                                              ; $61eb: $00
	add  c                                           ; $61ec: $81
	inc  c                                           ; $61ed: $0c
	ld   [$0a0e], sp                                 ; $61ee: $08 $0e $0a
	inc  bc                                          ; $61f1: $03
	add  hl, bc                                      ; $61f2: $09
	ld   bc, $000a                                   ; $61f3: $01 $0a $00
	ld   a, [bc]                                     ; $61f6: $0a
	nop                                              ; $61f7: $00
	add  b                                           ; $61f8: $80
	ld   bc, $0f00                                   ; $61f9: $01 $00 $0f

Jump_074_61fc:
	add  d                                           ; $61fc: $82
	nop                                              ; $61fd: $00
	add  b                                           ; $61fe: $80
	adc  b                                           ; $61ff: $88
	add  b                                           ; $6200: $80
	ld   d, l                                        ; $6201: $55
	add  b                                           ; $6202: $80
	ei                                               ; $6203: $fb
	add  b                                           ; $6204: $80
	db   $fd                                         ; $6205: $fd
	add  b                                           ; $6206: $80
	ld   a, [$ff05]                                  ; $6207: $fa $05 $ff
	db   $f4                                         ; $620a: $f4
	nop                                              ; $620b: $00
	inc  c                                           ; $620c: $0c
	nop                                              ; $620d: $00
	rlca                                             ; $620e: $07
	add  b                                           ; $620f: $80
	nop                                              ; $6210: $00
	add  b                                           ; $6211: $80
	ld   d, b                                        ; $6212: $50
	add  b                                           ; $6213: $80
	and  b                                           ; $6214: $a0
	add  b                                           ; $6215: $80
	ld   d, h                                        ; $6216: $54
	add  b                                           ; $6217: $80
	cp   d                                           ; $6218: $ba
	ld   bc, $1dfd                                   ; $6219: $01 $fd $1d
	add  b                                           ; $621c: $80
	ld   e, $01                                      ; $621d: $1e $01
	dec  e                                           ; $621f: $1d
	db   $fd                                         ; $6220: $fd
	add  b                                           ; $6221: $80
	cp   b                                           ; $6222: $b8
	add  b                                           ; $6223: $80
	ld   d, l                                        ; $6224: $55
	add  b                                           ; $6225: $80
	dec  bc                                          ; $6226: $0b
	add  b                                           ; $6227: $80
	rlca                                             ; $6228: $07
	add  b                                           ; $6229: $80
	add  d                                           ; $622a: $82
	add  b                                           ; $622b: $80
	ld   b, l                                        ; $622c: $45
	add  d                                           ; $622d: $82
	nop                                              ; $622e: $00
	add  b                                           ; $622f: $80
	and  b                                           ; $6230: $a0
	add  b                                           ; $6231: $80
	ret  nz                                          ; $6232: $c0

	add  b                                           ; $6233: $80
	add  b                                           ; $6234: $80
	add  b                                           ; $6235: $80
	ret  nc                                          ; $6236: $d0

	add  b                                           ; $6237: $80
	ld   [$dc01], a                                  ; $6238: $ea $01 $dc
	inc  l                                           ; $623b: $2c
	add  e                                           ; $623c: $83
	nop                                              ; $623d: $00
	add  [hl]                                        ; $623e: $86
	ldh  a, [$80]                                    ; $623f: $f0 $80
	add  b                                           ; $6241: $80
	ld   bc, $01f1                                   ; $6242: $01 $f1 $01
	add  b                                           ; $6245: $80
	inc  bc                                          ; $6246: $03
	add  [hl]                                        ; $6247: $86
	rlca                                             ; $6248: $07
	ld   c, $01                                      ; $6249: $0e $01
	inc  bc                                          ; $624b: $03
	ld   [bc], a                                     ; $624c: $02
	ld   bc, $fee2                                   ; $624d: $01 $e2 $fe
	ret  z                                           ; $6250: $c8

	cp   $c9                                         ; $6251: $fe $c9
	db   $fd                                         ; $6253: $fd
	db   $ed                                         ; $6254: $ed
	db   $fd                                         ; $6255: $fd
	pop  af                                          ; $6256: $f1
	ei                                               ; $6257: $fb
	ld   a, [$fb80]                                  ; $6258: $fa $80 $fb
	add  b                                           ; $625b: $80
	rst  $30                                         ; $625c: $f7
	ld   de, $30cf                                   ; $625d: $11 $cf $30
	nop                                              ; $6260: $00
	add  b                                           ; $6261: $80
	nop                                              ; $6262: $00
	ld   a, b                                        ; $6263: $78
	ld   hl, sp+$5f                                  ; $6264: $f8 $5f
	rst  $38                                         ; $6266: $ff
	and  a                                           ; $6267: $a7
	rst  $38                                         ; $6268: $ff
	ld   hl, sp-$01                                  ; $6269: $f8 $ff
	ld   e, a                                        ; $626b: $5f
	rst  $38                                         ; $626c: $ff
	adc  d                                           ; $626d: $8a
	rst  $38                                         ; $626e: $ff
	ld   a, [hl+]                                    ; $626f: $2a
	add  e                                           ; $6270: $83
	nop                                              ; $6271: $00
	add  b                                           ; $6272: $80
	add  b                                           ; $6273: $80
	ld   [$f0fc], sp                                 ; $6274: $08 $fc $f0
	ld   [hl], e                                     ; $6277: $73
	rst  $28                                         ; $6278: $ef
	or   e                                           ; $6279: $b3
	rst  JumpTable                                         ; $627a: $df
	call c, $ffdf                                    ; $627b: $dc $df $ff
	add  a                                           ; $627e: $87
	nop                                              ; $627f: $00
	add  b                                           ; $6280: $80
	db   $fc                                         ; $6281: $fc
	inc  b                                           ; $6282: $04
	xor  a                                           ; $6283: $af
	rst  $38                                         ; $6284: $ff
	ld   d, a                                        ; $6285: $57
	rst  $38                                         ; $6286: $ff
	ld   hl, sp-$77                                  ; $6287: $f8 $89
	nop                                              ; $6289: $00
	inc  b                                           ; $628a: $04
	rst  $38                                         ; $628b: $ff
	ld   sp, hl                                      ; $628c: $f9
	ld   hl, sp-$09                                  ; $628d: $f8 $f7
	add  hl, bc                                      ; $628f: $09
	adc  c                                           ; $6290: $89
	nop                                              ; $6291: $00
	add  b                                           ; $6292: $80
	ldh  a, [rSC]                                    ; $6293: $f0 $02
	cp   a                                           ; $6295: $bf
	rst  $38                                         ; $6296: $ff
	ld   b, b                                        ; $6297: $40
	adc  e                                           ; $6298: $8b
	nop                                              ; $6299: $00
	add  b                                           ; $629a: $80
	rst  $38                                         ; $629b: $ff
	ld   [bc], a                                     ; $629c: $02
	ldh  [rP1], a                                    ; $629d: $e0 $00
	ldh  [$89], a                                    ; $629f: $e0 $89
	nop                                              ; $62a1: $00
	inc  b                                           ; $62a2: $04
	rst  $38                                         ; $62a3: $ff
	ld   a, a                                        ; $62a4: $7f
	add  e                                           ; $62a5: $83
	nop                                              ; $62a6: $00
	inc  bc                                          ; $62a7: $03
	adc  c                                           ; $62a8: $89
	nop                                              ; $62a9: $00
	add  b                                           ; $62aa: $80
	rst  $38                                         ; $62ab: $ff
	ld   [bc], a                                     ; $62ac: $02
	ld   [bc], a                                     ; $62ad: $02
	add  a                                           ; $62ae: $87
	nop                                              ; $62af: $00
	add  [hl]                                        ; $62b0: $86
	rrca                                             ; $62b1: $0f
	add  [hl]                                        ; $62b2: $86
	nop                                              ; $62b3: $00
	add  d                                           ; $62b4: $82
	rst  $38                                         ; $62b5: $ff
	add  b                                           ; $62b6: $80
	ld   e, a                                        ; $62b7: $5f
	add  b                                           ; $62b8: $80
	xor  d                                           ; $62b9: $aa
	add  [hl]                                        ; $62ba: $86
	nop                                              ; $62bb: $00
	add  b                                           ; $62bc: $80
	ld   d, b                                        ; $62bd: $50
	add  b                                           ; $62be: $80
	xor  e                                           ; $62bf: $ab
	add  b                                           ; $62c0: $80
	rst  $38                                         ; $62c1: $ff
	add  b                                           ; $62c2: $80
	cp   $86                                         ; $62c3: $fe $86
	nop                                              ; $62c5: $00
	add  b                                           ; $62c6: $80
	inc  b                                           ; $62c7: $04
	add  b                                           ; $62c8: $80
	and  d                                           ; $62c9: $a2
	add  b                                           ; $62ca: $80
	rst  $10                                         ; $62cb: $d7
	add  b                                           ; $62cc: $80
	adc  a                                           ; $62cd: $8f
	adc  b                                           ; $62ce: $88
	nop                                              ; $62cf: $00
	add  b                                           ; $62d0: $80
	add  d                                           ; $62d1: $82
	add  b                                           ; $62d2: $80
	ld   bc, $ab80                                   ; $62d3: $01 $80 $ab
	add  [hl]                                        ; $62d6: $86
	nop                                              ; $62d7: $00
	add  b                                           ; $62d8: $80
	ld   e, a                                        ; $62d9: $5f
	add  b                                           ; $62da: $80
	xor  e                                           ; $62db: $ab
	add  b                                           ; $62dc: $80
	rra                                              ; $62dd: $1f
	add  b                                           ; $62de: $80
	cp   a                                           ; $62df: $bf
	add  [hl]                                        ; $62e0: $86
	nop                                              ; $62e1: $00
	add  [hl]                                        ; $62e2: $86
	rst  $38                                         ; $62e3: $ff
	adc  c                                           ; $62e4: $89
	ldh  a, [rSC]                                    ; $62e5: $f0 $02
	ld   d, b                                        ; $62e7: $50
	ldh  a, [$50]                                    ; $62e8: $f0 $50
	add  b                                           ; $62ea: $80
	ldh  a, [$86]                                    ; $62eb: $f0 $86
	nop                                              ; $62ed: $00
	add  h                                           ; $62ee: $84
	rst  $38                                         ; $62ef: $ff
	add  b                                           ; $62f0: $80
	ld   [$0085], a                                  ; $62f1: $ea $85 $00
	nop                                              ; $62f4: $00
	ld   [hl], b                                     ; $62f5: $70
	add  b                                           ; $62f6: $80
	adc  a                                           ; $62f7: $8f
	add  b                                           ; $62f8: $80
	adc  d                                           ; $62f9: $8a
	add  b                                           ; $62fa: $80
	nop                                              ; $62fb: $00
	ld   bc, $f080                                   ; $62fc: $01 $80 $f0
	add  [hl]                                        ; $62ff: $86
	nop                                              ; $6300: $00
	add  b                                           ; $6301: $80
	ld   d, a                                        ; $6302: $57
	add  b                                           ; $6303: $80
	dec  bc                                          ; $6304: $0b
	add  b                                           ; $6305: $80
	ld   bc, $0280                                   ; $6306: $01 $80 $02
	add  [hl]                                        ; $6309: $86
	nop                                              ; $630a: $00
	add  d                                           ; $630b: $82
	rst  $38                                         ; $630c: $ff
	add  b                                           ; $630d: $80
	ld   e, a                                        ; $630e: $5f
	inc  bc                                          ; $630f: $03
	adc  a                                           ; $6310: $8f
	ld   c, a                                        ; $6311: $4f
	rst  $38                                         ; $6312: $ff
	ccf                                              ; $6313: $3f
	add  c                                           ; $6314: $81
	rst  $38                                         ; $6315: $ff
	dec  d                                           ; $6316: $15
	dec  bc                                          ; $6317: $0b
	rst  $38                                         ; $6318: $ff
	dec  bc                                          ; $6319: $0b
	rst  $38                                         ; $631a: $ff
	ld   bc, $3eff                                   ; $631b: $01 $ff $3e
	ccf                                              ; $631e: $3f
	inc  c                                           ; $631f: $0c
	rrca                                             ; $6320: $0f
	inc  a                                           ; $6321: $3c
	ccf                                              ; $6322: $3f
	nop                                              ; $6323: $00
	ld   a, a                                        ; $6324: $7f
	ld   a, e                                        ; $6325: $7b
	rlca                                             ; $6326: $07
	sub  b                                           ; $6327: $90
	sub  e                                           ; $6328: $93
	ld   hl, sp-$01                                  ; $6329: $f8 $ff
	ld   hl, sp-$01                                  ; $632b: $f8 $ff
	adc  e                                           ; $632d: $8b
	nop                                              ; $632e: $00
	add  d                                           ; $632f: $82
	rst  $38                                         ; $6330: $ff
	add  b                                           ; $6331: $80
	db   $f4                                         ; $6332: $f4
	add  b                                           ; $6333: $80
	and  b                                           ; $6334: $a0
	add  [hl]                                        ; $6335: $86
	nop                                              ; $6336: $00
	add  b                                           ; $6337: $80
	rst  $38                                         ; $6338: $ff
	add  b                                           ; $6339: $80
	db   $eb                                         ; $633a: $eb
	add  b                                           ; $633b: $80
	dec  d                                           ; $633c: $15
	add  b                                           ; $633d: $80
	ld   [bc], a                                     ; $633e: $02
	add  b                                           ; $633f: $80
	dec  c                                           ; $6340: $0d
	add  b                                           ; $6341: $80
	ld   c, $80                                      ; $6342: $0e $80
	dec  c                                           ; $6344: $0d
	ld   bc, $0d0e                                   ; $6345: $01 $0e $0d
	add  b                                           ; $6348: $80
	inc  b                                           ; $6349: $04
	add  b                                           ; $634a: $80
	ld   [$0003], sp                                 ; $634b: $08 $03 $00
	ld   [bc], a                                     ; $634e: $02
	nop                                              ; $634f: $00
	ld   bc, $0086                                   ; $6350: $01 $86 $00
	add  c                                           ; $6353: $81
	ld   hl, sp-$80                                  ; $6354: $f8 $80
	nop                                              ; $6356: $00
	ld   [bc], a                                     ; $6357: $02
	ld   a, b                                        ; $6358: $78
	ld   [hl], b                                     ; $6359: $70
	ldh  a, [$80]                                    ; $635a: $f0 $80
	ld   [hl], h                                     ; $635c: $74
	add  b                                           ; $635d: $80
	and  d                                           ; $635e: $a2
	add  b                                           ; $635f: $80
	rla                                              ; $6360: $17
	add  b                                           ; $6361: $80
	ld   [bc], a                                     ; $6362: $02
	add  b                                           ; $6363: $80
	ld   b, b                                        ; $6364: $40
	add  b                                           ; $6365: $80
	ld   [$7780], a                                  ; $6366: $ea $80 $77
	add  b                                           ; $6369: $80
	xor  d                                           ; $636a: $aa
	add  b                                           ; $636b: $80
	rra                                              ; $636c: $1f
	add  b                                           ; $636d: $80
	xor  a                                           ; $636e: $af
	add  d                                           ; $636f: $82
	rst  $38                                         ; $6370: $ff
	add  b                                           ; $6371: $80
	ld   a, a                                        ; $6372: $7f
	add  b                                           ; $6373: $80
	xor  a                                           ; $6374: $af
	add  b                                           ; $6375: $80
	ld   b, a                                        ; $6376: $47
	add  b                                           ; $6377: $80
	xor  d                                           ; $6378: $aa
	adc  d                                           ; $6379: $8a
	rst  $38                                         ; $637a: $ff
	add  b                                           ; $637b: $80
	rst  JumpTable                                         ; $637c: $df
	add  b                                           ; $637d: $80
	adc  d                                           ; $637e: $8a
	adc  h                                           ; $637f: $8c
	rst  $38                                         ; $6380: $ff
	add  b                                           ; $6381: $80
	ld   a, [$ff88]                                  ; $6382: $fa $88 $ff
	add  b                                           ; $6385: $80
	db   $eb                                         ; $6386: $eb
	add  b                                           ; $6387: $80
	ld   b, c                                        ; $6388: $41
	add  b                                           ; $6389: $80
	ld   [bc], a                                     ; $638a: $02
	adc  h                                           ; $638b: $8c
	rst  $38                                         ; $638c: $ff
	add  b                                           ; $638d: $80
	cp   a                                           ; $638e: $bf
	add  b                                           ; $638f: $80
	call nc, $fe80                                   ; $6390: $d4 $80 $fe
	adc  c                                           ; $6393: $89
	rst  $38                                         ; $6394: $ff
	nop                                              ; $6395: $00
	adc  a                                           ; $6396: $8f
	add  b                                           ; $6397: $80
	nop                                              ; $6398: $00
	add  b                                           ; $6399: $80
	adc  d                                           ; $639a: $8a
	add  h                                           ; $639b: $84
	adc  a                                           ; $639c: $8f
	add  b                                           ; $639d: $80
	adc  d                                           ; $639e: $8a
	add  b                                           ; $639f: $80
	add  h                                           ; $63a0: $84
	ld   bc, $f282                                   ; $63a1: $01 $82 $f2
	add  b                                           ; $63a4: $80
	rla                                              ; $63a5: $17
	add  b                                           ; $63a6: $80
	xor  d                                           ; $63a7: $aa
	add  b                                           ; $63a8: $80
	ld   a, a                                        ; $63a9: $7f
	dec  b                                           ; $63aa: $05
	rst  $38                                         ; $63ab: $ff
	ld   sp, hl                                      ; $63ac: $f9
	ld   a, c                                        ; $63ad: $79
	ld   [hl], d                                     ; $63ae: $72
	ldh  a, [$f4]                                    ; $63af: $f0 $f4
	add  b                                           ; $63b1: $80
	ld   d, h                                        ; $63b2: $54
	ld   bc, $a9a0                                   ; $63b3: $01 $a0 $a9
	add  b                                           ; $63b6: $80
	ld   e, a                                        ; $63b7: $5f
	add  d                                           ; $63b8: $82
	rst  $38                                         ; $63b9: $ff
	add  b                                           ; $63ba: $80
	rst  $28                                         ; $63bb: $ef
	add  b                                           ; $63bc: $80
	push af                                          ; $63bd: $f5
	add  b                                           ; $63be: $80
	xor  b                                           ; $63bf: $a8
	inc  bc                                          ; $63c0: $03
	call nc, $0854                                   ; $63c1: $d4 $54 $08
	adc  b                                           ; $63c4: $88
	add  h                                           ; $63c5: $84
	rst  $38                                         ; $63c6: $ff
	add  b                                           ; $63c7: $80
	db   $eb                                         ; $63c8: $eb
	add  b                                           ; $63c9: $80
	ld   b, l                                        ; $63ca: $45
	add  b                                           ; $63cb: $80
	dec  hl                                          ; $63cc: $2b
	add  b                                           ; $63cd: $80
	rlca                                             ; $63ce: $07
	add  b                                           ; $63cf: $80
	ld   [bc], a                                     ; $63d0: $02
	add  e                                           ; $63d1: $83
	rst  $38                                         ; $63d2: $ff
	add  e                                           ; $63d3: $83
	ei                                               ; $63d4: $fb
	ld   bc, $e0ea                                   ; $63d5: $01 $ea $e0
	add  b                                           ; $63d8: $80
	ld   d, a                                        ; $63d9: $57
	ld   bc, $a8a6                                   ; $63da: $01 $a6 $a8
	add  b                                           ; $63dd: $80
	call nc, $fa80                                   ; $63de: $d4 $80 $fa
	add  d                                           ; $63e1: $82
	rst  $38                                         ; $63e2: $ff
	add  b                                           ; $63e3: $80
	rst  $30                                         ; $63e4: $f7
	add  b                                           ; $63e5: $80
	xor  a                                           ; $63e6: $af
	inc  bc                                          ; $63e7: $03
	dec  d                                           ; $63e8: $15
	or   l                                           ; $63e9: $b5
	ld   a, [bc]                                     ; $63ea: $0a
	xor  d                                           ; $63eb: $aa
	add  b                                           ; $63ec: $80
	ld   d, b                                        ; $63ed: $50
	add  b                                           ; $63ee: $80
	ld   hl, sp-$80                                  ; $63ef: $f8 $80
	db   $f4                                         ; $63f1: $f4
	add  b                                           ; $63f2: $80
	and  b                                           ; $63f3: $a0
	add  b                                           ; $63f4: $80
	call nc, $fe80                                   ; $63f5: $d4 $80 $fe
	add  b                                           ; $63f8: $80
	ld   e, h                                        ; $63f9: $5c
	inc  b                                           ; $63fa: $04
	adc  d                                           ; $63fb: $8a
	adc  e                                           ; $63fc: $8b
	nop                                              ; $63fd: $00
	ld   c, $00                                      ; $63fe: $0e $00
	add  b                                           ; $6400: $80
	rrca                                             ; $6401: $0f
	add  d                                           ; $6402: $82
	nop                                              ; $6403: $00
	add  h                                           ; $6404: $84
	rrca                                             ; $6405: $0f
	inc  bc                                          ; $6406: $03
	adc  a                                           ; $6407: $8f
	ld   [hl], b                                     ; $6408: $70
	rrca                                             ; $6409: $0f
	nop                                              ; $640a: $00
	add  b                                           ; $640b: $80
	rst  $38                                         ; $640c: $ff
	add  d                                           ; $640d: $82
	nop                                              ; $640e: $00
	add  h                                           ; $640f: $84
	ld   sp, hl                                      ; $6410: $f9
	db   $10                                         ; $6411: $10
	rst  $38                                         ; $6412: $ff
	nop                                              ; $6413: $00
	ldh  a, [rAUD1SWEEP]                             ; $6414: $f0 $10
	sbc  $e2                                         ; $6416: $de $e2
	ld   h, e                                        ; $6418: $63
	ld   a, h                                        ; $6419: $7c
	inc  [hl]                                        ; $641a: $34
	rrca                                             ; $641b: $0f
	and  [hl]                                        ; $641c: $a6
	pop  hl                                          ; $641d: $e1
	call nz, $f8fc                                   ; $641e: $c4 $fc $f8
	adc  [hl]                                        ; $6421: $8e
	pop  af                                          ; $6422: $f1
	add  e                                           ; $6423: $83
	nop                                              ; $6424: $00
	ld   a, [bc]                                     ; $6425: $0a
	ret  nz                                          ; $6426: $c0

	ld   b, b                                        ; $6427: $40
	ld   a, b                                        ; $6428: $78
	adc  b                                           ; $6429: $88
	adc  a                                           ; $642a: $8f
	pop  af                                          ; $642b: $f1
	pop  de                                          ; $642c: $d1
	ld   a, $da                                      ; $642d: $3e $da
	add  $fd                                         ; $642f: $c6 $fd
	adc  [hl]                                        ; $6431: $8e
	nop                                              ; $6432: $00
	add  b                                           ; $6433: $80
	ld   a, h                                        ; $6434: $7c
	add  b                                           ; $6435: $80
	xor  [hl]                                        ; $6436: $ae
	add  b                                           ; $6437: $80
	dec  e                                           ; $6438: $1d
	add  b                                           ; $6439: $80

jr_074_643a:
	ld   c, $80                                      ; $643a: $0e $80
	ld   e, a                                        ; $643c: $5f
	add  b                                           ; $643d: $80
	cp   $80                                         ; $643e: $fe $80
	ld   a, l                                        ; $6440: $7d
	add  b                                           ; $6441: $80
	xor  d                                           ; $6442: $aa
	add  b                                           ; $6443: $80
	ld   bc, $2a80                                   ; $6444: $01 $80 $2a
	add  b                                           ; $6447: $80
	dec  e                                           ; $6448: $1d
	add  b                                           ; $6449: $80
	xor  a                                           ; $644a: $af
	add  b                                           ; $644b: $80
	rst  $38                                         ; $644c: $ff
	add  b                                           ; $644d: $80
	cp   a                                           ; $644e: $bf
	add  b                                           ; $644f: $80
	ld   d, l                                        ; $6450: $55
	add  b                                           ; $6451: $80
	ld   [$7780], sp                                 ; $6452: $08 $80 $77
	add  b                                           ; $6455: $80
	xor  d                                           ; $6456: $aa
	add  h                                           ; $6457: $84
	rst  $38                                         ; $6458: $ff
	add  b                                           ; $6459: $80
	rst  $28                                         ; $645a: $ef
	add  b                                           ; $645b: $80
	ld   b, l                                        ; $645c: $45
	add  b                                           ; $645d: $80
	xor  b                                           ; $645e: $a8
	add  b                                           ; $645f: $80
	push af                                          ; $6460: $f5
	add  b                                           ; $6461: $80
	add  d                                           ; $6462: $82
	add  b                                           ; $6463: $80
	nop                                              ; $6464: $00
	add  b                                           ; $6465: $80
	and  b                                           ; $6466: $a0
	add  b                                           ; $6467: $80
	call nc, $fe80                                   ; $6468: $d4 $80 $fe
	add  b                                           ; $646b: $80
	ld   a, h                                        ; $646c: $7c
	ld   [bc], a                                     ; $646d: $02
	xor  d                                           ; $646e: $aa
	jp   c, $8000                                    ; $646f: $da $00 $80

	db   $10                                         ; $6472: $10
	add  b                                           ; $6473: $80
	sbc  b                                           ; $6474: $98
	rlca                                             ; $6475: $07
	jr   nz, @-$46                                   ; $6476: $20 $b8

	stop                                             ; $6478: $10 $00
	db   $10                                         ; $647a: $10
	sbc  b                                           ; $647b: $98
	ld   [bc], a                                     ; $647c: $02
	nop                                              ; $647d: $00
	add  b                                           ; $647e: $80
	ld   d, l                                        ; $647f: $55
	ld   [$006f], sp                                 ; $6480: $08 $6f $00
	ld   [hl+], a                                    ; $6483: $22
	nop                                              ; $6484: $00
	ld   [$0014], sp                                 ; $6485: $08 $14 $00
	inc  d                                           ; $6488: $14
	ld   a, [hl+]                                    ; $6489: $2a
	add  b                                           ; $648a: $80
	nop                                              ; $648b: $00
	nop                                              ; $648c: $00
	inc  d                                           ; $648d: $14
	add  b                                           ; $648e: $80
	nop                                              ; $648f: $00
	inc  bc                                          ; $6490: $03
	ld   [$8100], sp                                 ; $6491: $08 $00 $81
	ld   b, b                                        ; $6494: $40
	add  d                                           ; $6495: $82
	nop                                              ; $6496: $00
	ld   [bc], a                                     ; $6497: $02
	jr   nz, jr_074_649a                             ; $6498: $20 $00

jr_074_649a:
	ld   b, b                                        ; $649a: $40
	add  b                                           ; $649b: $80
	nop                                              ; $649c: $00
	ld   bc, $2040                                   ; $649d: $01 $40 $20
	add  b                                           ; $64a0: $80
	nop                                              ; $64a1: $00
	ld   [bc], a                                     ; $64a2: $02
	ld   b, b                                        ; $64a3: $40
	add  b                                           ; $64a4: $80
	nop                                              ; $64a5: $00
	add  b                                           ; $64a6: $80
	adc  d                                           ; $64a7: $8a
	add  b                                           ; $64a8: $80
	ld   bc, $0081                                   ; $64a9: $01 $81 $00
	dec  bc                                          ; $64ac: $0b
	ldh  a, [$fb]                                    ; $64ad: $f0 $fb
	dec  de                                          ; $64af: $1b
	db   $f4                                         ; $64b0: $f4
	db   $ec                                         ; $64b1: $ec
	ld   a, [$0af6]                                  ; $64b2: $fa $f6 $0a
	ld   b, $17                                      ; $64b5: $06 $17
	nop                                              ; $64b7: $00
	jr   nz, jr_074_643a                             ; $64b8: $20 $80

	rrca                                             ; $64ba: $0f
	ld   bc, $0d09                                   ; $64bb: $01 $09 $0d
	add  c                                           ; $64be: $81
	add  hl, bc                                      ; $64bf: $09
	ld   b, $0d                                      ; $64c0: $06 $0d
	ld   a, a                                        ; $64c2: $7f
	ccf                                              ; $64c3: $3f
	add  b                                           ; $64c4: $80
	ld   e, a                                        ; $64c5: $5f
	nop                                              ; $64c6: $00
	ld   e, h                                        ; $64c7: $5c
	add  b                                           ; $64c8: $80
	ld   [bc], a                                     ; $64c9: $02
	add  b                                           ; $64ca: $80
	cp   $01                                         ; $64cb: $fe $01
	ld   h, $b6                                      ; $64cd: $26 $b6
	add  c                                           ; $64cf: $81
	ld   h, $00                                      ; $64d0: $26 $00
	or   l                                           ; $64d2: $b5
	add  b                                           ; $64d3: $80
	rst  $38                                         ; $64d4: $ff
	ld   bc, $ff00                                   ; $64d5: $01 $00 $ff
	add  l                                           ; $64d8: $85
	nop                                              ; $64d9: $00
	ld   bc, $007e                                   ; $64da: $01 $7e $00
	add  b                                           ; $64dd: $80
	ld   a, $00                                      ; $64de: $3e $00
	add  c                                           ; $64e0: $81
	add  b                                           ; $64e1: $80
	rst  $38                                         ; $64e2: $ff
	ld   bc, $ff00                                   ; $64e3: $01 $00 $ff
	add  e                                           ; $64e6: $83
	rrca                                             ; $64e7: $0f
	add  d                                           ; $64e8: $82
	nop                                              ; $64e9: $00
	add  b                                           ; $64ea: $80
	rrca                                             ; $64eb: $0f
	add  b                                           ; $64ec: $80
	rlca                                             ; $64ed: $07
	add  b                                           ; $64ee: $80
	inc  bc                                          ; $64ef: $03
	nop                                              ; $64f0: $00
	add  hl, bc                                      ; $64f1: $09
	add  e                                           ; $64f2: $83
	ld   sp, hl                                      ; $64f3: $f9
	add  d                                           ; $64f4: $82
	ld   bc, $f984                                   ; $64f5: $01 $84 $f9
	nop                                              ; $64f8: $00

jr_074_64f9:
	add  b                                           ; $64f9: $80
	add  b                                           ; $64fa: $80
	ldh  [rAUD1LEN], a                               ; $64fb: $e0 $11
	db   $fc                                         ; $64fd: $fc
	sbc  h                                           ; $64fe: $9c
	cp   $e2                                         ; $64ff: $fe $e2
	cp   $8d                                         ; $6501: $fe $8d
	adc  a                                           ; $6503: $8f
	add  b                                           ; $6504: $80
	ldh  a, [$e0]                                    ; $6505: $f0 $e0
	sbc  $ca                                         ; $6507: $de $ca
	add  $c2                                         ; $6509: $c6 $c2
	ldh  a, [$e3]                                    ; $650b: $f0 $e3
	sbc  d                                           ; $650d: $9a
	adc  d                                           ; $650e: $8a
	add  b                                           ; $650f: $80
	ldh  [c], a                                      ; $6510: $e2
	add  c                                           ; $6511: $81
	ei                                               ; $6512: $fb
	ld   b, $9b                                      ; $6513: $06 $9b
	ei                                               ; $6515: $fb
	add  a                                           ; $6516: $87
	sbc  a                                           ; $6517: $9f
	add  d                                           ; $6518: $82
	db   $e3                                         ; $6519: $e3
	sbc  [hl]                                        ; $651a: $9e
	add  e                                           ; $651b: $83

jr_074_651c:
	nop                                              ; $651c: $00
	inc  b                                           ; $651d: $04
	ld   b, b                                        ; $651e: $40
	ret  nz                                          ; $651f: $c0

	adc  b                                           ; $6520: $88
	ld   hl, sp-$10                                  ; $6521: $f8 $f0
	add  b                                           ; $6523: $80
	cp   $03                                         ; $6524: $fe $03
	rst  $38                                         ; $6526: $ff
	ccf                                              ; $6527: $3f
	rst  $38                                         ; $6528: $ff
	ccf                                              ; $6529: $3f
	add  c                                           ; $652a: $81
	nop                                              ; $652b: $00
	nop                                              ; $652c: $00
	db   $10                                         ; $652d: $10
	add  [hl]                                        ; $652e: $86
	ld   [$8800], sp                                 ; $652f: $08 $00 $88
	add  b                                           ; $6532: $80
	ret  z                                           ; $6533: $c8

	nop                                              ; $6534: $00
	sbc  b                                           ; $6535: $98
	adc  c                                           ; $6536: $89
	nop                                              ; $6537: $00
	nop                                              ; $6538: $00
	ld   c, $81                                      ; $6539: $0e $81
	ld   b, $00                                      ; $653b: $06 $00
	ld   [$0084], sp                                 ; $653d: $08 $84 $00
	add  b                                           ; $6540: $80
	ld   bc, $0380                                   ; $6541: $01 $80 $03
	ld   bc, $e007                                   ; $6544: $01 $07 $e0
	add  b                                           ; $6547: $80
	ld   h, b                                        ; $6548: $60
	ld   bc, $8067                                   ; $6549: $01 $67 $80
	add  h                                           ; $654c: $84
	nop                                              ; $654d: $00
	add  e                                           ; $654e: $83
	rst  $38                                         ; $654f: $ff
	add  c                                           ; $6550: $81
	nop                                              ; $6551: $00
	ld   [bc], a                                     ; $6552: $02
	rst  $38                                         ; $6553: $ff
	ld   [hl], l                                     ; $6554: $75
	ld   d, d                                        ; $6555: $52
	add  b                                           ; $6556: $80
	ld   e, d                                        ; $6557: $5a
	nop                                              ; $6558: $00
	ld   e, a                                        ; $6559: $5f
	add  b                                           ; $655a: $80
	rlca                                             ; $655b: $07
	ld   [bc], a                                     ; $655c: $02
	add  a                                           ; $655d: $87
	add  b                                           ; $655e: $80
	add  a                                           ; $655f: $87
	add  b                                           ; $6560: $80
	add  l                                           ; $6561: $85
	add  b                                           ; $6562: $80
	dec  b                                           ; $6563: $05
	inc  bc                                          ; $6564: $03
	rlca                                             ; $6565: $07
	adc  a                                           ; $6566: $8f
	ld   [hl], c                                     ; $6567: $71
	nop                                              ; $6568: $00
	add  c                                           ; $6569: $81
	add  b                                           ; $656a: $80
	add  d                                           ; $656b: $82
	nop                                              ; $656c: $00
	rlca                                             ; $656d: $07
	ld   b, b                                        ; $656e: $40
	ld   d, b                                        ; $656f: $50
	ld   [hl], b                                     ; $6570: $70
	ld   l, b                                        ; $6571: $68
	ld   a, b                                        ; $6572: $78
	inc  d                                           ; $6573: $14
	sbc  h                                           ; $6574: $9c
	ld   sp, hl                                      ; $6575: $f9
	add  b                                           ; $6576: $80
	jr   z, jr_074_64f9                              ; $6577: $28 $80

	ld   e, l                                        ; $6579: $5d
	add  b                                           ; $657a: $80
	ld   a, [hl]                                     ; $657b: $7e
	add  b                                           ; $657c: $80
	ld   [hl], h                                     ; $657d: $74
	add  b                                           ; $657e: $80
	ld   a, [hl+]                                    ; $657f: $2a
	add  e                                           ; $6580: $83
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	add  b                                           ; $6583: $80
	add  b                                           ; $6584: $80
	nop                                              ; $6585: $00
	nop                                              ; $6586: $00
	ld   bc, $0081                                   ; $6587: $01 $81 $00
	add  c                                           ; $658a: $81
	ld   [bc], a                                     ; $658b: $02
	add  h                                           ; $658c: $84
	ld   b, $00                                      ; $658d: $06 $00
	db   $fc                                         ; $658f: $fc
	add  b                                           ; $6590: $80
	ccf                                              ; $6591: $3f
	ld   bc, $2e38                                   ; $6592: $01 $38 $2e
	add  c                                           ; $6595: $81
	jr   c, jr_074_659a                              ; $6596: $38 $02

	add  hl, hl                                      ; $6598: $29
	ccf                                              ; $6599: $3f

jr_074_659a:
	jr   c, jr_074_651c                              ; $659a: $38 $80

	ccf                                              ; $659c: $3f
	inc  bc                                          ; $659d: $03
	jr   c, @+$30                                    ; $659e: $38 $2e

	jr   c, jr_074_65d0                              ; $65a0: $38 $2e

	add  b                                           ; $65a2: $80
	rst  $38                                         ; $65a3: $ff
	ld   bc, $ee88                                   ; $65a4: $01 $88 $ee
	add  c                                           ; $65a7: $81
	adc  b                                           ; $65a8: $88
	ld   [bc], a                                     ; $65a9: $02
	sbc  c                                           ; $65aa: $99
	rst  $38                                         ; $65ab: $ff
	adc  b                                           ; $65ac: $88
	add  b                                           ; $65ad: $80
	rst  $38                                         ; $65ae: $ff
	inc  bc                                          ; $65af: $03
	adc  b                                           ; $65b0: $88
	xor  $88                                         ; $65b1: $ee $88
	xor  $80                                         ; $65b3: $ee $80
	rst  $38                                         ; $65b5: $ff
	ld   c, $88                                      ; $65b6: $0e $88
	xor  $88                                         ; $65b8: $ee $88
	adc  [hl]                                        ; $65ba: $8e
	add  b                                           ; $65bb: $80
	and  b                                           ; $65bc: $a0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65bd: $cf
	adc  a                                           ; $65be: $8f
	and  b                                           ; $65bf: $a0
	xor  a                                           ; $65c0: $af
	ld   l, a                                        ; $65c1: $6f
	ld   c, h                                        ; $65c2: $4c
	db   $ec                                         ; $65c3: $ec
	ld   sp, $8201                                   ; $65c4: $31 $01 $82
	nop                                              ; $65c7: $00
	add  b                                           ; $65c8: $80
	ld   bc, $0082                                   ; $65c9: $01 $82 $00
	nop                                              ; $65cc: $00
	ld   bc, $0d81                                   ; $65cd: $01 $81 $0d

jr_074_65d0:
	nop                                              ; $65d0: $00
	dec  b                                           ; $65d1: $05
	add  c                                           ; $65d2: $81
	ld   sp, hl                                      ; $65d3: $f9
	add  b                                           ; $65d4: $80
	ld   a, c                                        ; $65d5: $79
	add  d                                           ; $65d6: $82
	ld   sp, hl                                      ; $65d7: $f9
	add  b                                           ; $65d8: $80
	ld   a, c                                        ; $65d9: $79
	add  b                                           ; $65da: $80
	ld   sp, hl                                      ; $65db: $f9
	add  b                                           ; $65dc: $80
	sbc  c                                           ; $65dd: $99
	ld   bc, $cab0                                   ; $65de: $01 $b0 $ca

jr_074_65e1:
	add  h                                           ; $65e1: $84
	jp   nz, $fa0a                                   ; $65e2: $c2 $0a $fa

	ldh  a, [c]                                      ; $65e5: $f2
	or   d                                           ; $65e6: $b2
	cp   $c6                                         ; $65e7: $fe $c6
	cp   $89                                         ; $65e9: $fe $89
	adc  a                                           ; $65eb: $8f
	add  d                                           ; $65ec: $82
	jp   c, $84fa                                    ; $65ed: $da $fa $84

	jp   z, $cb00                                    ; $65f0: $ca $00 $cb

	add  b                                           ; $65f3: $80
	db   $eb                                         ; $65f4: $eb
	jr   jr_074_65e1                                 ; $65f5: $18 $ea

	ei                                               ; $65f7: $fb
	adc  e                                           ; $65f8: $8b
	ei                                               ; $65f9: $fb
	rrca                                             ; $65fa: $0f
	rst  $38                                         ; $65fb: $ff
	ld   hl, sp-$61                                  ; $65fc: $f8 $9f
	rst  JumpTable                                         ; $65fe: $df
	sub  e                                           ; $65ff: $93
	sbc  e                                           ; $6600: $9b
	sub  d                                           ; $6601: $92
	sub  e                                           ; $6602: $93
	sub  d                                           ; $6603: $92
	jp   nc, $3af2                                   ; $6604: $d2 $f2 $3a

	cp   $c3                                         ; $6607: $fe $c3
	rst  $38                                         ; $6609: $ff
	call z, $c8e8                                    ; $660a: $cc $e8 $c8
	add  sp, $28                                     ; $660d: $e8 $28
	add  b                                           ; $660f: $80
	add  sp, -$7f                                    ; $6610: $e8 $81
	ld   c, b                                        ; $6612: $48
	ld   bc, $486f                                   ; $6613: $01 $6f $48
	add  b                                           ; $6616: $80
	ld   c, e                                        ; $6617: $4b
	inc  b                                           ; $6618: $04
	ld   c, b                                        ; $6619: $48
	ret  z                                           ; $661a: $c8

	scf                                              ; $661b: $37
	ld   b, $0e                                      ; $661c: $06 $0e
	add  c                                           ; $661e: $81
	ld   a, a                                        ; $661f: $7f
	add  b                                           ; $6620: $80
	nop                                              ; $6621: $00
	dec  b                                           ; $6622: $05
	ld   b, b                                        ; $6623: $40
	rra                                              ; $6624: $1f
	sbc  $02                                         ; $6625: $de $02
	cp   $fd                                         ; $6627: $fe $fd
	add  b                                           ; $6629: $80
	nop                                              ; $662a: $00
	dec  b                                           ; $662b: $05
	ld   a, b                                        ; $662c: $78
	ld   h, [hl]                                     ; $662d: $66
	rst  $20                                         ; $662e: $e7
	cp   $f8                                         ; $662f: $fe $f8
	rst  $38                                         ; $6631: $ff
	add  b                                           ; $6632: $80
	rlca                                             ; $6633: $07
	ld   a, [bc]                                     ; $6634: $0a
	ld   [$2cb8], sp                                 ; $6635: $08 $b8 $2c
	cpl                                              ; $6638: $2f
	inc  c                                           ; $6639: $0c
	cp   h                                           ; $663a: $bc
	sbc  h                                           ; $663b: $9c
	cpl                                              ; $663c: $2f
	or   b                                           ; $663d: $b0
	ld   c, c                                        ; $663e: $49
	ld   l, l                                        ; $663f: $6d
	add  c                                           ; $6640: $81
	ld   c, c                                        ; $6641: $49
	nop                                              ; $6642: $00
	adc  l                                           ; $6643: $8d
	add  c                                           ; $6644: $81
	rst  $38                                         ; $6645: $ff
	inc  bc                                          ; $6646: $03
	rra                                              ; $6647: $1f
	add  hl, bc                                      ; $6648: $09
	call $80e9                                       ; $6649: $cd $e9 $80
	ret                                              ; $664c: $c9


	inc  bc                                          ; $664d: $03
	dec  l                                           ; $664e: $2d
	rrca                                             ; $664f: $0f
	adc  a                                           ; $6650: $8f
	inc  c                                           ; $6651: $0c
	add  b                                           ; $6652: $80
	ld   c, $82                                      ; $6653: $0e $82
	adc  [hl]                                        ; $6655: $8e
	inc  bc                                          ; $6656: $03
	adc  h                                           ; $6657: $8c
	rrca                                             ; $6658: $0f
	adc  a                                           ; $6659: $8f
	inc  c                                           ; $665a: $0c
	add  b                                           ; $665b: $80
	ld   c, $07                                      ; $665c: $0e $07
	add  d                                           ; $665e: $82
	db   $ec                                         ; $665f: $ec
	db   $e4                                         ; $6660: $e4
	db   $fc                                         ; $6661: $fc
	ld   hl, sp-$44                                  ; $6662: $f8 $bc
	xor  h                                           ; $6664: $ac
	cp   h                                           ; $6665: $bc
	add  b                                           ; $6666: $80
	db   $fc                                         ; $6667: $fc
	ld   [bc], a                                     ; $6668: $02
	xor  h                                           ; $6669: $ac
	db   $fc                                         ; $666a: $fc
	db   $ec                                         ; $666b: $ec
	add  c                                           ; $666c: $81
	cp   h                                           ; $666d: $bc
	nop                                              ; $666e: $00
	pop  de                                          ; $666f: $d1
	adc  c                                           ; $6670: $89
	nop                                              ; $6671: $00
	inc  b                                           ; $6672: $04
	ld   c, $08                                      ; $6673: $0e $08
	dec  c                                           ; $6675: $0d
	nop                                              ; $6676: $00
	adc  [hl]                                        ; $6677: $8e
	add  a                                           ; $6678: $87
	ld   b, $80                                      ; $6679: $06 $80
	ld   c, $00                                      ; $667b: $0e $00
	ld   d, $81                                      ; $667d: $16 $81
	ld   e, $04                                      ; $667f: $1e $04
	ldh  [c], a                                      ; $6681: $e2
	jr   c, jr_074_66ac                              ; $6682: $38 $28

	ld   a, $38                                      ; $6684: $3e $38
	add  b                                           ; $6686: $80
	ccf                                              ; $6687: $3f
	ld   bc, $2e38                                   ; $6688: $01 $38 $2e
	add  c                                           ; $668b: $81
	jr   c, jr_074_668e                              ; $668c: $38 $00

jr_074_668e:
	ld   l, $80                                      ; $668e: $2e $80
	jr   c, @+$03                                    ; $6690: $38 $01

	ld   a, $58                                      ; $6692: $3e $58
	add  b                                           ; $6694: $80
	adc  b                                           ; $6695: $88
	ld   bc, $88ee                                   ; $6696: $01 $ee $88
	add  b                                           ; $6699: $80
	cp   $03                                         ; $669a: $fe $03
	add  b                                           ; $669c: $80
	ret  nz                                          ; $669d: $c0

	add  b                                           ; $669e: $80
	ret  nz                                          ; $669f: $c0

	add  c                                           ; $66a0: $81
	nop                                              ; $66a1: $00
	inc  b                                           ; $66a2: $04
	ld   [$690e], sp                                 ; $66a3: $08 $0e $69
	db   $ec                                         ; $66a6: $ec
	ld   l, h                                        ; $66a7: $6c
	add  c                                           ; $66a8: $81
	db   $ec                                         ; $66a9: $ec
	ld   [bc], a                                     ; $66aa: $02
	add  e                                           ; $66ab: $83

jr_074_66ac:
	add  b                                           ; $66ac: $80
	nop                                              ; $66ad: $00
	add  b                                           ; $66ae: $80
	ld   l, a                                        ; $66af: $6f
	dec  b                                           ; $66b0: $05
	ret  nz                                          ; $66b1: $c0

	xor  a                                           ; $66b2: $af
	rst  $28                                         ; $66b3: $ef
	ld   l, a                                        ; $66b4: $6f
	rst  $28                                         ; $66b5: $ef
	ldh  a, [$86]                                    ; $66b6: $f0 $86
	nop                                              ; $66b8: $00
	add  d                                           ; $66b9: $82
	rrca                                             ; $66ba: $0f
	add  c                                           ; $66bb: $81
	ld   bc, $b802                                   ; $66bc: $01 $02 $b8
	add  hl, bc                                      ; $66bf: $09
	ld   e, c                                        ; $66c0: $59
	add  b                                           ; $66c1: $80
	add  hl, bc                                      ; $66c2: $09
	add  c                                           ; $66c3: $81
	add  hl, de                                      ; $66c4: $19
	add  d                                           ; $66c5: $82
	ld   e, c                                        ; $66c6: $59
	add  c                                           ; $66c7: $81
	nop                                              ; $66c8: $00
	rlca                                             ; $66c9: $07
	ld   e, e                                        ; $66ca: $5b
	set  6, b                                        ; $66cb: $cb $f0
	ldh  [$fe], a                                    ; $66cd: $e0 $fe
	or   $ce                                         ; $66cf: $f6 $ce
	add  $83                                         ; $66d1: $c6 $83
	jp   nz, Jump_074_4282                           ; $66d3: $c2 $82 $42

	rlca                                             ; $66d6: $07
	call c, $a39f                                    ; $66d7: $dc $9f $a3
	db   $e3                                         ; $66da: $e3
	jp   nz, $e9fa                                   ; $66db: $c2 $fa $e9

	ret  c                                           ; $66de: $d8

	add  [hl]                                        ; $66df: $86
	jp   z, Jump_074_570a                            ; $66e0: $ca $0a $57

	rst  $38                                         ; $66e3: $ff
	pop  hl                                          ; $66e4: $e1
	rst  $38                                         ; $66e5: $ff
	cp   $3f                                         ; $66e6: $fe $3f
	cp   e                                           ; $66e8: $bb
	ld   h, $a3                                      ; $66e9: $26 $a3
	ld   [hl+], a                                    ; $66eb: $22
	and  d                                           ; $66ec: $a2
	add  e                                           ; $66ed: $83
	ld   [hl+], a                                    ; $66ee: $22
	ld   bc, $cb68                                   ; $66ef: $01 $68 $cb
	add  b                                           ; $66f2: $80
	ret  z                                           ; $66f3: $c8

	inc  bc                                          ; $66f4: $03
	add  hl, bc                                      ; $66f5: $09
	ret                                              ; $66f6: $c9


	ret  z                                           ; $66f7: $c8

jr_074_66f8:
	ld   c, b                                        ; $66f8: $48
	add  b                                           ; $66f9: $80
	ld   c, d                                        ; $66fa: $4a
	nop                                              ; $66fb: $00
	ld   c, b                                        ; $66fc: $48
	add  e                                           ; $66fd: $83
	ld   c, d                                        ; $66fe: $4a
	ld   bc, $febc                                   ; $66ff: $01 $bc $fe
	add  b                                           ; $6702: $80
	nop                                              ; $6703: $00
	add  b                                           ; $6704: $80
	db   $fc                                         ; $6705: $fc
	ld   bc, $0100                                   ; $6706: $01 $00 $01
	add  b                                           ; $6709: $80
	add  [hl]                                        ; $670a: $86
	nop                                              ; $670b: $00
	nop                                              ; $670c: $00
	add  d                                           ; $670d: $82
	add  [hl]                                        ; $670e: $86
	add  hl, bc                                      ; $670f: $09
	cp   $60                                         ; $6710: $fe $60
	inc  l                                           ; $6712: $2c
	dec  c                                           ; $6713: $0d
	cp   a                                           ; $6714: $bf
	sbc  b                                           ; $6715: $98
	daa                                              ; $6716: $27
	add  hl, sp                                      ; $6717: $39
	jr   nz, jr_074_674d                             ; $6718: $20 $33

	add  e                                           ; $671a: $83
	jr   nz, jr_074_671f                             ; $671b: $20 $02

	jr   z, jr_074_673f                              ; $671d: $28 $20

jr_074_671f:
	ld   e, h                                        ; $671f: $5c
	add  b                                           ; $6720: $80
	rst  $38                                         ; $6721: $ff
	add  b                                           ; $6722: $80
	rst  JumpTable                                         ; $6723: $df
	dec  b                                           ; $6724: $05
	jp   hl                                          ; $6725: $e9


	adc  l                                           ; $6726: $8d
	ld   l, c                                        ; $6727: $69
	ld   c, c                                        ; $6728: $49
	add  hl, bc                                      ; $6729: $09
	dec  c                                           ; $672a: $0d
	add  c                                           ; $672b: $81
	rra                                              ; $672c: $1f
	inc  b                                           ; $672d: $04
	ld   e, a                                        ; $672e: $5f
	rra                                              ; $672f: $1f
	db   $fd                                         ; $6730: $fd
	adc  [hl]                                        ; $6731: $8e
	adc  h                                           ; $6732: $8c
	add  b                                           ; $6733: $80
	adc  a                                           ; $6734: $8f
	ld   [bc], a                                     ; $6735: $02
	inc  c                                           ; $6736: $0c
	adc  [hl]                                        ; $6737: $8e
	ld   c, $80                                      ; $6738: $0e $80
	ld   e, $0b                                      ; $673a: $1e $0b
	sbc  h                                           ; $673c: $9c
	sbc  a                                           ; $673d: $9f
	xor  a                                           ; $673e: $af

jr_074_673f:
	scf                                              ; $673f: $37
	ld   [de], a                                     ; $6740: $12
	ld   [bc], a                                     ; $6741: $02
	ld   d, l                                        ; $6742: $55
	db   $fc                                         ; $6743: $fc
	xor  h                                           ; $6744: $ac
	db   $fc                                         ; $6745: $fc
	db   $ec                                         ; $6746: $ec
	cp   h                                           ; $6747: $bc
	add  b                                           ; $6748: $80
	cp   [hl]                                        ; $6749: $be
	dec  b                                           ; $674a: $05
	cp   $fc                                         ; $674b: $fe $fc

jr_074_674d:
	xor  [hl]                                        ; $674d: $ae
	cp   $d6                                         ; $674e: $fe $d6
	call nc, $aa80                                   ; $6750: $d4 $80 $aa
	ld   [bc], a                                     ; $6753: $02
	adc  [hl]                                        ; $6754: $8e
	ld   [$8005], sp                                 ; $6755: $08 $05 $80
	ld   bc, $0000                                   ; $6758: $01 $00 $00
	add  b                                           ; $675b: $80
	ret  nz                                          ; $675c: $c0

	ld   bc, $0040                                   ; $675d: $01 $40 $00
	add  c                                           ; $6760: $81
	ld   b, b                                        ; $6761: $40
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	add  b                                           ; $6764: $80
	add  hl, hl                                      ; $6765: $29
	nop                                              ; $6766: $00
	sub  a                                           ; $6767: $97
	add  a                                           ; $6768: $87
	ld   e, $03                                      ; $6769: $1e $03
	ld   a, [bc]                                     ; $676b: $0a
	ld   [bc], a                                     ; $676c: $02
	inc  bc                                          ; $676d: $03
	nop                                              ; $676e: $00
	add  b                                           ; $676f: $80
	ld   b, b                                        ; $6770: $40
	inc  b                                           ; $6771: $04
	ei                                               ; $6772: $fb
	inc  a                                           ; $6773: $3c
	jr   z, jr_074_67a6                              ; $6774: $28 $30

	jr   nz, jr_074_66f8                             ; $6776: $20 $80

	nop                                              ; $6778: $00
	add  e                                           ; $6779: $83
	jr   nz, jr_074_6781                             ; $677a: $20 $05

	jp   c, $0306                                    ; $677c: $da $06 $03

	nop                                              ; $677f: $00
	pop  af                                          ; $6780: $f1

jr_074_6781:
	ld   c, $80                                      ; $6781: $0e $80
	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	db   $10                                         ; $6785: $10
	add  c                                           ; $6786: $81
	ld   e, $01                                      ; $6787: $1e $01
	db   $10                                         ; $6789: $10
	ld   e, $82                                      ; $678a: $1e $82
	nop                                              ; $678c: $00
	inc  b                                           ; $678d: $04
	cp   $01                                         ; $678e: $fe $01
	ld   d, e                                        ; $6790: $53
	xor  h                                           ; $6791: $ac
	xor  a                                           ; $6792: $af
	add  e                                           ; $6793: $83
	xor  h                                           ; $6794: $ac
	ld   bc, $8083                                   ; $6795: $01 $83 $80
	add  d                                           ; $6798: $82
	xor  a                                           ; $6799: $af
	add  b                                           ; $679a: $80
	add  b                                           ; $679b: $80
	nop                                              ; $679c: $00
	ldh  a, [$81]                                    ; $679d: $f0 $81
	ld   bc, $0e01                                   ; $679f: $01 $01 $0e
	nop                                              ; $67a2: $00
	add  d                                           ; $67a3: $82
	rrca                                             ; $67a4: $0f
	ld   [bc], a                                     ; $67a5: $02

jr_074_67a6:
	nop                                              ; $67a6: $00
	rrca                                             ; $67a7: $0f
	nop                                              ; $67a8: $00
	add  c                                           ; $67a9: $81
	rrca                                             ; $67aa: $0f
	dec  c                                           ; $67ab: $0d
	rst  $38                                         ; $67ac: $ff
	ld   e, e                                        ; $67ad: $5b
	nop                                              ; $67ae: $00
	ld   e, e                                        ; $67af: $5b
	rst  JumpTable                                         ; $67b0: $df
	nop                                              ; $67b1: $00
	rst  JumpTable                                         ; $67b2: $df
	rst  $38                                         ; $67b3: $ff
	ldh  [rIE], a                                    ; $67b4: $e0 $ff
	nop                                              ; $67b6: $00
	rst  $38                                         ; $67b7: $ff
	ld   e, $fe                                      ; $67b8: $1e $fe
	add  b                                           ; $67ba: $80
	ld   bc, $ff0b                                   ; $67bb: $01 $0b $ff
	ld   b, d                                        ; $67be: $42
	cp   l                                           ; $67bf: $bd
	nop                                              ; $67c0: $00
	ld   a, a                                        ; $67c1: $7f
	rst  $38                                         ; $67c2: $ff
	ld   a, a                                        ; $67c3: $7f
	rst  $38                                         ; $67c4: $ff
	nop                                              ; $67c5: $00
	rst  $38                                         ; $67c6: $ff
	nop                                              ; $67c7: $00
	rst  $38                                         ; $67c8: $ff
	add  b                                           ; $67c9: $80
	ld   bc, $ff33                                   ; $67ca: $01 $33 $ff
	nop                                              ; $67cd: $00
	add  d                                           ; $67ce: $82
	jp   z, $00b6                                    ; $67cf: $ca $b6 $00

	cp   $ff                                         ; $67d2: $fe $ff
	add  b                                           ; $67d4: $80
	rst  $38                                         ; $67d5: $ff
	nop                                              ; $67d6: $00
	rst  $38                                         ; $67d7: $ff
	add  b                                           ; $67d8: $80
	nop                                              ; $67d9: $00
	rst  $38                                         ; $67da: $ff
	nop                                              ; $67db: $00
	add  b                                           ; $67dc: $80
	rst  $38                                         ; $67dd: $ff
	ld   a, a                                        ; $67de: $7f
	db   $e3                                         ; $67df: $e3
	inc  e                                           ; $67e0: $1c
	nop                                              ; $67e1: $00
	cp   $ff                                         ; $67e2: $fe $ff
	nop                                              ; $67e4: $00
	rst  $38                                         ; $67e5: $ff
	ld   bc, $e0ff                                   ; $67e6: $01 $ff $e0
	rra                                              ; $67e9: $1f
	add  b                                           ; $67ea: $80
	rst  $38                                         ; $67eb: $ff
	ld   b, b                                        ; $67ec: $40
	ret  nz                                          ; $67ed: $c0

	rst  $30                                         ; $67ee: $f7
	jp   z, $1528                                    ; $67ef: $ca $28 $15

	ld   bc, $01ff                                   ; $67f2: $01 $ff $01
	rst  $38                                         ; $67f5: $ff
	nop                                              ; $67f6: $00
	rst  $38                                         ; $67f7: $ff
	rlca                                             ; $67f8: $07
	ld   hl, sp+$07                                  ; $67f9: $f8 $07
	nop                                              ; $67fb: $00
	db   $fc                                         ; $67fc: $fc
	rlca                                             ; $67fd: $07
	inc  bc                                          ; $67fe: $03
	rst  $38                                         ; $67ff: $ff
	add  b                                           ; $6800: $80
	ld   d, l                                        ; $6801: $55
	add  b                                           ; $6802: $80
	rst  $38                                         ; $6803: $ff
	dec  c                                           ; $6804: $0d
	rlca                                             ; $6805: $07
	rst  $38                                         ; $6806: $ff
	rlca                                             ; $6807: $07
	rst  $38                                         ; $6808: $ff
	nop                                              ; $6809: $00
	rra                                              ; $680a: $1f
	add  c                                           ; $680b: $81
	ld   a, [hl]                                     ; $680c: $7e
	ld   hl, $e9c2                                   ; $680d: $21 $c2 $e9
	xor  d                                           ; $6810: $aa
	dec  d                                           ; $6811: $15
	ld   d, l                                        ; $6812: $55
	add  b                                           ; $6813: $80
	rst  $38                                         ; $6814: $ff
	dec  bc                                          ; $6815: $0b
	cp   $ff                                         ; $6816: $fe $ff
	add  c                                           ; $6818: $81
	cp   $1e                                         ; $6819: $fe $1e
	pop  hl                                          ; $681b: $e1
	sbc  [hl]                                        ; $681c: $9e
	nop                                              ; $681d: $00
	ldh  [c], a                                      ; $681e: $e2
	inc  bc                                          ; $681f: $03
	ld   d, h                                        ; $6820: $54
	xor  d                                           ; $6821: $aa
	add  b                                           ; $6822: $80
	ld   d, l                                        ; $6823: $55
	add  b                                           ; $6824: $80
	rst  $38                                         ; $6825: $ff
	dec  c                                           ; $6826: $0d
	ccf                                              ; $6827: $3f
	rst  $38                                         ; $6828: $ff
	ret  nz                                          ; $6829: $c0

	rra                                              ; $682a: $1f
	jr   @+$01                                       ; $682b: $18 $ff

	ld   b, a                                        ; $682d: $47
	ld   a, a                                        ; $682e: $7f
	ccf                                              ; $682f: $3f
	rst  $38                                         ; $6830: $ff
	ld   b, l                                        ; $6831: $45
	cp   l                                           ; $6832: $bd
	ld   [bc], a                                     ; $6833: $02
	adc  d                                           ; $6834: $8a
	add  b                                           ; $6835: $80
	adc  a                                           ; $6836: $8f
	ld   [bc], a                                     ; $6837: $02
	rrca                                             ; $6838: $0f
	adc  a                                           ; $6839: $8f
	rrca                                             ; $683a: $0f
	add  e                                           ; $683b: $83
	adc  a                                           ; $683c: $8f
	inc  bc                                          ; $683d: $03
	adc  [hl]                                        ; $683e: $8e
	adc  a                                           ; $683f: $8f
	inc  h                                           ; $6840: $24
	ld   d, h                                        ; $6841: $54
	add  b                                           ; $6842: $80
	xor  d                                           ; $6843: $aa
	add  d                                           ; $6844: $82
	cp   $21                                         ; $6845: $fe $21
	db   $fc                                         ; $6847: $fc
	cp   $e8                                         ; $6848: $fe $e8
	db   $fc                                         ; $684a: $fc
	jp   nz, $a4fa                                   ; $684b: $c2 $fa $a4

	db   $f4                                         ; $684e: $f4
	and  b                                           ; $684f: $a0
	ld   e, l                                        ; $6850: $5d
	ld   a, [hl+]                                    ; $6851: $2a
	cpl                                              ; $6852: $2f
	ld   e, b                                        ; $6853: $58
	ld   a, a                                        ; $6854: $7f
	db   $10                                         ; $6855: $10
	ld   a, a                                        ; $6856: $7f
	add  hl, sp                                      ; $6857: $39
	ld   l, [hl]                                     ; $6858: $6e
	ld   l, a                                        ; $6859: $6f
	ld   c, e                                        ; $685a: $4b
	inc  bc                                          ; $685b: $03
	ld   b, e                                        ; $685c: $43
	dec  bc                                          ; $685d: $0b
	add  hl, bc                                      ; $685e: $09
	ld   e, [hl]                                     ; $685f: $5e
	and  b                                           ; $6860: $a0
	nop                                              ; $6861: $00
	rst  $38                                         ; $6862: $ff
	nop                                              ; $6863: $00
	rst  $38                                         ; $6864: $ff
	inc  d                                           ; $6865: $14
	db   $f4                                         ; $6866: $f4
	ld   b, b                                        ; $6867: $40
	and  b                                           ; $6868: $a0
	add  b                                           ; $6869: $80
	db   $f4                                         ; $686a: $f4
	add  b                                           ; $686b: $80
	xor  d                                           ; $686c: $aa
	add  b                                           ; $686d: $80
	push af                                          ; $686e: $f5
	add  c                                           ; $686f: $81
	nop                                              ; $6870: $00
	ld   [bc], a                                     ; $6871: $02
	rst  $38                                         ; $6872: $ff
	nop                                              ; $6873: $00
	rst  $38                                         ; $6874: $ff
	add  b                                           ; $6875: $80
	dec  d                                           ; $6876: $15
	add  b                                           ; $6877: $80
	inc  bc                                          ; $6878: $03
	add  b                                           ; $6879: $80
	dec  b                                           ; $687a: $05
	add  b                                           ; $687b: $80
	nop                                              ; $687c: $00
	add  b                                           ; $687d: $80
	ld   bc, $0081                                   ; $687e: $01 $81 $00
	ld   bc, $00ff                                   ; $6881: $01 $ff $00
	add  c                                           ; $6884: $81
	rst  $38                                         ; $6885: $ff
	ld   [$ffe0], sp                                 ; $6886: $08 $e0 $ff
	ld   h, e                                        ; $6889: $63
	ld   a, a                                        ; $688a: $7f
	xor  l                                           ; $688b: $ad
	xor  a                                           ; $688c: $af
	ld   e, l                                        ; $688d: $5d
	ld   e, a                                        ; $688e: $5f
	inc  bc                                          ; $688f: $03
	add  b                                           ; $6890: $80
	nop                                              ; $6891: $00
	dec  bc                                          ; $6892: $0b
	rst  $38                                         ; $6893: $ff
	nop                                              ; $6894: $00
	rst  $38                                         ; $6895: $ff
	pop  bc                                          ; $6896: $c1
	cp   $10                                         ; $6897: $fe $10
	sbc  $cc                                         ; $6899: $de $cc
	jp   nz, $f030                                   ; $689b: $c2 $30 $f0

	ld   a, $80                                      ; $689e: $3e $80
	cp   $01                                         ; $68a0: $fe $01
	ld   bc, $800f                                   ; $68a2: $01 $0f $80
	nop                                              ; $68a5: $00
	add  c                                           ; $68a6: $81
	rrca                                             ; $68a7: $0f
	add  b                                           ; $68a8: $80
	ld   [$070b], sp                                 ; $68a9: $08 $0b $07
	nop                                              ; $68ac: $00
	add  hl, bc                                      ; $68ad: $09
	ld   bc, $0f00                                   ; $68ae: $01 $00 $0f
	rst  $38                                         ; $68b1: $ff
	nop                                              ; $68b2: $00
	add  b                                           ; $68b3: $80
	rst  $38                                         ; $68b4: $ff
	ld   a, a                                        ; $68b5: $7f
	rst  $38                                         ; $68b6: $ff
	add  b                                           ; $68b7: $80
	ldh  [rDIV], a                                   ; $68b8: $e0 $04
	rra                                              ; $68ba: $1f
	nop                                              ; $68bb: $00
	db   $e4                                         ; $68bc: $e4
	rlca                                             ; $68bd: $07
	inc  bc                                          ; $68be: $03
	add  c                                           ; $68bf: $81
	rst  $38                                         ; $68c0: $ff
	dec  bc                                          ; $68c1: $0b
	ld   a, a                                        ; $68c2: $7f
	rst  $38                                         ; $68c3: $ff
	ld   a, h                                        ; $68c4: $7c
	db   $fc                                         ; $68c5: $fc
	add  e                                           ; $68c6: $83
	add  b                                           ; $68c7: $80
	ld   a, [hl]                                     ; $68c8: $7e
	inc  bc                                          ; $68c9: $03
	sub  c                                           ; $68ca: $91
	rra                                              ; $68cb: $1f
	rrca                                             ; $68cc: $0f
	rst  $38                                         ; $68cd: $ff
	add  b                                           ; $68ce: $80
	ldh  a, [$09]                                    ; $68cf: $f0 $09
	rrca                                             ; $68d1: $0f
	nop                                              ; $68d2: $00
	rst  $38                                         ; $68d3: $ff
	ldh  a, [rIF]                                    ; $68d4: $f0 $0f
	nop                                              ; $68d6: $00
	ld   hl, sp+$0f                                  ; $68d7: $f8 $0f
	rlca                                             ; $68d9: $07
	rst  $38                                         ; $68da: $ff
	add  b                                           ; $68db: $80
	ld   hl, sp+$20                                  ; $68dc: $f8 $20
	add  a                                           ; $68de: $87
	add  b                                           ; $68df: $80
	ld   a, b                                        ; $68e0: $78
	add  b                                           ; $68e1: $80
	inc  b                                           ; $68e2: $04
	rlca                                             ; $68e3: $07
	jp   $e000                                       ; $68e4: $c3 $00 $e0


	ccf                                              ; $68e7: $3f
	inc  e                                           ; $68e8: $1c
	db   $fc                                         ; $68e9: $fc
	add  e                                           ; $68ea: $83
	add  h                                           ; $68eb: $84
	ld   a, b                                        ; $68ec: $78
	nop                                              ; $68ed: $00
	add  h                                           ; $68ee: $84
	rlca                                             ; $68ef: $07
	ld   b, e                                        ; $68f0: $43
	ld   a, a                                        ; $68f1: $7f
	ccf                                              ; $68f2: $3f
	rst  $38                                         ; $68f3: $ff
	ld   a, h                                        ; $68f4: $7c
	db   $fc                                         ; $68f5: $fc
	ld   b, e                                        ; $68f6: $43
	ret  nz                                          ; $68f7: $c0

	inc  a                                           ; $68f8: $3c
	nop                                              ; $68f9: $00
	jp   nz, $2103                                   ; $68fa: $c2 $03 $21

	ccf                                              ; $68fd: $3f
	rra                                              ; $68fe: $1f
	add  e                                           ; $68ff: $83
	rst  $38                                         ; $6900: $ff
	ld   b, $3f                                      ; $6901: $06 $3f
	nop                                              ; $6903: $00
	jp   nz, $2103                                   ; $6904: $c2 $03 $21

	ccf                                              ; $6907: $3f
	rra                                              ; $6908: $1f
	add  e                                           ; $6909: $83
	rst  $38                                         ; $690a: $ff
	ld   b, $fe                                      ; $690b: $06 $fe
	rst  $38                                         ; $690d: $ff
	cp   $ff                                         ; $690e: $fe $ff
	rst  $28                                         ; $6910: $ef
	rra                                              ; $6911: $1f
	rrca                                             ; $6912: $0f
	add  l                                           ; $6913: $85
	rst  $38                                         ; $6914: $ff
	inc  b                                           ; $6915: $04
	ldh  [rIE], a                                    ; $6916: $e0 $ff
	rra                                              ; $6918: $1f
	rst  $38                                         ; $6919: $ff
	nop                                              ; $691a: $00
	add  l                                           ; $691b: $85
	rst  $38                                         ; $691c: $ff
	ld   [$fff8], sp                                 ; $691d: $08 $f8 $ff
	ld   hl, sp-$01                                  ; $6920: $f8 $ff
	nop                                              ; $6922: $00
	rst  $38                                         ; $6923: $ff
	add  c                                           ; $6924: $81
	rst  $38                                         ; $6925: $ff
	ld   [hl], h                                     ; $6926: $74
	add  b                                           ; $6927: $80
	rst  $38                                         ; $6928: $ff
	rra                                              ; $6929: $1f
	adc  a                                           ; $692a: $8f
	add  h                                           ; $692b: $84
	adc  a                                           ; $692c: $8f
	add  l                                           ; $692d: $85
	adc  a                                           ; $692e: $8f
	ld   a, [de]                                     ; $692f: $1a
	sbc  [hl]                                        ; $6930: $9e
	inc  e                                           ; $6931: $1c
	sbc  l                                           ; $6932: $9d
	ld   hl, $04b3                                   ; $6933: $21 $b3 $04
	rla                                              ; $6936: $17
	db   $10                                         ; $6937: $10
	rla                                              ; $6938: $17
	db   $eb                                         ; $6939: $eb
	db   $ec                                         ; $693a: $ec
	nop                                              ; $693b: $00
	sbc  a                                           ; $693c: $9f
	ret  c                                           ; $693d: $d8

	ld   a, a                                        ; $693e: $7f
	daa                                              ; $693f: $27
	rst  $38                                         ; $6940: $ff
	ldh  [$fe], a                                    ; $6941: $e0 $fe
	db   $fc                                         ; $6943: $fc
	cp   $3c                                         ; $6944: $fe $3c
	ret  nz                                          ; $6946: $c0

	ld   sp, hl                                      ; $6947: $f9
	ld   bc, $80f0                                   ; $6948: $01 $f0 $80
	dec  bc                                          ; $694b: $0b
	ld   [bc], a                                     ; $694c: $02
	adc  e                                           ; $694d: $8b
	dec  bc                                          ; $694e: $0b
	adc  e                                           ; $694f: $8b
	add  b                                           ; $6950: $80
	inc  bc                                          ; $6951: $03
	add  hl, bc                                      ; $6952: $09
	ld   a, e                                        ; $6953: $7b
	ld   a, a                                        ; $6954: $7f
	rlca                                             ; $6955: $07
	ld   a, a                                        ; $6956: $7f
	ld   a, b                                        ; $6957: $78
	ld   hl, sp-$80                                  ; $6958: $f8 $80
	rst  $38                                         ; $695a: $ff
	add  c                                           ; $695b: $81
	cp   $80                                         ; $695c: $fe $80
	db   $fc                                         ; $695e: $fc
	add  b                                           ; $695f: $80
	ld   a, [$fd80]                                  ; $6960: $fa $80 $fd
	add  b                                           ; $6963: $80
	ld   [bc], a                                     ; $6964: $02
	ld   b, $f4                                      ; $6965: $06 $f4
	rst  $38                                         ; $6967: $ff
	dec  bc                                          ; $6968: $0b
	nop                                              ; $6969: $00
	di                                               ; $696a: $f3
	rst  $38                                         ; $696b: $ff
	inc  c                                           ; $696c: $0c
	add  a                                           ; $696d: $87
	nop                                              ; $696e: $00
	rrca                                             ; $696f: $0f
	inc  bc                                          ; $6970: $03
	rst  $38                                         ; $6971: $ff
	db   $fc                                         ; $6972: $fc
	jr   nz, jr_074_69d4                             ; $6973: $20 $5f

	rst  $38                                         ; $6975: $ff
	xor  a                                           ; $6976: $af
	cpl                                              ; $6977: $2f
	jr   jr_074_6999                                 ; $6978: $18 $1f

	inc  l                                           ; $697a: $2c
	dec  hl                                          ; $697b: $2b
	ld   b, b                                        ; $697c: $40
	ld   e, a                                        ; $697d: $5f
	jr   jr_074_6987                                 ; $697e: $18 $07

	add  b                                           ; $6980: $80
	adc  d                                           ; $6981: $8a
	add  b                                           ; $6982: $80
	ld   bc, $9f11                                   ; $6983: $01 $11 $9f
	rst  $38                                         ; $6986: $ff

jr_074_6987:
	adc  h                                           ; $6987: $8c
	rst  $38                                         ; $6988: $ff
	db   $d3                                         ; $6989: $d3
	rst  $38                                         ; $698a: $ff
	pop  bc                                          ; $698b: $c1
	rst  $38                                         ; $698c: $ff
	add  $ff                                         ; $698d: $c6 $ff
	ld   b, d                                        ; $698f: $42
	rst  $38                                         ; $6990: $ff
	dec  b                                           ; $6991: $05
	rst  $38                                         ; $6992: $ff
	ld   b, $7f                                      ; $6993: $06 $7f
	add  h                                           ; $6995: $84
	rst  $38                                         ; $6996: $ff
	ld   d, a                                        ; $6997: $57
	ld   [bc], a                                     ; $6998: $02

jr_074_6999:
	add  [hl]                                        ; $6999: $86
	nop                                              ; $699a: $00
	ld   [$0a07], sp                                 ; $699b: $08 $07 $0a
	inc  b                                           ; $699e: $04
	rrca                                             ; $699f: $0f
	ld   [$0607], sp                                 ; $69a0: $08 $07 $06
	add  hl, bc                                      ; $69a3: $09
	ld   b, $85                                      ; $69a4: $06 $85
	nop                                              ; $69a6: $00
	nop                                              ; $69a7: $00
	rst  $38                                         ; $69a8: $ff
	add  b                                           ; $69a9: $80
	xor  d                                           ; $69aa: $aa
	dec  b                                           ; $69ab: $05
	ld   d, l                                        ; $69ac: $55
	push de                                          ; $69ad: $d5
	xor  d                                           ; $69ae: $aa
	ld   c, d                                        ; $69af: $4a
	push af                                          ; $69b0: $f5
	ld   l, d                                        ; $69b1: $6a
	add  l                                           ; $69b2: $85
	nop                                              ; $69b3: $00
	nop                                              ; $69b4: $00
	rst  $38                                         ; $69b5: $ff
	add  b                                           ; $69b6: $80
	xor  d                                           ; $69b7: $aa
	add  b                                           ; $69b8: $80
	dec  b                                           ; $69b9: $05
	add  c                                           ; $69ba: $81
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	rst  $38                                         ; $69bd: $ff
	add  l                                           ; $69be: $85
	nop                                              ; $69bf: $00
	ld   [$fc03], sp                                 ; $69c0: $08 $03 $fc
	ld   a, $7e                                      ; $69c3: $3e $7e
	ld   e, a                                        ; $69c5: $5f
	cp   a                                           ; $69c6: $bf
	xor  a                                           ; $69c7: $af
	rra                                              ; $69c8: $1f
	rst  $28                                         ; $69c9: $ef
	add  [hl]                                        ; $69ca: $86
	nop                                              ; $69cb: $00
	inc  b                                           ; $69cc: $04
	rst  $38                                         ; $69cd: $ff
	jr   nz, jr_074_6a0f                             ; $69ce: $20 $3f

	add  b                                           ; $69d0: $80
	sbc  a                                           ; $69d1: $9f
	add  b                                           ; $69d2: $80
	ret  nz                                          ; $69d3: $c0

jr_074_69d4:
	nop                                              ; $69d4: $00
	rst  $38                                         ; $69d5: $ff
	add  l                                           ; $69d6: $85
	nop                                              ; $69d7: $00
	dec  b                                           ; $69d8: $05
	ld   bc, $03fe                                   ; $69d9: $01 $fe $03
	rst  $38                                         ; $69dc: $ff
	inc  bc                                          ; $69dd: $03
	rst  $38                                         ; $69de: $ff
	add  b                                           ; $69df: $80
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	rst  $38                                         ; $69e2: $ff
	add  l                                           ; $69e3: $85
	nop                                              ; $69e4: $00
	ld   bc, $7d82                                   ; $69e5: $01 $82 $7d
	add  b                                           ; $69e8: $80
	ld   a, $80                                      ; $69e9: $3e $80
	sbc  [hl]                                        ; $69eb: $9e
	add  b                                           ; $69ec: $80
	rrca                                             ; $69ed: $0f
	nop                                              ; $69ee: $00
	rst  $38                                         ; $69ef: $ff
	add  l                                           ; $69f0: $85
	nop                                              ; $69f1: $00
	ld   bc, $a956                                   ; $69f2: $01 $56 $a9
	add  d                                           ; $69f5: $82
	or   l                                           ; $69f6: $b5
	add  b                                           ; $69f7: $80
	ld   l, e                                        ; $69f8: $6b
	nop                                              ; $69f9: $00
	rst  $38                                         ; $69fa: $ff
	add  l                                           ; $69fb: $85
	nop                                              ; $69fc: $00
	ld   bc, $fc03                                   ; $69fd: $01 $03 $fc
	add  c                                           ; $6a00: $81
	ld   hl, sp+$03                                  ; $6a01: $f8 $03
	ei                                               ; $6a03: $fb
	ld   a, [$fff9]                                  ; $6a04: $fa $f9 $ff
	add  l                                           ; $6a07: $85
	nop                                              ; $6a08: $00
	inc  bc                                          ; $6a09: $03
	dec  sp                                          ; $6a0a: $3b
	call c, Call_074_4850                            ; $6a0b: $dc $50 $48
	add  b                                           ; $6a0e: $80

jr_074_6a0f:
	pop  hl                                          ; $6a0f: $e1
	add  b                                           ; $6a10: $80
	cp   a                                           ; $6a11: $bf
	nop                                              ; $6a12: $00
	rst  $38                                         ; $6a13: $ff
	add  l                                           ; $6a14: $85
	nop                                              ; $6a15: $00
	ld   bc, $8e71                                   ; $6a16: $01 $71 $8e
	add  c                                           ; $6a19: $81
	xor  $03                                         ; $6a1a: $ee $03
	rst  $38                                         ; $6a1c: $ff
	ld   e, e                                        ; $6a1d: $5b
	ld   a, e                                        ; $6a1e: $7b
	adc  $85                                         ; $6a1f: $ce $85
	nop                                              ; $6a21: $00
	inc  bc                                          ; $6a22: $03
	cp   l                                           ; $6a23: $bd
	ld   c, [hl]                                     ; $6a24: $4e
	pop  hl                                          ; $6a25: $e1
	db   $ed                                         ; $6a26: $ed
	add  b                                           ; $6a27: $80
	di                                               ; $6a28: $f3
	add  b                                           ; $6a29: $80
	ld   e, a                                        ; $6a2a: $5f
	nop                                              ; $6a2b: $00
	rst  $38                                         ; $6a2c: $ff
	add  l                                           ; $6a2d: $85
	nop                                              ; $6a2e: $00
	inc  bc                                          ; $6a2f: $03
	ld   a, b                                        ; $6a30: $78
	add  a                                           ; $6a31: $87
	add  e                                           ; $6a32: $83
	or   e                                           ; $6a33: $b3
	add  b                                           ; $6a34: $80
	dec  sp                                          ; $6a35: $3b
	ld   [bc], a                                     ; $6a36: $02
	dec  hl                                          ; $6a37: $2b
	dec  sp                                          ; $6a38: $3b
	rst  JumpTable                                         ; $6a39: $df
	add  l                                           ; $6a3a: $85
	nop                                              ; $6a3b: $00
	ld   bc, $fc03                                   ; $6a3c: $01 $03 $fc
	add  d                                           ; $6a3f: $82
	db   $fd                                         ; $6a40: $fd
	add  b                                           ; $6a41: $80
	cp   $00                                         ; $6a42: $fe $00
	rst  $38                                         ; $6a44: $ff
	add  l                                           ; $6a45: $85
	nop                                              ; $6a46: $00
	ld   bc, $ad52                                   ; $6a47: $01 $52 $ad
	add  d                                           ; $6a4a: $82
	ld   l, e                                        ; $6a4b: $6b
	add  b                                           ; $6a4c: $80
	or   a                                           ; $6a4d: $b7
	nop                                              ; $6a4e: $00
	rst  $38                                         ; $6a4f: $ff
	add  l                                           ; $6a50: $85
	nop                                              ; $6a51: $00
	dec  b                                           ; $6a52: $05
	inc  c                                           ; $6a53: $0c
	di                                               ; $6a54: $f3
	ldh  [$e7], a                                    ; $6a55: $e0 $e7
	ret  z                                           ; $6a57: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a58: $cf
	add  b                                           ; $6a59: $80
	add  b                                           ; $6a5a: $80
	nop                                              ; $6a5b: $00
	ldh  a, [$80]                                    ; $6a5c: $f0 $80
	inc  b                                           ; $6a5e: $04
	add  b                                           ; $6a5f: $80
	ld   c, $89                                      ; $6a60: $0e $89
	rlca                                             ; $6a62: $07
	ld   b, $ef                                      ; $6a63: $06 $ef
	ld   a, d                                        ; $6a65: $7a
	ld   h, h                                        ; $6a66: $64
	sbc  a                                           ; $6a67: $9f
	sbc  b                                           ; $6a68: $98
	ld   b, a                                        ; $6a69: $47
	ld   b, [hl]                                     ; $6a6a: $46
	add  b                                           ; $6a6b: $80
	jp   hl                                          ; $6a6c: $e9


	add  b                                           ; $6a6d: $80
	ldh  a, [c]                                      ; $6a6e: $f2
	add  b                                           ; $6a6f: $80
	ld   a, [$ff80]                                  ; $6a70: $fa $80 $ff
	add  b                                           ; $6a73: $80
	rst  $30                                         ; $6a74: $f7
	add  c                                           ; $6a75: $81
	nop                                              ; $6a76: $00
	add  b                                           ; $6a77: $80
	add  b                                           ; $6a78: $80
	ld   c, $60                                      ; $6a79: $0e $60
	ldh  [$98], a                                    ; $6a7b: $e0 $98
	ld   a, b                                        ; $6a7d: $78
	ld   h, [hl]                                     ; $6a7e: $66
	sbc  [hl]                                        ; $6a7f: $9e

Call_074_6a80:
	sbc  c                                           ; $6a80: $99
	rst  ToBoot                                         ; $6a81: $c7
	add  $e9                                         ; $6a82: $c6 $e9
	ld   [$090b], a                                  ; $6a84: $ea $0b $09
	ld   bc, $8000                                   ; $6a87: $01 $00 $80
	ld   [bc], a                                     ; $6a8a: $02
	add  b                                           ; $6a8b: $80
	ld   bc, $0081                                   ; $6a8c: $01 $81 $00
	add  b                                           ; $6a8f: $80
	add  b                                           ; $6a90: $80
	inc  bc                                          ; $6a91: $03
	ld   h, b                                        ; $6a92: $60
	ldh  [$60], a                                    ; $6a93: $e0 $60
	db   $e3                                         ; $6a95: $e3
	add  b                                           ; $6a96: $80
	rst  $38                                         ; $6a97: $ff
	inc  c                                           ; $6a98: $0c
	db   $fd                                         ; $6a99: $fd
	rst  $38                                         ; $6a9a: $ff
	ld   a, $7f                                      ; $6a9b: $3e $7f
	ld   e, a                                        ; $6a9d: $5f
	ccf                                              ; $6a9e: $3f
	cpl                                              ; $6a9f: $2f
	rra                                              ; $6aa0: $1f
	inc  de                                          ; $6aa1: $13
	dec  bc                                          ; $6aa2: $0b
	add  hl, bc                                      ; $6aa3: $09
	dec  b                                           ; $6aa4: $05
	inc  b                                           ; $6aa5: $04
	add  e                                           ; $6aa6: $83
	rst  $38                                         ; $6aa7: $ff
	dec  bc                                          ; $6aa8: $0b
	nop                                              ; $6aa9: $00
	rst  $38                                         ; $6aaa: $ff
	nop                                              ; $6aab: $00
	xor  a                                           ; $6aac: $af
	cpl                                              ; $6aad: $2f
	push de                                          ; $6aae: $d5
	or   l                                           ; $6aaf: $b5
	ld   [$fff5], a                                  ; $6ab0: $ea $f5 $ff
	cpl                                              ; $6ab3: $2f
	rst  $28                                         ; $6ab4: $ef
	add  b                                           ; $6ab5: $80
	rst  $30                                         ; $6ab6: $f7
	add  b                                           ; $6ab7: $80
	ei                                               ; $6ab8: $fb
	inc  b                                           ; $6ab9: $04
	dec  a                                           ; $6aba: $3d
	db   $fd                                         ; $6abb: $fd
	ld   a, [hl]                                     ; $6abc: $7e
	cp   $ff                                         ; $6abd: $fe $ff
	add  b                                           ; $6abf: $80
	ld   a, a                                        ; $6ac0: $7f
	ld   [bc], a                                     ; $6ac1: $02
	rst  $38                                         ; $6ac2: $ff
	ccf                                              ; $6ac3: $3f
	cp   a                                           ; $6ac4: $bf
	add  b                                           ; $6ac5: $80
	xor  h                                           ; $6ac6: $ac
	add  b                                           ; $6ac7: $80
	db   $db                                         ; $6ac8: $db
	add  c                                           ; $6ac9: $81
	ld   [$eb02], a                                  ; $6aca: $ea $02 $eb
	rst  $30                                         ; $6acd: $f7
	or   $80                                         ; $6ace: $f6 $80
	ld   a, e                                        ; $6ad0: $7b
	add  b                                           ; $6ad1: $80
	cp   h                                           ; $6ad2: $bc
	add  b                                           ; $6ad3: $80
	rst  JumpTable                                         ; $6ad4: $df
	add  b                                           ; $6ad5: $80
	inc  [hl]                                        ; $6ad6: $34
	rlca                                             ; $6ad7: $07
	db   $e3                                         ; $6ad8: $e3
	db   $eb                                         ; $6ad9: $eb
	xor  d                                           ; $6ada: $aa
	xor  [hl]                                        ; $6adb: $ae
	xor  d                                           ; $6adc: $aa
	xor  $f8                                         ; $6add: $ee $f8
	or   b                                           ; $6adf: $b0
	add  b                                           ; $6ae0: $80
	rst  $38                                         ; $6ae1: $ff
	add  b                                           ; $6ae2: $80
	nop                                              ; $6ae3: $00
	add  b                                           ; $6ae4: $80
	rst  $38                                         ; $6ae5: $ff
	add  b                                           ; $6ae6: $80
	ld   a, a                                        ; $6ae7: $7f
	add  b                                           ; $6ae8: $80
	sbc  $05                                         ; $6ae9: $de $05
	ld   l, l                                        ; $6aeb: $6d
	ld   l, a                                        ; $6aec: $6f
	ld   [hl], c                                     ; $6aed: $71
	ld   a, a                                        ; $6aee: $7f
	di                                               ; $6aef: $f3
	rst  $38                                         ; $6af0: $ff
	add  b                                           ; $6af1: $80
	ei                                               ; $6af2: $fb
	dec  e                                           ; $6af3: $1d
	or   [hl]                                        ; $6af4: $b6
	cp   [hl]                                        ; $6af5: $be
	pop  bc                                          ; $6af6: $c1
	ld   sp, hl                                      ; $6af7: $f9
	and  c                                           ; $6af8: $a1
	rst  $38                                         ; $6af9: $ff
	sub  a                                           ; $6afa: $97
	ld   sp, hl                                      ; $6afb: $f9
	xor  d                                           ; $6afc: $aa

jr_074_6afd:
	xor  e                                           ; $6afd: $ab
	add  $ff                                         ; $6afe: $c6 $ff
	sub  $ee                                         ; $6b00: $d6 $ee
	ld   [de], a                                     ; $6b02: $12
	dec  de                                          ; $6b03: $1b
	jr   z, jr_074_6afd                              ; $6b04: $28 $f7

	cp   h                                           ; $6b06: $bc
	ld   l, e                                        ; $6b07: $6b
	ld   a, $ff                                      ; $6b08: $3e $ff
	xor  a                                           ; $6b0a: $af
	ld   l, a                                        ; $6b0b: $6f
	ld   [hl], $ff                                   ; $6b0c: $36 $ff
	or   b                                           ; $6b0e: $b0
	ld   a, a                                        ; $6b0f: $7f
	add  hl, de                                      ; $6b10: $19
	rra                                              ; $6b11: $1f
	add  b                                           ; $6b12: $80
	ei                                               ; $6b13: $fb
	dec  b                                           ; $6b14: $05
	push bc                                          ; $6b15: $c5
	rst  ToBoot                                         ; $6b16: $c7
	ldh  a, [$f3]                                    ; $6b17: $f0 $f3
	push bc                                          ; $6b19: $c5
	call nz, Call_074_7b80                           ; $6b1a: $c4 $80 $7b
	add  b                                           ; $6b1d: $80
	ldh  [c], a                                      ; $6b1e: $e2
	dec  b                                           ; $6b1f: $05
	add  d                                           ; $6b20: $82
	sbc  e                                           ; $6b21: $9b
	sub  e                                           ; $6b22: $93
	sbc  d                                           ; $6b23: $9a
	rst  $10                                         ; $6b24: $d7
	rst  ToBoot                                         ; $6b25: $c7
	add  b                                           ; $6b26: $80
	cp   b                                           ; $6b27: $b8
	inc  bc                                          ; $6b28: $03
	ld   a, a                                        ; $6b29: $7f
	rst  $38                                         ; $6b2a: $ff
	add  c                                           ; $6b2b: $81
	ld   bc, $fe80                                   ; $6b2c: $01 $80 $fe
	add  c                                           ; $6b2f: $81
	xor  d                                           ; $6b30: $aa
	ld   [bc], a                                     ; $6b31: $02
	cp   $ff                                         ; $6b32: $fe $ff
	xor  e                                           ; $6b34: $ab
	add  b                                           ; $6b35: $80
	cp   $80                                         ; $6b36: $fe $80
	ld   bc, $ff80                                   ; $6b38: $01 $80 $ff
	add  b                                           ; $6b3b: $80

jr_074_6b3c:
	xor  a                                           ; $6b3c: $af
	add  b                                           ; $6b3d: $80
	rst  JumpTable                                         ; $6b3e: $df
	add  b                                           ; $6b3f: $80
	sbc  $80                                         ; $6b40: $de $80
	cp   l                                           ; $6b42: $bd
	add  b                                           ; $6b43: $80
	ld   a, e                                        ; $6b44: $7b
	add  b                                           ; $6b45: $80
	di                                               ; $6b46: $f3
	add  b                                           ; $6b47: $80
	pop  hl                                          ; $6b48: $e1
	add  b                                           ; $6b49: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b4a: $cf
	ld   bc, $bfa0                                   ; $6b4b: $01 $a0 $bf
	add  b                                           ; $6b4e: $80
	ld   a, a                                        ; $6b4f: $7f
	add  b                                           ; $6b50: $80
	rst  $38                                         ; $6b51: $ff
	ld   [bc], a                                     ; $6b52: $02
	ldh  [rIE], a                                    ; $6b53: $e0 $ff
	ldh  [$80], a                                    ; $6b55: $e0 $80
	rst  $38                                         ; $6b57: $ff
	add  b                                           ; $6b58: $80
	push af                                          ; $6b59: $f5
	inc  bc                                          ; $6b5a: $03
	ld   [$dfd5], a                                  ; $6b5b: $ea $d5 $df
	ldh  a, [$80]                                    ; $6b5e: $f0 $80
	ld   [$0f8b], sp                                 ; $6b60: $08 $8b $0f
	nop                                              ; $6b63: $00
	rst  $38                                         ; $6b64: $ff
	add  b                                           ; $6b65: $80
	rst  $30                                         ; $6b66: $f7
	add  b                                           ; $6b67: $80
	rla                                              ; $6b68: $17
	add  b                                           ; $6b69: $80
	rst  ToBoot                                         ; $6b6a: $c7
	add  b                                           ; $6b6b: $80
	ret  c                                           ; $6b6c: $d8

	add  d                                           ; $6b6d: $82
	rst  JumpTable                                         ; $6b6e: $df
	add  d                                           ; $6b6f: $82
	rst  $38                                         ; $6b70: $ff
	add  b                                           ; $6b71: $80
	db   $fc                                         ; $6b72: $fc
	add  b                                           ; $6b73: $80
	cp   $80                                         ; $6b74: $fe $80
	rst  $38                                         ; $6b76: $ff
	add  b                                           ; $6b77: $80
	rst  JumpTable                                         ; $6b78: $df
	add  b                                           ; $6b79: $80
	rra                                              ; $6b7a: $1f
	dec  bc                                          ; $6b7b: $0b
	rst  $28                                         ; $6b7c: $ef
	add  sp, -$01                                    ; $6b7d: $e8 $ff
	ld   sp, hl                                      ; $6b7f: $f9
	db   $fd                                         ; $6b80: $fd
	db   $e4                                         ; $6b81: $e4
	ld   a, b                                        ; $6b82: $78
	ld   h, [hl]                                     ; $6b83: $66
	sbc  [hl]                                        ; $6b84: $9e
	sbc  c                                           ; $6b85: $99
	ld   b, a                                        ; $6b86: $47
	ld   b, [hl]                                     ; $6b87: $46
	add  b                                           ; $6b88: $80
	jp   hl                                          ; $6b89: $e9


	rlca                                             ; $6b8a: $07
	or   $76                                         ; $6b8b: $f6 $76
	cp   $3e                                         ; $6b8d: $fe $3e
	rst  JumpTable                                         ; $6b8f: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b90: $cf
	rst  JumpTable                                         ; $6b91: $df
	adc  a                                           ; $6b92: $8f
	add  b                                           ; $6b93: $80
	ld   [bc], a                                     ; $6b94: $02
	add  hl, de                                      ; $6b95: $19
	ld   bc, $8081                                   ; $6b96: $01 $81 $80
	ld   h, b                                        ; $6b99: $60
	ldh  [$9f], a                                    ; $6b9a: $e0 $9f
	ld   a, a                                        ; $6b9c: $7f
	ld   [hl], b                                     ; $6b9d: $70
	sbc  a                                           ; $6b9e: $9f
	add  a                                           ; $6b9f: $87
	ld   l, a                                        ; $6ba0: $6f
	ld   l, [hl]                                     ; $6ba1: $6e
	rst  $28                                         ; $6ba2: $ef
	ld   d, $f7                                      ; $6ba3: $16 $f7
	scf                                              ; $6ba5: $37
	ld   [hl], a                                     ; $6ba6: $77
	ld   d, a                                        ; $6ba7: $57
	scf                                              ; $6ba8: $37
	ccf                                              ; $6ba9: $3f
	jr   jr_074_6b3c                                 ; $6baa: $18 $90

	sub  a                                           ; $6bac: $97
	ld   e, a                                        ; $6bad: $5f
	ret  c                                           ; $6bae: $d8

	ld   [hl], b                                     ; $6baf: $70
	add  b                                           ; $6bb0: $80
	ldh  a, [rSB]                                    ; $6bb1: $f0 $01
	rst  $30                                         ; $6bb3: $f7
	ld   a, b                                        ; $6bb4: $78
	add  c                                           ; $6bb5: $81
	ld   a, a                                        ; $6bb6: $7f
	add  b                                           ; $6bb7: $80
	halt                                             ; $6bb8: $76
	add  b                                           ; $6bb9: $80
	rst  $38                                         ; $6bba: $ff
	add  b                                           ; $6bbb: $80
	ld   a, a                                        ; $6bbc: $7f
	add  b                                           ; $6bbd: $80
	rst  $38                                         ; $6bbe: $ff
	inc  bc                                          ; $6bbf: $03
	ld   b, b                                        ; $6bc0: $40
	ld   b, e                                        ; $6bc1: $43
	ld   a, l                                        ; $6bc2: $7d
	ld   a, [hl]                                     ; $6bc3: $7e
	add  b                                           ; $6bc4: $80
	rst  $28                                         ; $6bc5: $ef
	add  b                                           ; $6bc6: $80
	rst  $38                                         ; $6bc7: $ff
	add  b                                           ; $6bc8: $80
	push de                                          ; $6bc9: $d5
	add  b                                           ; $6bca: $80
	rst  $38                                         ; $6bcb: $ff
	add  b                                           ; $6bcc: $80
	add  b                                           ; $6bcd: $80
	add  b                                           ; $6bce: $80
	rst  $38                                         ; $6bcf: $ff
	nop                                              ; $6bd0: $00
	nop                                              ; $6bd1: $00
	add  b                                           ; $6bd2: $80
	rst  $38                                         ; $6bd3: $ff
	nop                                              ; $6bd4: $00
	nop                                              ; $6bd5: $00
	add  d                                           ; $6bd6: $82
	rst  $38                                         ; $6bd7: $ff
	add  b                                           ; $6bd8: $80
	ld   d, l                                        ; $6bd9: $55
	add  b                                           ; $6bda: $80
	rst  $38                                         ; $6bdb: $ff
	add  b                                           ; $6bdc: $80
	nop                                              ; $6bdd: $00
	add  b                                           ; $6bde: $80
	rst  $38                                         ; $6bdf: $ff
	nop                                              ; $6be0: $00
	nop                                              ; $6be1: $00
	add  b                                           ; $6be2: $80
	rst  $38                                         ; $6be3: $ff
	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	add  d                                           ; $6be6: $82
	rst  $38                                         ; $6be7: $ff
	add  b                                           ; $6be8: $80
	ld   d, l                                        ; $6be9: $55
	add  b                                           ; $6bea: $80
	rst  $38                                         ; $6beb: $ff
	add  b                                           ; $6bec: $80
	nop                                              ; $6bed: $00
	add  b                                           ; $6bee: $80
	rst  $38                                         ; $6bef: $ff
	nop                                              ; $6bf0: $00
	nop                                              ; $6bf1: $00
	add  b                                           ; $6bf2: $80
	rst  $38                                         ; $6bf3: $ff
	dec  c                                           ; $6bf4: $0d
	nop                                              ; $6bf5: $00
	ldh  [c], a                                      ; $6bf6: $e2
	or   $fc                                         ; $6bf7: $f6 $fc
	db   $eb                                         ; $6bf9: $eb
	ld   h, c                                        ; $6bfa: $61
	ld   [hl], a                                     ; $6bfb: $77
	rst  $38                                         ; $6bfc: $ff
	ld   a, [$1f05]                                  ; $6bfd: $fa $05 $1f
	push af                                          ; $6c00: $f5
	rst  $38                                         ; $6c01: $ff
	nop                                              ; $6c02: $00
	add  b                                           ; $6c03: $80
	rst  $38                                         ; $6c04: $ff
	nop                                              ; $6c05: $00
	nop                                              ; $6c06: $00
	add  d                                           ; $6c07: $82
	rst  $38                                         ; $6c08: $ff
	add  b                                           ; $6c09: $80
	xor  d                                           ; $6c0a: $aa
	add  b                                           ; $6c0b: $80
	rst  $38                                         ; $6c0c: $ff
	add  b                                           ; $6c0d: $80
	nop                                              ; $6c0e: $00
	add  b                                           ; $6c0f: $80
	rst  $38                                         ; $6c10: $ff
	nop                                              ; $6c11: $00
	nop                                              ; $6c12: $00
	add  b                                           ; $6c13: $80
	rst  $38                                         ; $6c14: $ff
	nop                                              ; $6c15: $00
	nop                                              ; $6c16: $00
	add  d                                           ; $6c17: $82
	rst  $38                                         ; $6c18: $ff
	add  b                                           ; $6c19: $80
	xor  d                                           ; $6c1a: $aa
	add  b                                           ; $6c1b: $80
	rst  $38                                         ; $6c1c: $ff
	add  b                                           ; $6c1d: $80
	nop                                              ; $6c1e: $00
	add  b                                           ; $6c1f: $80
	rst  $38                                         ; $6c20: $ff
	nop                                              ; $6c21: $00
	nop                                              ; $6c22: $00
	add  b                                           ; $6c23: $80
	rst  $38                                         ; $6c24: $ff
	nop                                              ; $6c25: $00
	nop                                              ; $6c26: $00
	add  d                                           ; $6c27: $82
	rst  $38                                         ; $6c28: $ff
	add  b                                           ; $6c29: $80
	xor  d                                           ; $6c2a: $aa
	add  b                                           ; $6c2b: $80
	rst  $38                                         ; $6c2c: $ff
	add  b                                           ; $6c2d: $80
	nop                                              ; $6c2e: $00
	add  b                                           ; $6c2f: $80
	rst  $38                                         ; $6c30: $ff
	nop                                              ; $6c31: $00
	nop                                              ; $6c32: $00
	add  b                                           ; $6c33: $80
	rst  $38                                         ; $6c34: $ff
	nop                                              ; $6c35: $00
	nop                                              ; $6c36: $00
	add  b                                           ; $6c37: $80
	sbc  a                                           ; $6c38: $9f
	add  b                                           ; $6c39: $80
	rst  $38                                         ; $6c3a: $ff
	add  b                                           ; $6c3b: $80
	xor  d                                           ; $6c3c: $aa
	add  b                                           ; $6c3d: $80
	rst  $38                                         ; $6c3e: $ff
	add  b                                           ; $6c3f: $80
	nop                                              ; $6c40: $00
	add  b                                           ; $6c41: $80
	rst  $38                                         ; $6c42: $ff
	nop                                              ; $6c43: $00
	nop                                              ; $6c44: $00
	add  b                                           ; $6c45: $80
	rst  $38                                         ; $6c46: $ff
	ld   bc, $f000                                   ; $6c47: $01 $00 $f0
	add  c                                           ; $6c4a: $81
	rst  $30                                         ; $6c4b: $f7
	add  b                                           ; $6c4c: $80
	or   a                                           ; $6c4d: $b7
	ld   b, $ff                                      ; $6c4e: $06 $ff
	ld   hl, sp+$10                                  ; $6c50: $f8 $10
	rla                                              ; $6c52: $17
	rst  $38                                         ; $6c53: $ff
	ld   hl, sp+$10                                  ; $6c54: $f8 $10
	add  b                                           ; $6c56: $80
	rst  $30                                         ; $6c57: $f7
	ld   bc, $f717                                   ; $6c58: $01 $17 $f7
	add  b                                           ; $6c5b: $80
	rrca                                             ; $6c5c: $0f
	ld   bc, $0200                                   ; $6c5d: $01 $00 $02
	add  c                                           ; $6c60: $81
	rrca                                             ; $6c61: $0f
	ld   [bc], a                                     ; $6c62: $02
	ld   a, [bc]                                     ; $6c63: $0a
	rrca                                             ; $6c64: $0f
	rlca                                             ; $6c65: $07
	add  c                                           ; $6c66: $81
	rrca                                             ; $6c67: $0f
	inc  bc                                          ; $6c68: $03
	ld   [$f50d], sp                                 ; $6c69: $08 $0d $f5
	rst  $38                                         ; $6c6c: $ff
	add  d                                           ; $6c6d: $82
	ld   hl, sp+$01                                  ; $6c6e: $f8 $01
	add  a                                           ; $6c70: $87
	rlca                                             ; $6c71: $07
	add  b                                           ; $6c72: $80
	inc  b                                           ; $6c73: $04
	add  c                                           ; $6c74: $81
	add  h                                           ; $6c75: $84
	daa                                              ; $6c76: $27
	call nz, $8444                                   ; $6c77: $c4 $44 $84
	ld   [$170d], sp                                 ; $6c7a: $08 $0d $17
	ld   de, $2726                                   ; $6c7d: $11 $26 $27
	add  hl, hl                                      ; $6c80: $29
	ld   l, $7c                                      ; $6c81: $2e $7c
	dec  a                                           ; $6c83: $3d
	ld   a, e                                        ; $6c84: $7b
	ld   e, [hl]                                     ; $6c85: $5e
	and  h                                           ; $6c86: $a4
	ld   b, l                                        ; $6c87: $45
	ldh  a, [$f7]                                    ; $6c88: $f0 $f7
	adc  h                                           ; $6c8a: $8c
	ld   e, e                                        ; $6c8b: $5b
	ld   [hl], l                                     ; $6c8c: $75
	push bc                                          ; $6c8d: $c5
	or   h                                           ; $6c8e: $b4
	ld   [hl], h                                     ; $6c8f: $74
	add  d                                           ; $6c90: $82
	ldh  a, [c]                                      ; $6c91: $f2
	jr   jr_074_6cee                                 ; $6c92: $18 $5a

	cp   d                                           ; $6c94: $ba
	ld   a, [$5a1a]                                  ; $6c95: $fa $1a $5a
	db   $10                                         ; $6c98: $10
	cp   $0a                                         ; $6c99: $fe $0a
	rst  $38                                         ; $6c9b: $ff
	ld   sp, hl                                      ; $6c9c: $f9
	rst  $38                                         ; $6c9d: $ff
	ld   hl, sp-$7f                                  ; $6c9e: $f8 $81
	rst  $38                                         ; $6ca0: $ff
	add  d                                           ; $6ca1: $82
	ld   a, a                                        ; $6ca2: $7f
	add  b                                           ; $6ca3: $80
	ccf                                              ; $6ca4: $3f
	add  b                                           ; $6ca5: $80
	rra                                              ; $6ca6: $1f
	ld   bc, $ff07                                   ; $6ca7: $01 $07 $ff
	add  d                                           ; $6caa: $82
	rst  JumpTable                                         ; $6cab: $df
	ld   bc, $db5b                                   ; $6cac: $01 $5b $db
	add  b                                           ; $6caf: $80
	db   $dd                                         ; $6cb0: $dd
	add  b                                           ; $6cb1: $80
	reti                                             ; $6cb2: $d9


	add  b                                           ; $6cb3: $80
	call c, $d880                                    ; $6cb4: $dc $80 $d8
	nop                                              ; $6cb7: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cb8: $cf
	add  b                                           ; $6cb9: $80
	ld   b, l                                        ; $6cba: $45
	add  b                                           ; $6cbb: $80
	ld   c, e                                        ; $6cbc: $4b
	add  b                                           ; $6cbd: $80
	ld   b, l                                        ; $6cbe: $45
	add  b                                           ; $6cbf: $80
	ld   c, a                                        ; $6cc0: $4f
	ld   bc, $0040                                   ; $6cc1: $01 $40 $00
	add  b                                           ; $6cc4: $80
	xor  [hl]                                        ; $6cc5: $ae
	add  b                                           ; $6cc6: $80
	sbc  [hl]                                        ; $6cc7: $9e
	add  b                                           ; $6cc8: $80
	cp   a                                           ; $6cc9: $bf
	add  h                                           ; $6cca: $84
	rst  $38                                         ; $6ccb: $ff
	add  b                                           ; $6ccc: $80
	rst  JumpTable                                         ; $6ccd: $df
	add  b                                           ; $6cce: $80
	ld   [$ff01], sp                                 ; $6ccf: $08 $01 $ff
	rst  JumpTable                                         ; $6cd2: $df
	add  c                                           ; $6cd3: $81
	rst  $38                                         ; $6cd4: $ff
	nop                                              ; $6cd5: $00
	rst  JumpTable                                         ; $6cd6: $df
	add  a                                           ; $6cd7: $87
	rst  $38                                         ; $6cd8: $ff
	add  b                                           ; $6cd9: $80
	db   $fc                                         ; $6cda: $fc
	add  b                                           ; $6cdb: $80
	ldh  [$80], a                                    ; $6cdc: $e0 $80
	ld   bc, $ff80                                   ; $6cde: $01 $80 $ff
	db   $10                                         ; $6ce1: $10
	cp   $ff                                         ; $6ce2: $fe $ff
	ld   sp, hl                                      ; $6ce4: $f9
	rst  $38                                         ; $6ce5: $ff
	ldh  [rIE], a                                    ; $6ce6: $e0 $ff
	ret  z                                           ; $6ce8: $c8

	ldh  a, [$61]                                    ; $6ce9: $f0 $61
	ld   b, [hl]                                     ; $6ceb: $46
	sub  e                                           ; $6cec: $93
	sbc  h                                           ; $6ced: $9c

jr_074_6cee:
	daa                                              ; $6cee: $27
	ccf                                              ; $6cef: $3f
	ld   [hl-], a                                    ; $6cf0: $32
	rst  $38                                         ; $6cf1: $ff
	nop                                              ; $6cf2: $00
	add  c                                           ; $6cf3: $81
	rst  $38                                         ; $6cf4: $ff
	ld   a, [de]                                     ; $6cf5: $1a
	nop                                              ; $6cf6: $00
	add  b                                           ; $6cf7: $80
	ld   e, l                                        ; $6cf8: $5d
	nop                                              ; $6cf9: $00
	ld   c, c                                        ; $6cfa: $49
	rst  $38                                         ; $6cfb: $ff
	adc  b                                           ; $6cfc: $88
	push de                                          ; $6cfd: $d5
	ld   [hl], $aa                                   ; $6cfe: $36 $aa
	rst  $30                                         ; $6d00: $f7
	rst  $38                                         ; $6d01: $ff
	rra                                              ; $6d02: $1f
	rst  $38                                         ; $6d03: $ff
	rst  $28                                         ; $6d04: $ef
	rst  $38                                         ; $6d05: $ff
	inc  bc                                          ; $6d06: $03
	rst  $38                                         ; $6d07: $ff
	add  hl, bc                                      ; $6d08: $09
	rlca                                             ; $6d09: $07
	ld   [hl], c                                     ; $6d0a: $71
	sub  d                                           ; $6d0b: $92
	ld   hl, sp-$6f                                  ; $6d0c: $f8 $91
	db   $e4                                         ; $6d0e: $e4
	ld   hl, sp-$15                                  ; $6d0f: $f8 $eb
	add  a                                           ; $6d11: $87
	rst  $38                                         ; $6d12: $ff
	add  b                                           ; $6d13: $80
	add  b                                           ; $6d14: $80
	inc  b                                           ; $6d15: $04
	ret  nz                                          ; $6d16: $c0

	ld   b, b                                        ; $6d17: $40
	ld   h, b                                        ; $6d18: $60
	and  b                                           ; $6d19: $a0
	cp   a                                           ; $6d1a: $bf
	add  a                                           ; $6d1b: $87
	rst  $38                                         ; $6d1c: $ff
	add  b                                           ; $6d1d: $80
	ld   b, b                                        ; $6d1e: $40
	nop                                              ; $6d1f: $00
	ld   [$0081], sp                                 ; $6d20: $08 $81 $00
	nop                                              ; $6d23: $00
	rst  $30                                         ; $6d24: $f7
	add  a                                           ; $6d25: $87
	rst  $38                                         ; $6d26: $ff
	add  b                                           ; $6d27: $80
	ld   b, b                                        ; $6d28: $40
	add  b                                           ; $6d29: $80
	ld   bc, $4280                                   ; $6d2a: $01 $80 $42
	ld   bc, $efff                                   ; $6d2d: $01 $ff $ef
	add  b                                           ; $6d30: $80
	db   $ec                                         ; $6d31: $ec
	add  b                                           ; $6d32: $80
	jp   hl                                          ; $6d33: $e9


	dec  b                                           ; $6d34: $05
	ret  z                                           ; $6d35: $c8

	add  sp, -$4f                                    ; $6d36: $e8 $b1
	pop  bc                                          ; $6d38: $c1
	ret  nz                                          ; $6d39: $c0

	add  b                                           ; $6d3a: $80
	add  b                                           ; $6d3b: $80
	ld   de, $3002                                   ; $6d3c: $11 $02 $30
	db   $10                                         ; $6d3f: $10
	dec  h                                           ; $6d40: $25
	add  e                                           ; $6d41: $83
	dec  c                                           ; $6d42: $0d
	nop                                              ; $6d43: $00
	inc  b                                           ; $6d44: $04
	add  b                                           ; $6d45: $80
	dec  bc                                          ; $6d46: $0b
	rlca                                             ; $6d47: $07
	inc  c                                           ; $6d48: $0c
	nop                                              ; $6d49: $00
	dec  c                                           ; $6d4a: $0d
	ld   bc, $060a                                   ; $6d4b: $01 $0a $06
	inc  b                                           ; $6d4e: $04
	add  b                                           ; $6d4f: $80
	add  c                                           ; $6d50: $81
	add  h                                           ; $6d51: $84
	add  b                                           ; $6d52: $80
	db   $f4                                         ; $6d53: $f4
	add  b                                           ; $6d54: $80
	ld   c, a                                        ; $6d55: $4f
	nop                                              ; $6d56: $00
	ld   b, b                                        ; $6d57: $40
	add  b                                           ; $6d58: $80
	ret  nz                                          ; $6d59: $c0

	add  e                                           ; $6d5a: $83
	ld   b, b                                        ; $6d5b: $40
	ld   a, [bc]                                     ; $6d5c: $0a
	daa                                              ; $6d5d: $27
	add  sp, -$78                                    ; $6d5e: $e8 $88
	ld   c, b                                        ; $6d60: $48
	jr   c, jr_074_6ddb                              ; $6d61: $38 $78

	ld   [$3848], sp                                 ; $6d63: $08 $48 $38
	ld   a, b                                        ; $6d66: $78
	ld   [$4883], sp                                 ; $6d67: $08 $83 $48
	ld   [bc], a                                     ; $6d6a: $02
	pop  af                                          ; $6d6b: $f1
	ld   [bc], a                                     ; $6d6c: $02
	inc  bc                                          ; $6d6d: $03
	add  d                                           ; $6d6e: $82
	ld   [bc], a                                     ; $6d6f: $02
	add  b                                           ; $6d70: $80
	ld   [hl+], a                                    ; $6d71: $22
	add  l                                           ; $6d72: $85
	ld   h, d                                        ; $6d73: $62
	ld   [bc], a                                     ; $6d74: $02
	xor  d                                           ; $6d75: $aa
	ccf                                              ; $6d76: $3f
	rst  $30                                         ; $6d77: $f7
	add  c                                           ; $6d78: $81
	rlca                                             ; $6d79: $07

jr_074_6d7a:
	add  c                                           ; $6d7a: $81
	inc  bc                                          ; $6d7b: $03
	add  l                                           ; $6d7c: $85
	inc  hl                                          ; $6d7d: $23
	ld   bc, $dc74                                   ; $6d7e: $01 $74 $dc
	add  b                                           ; $6d81: $80
	ret  c                                           ; $6d82: $d8

	add  b                                           ; $6d83: $80
	call c, $d880                                    ; $6d84: $dc $80 $d8
	add  b                                           ; $6d87: $80
	call c, $d880                                    ; $6d88: $dc $80 $d8
	add  b                                           ; $6d8b: $80
	call c, $d880                                    ; $6d8c: $dc $80 $d8
	nop                                              ; $6d8f: $00
	adc  a                                           ; $6d90: $8f
	add  e                                           ; $6d91: $83
	cp   a                                           ; $6d92: $bf
	add  b                                           ; $6d93: $80
	ccf                                              ; $6d94: $3f
	add  b                                           ; $6d95: $80
	ld   a, $80                                      ; $6d96: $3e $80
	inc  a                                           ; $6d98: $3c
	add  b                                           ; $6d99: $80
	jr   c, jr_074_6da4                              ; $6d9a: $38 $08

	jr   nc, jr_074_6e0e                             ; $6d9c: $30 $70

	adc  b                                           ; $6d9e: $88
	ld   hl, sp-$18                                  ; $6d9f: $f8 $e8
	ldh  [rBGP], a                                   ; $6da1: $e0 $47
	rst  ToBoot                                         ; $6da3: $c7

jr_074_6da4:
	ld   l, h                                        ; $6da4: $6c
	add  c                                           ; $6da5: $81
	call c, $ac0c                                    ; $6da6: $dc $0c $ac
	db   $fc                                         ; $6da9: $fc
	ld   b, b                                        ; $6daa: $40
	ld   c, b                                        ; $6dab: $48
	ld   l, b                                        ; $6dac: $68
	ld   c, b                                        ; $6dad: $48
	ld   [hl-], a                                    ; $6dae: $32
	nop                                              ; $6daf: $00
	dec  h                                           ; $6db0: $25
	daa                                              ; $6db1: $27
	ld   hl, sp-$10                                  ; $6db2: $f8 $f0
	inc  b                                           ; $6db4: $04
	add  b                                           ; $6db5: $80
	ld   [$0c80], sp                                 ; $6db6: $08 $80 $0c
	add  d                                           ; $6db9: $82
	rrca                                             ; $6dba: $0f
	dec  b                                           ; $6dbb: $05
	inc  c                                           ; $6dbc: $0c
	ld   d, d                                        ; $6dbd: $52
	halt                                             ; $6dbe: $76
	sbc  e                                           ; $6dbf: $9b
	ret  nz                                          ; $6dc0: $c0

	ld   b, b                                        ; $6dc1: $40
	add  c                                           ; $6dc2: $81
	ld   a, a                                        ; $6dc3: $7f
	add  b                                           ; $6dc4: $80
	ld   b, b                                        ; $6dc5: $40
	ld   [bc], a                                     ; $6dc6: $02
	ld   a, a                                        ; $6dc7: $7f
	rst  $38                                         ; $6dc8: $ff
	ret  nz                                          ; $6dc9: $c0

	add  b                                           ; $6dca: $80
	rst  $38                                         ; $6dcb: $ff
	inc  bc                                          ; $6dcc: $03
	ld   a, a                                        ; $6dcd: $7f
	xor  d                                           ; $6dce: $aa
	rst  $30                                         ; $6dcf: $f7
	db   $dd                                         ; $6dd0: $dd
	add  b                                           ; $6dd1: $80
	nop                                              ; $6dd2: $00
	add  c                                           ; $6dd3: $81
	rst  $38                                         ; $6dd4: $ff
	add  b                                           ; $6dd5: $80
	nop                                              ; $6dd6: $00
	add  b                                           ; $6dd7: $80
	rst  $38                                         ; $6dd8: $ff
	nop                                              ; $6dd9: $00
	nop                                              ; $6dda: $00

jr_074_6ddb:
	add  c                                           ; $6ddb: $81
	rst  $38                                         ; $6ddc: $ff
	ld   [bc], a                                     ; $6ddd: $02
	ld   c, e                                        ; $6dde: $4b
	or   [hl]                                        ; $6ddf: $b6
	db   $fc                                         ; $6de0: $fc
	add  b                                           ; $6de1: $80
	ld   bc, $ff81                                   ; $6de2: $01 $81 $ff
	add  b                                           ; $6de5: $80
	ld   bc, $ff80                                   ; $6de6: $01 $80 $ff
	nop                                              ; $6de9: $00
	ld   bc, $ff81                                   ; $6dea: $01 $81 $ff
	ld   b, $5f                                      ; $6ded: $06 $5f
	ldh  [$90], a                                    ; $6def: $e0 $90
	ldh  a, [rAUD4GO]                                ; $6df1: $f0 $23
	dec  bc                                          ; $6df3: $0b
	db   $10                                         ; $6df4: $10
	add  d                                           ; $6df5: $82
	jr   jr_074_6d7a                                 ; $6df6: $18 $82

	ld   hl, sp+$07                                  ; $6df8: $f8 $07
	jr   jr_074_6e04                                 ; $6dfa: $18 $08

	inc  b                                           ; $6dfc: $04
	ld   d, h                                        ; $6dfd: $54
	ld   b, [hl]                                     ; $6dfe: $46
	rst  $28                                         ; $6dff: $ef
	adc  $3a                                         ; $6e00: $ce $3a
	add  e                                           ; $6e02: $83
	rla                                              ; $6e03: $17

jr_074_6e04:
	dec  b                                           ; $6e04: $05
	inc  d                                           ; $6e05: $14
	ld   a, [bc]                                     ; $6e06: $0a
	ld   [$4a0c], sp                                 ; $6e07: $08 $0c $4a
	ld   b, d                                        ; $6e0a: $42
	add  b                                           ; $6e0b: $80
	ld   c, a                                        ; $6e0c: $4f
	add  b                                           ; $6e0d: $80

jr_074_6e0e:
	ld   hl, sp-$7d                                  ; $6e0e: $f8 $83
	inc  b                                           ; $6e10: $04
	add  d                                           ; $6e11: $82
	rlca                                             ; $6e12: $07
	ld   b, $04                                      ; $6e13: $06 $04
	ld   [hl], c                                     ; $6e15: $71
	ld   sp, $8030                                   ; $6e16: $31 $30 $80
	add  c                                           ; $6e19: $81
	pop  af                                          ; $6e1a: $f1
	add  b                                           ; $6e1b: $80
	ldh  a, [$80]                                    ; $6e1c: $f0 $80
	sub  c                                           ; $6e1e: $91
	add  b                                           ; $6e1f: $80
	ldh  a, [rSB]                                    ; $6e20: $f0 $01
	add  c                                           ; $6e22: $81
	pop  af                                          ; $6e23: $f1
	add  c                                           ; $6e24: $81
	ldh  a, [$81]                                    ; $6e25: $f0 $81
	nop                                              ; $6e27: $00
	add  b                                           ; $6e28: $80
	ld   [$0780], sp                                 ; $6e29: $08 $80 $07
	add  [hl]                                        ; $6e2c: $86
	inc  b                                           ; $6e2d: $04
	add  h                                           ; $6e2e: $84
	ld   b, b                                        ; $6e2f: $40
	add  b                                           ; $6e30: $80
	rst  $38                                         ; $6e31: $ff
	add  [hl]                                        ; $6e32: $86
	inc  b                                           ; $6e33: $04
	nop                                              ; $6e34: $00
	ld   b, a                                        ; $6e35: $47
	add  d                                           ; $6e36: $82
	ld   c, b                                        ; $6e37: $48
	nop                                              ; $6e38: $00
	ld   c, a                                        ; $6e39: $4f
	add  b                                           ; $6e3a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e3b: $cf
	nop                                              ; $6e3c: $00
	ld   c, a                                        ; $6e3d: $4f
	add  l                                           ; $6e3e: $85
	ld   c, b                                        ; $6e3f: $48
	nop                                              ; $6e40: $00
	ldh  a, [$82]                                    ; $6e41: $f0 $82
	ld   h, d                                        ; $6e43: $62
	add  d                                           ; $6e44: $82
	ldh  [c], a                                      ; $6e45: $e2
	add  d                                           ; $6e46: $82
	ld   [bc], a                                     ; $6e47: $02
	add  b                                           ; $6e48: $80
	ld   [hl+], a                                    ; $6e49: $22
	ld   bc, $6662                                   ; $6e4a: $01 $62 $66
	add  b                                           ; $6e4d: $80
	inc  hl                                          ; $6e4e: $23
	add  d                                           ; $6e4f: $82
	ld   h, e                                        ; $6e50: $63
	add  d                                           ; $6e51: $82
	inc  bc                                          ; $6e52: $03
	add  e                                           ; $6e53: $83

jr_074_6e54:
	inc  hl                                          ; $6e54: $23
	ld   de, $f8d6                                   ; $6e55: $11 $d6 $f8
	ld   a, b                                        ; $6e58: $78
	ld   hl, sp-$66                                  ; $6e59: $f8 $9a
	db   $fc                                         ; $6e5b: $fc
	ld   l, h                                        ; $6e5c: $6c
	db   $fc                                         ; $6e5d: $fc
	cp   [hl]                                        ; $6e5e: $be
	cp   $df                                         ; $6e5f: $fe $df
	rst  $38                                         ; $6e61: $ff
	rst  $28                                         ; $6e62: $ef
	rst  $38                                         ; $6e63: $ff
	scf                                              ; $6e64: $37
	rst  $38                                         ; $6e65: $ff
	ld   b, a                                        ; $6e66: $47
	ld   a, a                                        ; $6e67: $7f
	add  d                                           ; $6e68: $82
	ld   b, b                                        ; $6e69: $40
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	add  b                                           ; $6e6c: $80
	ld   bc, $0081                                   ; $6e6d: $01 $81 $00
	add  b                                           ; $6e70: $80
	ccf                                              ; $6e71: $3f
	add  b                                           ; $6e72: $80
	ld   bc, $0082                                   ; $6e73: $01 $82 $00
	ld   [$00e0], sp                                 ; $6e76: $08 $e0 $00
	stop                                             ; $6e79: $10 $00
	add  a                                           ; $6e7b: $87
	ld   b, b                                        ; $6e7c: $40
	ld   c, b                                        ; $6e7d: $48
	ld   [hl], e                                     ; $6e7e: $73
	di                                               ; $6e7f: $f3
	add  b                                           ; $6e80: $80
	rla                                              ; $6e81: $17
	ld   [bc], a                                     ; $6e82: $02
	ld   a, $3d                                      ; $6e83: $3e $3d
	db   $fc                                         ; $6e85: $fc
	add  d                                           ; $6e86: $82
	ld   c, h                                        ; $6e87: $4c
	add  d                                           ; $6e88: $82
	inc  c                                           ; $6e89: $0c
	ld   bc, $cc4c                                   ; $6e8a: $01 $4c $cc
	add  c                                           ; $6e8d: $81
	ld   a, h                                        ; $6e8e: $7c
	ld   bc, $3ffc                                   ; $6e8f: $01 $fc $3f
	add  b                                           ; $6e92: $80
	ld   b, b                                        ; $6e93: $40
	adc  d                                           ; $6e94: $8a
	ld   b, h                                        ; $6e95: $44
	ld   bc, $9c5c                                   ; $6e96: $01 $5c $9c
	add  b                                           ; $6e99: $80
	nop                                              ; $6e9a: $00
	adc  d                                           ; $6e9b: $8a
	jr   nz, jr_074_6e9f                             ; $6e9c: $20 $01

	db   $e3                                         ; $6e9e: $e3

jr_074_6e9f:
	ldh  [c], a                                      ; $6e9f: $e2
	add  b                                           ; $6ea0: $80
	ld   bc, $858a                                   ; $6ea1: $01 $8a $85
	inc  bc                                          ; $6ea4: $03
	sbc  l                                           ; $6ea5: $9d
	ld   l, h                                        ; $6ea6: $6c
	rra                                              ; $6ea7: $1f
	ld   [$1887], sp                                 ; $6ea8: $08 $87 $18
	inc  bc                                          ; $6eab: $03
	rrca                                             ; $6eac: $0f
	rra                                              ; $6ead: $1f
	add  hl, bc                                      ; $6eae: $09
	add  hl, de                                      ; $6eaf: $19
	add  d                                           ; $6eb0: $82
	nop                                              ; $6eb1: $00
	ld   [bc], a                                     ; $6eb2: $02

jr_074_6eb3:
	ld   c, $00                                      ; $6eb3: $0e $00
	ld   [de], a                                     ; $6eb5: $12
	add  c                                           ; $6eb6: $81
	inc  b                                           ; $6eb7: $04
	ld   [bc], a                                     ; $6eb8: $02
	ld   h, a                                        ; $6eb9: $67
	jr   jr_074_6e54                                 ; $6eba: $18 $98

	add  b                                           ; $6ebc: $80
	rra                                              ; $6ebd: $1f
	ld   [bc], a                                     ; $6ebe: $02
	or   $fd                                         ; $6ebf: $f6 $fd
	db   $f4                                         ; $6ec1: $f4
	add  b                                           ; $6ec2: $80
	inc  h                                           ; $6ec3: $24
	add  h                                           ; $6ec4: $84
	inc  b                                           ; $6ec5: $04
	add  b                                           ; $6ec6: $80
	add  h                                           ; $6ec7: $84
	add  b                                           ; $6ec8: $80
	call nz, $e480                                   ; $6ec9: $c4 $80 $e4
	ld   bc, $01f1                                   ; $6ecc: $01 $f1 $01
	add  b                                           ; $6ecf: $80
	nop                                              ; $6ed0: $00
	add  b                                           ; $6ed1: $80
	ld   bc, $0080                                   ; $6ed2: $01 $80 $00
	add  b                                           ; $6ed5: $80
	ld   bc, $0080                                   ; $6ed6: $01 $80 $00
	add  b                                           ; $6ed9: $80
	ld   bc, $0002                                   ; $6eda: $01 $02 $00
	jr   nz, jr_074_6eb3                             ; $6edd: $20 $d4

	add  l                                           ; $6edf: $85
	inc  b                                           ; $6ee0: $04
	add  b                                           ; $6ee1: $80
	rlca                                             ; $6ee2: $07
	add  b                                           ; $6ee3: $80
	ld   [$0082], sp                                 ; $6ee4: $08 $82 $00
	add  h                                           ; $6ee7: $84
	inc  b                                           ; $6ee8: $04
	add  b                                           ; $6ee9: $80
	rra                                              ; $6eea: $1f
	add  b                                           ; $6eeb: $80
	add  b                                           ; $6eec: $80
	add  h                                           ; $6eed: $84
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	ld   b, a                                        ; $6ef0: $47

jr_074_6ef1:
	add  c                                           ; $6ef1: $81
	ld   c, b                                        ; $6ef2: $48
	add  b                                           ; $6ef3: $80
	ret  z                                           ; $6ef4: $c8

	add  e                                           ; $6ef5: $83
	ld   [$0f00], sp                                 ; $6ef6: $08 $00 $0f
	add  c                                           ; $6ef9: $81
	ld   c, a                                        ; $6efa: $4f
	ld   bc, $f048                                   ; $6efb: $01 $48 $f0
	adc  b                                           ; $6efe: $88
	ld   h, d                                        ; $6eff: $62
	add  d                                           ; $6f00: $82
	ldh  [c], a                                      ; $6f01: $e2
	ld   bc, $0602                                   ; $6f02: $01 $02 $06
	add  h                                           ; $6f05: $84
	inc  hl                                          ; $6f06: $23
	add  d                                           ; $6f07: $82
	ld   h, e                                        ; $6f08: $63
	add  d                                           ; $6f09: $82
	inc  bc                                          ; $6f0a: $03
	ld   bc, $a723                                   ; $6f0b: $01 $23 $a7
	add  d                                           ; $6f0e: $82
	ld   c, h                                        ; $6f0f: $4c
	add  c                                           ; $6f10: $81
	ld   e, b                                        ; $6f11: $58
	inc  bc                                          ; $6f12: $03
	sbc  b                                           ; $6f13: $98
	ret  nz                                          ; $6f14: $c0

	add  b                                           ; $6f15: $80
	pop  hl                                          ; $6f16: $e1
	add  b                                           ; $6f17: $80
	pop  af                                          ; $6f18: $f1
	dec  b                                           ; $6f19: $05
	dec  e                                           ; $6f1a: $1d
	db   $fc                                         ; $6f1b: $fc
	cp   h                                           ; $6f1c: $bc
	ld   b, d                                        ; $6f1d: $42
	ld   b, c                                        ; $6f1e: $41
	ld   b, b                                        ; $6f1f: $40
	add  d                                           ; $6f20: $82
	ld   b, c                                        ; $6f21: $41
	inc  bc                                          ; $6f22: $03
	ccf                                              ; $6f23: $3f
	ld   a, $51                                      ; $6f24: $3e $51
	ld   d, b                                        ; $6f26: $50
	add  b                                           ; $6f27: $80
	ld   b, c                                        ; $6f28: $41
	add  b                                           ; $6f29: $80
	ld   b, e                                        ; $6f2a: $43
	inc  b                                           ; $6f2b: $04

Jump_074_6f2c:
	rst  $38                                         ; $6f2c: $ff
	ld   h, a                                        ; $6f2d: $67
	rst  $20                                         ; $6f2e: $e7
	inc  sp                                          ; $6f2f: $33
	or   e                                           ; $6f30: $b3
	add  b                                           ; $6f31: $80
	dec  d                                           ; $6f32: $15
	add  b                                           ; $6f33: $80
	ld   a, $80                                      ; $6f34: $3e $80
	ld   a, [$1980]                                  ; $6f36: $fa $80 $19
	add  b                                           ; $6f39: $80
	ccf                                              ; $6f3a: $3f
	inc  bc                                          ; $6f3b: $03
	ld   e, [hl]                                     ; $6f3c: $5e
	db   $dd                                         ; $6f3d: $dd
	db   $fc                                         ; $6f3e: $fc
	ld   a, h                                        ; $6f3f: $7c
	add  b                                           ; $6f40: $80
	inc  a                                           ; $6f41: $3c
	add  b                                           ; $6f42: $80
	db   $fc                                         ; $6f43: $fc
	add  d                                           ; $6f44: $82
	inc  a                                           ; $6f45: $3c
	add  d                                           ; $6f46: $82
	ld   a, h                                        ; $6f47: $7c
	ld   bc, $ff3c                                   ; $6f48: $01 $3c $ff
	add  b                                           ; $6f4b: $80
	ld   b, b                                        ; $6f4c: $40
	add  [hl]                                        ; $6f4d: $86
	ld   b, h                                        ; $6f4e: $44
	add  b                                           ; $6f4f: $80
	ld   e, h                                        ; $6f50: $5c
	add  b                                           ; $6f51: $80
	ld   b, b                                        ; $6f52: $40
	ld   bc, $8444                                   ; $6f53: $01 $44 $84
	add  b                                           ; $6f56: $80
	nop                                              ; $6f57: $00
	add  [hl]                                        ; $6f58: $86
	jr   nz, @-$7e                                   ; $6f59: $20 $80

	db   $e3                                         ; $6f5b: $e3
	add  b                                           ; $6f5c: $80
	nop                                              ; $6f5d: $00
	ld   bc, $2120                                   ; $6f5e: $01 $20 $21
	add  b                                           ; $6f61: $80
	ld   bc, $0580                                   ; $6f62: $01 $80 $05
	add  h                                           ; $6f65: $84
	add  l                                           ; $6f66: $85
	add  b                                           ; $6f67: $80
	sbc  l                                           ; $6f68: $9d
	add  b                                           ; $6f69: $80
	ld   bc, $8501                                   ; $6f6a: $01 $01 $85
	ld   h, e                                        ; $6f6d: $63
	add  e                                           ; $6f6e: $83
	jr   jr_074_6ef1                                 ; $6f6f: $18 $80

	add  hl, de                                      ; $6f71: $19
	ld   [bc], a                                     ; $6f72: $02
	rrca                                             ; $6f73: $0f
	ld   e, $09                                      ; $6f74: $1e $09
	add  e                                           ; $6f76: $83
	jr   jr_074_6f79                                 ; $6f77: $18 $00

jr_074_6f79:
	ld   a, a                                        ; $6f79: $7f
	add  b                                           ; $6f7a: $80
	inc  l                                           ; $6f7b: $2c
	ld   bc, $9616                                   ; $6f7c: $01 $16 $96
	add  b                                           ; $6f7f: $80
	ld   h, $80                                      ; $6f80: $26 $80
	ccf                                              ; $6f82: $3f
	inc  bc                                          ; $6f83: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f84: $cf
	rrca                                             ; $6f85: $0f
	add  hl, sp                                      ; $6f86: $39
	ld   sp, hl                                      ; $6f87: $f9
	add  b                                           ; $6f88: $80
	ld   c, h                                        ; $6f89: $4c
	inc  bc                                          ; $6f8a: $03
	rra                                              ; $6f8b: $1f
	inc  b                                           ; $6f8c: $04
	db   $e4                                         ; $6f8d: $e4
	db   $f4                                         ; $6f8e: $f4
	add  b                                           ; $6f8f: $80
	ld   [hl], h                                     ; $6f90: $74
	add  b                                           ; $6f91: $80
	inc  [hl]                                        ; $6f92: $34
	add  c                                           ; $6f93: $81
	db   $f4                                         ; $6f94: $f4
	nop                                              ; $6f95: $00
	db   $e4                                         ; $6f96: $e4
	add  b                                           ; $6f97: $80
	ld   h, h                                        ; $6f98: $64
	inc  b                                           ; $6f99: $04
	db   $e4                                         ; $6f9a: $e4
	db   $f4                                         ; $6f9b: $f4
	or   h                                           ; $6f9c: $b4
	or   c                                           ; $6f9d: $b1
	ld   bc, $0080                                   ; $6f9e: $01 $80 $00
	add  b                                           ; $6fa1: $80
	ld   bc, $0080                                   ; $6fa2: $01 $80 $00
	add  b                                           ; $6fa5: $80
	ld   bc, $0003                                   ; $6fa6: $01 $03 $00
	jr   nz, jr_074_6fcc                             ; $6fa9: $20 $21

	ld   bc, $0080                                   ; $6fab: $01 $80 $00
	ld   bc, $03f3                                   ; $6fae: $01 $f3 $03
	add  b                                           ; $6fb1: $80
	ld   c, $88                                      ; $6fb2: $0e $88
	ld   [bc], a                                     ; $6fb4: $02
	add  b                                           ; $6fb5: $80
	nop                                              ; $6fb6: $00
	add  b                                           ; $6fb7: $80
	ld   e, $86                                      ; $6fb8: $1e $86
	ld   b, h                                        ; $6fba: $44
	add  b                                           ; $6fbb: $80
	ld   b, b                                        ; $6fbc: $40
	add  b                                           ; $6fbd: $80
	ld   e, b                                        ; $6fbe: $58
	add  b                                           ; $6fbf: $80
	ld   h, b                                        ; $6fc0: $60
	nop                                              ; $6fc1: $00

jr_074_6fc2:
	ld   b, a                                        ; $6fc2: $47
	adc  c                                           ; $6fc3: $89
	ld   c, b                                        ; $6fc4: $48
	add  b                                           ; $6fc5: $80
	ld   [$4880], sp                                 ; $6fc6: $08 $80 $48
	nop                                              ; $6fc9: $00
	ldh  a, [$80]                                    ; $6fca: $f0 $80

jr_074_6fcc:
	ld   [bc], a                                     ; $6fcc: $02
	add  b                                           ; $6fcd: $80
	ld   [hl+], a                                    ; $6fce: $22
	adc  b                                           ; $6fcf: $88
	ld   h, d                                        ; $6fd0: $62
	ld   bc, $7e7a                                   ; $6fd1: $01 $7a $7e
	adc  b                                           ; $6fd4: $88
	inc  hl                                          ; $6fd5: $23
	add  c                                           ; $6fd6: $81
	ld   h, e                                        ; $6fd7: $63
	inc  bc                                          ; $6fd8: $03
	ld   h, a                                        ; $6fd9: $67
	rlca                                             ; $6fda: $07
	ld   d, h                                        ; $6fdb: $54
	call c, $d880                                    ; $6fdc: $dc $80 $d8
	inc  bc                                          ; $6fdf: $03
	rst  $10                                         ; $6fe0: $d7
	rst  JumpTable                                         ; $6fe1: $df
	ret  nc                                          ; $6fe2: $d0

	ret  c                                           ; $6fe3: $d8

	add  b                                           ; $6fe4: $80
	call c, $d880                                    ; $6fe5: $dc $80 $d8
	add  b                                           ; $6fe8: $80
	call c, $f880                                    ; $6fe9: $dc $80 $f8
	inc  bc                                          ; $6fec: $03
	jr   nz, @+$52                                   ; $6fed: $20 $50

	ld   a, a                                        ; $6fef: $7f
	ld   a, [hl]                                     ; $6ff0: $7e
	add  b                                           ; $6ff1: $80
	ret  nz                                          ; $6ff2: $c0

	ld   bc, $4041                                   ; $6ff3: $01 $41 $40
	add  d                                           ; $6ff6: $82
	ld   b, c                                        ; $6ff7: $41
	add  b                                           ; $6ff8: $80
	ld   b, b                                        ; $6ff9: $40
	add  b                                           ; $6ffa: $80
	ld   a, a                                        ; $6ffb: $7f
	ld   [bc], a                                     ; $6ffc: $02
	db   $fd                                         ; $6ffd: $fd
	add  e                                           ; $6ffe: $83
	add  l                                           ; $6fff: $85
	add  b                                           ; $7000: $80
	inc  l                                           ; $7001: $2c
	ld   bc, $8164                                   ; $7002: $01 $64 $81
	add  c                                           ; $7005: $81
	rra                                              ; $7006: $1f
	inc  bc                                          ; $7007: $03
	add  d                                           ; $7008: $82
	db   $fc                                         ; $7009: $fc
	ld   b, d                                        ; $700a: $42
	ld   a, $80                                      ; $700b: $3e $80
	cp   [hl]                                        ; $700d: $be
	nop                                              ; $700e: $00
	rst  $38                                         ; $700f: $ff
	add  e                                           ; $7010: $83
	ld   a, h                                        ; $7011: $7c
	ld   a, [bc]                                     ; $7012: $0a
	ld   a, b                                        ; $7013: $78
	ld   a, h                                        ; $7014: $7c
	ld   a, e                                        ; $7015: $7b
	ld   a, a                                        ; $7016: $7f
	ld   [hl], h                                     ; $7017: $74
	ld   a, h                                        ; $7018: $7c
	ld   l, e                                        ; $7019: $6b
	rst  $38                                         ; $701a: $ff
	inc  d                                           ; $701b: $14
	ld   hl, sp-$31                                  ; $701c: $f8 $cf
	add  l                                           ; $701e: $85
	ld   b, h                                        ; $701f: $44
	nop                                              ; $7020: $00
	call nz, $dc80                                   ; $7021: $c4 $80 $dc
	add  c                                           ; $7024: $81
	ret  nz                                          ; $7025: $c0

	add  b                                           ; $7026: $80
	ld   b, b                                        ; $7027: $40
	nop                                              ; $7028: $00
	add  b                                           ; $7029: $80
	add  [hl]                                        ; $702a: $86
	jr   nz, @-$7e                                   ; $702b: $20 $80

	db   $e3                                         ; $702d: $e3
	add  e                                           ; $702e: $83
	nop                                              ; $702f: $00
	nop                                              ; $7030: $00
	ld   bc, $8586                                   ; $7031: $01 $86 $85
	add  b                                           ; $7034: $80
	sbc  l                                           ; $7035: $9d
	add  e                                           ; $7036: $83
	ld   bc, $e607                                   ; $7037: $01 $07 $e6
	jr   jr_074_7046                                 ; $703a: $18 $0a

	ld   a, [de]                                     ; $703c: $1a
	ld   a, [bc]                                     ; $703d: $0a
	jr   jr_074_705b                                 ; $703e: $18 $1b

	jr   jr_074_6fc2                                 ; $7040: $18 $80

	ld   sp, hl                                      ; $7042: $f9
	add  b                                           ; $7043: $80
	sbc  l                                           ; $7044: $9d
	add  b                                           ; $7045: $80

jr_074_7046:
	db   $fc                                         ; $7046: $fc
	ld   [bc], a                                     ; $7047: $02
	adc  e                                           ; $7048: $8b
	adc  a                                           ; $7049: $8f
	ei                                               ; $704a: $fb
	add  b                                           ; $704b: $80
	ld   [de], a                                     ; $704c: $12
	add  b                                           ; $704d: $80
	inc  hl                                          ; $704e: $23
	ld   bc, $c120                                   ; $704f: $01 $20 $c1
	add  c                                           ; $7052: $81
	rra                                              ; $7053: $1f
	inc  bc                                          ; $7054: $03
	add  d                                           ; $7055: $82
	db   $fc                                         ; $7056: $fc
	ld   b, d                                        ; $7057: $42
	ld   a, $80                                      ; $7058: $3e $80
	cp   [hl]                                        ; $705a: $be

jr_074_705b:
	inc  b                                           ; $705b: $04
	rst  $30                                         ; $705c: $f7
	inc  [hl]                                        ; $705d: $34

jr_074_705e:
	inc  a                                           ; $705e: $3c
	ld   a, h                                        ; $705f: $7c
	ld   [hl], h                                     ; $7060: $74
	add  b                                           ; $7061: $80
	inc  [hl]                                        ; $7062: $34
	nop                                              ; $7063: $00
	ld   [hl], h                                     ; $7064: $74
	add  b                                           ; $7065: $80
	ld   [hl], a                                     ; $7066: $77
	rlca                                             ; $7067: $07
	ld   [hl], c                                     ; $7068: $71
	ld   a, c                                        ; $7069: $79
	ld   l, a                                        ; $706a: $6f
	rst  $38                                         ; $706b: $ff
	jr   c, jr_074_705e                              ; $706c: $38 $f0

	add  hl, hl                                      ; $706e: $29
	add  hl, bc                                      ; $706f: $09
	add  b                                           ; $7070: $80
	ld   [$0f80], sp                                 ; $7071: $08 $80 $0f
	add  b                                           ; $7074: $80
	inc  c                                           ; $7075: $0c
	inc  bc                                          ; $7076: $03
	dec  c                                           ; $7077: $0d
	dec  l                                           ; $7078: $2d
	ld   l, $8e                                      ; $7079: $2e $8e
	add  b                                           ; $707b: $80
	adc  a                                           ; $707c: $8f
	add  b                                           ; $707d: $80
	rrca                                             ; $707e: $0f
	jr   nc, jr_074_7083                             ; $707f: $30 $02

	add  [hl]                                        ; $7081: $86
	nop                                              ; $7082: $00

jr_074_7083:
	nop                                              ; $7083: $00
	rrca                                             ; $7084: $0f
	add  b                                           ; $7085: $80
	ld   b, $81                                      ; $7086: $06 $81
	nop                                              ; $7088: $00
	add  b                                           ; $7089: $80
	inc  bc                                          ; $708a: $03
	nop                                              ; $708b: $00
	rrca                                             ; $708c: $0f
	add  l                                           ; $708d: $85
	nop                                              ; $708e: $00
	ld   [$63fc], sp                                 ; $708f: $08 $fc $63
	ld   l, a                                        ; $7092: $6f
	sbc  a                                           ; $7093: $9f
	sub  a                                           ; $7094: $97
	sbc  a                                           ; $7095: $9f
	sbc  [hl]                                        ; $7096: $9e
	adc  a                                           ; $7097: $8f
	halt                                             ; $7098: $76
	add  l                                           ; $7099: $85
	nop                                              ; $709a: $00
	nop                                              ; $709b: $00
	rrca                                             ; $709c: $0f
	add  c                                           ; $709d: $81
	ld   hl, sp+$04                                  ; $709e: $f8 $04
	ret  z                                           ; $70a0: $c8

	ld   hl, sp+$38                                  ; $70a1: $f8 $38
	ld   hl, sp+$07                                  ; $70a3: $f8 $07
	add  l                                           ; $70a5: $85
	nop                                              ; $70a6: $00
	ld   [$3ffe], sp                                 ; $70a7: $08 $fe $3f
	scf                                              ; $70aa: $37
	ld   a, $26                                      ; $70ab: $3e $26
	dec  a                                           ; $70ad: $3d
	dec  l                                           ; $70ae: $2d
	ld   [hl], d                                     ; $70af: $72
	adc  h                                           ; $70b0: $8c
	add  l                                           ; $70b1: $85
	nop                                              ; $70b2: $00
	ld   [bc], a                                     ; $70b3: $02
	ccf                                              ; $70b4: $3f
	db   $fc                                         ; $70b5: $fc
	inc  a                                           ; $70b6: $3c
	add  b                                           ; $70b7: $80
	pop  bc                                          ; $70b8: $c1
	add  b                                           ; $70b9: $80
	rrca                                             ; $70ba: $0f
	ld   bc, $817e                                   ; $70bb: $01 $7e $81
	add  l                                           ; $70be: $85
	nop                                              ; $70bf: $00
	nop                                              ; $70c0: $00
	rst  $38                                         ; $70c1: $ff
	add  b                                           ; $70c2: $80
	ccf                                              ; $70c3: $3f
	add  b                                           ; $70c4: $80
	db   $fc                                         ; $70c5: $fc
	inc  bc                                          ; $70c6: $03
	ret  nz                                          ; $70c7: $c0

	add  $06                                         ; $70c8: $c6 $06
	rst  $38                                         ; $70ca: $ff
	add  l                                           ; $70cb: $85
	nop                                              ; $70cc: $00
	nop                                              ; $70cd: $00
	db   $fd                                         ; $70ce: $fd
	add  b                                           ; $70cf: $80
	adc  h                                           ; $70d0: $8c
	nop                                              ; $70d1: $00
	inc  e                                           ; $70d2: $1c
	add  b                                           ; $70d3: $80
	db   $dd                                         ; $70d4: $dd
	ld   [bc], a                                     ; $70d5: $02
	dec  e                                           ; $70d6: $1d
	db   $dd                                         ; $70d7: $dd
	ld   hl, $0085                                   ; $70d8: $21 $85 $00
	inc  bc                                          ; $70db: $03
	dec  sp                                          ; $70dc: $3b
	rst  JumpTable                                         ; $70dd: $df
	ccf                                              ; $70de: $3f
	rst  $38                                         ; $70df: $ff
	add  b                                           ; $70e0: $80
	db   $fc                                         ; $70e1: $fc
	ld   [bc], a                                     ; $70e2: $02
	rst  $20                                         ; $70e3: $e7
	ret  nz                                          ; $70e4: $c0

	inc  bc                                          ; $70e5: $03
	add  l                                           ; $70e6: $85
	nop                                              ; $70e7: $00
	ld   [$f969], sp                                 ; $70e8: $08 $69 $f9
	db   $d3                                         ; $70eb: $d3
	ret  nz                                          ; $70ec: $c0

	cp   h                                           ; $70ed: $bc
	inc  bc                                          ; $70ee: $03
	jp   $c03f                                       ; $70ef: $c3 $3f $c0


	add  l                                           ; $70f2: $85
	nop                                              ; $70f3: $00
	nop                                              ; $70f4: $00
	sub  a                                           ; $70f5: $97
	add  b                                           ; $70f6: $80
	sbc  l                                           ; $70f7: $9d
	dec  b                                           ; $70f8: $05
	dec  e                                           ; $70f9: $1d
	ld   e, a                                        ; $70fa: $5f
	sbc  a                                           ; $70fb: $9f
	rst  $38                                         ; $70fc: $ff
	adc  a                                           ; $70fd: $8f
	ld   a, [hl-]                                    ; $70fe: $3a
	add  l                                           ; $70ff: $85
	nop                                              ; $7100: $00
	ld   bc, $71ae                                   ; $7101: $01 $ae $71
	add  c                                           ; $7104: $81
	ld   [hl], b                                     ; $7105: $70
	inc  bc                                          ; $7106: $03
	ld   [hl], c                                     ; $7107: $71
	halt                                             ; $7108: $76
	ld   [hl], c                                     ; $7109: $71
	reti                                             ; $710a: $d9


	add  l                                           ; $710b: $85
	nop                                              ; $710c: $00
	ld   [$5fa5], sp                                 ; $710d: $08 $a5 $5f
	sub  b                                           ; $7110: $90
	rst  $38                                         ; $7111: $ff
	ret  nz                                          ; $7112: $c0

	rst  $38                                         ; $7113: $ff
	nop                                              ; $7114: $00
	rst  $38                                         ; $7115: $ff
	ld   d, l                                        ; $7116: $55
	add  l                                           ; $7117: $85
	nop                                              ; $7118: $00
	ld   [$ff55], sp                                 ; $7119: $08 $55 $ff
	nop                                              ; $711c: $00
	rst  $38                                         ; $711d: $ff
	nop                                              ; $711e: $00
	rst  $38                                         ; $711f: $ff
	nop                                              ; $7120: $00
	rst  $38                                         ; $7121: $ff
	ld   d, l                                        ; $7122: $55
	add  l                                           ; $7123: $85
	nop                                              ; $7124: $00
	ld   [$ff5f], sp                                 ; $7125: $08 $5f $ff
	rrca                                             ; $7128: $0f
	rst  $38                                         ; $7129: $ff
	rrca                                             ; $712a: $0f
	rst  $38                                         ; $712b: $ff
	ld   [$57ff], sp                                 ; $712c: $08 $ff $57
	add  l                                           ; $712f: $85
	nop                                              ; $7130: $00
	nop                                              ; $7131: $00
	rst  ToBoot                                         ; $7132: $c7
	add  c                                           ; $7133: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7134: $cf
	inc  b                                           ; $7135: $04
	xor  a                                           ; $7136: $af
	rst  $28                                         ; $7137: $ef
	ld   l, a                                        ; $7138: $6f
	rst  $28                                         ; $7139: $ef
	ret  z                                           ; $713a: $c8

	add  l                                           ; $713b: $85
	nop                                              ; $713c: $00
	ld   [$f35f], sp                                 ; $713d: $08 $5f $f3
	db   $fd                                         ; $7140: $fd
	rst  $38                                         ; $7141: $ff
	db   $fd                                         ; $7142: $fd
	db   $fc                                         ; $7143: $fc
	ldh  [rIE], a                                    ; $7144: $e0 $ff
	or   b                                           ; $7146: $b0
	add  l                                           ; $7147: $85
	nop                                              ; $7148: $00
	inc  b                                           ; $7149: $04
	db   $f4                                         ; $714a: $f4
	dec  sp                                          ; $714b: $3b
	or   b                                           ; $714c: $b0
	add  a                                           ; $714d: $87
	rlca                                             ; $714e: $07
	add  b                                           ; $714f: $80
	ld   hl, sp+$01                                  ; $7150: $f8 $01
	inc  bc                                          ; $7152: $03
	db   $fc                                         ; $7153: $fc
	add  l                                           ; $7154: $85
	nop                                              ; $7155: $00
	ld   [bc], a                                     ; $7156: $02
	dec  bc                                          ; $7157: $0b
	rst  JumpTable                                         ; $7158: $df
	ld   e, e                                        ; $7159: $5b
	add  b                                           ; $715a: $80
	ret  c                                           ; $715b: $d8

	inc  bc                                          ; $715c: $03
	ld   e, a                                        ; $715d: $5f
	rla                                              ; $715e: $17
	ld   hl, sp+$3f                                  ; $715f: $f8 $3f
	add  l                                           ; $7161: $85
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	rst  $38                                         ; $7164: $ff
	add  b                                           ; $7165: $80
	add  c                                           ; $7166: $81
	add  b                                           ; $7167: $80
	ld   a, [hl]                                     ; $7168: $7e
	add  b                                           ; $7169: $80
	ret  nz                                          ; $716a: $c0

	ld   bc, $ff00                                   ; $716b: $01 $00 $ff
	add  l                                           ; $716e: $85
	nop                                              ; $716f: $00
	add  c                                           ; $7170: $81
	ldh  a, [$83]                                    ; $7171: $f0 $83
	nop                                              ; $7173: $00
	ld   a, [de]                                     ; $7174: $1a
	rrca                                             ; $7175: $0f
	ldh  a, [$f1]                                    ; $7176: $f0 $f1
	add  c                                           ; $7178: $81
	adc  h                                           ; $7179: $8c
	dec  c                                           ; $717a: $0d
	ld   h, e                                        ; $717b: $63
	ld   l, a                                        ; $717c: $6f
	rra                                              ; $717d: $1f
	ld   a, a                                        ; $717e: $7f
	ldh  a, [c]                                      ; $717f: $f2
	ldh  a, [$9f]                                    ; $7180: $f0 $9f
	nop                                              ; $7182: $00
	ldh  a, [rIF]                                    ; $7183: $f0 $0f
	ccf                                              ; $7185: $3f
	ld   [hl], $8f                                   ; $7186: $36 $8f
	cp   a                                           ; $7188: $bf
	ld   a, a                                        ; $7189: $7f
	cp   $e9                                         ; $718a: $fe $e9
	ldh  [$5e], a                                    ; $718c: $e0 $5e
	ld   bc, $80e1                                   ; $718e: $01 $e1 $80
	rra                                              ; $7191: $1f
	add  b                                           ; $7192: $80
	cp   $0d                                         ; $7193: $fe $0d
	ldh  [$c3], a                                    ; $7195: $e0 $c3
	db   $fc                                         ; $7197: $fc
	db   $fd                                         ; $7198: $fd
	db   $fc                                         ; $7199: $fc
	inc  a                                           ; $719a: $3c
	dec  e                                           ; $719b: $1d
	db   $fd                                         ; $719c: $fd
	dec  e                                           ; $719d: $1d
	dec  a                                           ; $719e: $3d
	db   $fc                                         ; $719f: $fc
	cp   $e0                                         ; $71a0: $fe $e0
	ret  nz                                          ; $71a2: $c0

	add  c                                           ; $71a3: $81
	nop                                              ; $71a4: $00
	ld   [bc], a                                     ; $71a5: $02
	ret  nz                                          ; $71a6: $c0

	inc  bc                                          ; $71a7: $03
	jp   $3f80                                       ; $71a8: $c3 $80 $3f


	add  b                                           ; $71ab: $80
	db   $fc                                         ; $71ac: $fc
	add  b                                           ; $71ad: $80
	ret  nz                                          ; $71ae: $c0

	add  d                                           ; $71af: $82
	nop                                              ; $71b0: $00
	add  b                                           ; $71b1: $80
	rlca                                             ; $71b2: $07
	add  b                                           ; $71b3: $80
	ld   a, a                                        ; $71b4: $7f
	add  b                                           ; $71b5: $80
	db   $fc                                         ; $71b6: $fc
	add  b                                           ; $71b7: $80
	ret  nz                                          ; $71b8: $c0

	add  d                                           ; $71b9: $82
	nop                                              ; $71ba: $00
	add  b                                           ; $71bb: $80
	rlca                                             ; $71bc: $07
	add  b                                           ; $71bd: $80
	ld   a, a                                        ; $71be: $7f
	add  b                                           ; $71bf: $80
	ldh  a, [$09]                                    ; $71c0: $f0 $09
	nop                                              ; $71c2: $00
	ld   h, d                                        ; $71c3: $62
	rlca                                             ; $71c4: $07
	ld   a, a                                        ; $71c5: $7f
	inc  bc                                          ; $71c6: $03
	dec  d                                           ; $71c7: $15
	ld   bc, $c10e                                   ; $71c8: $01 $0e $c1
	jp   $e180                                       ; $71cb: $c3 $80 $e1


	ld   [de], a                                     ; $71ce: $12
	add  hl, sp                                      ; $71cf: $39
	jr   c, jr_074_71de                              ; $71d0: $38 $0c

	dec  c                                           ; $71d2: $0d
	rlca                                             ; $71d3: $07
	ld   e, [hl]                                     ; $71d4: $5e
	ld   h, a                                        ; $71d5: $67
	ld   a, [hl]                                     ; $71d6: $7e
	ld   a, a                                        ; $71d7: $7f
	ld   a, [hl]                                     ; $71d8: $7e
	pop  af                                          ; $71d9: $f1
	ldh  a, [c]                                      ; $71da: $f2
	jp   $cfce                                       ; $71db: $c3 $ce $cf


jr_074_71de:
	rst  $38                                         ; $71de: $ff
	cp   $7f                                         ; $71df: $fe $7f
	rst  $38                                         ; $71e1: $ff
	add  b                                           ; $71e2: $80
	cp   $09                                         ; $71e3: $fe $09
	xor  d                                           ; $71e5: $aa
	rst  $38                                         ; $71e6: $ff
	nop                                              ; $71e7: $00
	rst  $38                                         ; $71e8: $ff
	ld   bc, $0eff                                   ; $71e9: $01 $ff $0e
	ld   a, [$55f5]                                  ; $71ec: $fa $f5 $55
	add  b                                           ; $71ef: $80
	xor  d                                           ; $71f0: $aa
	add  b                                           ; $71f1: $80
	ld   d, l                                        ; $71f2: $55
	add  c                                           ; $71f3: $81
	xor  d                                           ; $71f4: $aa
	db   $10                                         ; $71f5: $10
	rst  $38                                         ; $71f6: $ff
	nop                                              ; $71f7: $00
	rst  $38                                         ; $71f8: $ff
	nop                                              ; $71f9: $00
	rst  $38                                         ; $71fa: $ff
	nop                                              ; $71fb: $00
	rst  $38                                         ; $71fc: $ff
	nop                                              ; $71fd: $00
	rst  $38                                         ; $71fe: $ff
	nop                                              ; $71ff: $00
	rst  $38                                         ; $7200: $ff
	nop                                              ; $7201: $00
	rst  $38                                         ; $7202: $ff
	dec  d                                           ; $7203: $15
	rst  $38                                         ; $7204: $ff
	ldh  [$5f], a                                    ; $7205: $e0 $5f
	add  b                                           ; $7207: $80
	cp   a                                           ; $7208: $bf
	add  b                                           ; $7209: $80
	ld   e, a                                        ; $720a: $5f
	add  b                                           ; $720b: $80
	cp   a                                           ; $720c: $bf
	add  b                                           ; $720d: $80
	ld   e, a                                        ; $720e: $5f
	ld   b, $b8                                      ; $720f: $06 $b8
	cp   a                                           ; $7211: $bf
	add  a                                           ; $7212: $87
	rst  $38                                         ; $7213: $ff
	ld   a, a                                        ; $7214: $7f
	rst  $38                                         ; $7215: $ff
	scf                                              ; $7216: $37
	add  c                                           ; $7217: $81
	rst  $38                                         ; $7218: $ff
	nop                                              ; $7219: $00
	ld   sp, hl                                      ; $721a: $f9
	add  c                                           ; $721b: $81
	rst  $38                                         ; $721c: $ff
	inc  bc                                          ; $721d: $03
	cp   $ff                                         ; $721e: $fe $ff
	ccf                                              ; $7220: $3f
	rst  $38                                         ; $7221: $ff
	add  b                                           ; $7222: $80
	rst  JumpTable                                         ; $7223: $df
	add  b                                           ; $7224: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7225: $cf
	ld   [bc], a                                     ; $7226: $02
	ld   d, b                                        ; $7227: $50
	ldh  a, [$d0]                                    ; $7228: $f0 $d0
	add  b                                           ; $722a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $722b: $cf
	add  b                                           ; $722c: $80
	ldh  a, [rSB]                                    ; $722d: $f0 $01
	add  b                                           ; $722f: $80
	nop                                              ; $7230: $00
	add  b                                           ; $7231: $80
	add  b                                           ; $7232: $80
	add  b                                           ; $7233: $80
	add  a                                           ; $7234: $87
	add  b                                           ; $7235: $80
	ld   hl, sp+$01                                  ; $7236: $f8 $01
	add  b                                           ; $7238: $80
	ld   [hl], b                                     ; $7239: $70
	add  b                                           ; $723a: $80
	rrca                                             ; $723b: $0f
	add  b                                           ; $723c: $80
	ld   c, $00                                      ; $723d: $0e $00
	nop                                              ; $723f: $00
	add  b                                           ; $7240: $80
	dec  b                                           ; $7241: $05
	dec  c                                           ; $7242: $0d
	ld   [$060d], sp                                 ; $7243: $08 $0d $06
	inc  c                                           ; $7246: $0c
	inc  bc                                          ; $7247: $03
	nop                                              ; $7248: $00
	inc  c                                           ; $7249: $0c
	inc  bc                                          ; $724a: $03
	ld   a, [$cac9]                                  ; $724b: $fa $c9 $ca
	inc  de                                          ; $724e: $13
	ld   de, $8033                                   ; $724f: $11 $33 $80
	or   h                                           ; $7252: $b4
	db   $10                                         ; $7253: $10
	ld   [hl], a                                     ; $7254: $77
	ldh  a, [$74]                                    ; $7255: $f0 $74
	inc  sp                                          ; $7257: $33
	di                                               ; $7258: $f3
	scf                                              ; $7259: $37
	ld   [hl], a                                     ; $725a: $77
	db   $f4                                         ; $725b: $f4
	sbc  $6f                                         ; $725c: $de $6f
	ld   a, [de]                                     ; $725e: $1a
	ld   a, b                                        ; $725f: $78
	sub  a                                           ; $7260: $97
	add  b                                           ; $7261: $80
	ld   hl, sp+$07                                  ; $7262: $f8 $07
	add  a                                           ; $7264: $87
	add  b                                           ; $7265: $80
	ld   a, a                                        ; $7266: $7f
	add  b                                           ; $7267: $80
	ld   hl, sp-$80                                  ; $7268: $f8 $80
	add  b                                           ; $726a: $80
	add  hl, bc                                      ; $726b: $09
	nop                                              ; $726c: $00
	ld   a, c                                        ; $726d: $79
	add  [hl]                                        ; $726e: $86
	ld   a, [hl]                                     ; $726f: $7e
	ld   b, $8e                                      ; $7270: $06 $8e
	ld   a, [hl]                                     ; $7272: $7e
	ld   a, a                                        ; $7273: $7f
	ld   hl, sp-$10                                  ; $7274: $f8 $f0
	add  b                                           ; $7276: $80
	add  b                                           ; $7277: $80
	add  b                                           ; $7278: $80
	nop                                              ; $7279: $00
	inc  bc                                          ; $727a: $03
	rlca                                             ; $727b: $07
	ld   b, $7f                                      ; $727c: $06 $7f
	ld   a, [hl]                                     ; $727e: $7e
	add  b                                           ; $727f: $80
	rst  $38                                         ; $7280: $ff
	add  b                                           ; $7281: $80
	ldh  a, [$82]                                    ; $7282: $f0 $82
	nop                                              ; $7284: $00
	add  b                                           ; $7285: $80
	rlca                                             ; $7286: $07
	add  b                                           ; $7287: $80
	ld   a, a                                        ; $7288: $7f
	add  b                                           ; $7289: $80
	ldh  [$84], a                                    ; $728a: $e0 $84
	nop                                              ; $728c: $00
	add  b                                           ; $728d: $80
	rlca                                             ; $728e: $07
	add  b                                           ; $728f: $80
	ld   a, a                                        ; $7290: $7f
	add  b                                           ; $7291: $80
	ldh  a, [$84]                                    ; $7292: $f0 $84
	nop                                              ; $7294: $00
	add  b                                           ; $7295: $80
	rlca                                             ; $7296: $07
	inc  b                                           ; $7297: $04
	ld   a, a                                        ; $7298: $7f
	ld   a, e                                        ; $7299: $7b
	db   $f4                                         ; $729a: $f4
	di                                               ; $729b: $f3
	inc  bc                                          ; $729c: $03
	add  a                                           ; $729d: $87
	nop                                              ; $729e: $00
	add  b                                           ; $729f: $80
	ldh  a, [$83]                                    ; $72a0: $f0 $83
	nop                                              ; $72a2: $00
	add  b                                           ; $72a3: $80
	ret  nz                                          ; $72a4: $c0

	add  c                                           ; $72a5: $81
	nop                                              ; $72a6: $00
	ld   [bc], a                                     ; $72a7: $02
	inc  bc                                          ; $72a8: $03
	dec  a                                           ; $72a9: $3d
	ld   a, $89                                      ; $72aa: $3e $89
	nop                                              ; $72ac: $00
	add  b                                           ; $72ad: $80
	rrca                                             ; $72ae: $0f
	add  b                                           ; $72af: $80
	ld   hl, sp+$02                                  ; $72b0: $f8 $02
	ld   bc, $0100                                   ; $72b2: $01 $00 $01
	add  e                                           ; $72b5: $83
	nop                                              ; $72b6: $00
	add  b                                           ; $72b7: $80
	ld   bc, $7e80                                   ; $72b8: $01 $80 $7e
	add  b                                           ; $72bb: $80
	ret  nz                                          ; $72bc: $c0

	add  b                                           ; $72bd: $80
	rrca                                             ; $72be: $0f
	add  hl, bc                                      ; $72bf: $09
	db   $fc                                         ; $72c0: $fc
	inc  bc                                          ; $72c1: $03
	rst  $38                                         ; $72c2: $ff
	or   $f8                                         ; $72c3: $f6 $f8
	or   b                                           ; $72c5: $b0
	pop  bc                                          ; $72c6: $c1
	rrca                                             ; $72c7: $0f
	sub  c                                           ; $72c8: $91
	pop  hl                                          ; $72c9: $e1
	add  b                                           ; $72ca: $80
	ld   bc, $3f80                                   ; $72cb: $01 $80 $3f
	add  b                                           ; $72ce: $80
	pop  af                                          ; $72cf: $f1
	nop                                              ; $72d0: $00
	ld   bc, $5580                                   ; $72d1: $01 $80 $55
	ld   [bc], a                                     ; $72d4: $02
	and  c                                           ; $72d5: $a1
	cp   a                                           ; $72d6: $bf
	rra                                              ; $72d7: $1f
	add  a                                           ; $72d8: $87
	rst  $38                                         ; $72d9: $ff
	ld   [bc], a                                     ; $72da: $02
	pop  af                                          ; $72db: $f1
	rst  $38                                         ; $72dc: $ff
	pop  af                                          ; $72dd: $f1
	sub  l                                           ; $72de: $95
	rst  $38                                         ; $72df: $ff
	ld   [bc], a                                     ; $72e0: $02
	ld   hl, sp-$01                                  ; $72e1: $f8 $ff
	add  a                                           ; $72e3: $87
	add  e                                           ; $72e4: $83
	rst  $38                                         ; $72e5: $ff
	ld   [bc], a                                     ; $72e6: $02
	cp   a                                           ; $72e7: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72e8: $cf
	ret  z                                           ; $72e9: $c8

	add  e                                           ; $72ea: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72eb: $cf
	nop                                              ; $72ec: $00
	ld   l, $81                                      ; $72ed: $2e $81
	xor  $04                                         ; $72ef: $ee $04
	db   $fc                                         ; $72f1: $fc
	rst  $38                                         ; $72f2: $ff
	db   $fc                                         ; $72f3: $fc
	rst  $38                                         ; $72f4: $ff
	scf                                              ; $72f5: $37
	add  c                                           ; $72f6: $81
	add  b                                           ; $72f7: $80
	inc  bc                                          ; $72f8: $03
	add  a                                           ; $72f9: $87
	add  b                                           ; $72fa: $80
	ld   a, a                                        ; $72fb: $7f
	rlca                                             ; $72fc: $07
	add  c                                           ; $72fd: $81
	rst  $38                                         ; $72fe: $ff
	dec  b                                           ; $72ff: $05
	ld   hl, sp+$78                                  ; $7300: $f8 $78
	add  b                                           ; $7302: $80
	nop                                              ; $7303: $00
	add  b                                           ; $7304: $80
	ld   [hl], b                                     ; $7305: $70
	add  b                                           ; $7306: $80
	rrca                                             ; $7307: $0f
	add  b                                           ; $7308: $80
	ld   c, $82                                      ; $7309: $0e $82
	nop                                              ; $730b: $00
	add  b                                           ; $730c: $80
	rlca                                             ; $730d: $07
	add  b                                           ; $730e: $80
	ld   c, $81                                      ; $730f: $0e $81
	nop                                              ; $7311: $00
	ld   [bc], a                                     ; $7312: $02
	or   b                                           ; $7313: $b0
	ret  nz                                          ; $7314: $c0

	add  b                                           ; $7315: $80
	add  b                                           ; $7316: $80
	nop                                              ; $7317: $00
	add  b                                           ; $7318: $80
	rlca                                             ; $7319: $07
	inc  b                                           ; $731a: $04
	ld   a, [hl]                                     ; $731b: $7e
	ld   [hl], d                                     ; $731c: $72
	db   $ec                                         ; $731d: $ec
	db   $e3                                         ; $731e: $e3
	inc  bc                                          ; $731f: $03
	add  e                                           ; $7320: $83
	nop                                              ; $7321: $00
	add  b                                           ; $7322: $80
	rlca                                             ; $7323: $07
	add  b                                           ; $7324: $80
	ld   a, [hl]                                     ; $7325: $7e
	add  b                                           ; $7326: $80
	ldh  [$88], a                                    ; $7327: $e0 $88
	nop                                              ; $7329: $00
	add  b                                           ; $732a: $80
	ldh  [$85], a                                    ; $732b: $e0 $85
	nop                                              ; $732d: $00
	add  b                                           ; $732e: $80
	ld   a, [bc]                                     ; $732f: $0a
	add  b                                           ; $7330: $80
	nop                                              ; $7331: $00
	add  b                                           ; $7332: $80
	rlca                                             ; $7333: $07
	add  b                                           ; $7334: $80
	ret  nz                                          ; $7335: $c0

	add  b                                           ; $7336: $80
	jr   nc, @-$7e                                   ; $7337: $30 $80

	nop                                              ; $7339: $00
	add  b                                           ; $733a: $80
	inc  bc                                          ; $733b: $03
	add  b                                           ; $733c: $80
	ld   a, h                                        ; $733d: $7c
	ld   [bc], a                                     ; $733e: $02
	add  b                                           ; $733f: $80
	add  c                                           ; $7340: $81
	ld   bc, $3f80                                   ; $7341: $01 $80 $3f
	add  b                                           ; $7344: $80
	ldh  [$81], a                                    ; $7345: $e0 $81
	nop                                              ; $7347: $00
	add  b                                           ; $7348: $80
	rra                                              ; $7349: $1f
	add  b                                           ; $734a: $80
	ldh  [rTIMA], a                                  ; $734b: $e0 $05
	nop                                              ; $734d: $00
	inc  bc                                          ; $734e: $03
	rrca                                             ; $734f: $0f
	db   $fc                                         ; $7350: $fc
	ldh  a, [rP1]                                    ; $7351: $f0 $00
	add  b                                           ; $7353: $80
	ld   bc, $0780                                   ; $7354: $01 $80 $07
	add  b                                           ; $7357: $80
	db   $fc                                         ; $7358: $fc
	ld   c, $03                                      ; $7359: $0e $03
	ld   [bc], a                                     ; $735b: $02
	ld   h, b                                        ; $735c: $60
	xor  [hl]                                        ; $735d: $ae
	xor  a                                           ; $735e: $af
	and  b                                           ; $735f: $a0
	adc  $0f                                         ; $7360: $ce $0f
	ret  nz                                          ; $7362: $c0

	adc  $5e                                         ; $7363: $ce $5e
	sbc  [hl]                                        ; $7365: $9e
	rrca                                             ; $7366: $0f
	ret  nz                                          ; $7367: $c0

	nop                                              ; $7368: $00
	add  b                                           ; $7369: $80
	rrca                                             ; $736a: $0f
	add  b                                           ; $736b: $80
	cp   h                                           ; $736c: $bc
	add  b                                           ; $736d: $80

jr_074_736e:
	add  b                                           ; $736e: $80
	nop                                              ; $736f: $00
	nop                                              ; $7370: $00
	add  b                                           ; $7371: $80
	rrca                                             ; $7372: $0f
	inc  b                                           ; $7373: $04
	cp   d                                           ; $7374: $ba
	cp   a                                           ; $7375: $bf
	ld   d, b                                        ; $7376: $50
	rst  $38                                         ; $7377: $ff
	xor  d                                           ; $7378: $aa
	add  b                                           ; $7379: $80
	ld   a, a                                        ; $737a: $7f
	add  b                                           ; $737b: $80
	ldh  [$81], a                                    ; $737c: $e0 $81
	nop                                              ; $737e: $00
	add  b                                           ; $737f: $80
	ld   a, a                                        ; $7380: $7f
	ld   b, $d5                                      ; $7381: $06 $d5
	rst  $38                                         ; $7383: $ff
	add  b                                           ; $7384: $80
	rst  $38                                         ; $7385: $ff
	dec  d                                           ; $7386: $15
	rst  $38                                         ; $7387: $ff
	cp   a                                           ; $7388: $bf
	add  b                                           ; $7389: $80
	add  b                                           ; $738a: $80
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	add  b                                           ; $738d: $80
	inc  bc                                          ; $738e: $03
	ld   [$fffd], sp                                 ; $738f: $08 $fd $ff
	xor  b                                           ; $7392: $a8
	rst  $38                                         ; $7393: $ff
	nop                                              ; $7394: $00
	rst  $38                                         ; $7395: $ff
	ld   [bc], a                                     ; $7396: $02
	rst  $38                                         ; $7397: $ff
	ld   d, a                                        ; $7398: $57
	add  b                                           ; $7399: $80
	sbc  $0b                                         ; $739a: $de $0b
	ld   bc, $0f0e                                   ; $739c: $01 $0e $0f
	ei                                               ; $739f: $fb
	rst  $38                                         ; $73a0: $ff
	ld   d, c                                        ; $73a1: $51
	rst  $38                                         ; $73a2: $ff
	ld   bc, $15ff                                   ; $73a3: $01 $ff $15
	rst  $38                                         ; $73a6: $ff
	cp   [hl]                                        ; $73a7: $be
	add  b                                           ; $73a8: $80
	pop  af                                          ; $73a9: $f1
	ld   bc, $cf31                                   ; $73aa: $01 $31 $cf
	add  a                                           ; $73ad: $87
	rst  $38                                         ; $73ae: $ff
	ld   [bc], a                                     ; $73af: $02
	pop  bc                                          ; $73b0: $c1
	rst  $38                                         ; $73b1: $ff
	ccf                                              ; $73b2: $3f
	add  e                                           ; $73b3: $83
	rst  $38                                         ; $73b4: $ff
	add  b                                           ; $73b5: $80
	db   $fc                                         ; $73b6: $fc
	ld   [bc], a                                     ; $73b7: $02
	xor  $f1                                         ; $73b8: $ee $f1
	ld   h, c                                        ; $73ba: $61
	add  a                                           ; $73bb: $87
	add  c                                           ; $73bc: $81
	ld   bc, $ff7f                                   ; $73bd: $01 $7f $ff
	add  b                                           ; $73c0: $80
	ccf                                              ; $73c1: $3f
	ld   [bc], a                                     ; $73c2: $02
	jr   c, jr_074_7404                              ; $73c3: $38 $3f

	rlca                                             ; $73c5: $07
	add  c                                           ; $73c6: $81
	ccf                                              ; $73c7: $3f
	add  h                                           ; $73c8: $84
	cp   a                                           ; $73c9: $bf
	nop                                              ; $73ca: $00
	ld   [hl], b                                     ; $73cb: $70
	add  c                                           ; $73cc: $81
	rst  $38                                         ; $73cd: $ff
	ld   bc, $ff3f                                   ; $73ce: $01 $3f $ff
	add  b                                           ; $73d1: $80
	rst  JumpTable                                         ; $73d2: $df
	add  d                                           ; $73d3: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73d4: $cf
	nop                                              ; $73d5: $00
	ret  z                                           ; $73d6: $c8

	add  c                                           ; $73d7: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73d8: $cf
	nop                                              ; $73d9: $00
	rst  $30                                         ; $73da: $f7
	adc  l                                           ; $73db: $8d
	add  b                                           ; $73dc: $80
	nop                                              ; $73dd: $00

jr_074_73de:
	ld   [hl], b                                     ; $73de: $70
	adc  c                                           ; $73df: $89
	nop                                              ; $73e0: $00
	add  b                                           ; $73e1: $80
	dec  bc                                          ; $73e2: $0b
	ld   [bc], a                                     ; $73e3: $02
	rlca                                             ; $73e4: $07
	rrca                                             ; $73e5: $0f
	ld   hl, sp-$7f                                  ; $73e6: $f8 $81
	nop                                              ; $73e8: $00
	add  b                                           ; $73e9: $80
	dec  b                                           ; $73ea: $05
	add  b                                           ; $73eb: $80
	jr   z, jr_074_736e                              ; $73ec: $28 $80

	nop                                              ; $73ee: $00
	add  b                                           ; $73ef: $80
	rlca                                             ; $73f0: $07
	dec  b                                           ; $73f1: $05
	ld   a, [$50ff]                                  ; $73f2: $fa $ff $50
	rst  $38                                         ; $73f5: $ff
	xor  d                                           ; $73f6: $aa
	nop                                              ; $73f7: $00
	add  b                                           ; $73f8: $80
	rra                                              ; $73f9: $1f
	add  b                                           ; $73fa: $80
	ldh  [$80], a                                    ; $73fb: $e0 $80
	nop                                              ; $73fd: $00
	add  b                                           ; $73fe: $80

jr_074_73ff:
	rra                                              ; $73ff: $1f
	rlca                                             ; $7400: $07
	push af                                          ; $7401: $f5
	rst  $38                                         ; $7402: $ff
	and  b                                           ; $7403: $a0

jr_074_7404:
	rst  $38                                         ; $7404: $ff
	nop                                              ; $7405: $00
	rst  $38                                         ; $7406: $ff
	ld   d, d                                        ; $7407: $52
	ld   hl, sp-$80                                  ; $7408: $f8 $80
	nop                                              ; $740a: $00
	add  b                                           ; $740b: $80
	ld   bc, $7f80                                   ; $740c: $01 $80 $7f
	ld   b, $aa                                      ; $740f: $06 $aa
	rst  $38                                         ; $7411: $ff
	nop                                              ; $7412: $00
	rst  $38                                         ; $7413: $ff
	ld   a, [bc]                                     ; $7414: $0a
	rst  $30                                         ; $7415: $f7
	ld   d, a                                        ; $7416: $57
	add  b                                           ; $7417: $80
	ldh  a, [rP1]                                    ; $7418: $f0 $00
	nop                                              ; $741a: $00
	add  b                                           ; $741b: $80
	rlca                                             ; $741c: $07
	ld   [$fffa], sp                                 ; $741d: $08 $fa $ff
	ld   d, b                                        ; $7420: $50
	rst  $38                                         ; $7421: $ff
	nop                                              ; $7422: $00
	rst  $38                                         ; $7423: $ff
	dec  d                                           ; $7424: $15
	rst  $38                                         ; $7425: $ff
	cp   a                                           ; $7426: $bf
	add  b                                           ; $7427: $80
	pop  af                                          ; $7428: $f1
	add  hl, bc                                      ; $7429: $09
	ld   de, $1f0f                                   ; $742a: $11 $0f $1f
	rst  $30                                         ; $742d: $f7
	rst  $38                                         ; $742e: $ff
	and  e                                           ; $742f: $a3
	rst  $38                                         ; $7430: $ff
	inc  bc                                          ; $7431: $03
	rst  $38                                         ; $7432: $ff
	xor  c                                           ; $7433: $a9
	add  b                                           ; $7434: $80
	ld   hl, sp-$7f                                  ; $7435: $f8 $81
	jr   @-$7e                                       ; $7437: $18 $80

	add  hl, de                                      ; $7439: $19
	nop                                              ; $743a: $00
	ld   c, c                                        ; $743b: $49
	add  e                                           ; $743c: $83
	sbc  [hl]                                        ; $743d: $9e
	inc  bc                                          ; $743e: $03
	adc  a                                           ; $743f: $8f
	add  b                                           ; $7440: $80
	ldh  [rAUD4LEN], a                               ; $7441: $e0 $20
	add  b                                           ; $7443: $80
	nop                                              ; $7444: $00
	add  b                                           ; $7445: $80
	rrca                                             ; $7446: $0f
	ld   a, [bc]                                     ; $7447: $0a
	pop  de                                          ; $7448: $d1
	sbc  $67                                         ; $7449: $de $67
	rst  $38                                         ; $744b: $ff
	rst  ToBoot                                         ; $744c: $c7
	db   $fc                                         ; $744d: $fc
	call nz, $d4fc                                   ; $744e: $c4 $fc $d4
	call nz, $8384                                   ; $7451: $c4 $84 $83
	inc  b                                           ; $7454: $04
	ld   [bc], a                                     ; $7455: $02
	add  h                                           ; $7456: $84
	ld   a, h                                        ; $7457: $7c
	db   $fc                                         ; $7458: $fc
	add  b                                           ; $7459: $80
	ldh  [$8a], a                                    ; $745a: $e0 $8a
	jr   nz, jr_074_73de                             ; $745c: $20 $80

	ccf                                              ; $745e: $3f
	add  e                                           ; $745f: $83
	ret  nz                                          ; $7460: $c0

	add  b                                           ; $7461: $80
	pop  bc                                          ; $7462: $c1
	nop                                              ; $7463: $00
	ldh  [$81], a                                    ; $7464: $e0 $81
	rst  $38                                         ; $7466: $ff
	inc  b                                           ; $7467: $04
	ldh  a, [rIE]                                    ; $7468: $f0 $ff
	adc  a                                           ; $746a: $8f
	sbc  a                                           ; $746b: $9f
	ret  nz                                          ; $746c: $c0

	add  e                                           ; $746d: $83
	ld   sp, $f180                                   ; $746e: $31 $80 $f1
	ld   [bc], a                                     ; $7471: $02
	jr   nc, @-$0d                                   ; $7472: $30 $f1

	ld   sp, $ff80                                   ; $7474: $31 $80 $ff
	add  c                                           ; $7477: $81
	pop  af                                          ; $7478: $f1
	nop                                              ; $7479: $00
	jr   nc, jr_074_73ff                             ; $747a: $30 $83

	rst  $38                                         ; $747c: $ff
	ld   [bc], a                                     ; $747d: $02
	pop  af                                          ; $747e: $f1
	rst  $38                                         ; $747f: $ff
	rrca                                             ; $7480: $0f
	add  e                                           ; $7481: $83
	rst  $38                                         ; $7482: $ff
	ld   [bc], a                                     ; $7483: $02
	ld   sp, hl                                      ; $7484: $f9
	rst  $38                                         ; $7485: $ff
	add  [hl]                                        ; $7486: $86
	adc  e                                           ; $7487: $8b
	add  c                                           ; $7488: $81
	add  b                                           ; $7489: $80
	sbc  a                                           ; $748a: $9f
	inc  b                                           ; $748b: $04
	nop                                              ; $748c: $00
	cp   a                                           ; $748d: $bf
	cp   b                                           ; $748e: $b8
	cp   a                                           ; $748f: $bf
	add  a                                           ; $7490: $87
	add  l                                           ; $7491: $85
	cp   a                                           ; $7492: $bf
	nop                                              ; $7493: $00
	add  b                                           ; $7494: $80
	add  c                                           ; $7495: $81
	cp   a                                           ; $7496: $bf
	ld   [bc], a                                     ; $7497: $02
	add  a                                           ; $7498: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7499: $cf
	cpl                                              ; $749a: $2f
	add  c                                           ; $749b: $81
	rst  $28                                         ; $749c: $ef
	add  d                                           ; $749d: $82
	rst  $38                                         ; $749e: $ff
	ld   bc, $ff38                                   ; $749f: $01 $38 $ff
	add  b                                           ; $74a2: $80
	rst  JumpTable                                         ; $74a3: $df
	add  b                                           ; $74a4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74a5: $cf
	nop                                              ; $74a6: $00
	ldh  a, [$81]                                    ; $74a7: $f0 $81
	add  b                                           ; $74a9: $80
	add  b                                           ; $74aa: $80
	sub  h                                           ; $74ab: $94
	add  b                                           ; $74ac: $80
	add  b                                           ; $74ad: $80
	add  b                                           ; $74ae: $80

jr_074_74af:
	sub  l                                           ; $74af: $95
	add  b                                           ; $74b0: $80
	adc  d                                           ; $74b1: $8a
	add  d                                           ; $74b2: $82
	add  b                                           ; $74b3: $80
	ld   b, $7e                                      ; $74b4: $06 $7e
	rlca                                             ; $74b6: $07
	inc  b                                           ; $74b7: $04
	rlca                                             ; $74b8: $07
	ld   b, $07                                      ; $74b9: $06 $07
	dec  bc                                          ; $74bb: $0b
	add  h                                           ; $74bc: $84
	nop                                              ; $74bd: $00
	rlca                                             ; $74be: $07
	rrca                                             ; $74bf: $0f
	ld   [$500f], sp                                 ; $74c0: $08 $0f $50
	rst  $38                                         ; $74c3: $ff
	rla                                              ; $74c4: $17
	cp   $be                                         ; $74c5: $fe $be
	add  b                                           ; $74c7: $80
	ldh  a, [c]                                      ; $74c8: $f2
	add  c                                           ; $74c9: $81
	sub  d                                           ; $74ca: $92
	add  b                                           ; $74cb: $80
	sub  e                                           ; $74cc: $93
	nop                                              ; $74cd: $00
	sub  d                                           ; $74ce: $92
	add  b                                           ; $74cf: $80
	sbc  [hl]                                        ; $74d0: $9e
	add  b                                           ; $74d1: $80
	ldh  a, [c]                                      ; $74d2: $f2
	add  b                                           ; $74d3: $80
	rst  $38                                         ; $74d4: $ff
	add  h                                           ; $74d5: $84
	inc  b                                           ; $74d6: $04
	inc  bc                                          ; $74d7: $03
	ccf                                              ; $74d8: $3f
	daa                                              ; $74d9: $27
	db   $fc                                         ; $74da: $fc
	inc  e                                           ; $74db: $1c
	add  c                                           ; $74dc: $81
	db   $fc                                         ; $74dd: $fc
	nop                                              ; $74de: $00
	inc  b                                           ; $74df: $04
	add  e                                           ; $74e0: $83
	sub  b                                           ; $74e1: $90
	ld   [bc], a                                     ; $74e2: $02
	sbc  b                                           ; $74e3: $98
	rst  $38                                         ; $74e4: $ff
	ldh  a, [$83]                                    ; $74e5: $f0 $83
	sub  a                                           ; $74e7: $97
	ld   [bc], a                                     ; $74e8: $02
	sbc  b                                           ; $74e9: $98
	sbc  a                                           ; $74ea: $9f
	sub  a                                           ; $74eb: $97
	add  d                                           ; $74ec: $82
	ld   de, $7103                                   ; $74ed: $11 $03 $71
	ld   de, $7fff                                   ; $74f0: $11 $ff $7f
	add  c                                           ; $74f3: $81
	pop  af                                          ; $74f4: $f1
	nop                                              ; $74f5: $00
	ld   de, $f182                                   ; $74f6: $11 $82 $f1
	inc  bc                                          ; $74f9: $03
	add  hl, de                                      ; $74fa: $19
	inc  e                                           ; $74fb: $1c
	rra                                              ; $74fc: $1f
	add  hl, de                                      ; $74fd: $19
	add  b                                           ; $74fe: $80
	ei                                               ; $74ff: $fb
	ld   bc, $1a1b                                   ; $7500: $01 $1b $1a
	add  c                                           ; $7503: $81
	dec  de                                          ; $7504: $1b
	rlca                                             ; $7505: $07
	dec  e                                           ; $7506: $1d
	rra                                              ; $7507: $1f
	ld   e, $1f                                      ; $7508: $1e $1f
	ld   [hl], h                                     ; $750a: $74
	cp   a                                           ; $750b: $bf
	cpl                                              ; $750c: $2f
	rst  $38                                         ; $750d: $ff
	add  b                                           ; $750e: $80
	rst  JumpTable                                         ; $750f: $df
	inc  bc                                          ; $7510: $03
	ret  nc                                          ; $7511: $d0

	sbc  $4e                                         ; $7512: $de $4e
	sbc  [hl]                                        ; $7514: $9e
	add  b                                           ; $7515: $80
	cp   [hl]                                        ; $7516: $be
	ld   b, $b1                                      ; $7517: $06 $b1
	cp   a                                           ; $7519: $bf
	cpl                                              ; $751a: $2f
	rst  $38                                         ; $751b: $ff
	add  c                                           ; $751c: $81
	ld   a, a                                        ; $751d: $7f
	add  a                                           ; $751e: $87
	add  e                                           ; $751f: $83
	db   $fc                                         ; $7520: $fc
	nop                                              ; $7521: $00
	inc  b                                           ; $7522: $04
	add  d                                           ; $7523: $82
	ld   a, h                                        ; $7524: $7c
	inc  bc                                          ; $7525: $03
	ld   a, a                                        ; $7526: $7f
	rst  ToBoot                                         ; $7527: $c7
	db   $fc                                         ; $7528: $fc
	call nz, $e080                                   ; $7529: $c4 $80 $e0
	add  [hl]                                        ; $752c: $86
	jr   nz, jr_074_74af                             ; $752d: $20 $80

	ccf                                              ; $752f: $3f
	add  b                                           ; $7530: $80
	ldh  [rSB], a                                    ; $7531: $e0 $01
	jr   nz, @+$81                                   ; $7533: $20 $7f

	add  c                                           ; $7535: $81
	sbc  a                                           ; $7536: $9f
	ld   [bc], a                                     ; $7537: $02
	sub  b                                           ; $7538: $90
	sbc  a                                           ; $7539: $9f
	xor  a                                           ; $753a: $af
	add  c                                           ; $753b: $81
	cp   a                                           ; $753c: $bf
	ld   [bc], a                                     ; $753d: $02
	or   b                                           ; $753e: $b0
	cp   a                                           ; $753f: $bf
	adc  a                                           ; $7540: $8f
	add  c                                           ; $7541: $81
	sbc  a                                           ; $7542: $9f
	inc  b                                           ; $7543: $04
	ld   bc, $f0f1                                   ; $7544: $01 $f1 $f0
	pop  af                                          ; $7547: $f1
	ld   sp, $f182                                   ; $7548: $31 $82 $f1
	ld   bc, $3fff                                   ; $754b: $01 $ff $3f
	add  e                                           ; $754e: $83
	pop  af                                          ; $754f: $f1
	nop                                              ; $7550: $00
	ld   sp, $ff8b                                   ; $7551: $31 $8b $ff
	inc  bc                                          ; $7554: $03
	pop  hl                                          ; $7555: $e1
	rst  $38                                         ; $7556: $ff
	jr   @-$05                                       ; $7557: $18 $f9

	add  b                                           ; $7559: $80
	add  c                                           ; $755a: $81
	add  b                                           ; $755b: $80
	sbc  a                                           ; $755c: $9f
	add  b                                           ; $755d: $80
	db   $fd                                         ; $755e: $fd
	add  h                                           ; $755f: $84
	add  c                                           ; $7560: $81
	ld   [bc], a                                     ; $7561: $02
	sbc  h                                           ; $7562: $9c
	sbc  a                                           ; $7563: $9f
	inc  bc                                          ; $7564: $03
	add  a                                           ; $7565: $87
	cp   a                                           ; $7566: $bf
	ld   [bc], a                                     ; $7567: $02
	cp   h                                           ; $7568: $bc
	cp   a                                           ; $7569: $bf
	add  e                                           ; $756a: $83
	add  d                                           ; $756b: $82
	cp   a                                           ; $756c: $bf
	ld   bc, $c8cf                                   ; $756d: $01 $cf $c8
	add  l                                           ; $7570: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7571: $cf
	ld   bc, $cf0f                                   ; $7572: $01 $0f $cf
	add  b                                           ; $7575: $80
	rst  $28                                         ; $7576: $ef
	add  b                                           ; $7577: $80
	rst  $38                                         ; $7578: $ff
	nop                                              ; $7579: $00
	daa                                              ; $757a: $27
	adc  c                                           ; $757b: $89
	jr   z, jr_074_757e                              ; $757c: $28 $00

jr_074_757e:
	inc  a                                           ; $757e: $3c
	add  c                                           ; $757f: $81
	db   $fc                                         ; $7580: $fc
	add  b                                           ; $7581: $80
	rrca                                             ; $7582: $0f
	ld   bc, $0f08                                   ; $7583: $01 $08 $0f
	add  b                                           ; $7586: $80
	rlca                                             ; $7587: $07
	ld   [bc], a                                     ; $7588: $02

jr_074_7589:
	inc  b                                           ; $7589: $04
	rlca                                             ; $758a: $07
	dec  bc                                          ; $758b: $0b
	add  c                                           ; $758c: $81
	rrca                                             ; $758d: $0f
	ld   bc, $0f08                                   ; $758e: $01 $08 $0f
	add  b                                           ; $7591: $80
	rlca                                             ; $7592: $07
	ld   bc, $92ff                                   ; $7593: $01 $ff $92
	add  c                                           ; $7596: $81
	sub  e                                           ; $7597: $93
	ld   bc, $9e9f                                   ; $7598: $01 $9f $9e
	add  b                                           ; $759b: $80
	ldh  a, [c]                                      ; $759c: $f2
	add  c                                           ; $759d: $81
	sub  d                                           ; $759e: $92
	add  c                                           ; $759f: $81
	sub  e                                           ; $75a0: $93
	rlca                                             ; $75a1: $07
	sbc  a                                           ; $75a2: $9f
	ld   e, [hl]                                     ; $75a3: $5e
	db   $fc                                         ; $75a4: $fc
	inc  a                                           ; $75a5: $3c
	db   $fc                                         ; $75a6: $fc
	db   $e4                                         ; $75a7: $e4
	rst  $38                                         ; $75a8: $ff
	rra                                              ; $75a9: $1f
	add  c                                           ; $75aa: $81
	db   $fc                                         ; $75ab: $fc
	ld   [bc], a                                     ; $75ac: $02
	db   $e4                                         ; $75ad: $e4
	db   $fc                                         ; $75ae: $fc
	inc  e                                           ; $75af: $1c
	add  b                                           ; $75b0: $80
	rst  $38                                         ; $75b1: $ff
	ld   bc, $f4fc                                   ; $75b2: $01 $fc $f4
	add  b                                           ; $75b5: $80
	sbc  a                                           ; $75b6: $9f
	ld   bc, $f0ff                                   ; $75b7: $01 $ff $f0
	add  c                                           ; $75ba: $81
	sub  a                                           ; $75bb: $97
	ld   [bc], a                                     ; $75bc: $02
	sub  [hl]                                        ; $75bd: $96
	sub  a                                           ; $75be: $97
	sbc  c                                           ; $75bf: $99
	add  b                                           ; $75c0: $80
	sbc  a                                           ; $75c1: $9f
	add  b                                           ; $75c2: $80
	rst  $38                                         ; $75c3: $ff
	inc  bc                                          ; $75c4: $03
	sbc  a                                           ; $75c5: $9f
	sub  a                                           ; $75c6: $97
	pop  af                                          ; $75c7: $f1
	ld   de, $ff80                                   ; $75c8: $11 $80 $ff
	add  c                                           ; $75cb: $81
	pop  af                                          ; $75cc: $f1
	nop                                              ; $75cd: $00
	ld   de, $f182                                   ; $75ce: $11 $82 $f1
	add  b                                           ; $75d1: $80
	rst  $38                                         ; $75d2: $ff
	ld   bc, $f2f1                                   ; $75d3: $01 $f1 $f2
	add  b                                           ; $75d6: $80
	ei                                               ; $75d7: $fb
	ld   bc, $1a1b                                   ; $75d8: $01 $1b $1a
	add  c                                           ; $75db: $81
	dec  de                                          ; $75dc: $1b
	inc  b                                           ; $75dd: $04
	dec  e                                           ; $75de: $1d
	rra                                              ; $75df: $1f
	ld   e, $1f                                      ; $75e0: $1e $1f
	add  hl, de                                      ; $75e2: $19
	add  b                                           ; $75e3: $80
	ei                                               ; $75e4: $fb
	ld   b, $1b                                      ; $75e5: $06 $1b
	add  $df                                         ; $75e7: $c6 $df
	ret  nz                                          ; $75e9: $c0

	sbc  $5e                                         ; $75ea: $de $5e
	sbc  [hl]                                        ; $75ec: $9e
	add  b                                           ; $75ed: $80
	cp   [hl]                                        ; $75ee: $be
	ld   [bc], a                                     ; $75ef: $02
	and  c                                           ; $75f0: $a1
	cp   a                                           ; $75f1: $bf
	rra                                              ; $75f2: $1f
	add  c                                           ; $75f3: $81
	rst  JumpTable                                         ; $75f4: $df
	ld   [bc], a                                     ; $75f5: $02
	pop  bc                                          ; $75f6: $c1
	rst  JumpTable                                         ; $75f7: $df
	ld   h, a                                        ; $75f8: $67
	add  c                                           ; $75f9: $81
	db   $fc                                         ; $75fa: $fc
	nop                                              ; $75fb: $00
	inc  b                                           ; $75fc: $04
	add  d                                           ; $75fd: $82
	ld   a, h                                        ; $75fe: $7c
	ld   bc, $877f                                   ; $75ff: $01 $7f $87
	add  e                                           ; $7602: $83
	db   $fc                                         ; $7603: $fc
	nop                                              ; $7604: $00
	add  h                                           ; $7605: $84
	add  h                                           ; $7606: $84
	jr   nz, jr_074_7589                             ; $7607: $20 $80

	ccf                                              ; $7609: $3f
	add  b                                           ; $760a: $80
	ldh  [$83], a                                    ; $760b: $e0 $83
	jr   nz, jr_074_7613                             ; $760d: $20 $04

	ld   a, a                                        ; $760f: $7f
	sbc  a                                           ; $7610: $9f
	sub  b                                           ; $7611: $90
	sbc  a                                           ; $7612: $9f

jr_074_7613:
	xor  a                                           ; $7613: $af
	add  c                                           ; $7614: $81
	cp   a                                           ; $7615: $bf
	ld   [bc], a                                     ; $7616: $02
	or   b                                           ; $7617: $b0
	cp   a                                           ; $7618: $bf
	adc  a                                           ; $7619: $8f
	add  e                                           ; $761a: $83
	sbc  a                                           ; $761b: $9f
	ld   [bc], a                                     ; $761c: $02
	ld   bc, $31f1                                   ; $761d: $01 $f1 $31
	add  b                                           ; $7620: $80
	pop  af                                          ; $7621: $f1
	add  b                                           ; $7622: $80
	rst  $38                                         ; $7623: $ff
	ld   bc, $30f1                                   ; $7624: $01 $f1 $30
	add  l                                           ; $7627: $85
	pop  af                                          ; $7628: $f1
	nop                                              ; $7629: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $762a: $cf
	add  d                                           ; $762b: $82
	rst  $38                                         ; $762c: $ff
	inc  bc                                          ; $762d: $03
	cp   $e0                                         ; $762e: $fe $e0
	rst  $38                                         ; $7630: $ff
	rra                                              ; $7631: $1f
	add  c                                           ; $7632: $81
	rst  $38                                         ; $7633: $ff
	add  b                                           ; $7634: $80
	ld   e, a                                        ; $7635: $5f
	add  b                                           ; $7636: $80
	xor  d                                           ; $7637: $aa
	add  b                                           ; $7638: $80
	rst  $38                                         ; $7639: $ff
	ld   [bc], a                                     ; $763a: $02
	cp   $ff                                         ; $763b: $fe $ff
	cp   $80                                         ; $763d: $fe $80
	ld   b, d                                        ; $763f: $42
	add  b                                           ; $7640: $80
	cp   l                                           ; $7641: $bd
	add  e                                           ; $7642: $83
	rst  $38                                         ; $7643: $ff
	add  b                                           ; $7644: $80
	xor  d                                           ; $7645: $aa
	nop                                              ; $7646: $00
	ret  nz                                          ; $7647: $c0

	add  b                                           ; $7648: $80
	cp   a                                           ; $7649: $bf
	ld   bc, $003f                                   ; $764a: $01 $3f $00
	add  e                                           ; $764d: $83
	rst  $38                                         ; $764e: $ff
	add  b                                           ; $764f: $80
	ld   [$5580], a                                  ; $7650: $ea $80 $55
	add  b                                           ; $7653: $80
	xor  d                                           ; $7654: $aa
	dec  b                                           ; $7655: $05
	jr   nc, @+$01                                   ; $7656: $30 $ff

	cp   a                                           ; $7658: $bf
	rst  $38                                         ; $7659: $ff
	ld   e, a                                        ; $765a: $5f
	rst  JumpTable                                         ; $765b: $df
	add  b                                           ; $765c: $80
	adc  a                                           ; $765d: $8f
	ld   bc, $4f48                                   ; $765e: $01 $48 $4f
	add  b                                           ; $7661: $80
	adc  a                                           ; $7662: $8f
	add  b                                           ; $7663: $80
	ld   c, a                                        ; $7664: $4f
	add  b                                           ; $7665: $80

jr_074_7666:
	adc  a                                           ; $7666: $8f
	ld   bc, $05f2                                   ; $7667: $01 $f2 $05
	adc  d                                           ; $766a: $8a
	nop                                              ; $766b: $00
	add  b                                           ; $766c: $80
	ld   [bc], a                                     ; $766d: $02
	inc  b                                           ; $766e: $04
	ld   hl, sp+$07                                  ; $766f: $f8 $07
	inc  b                                           ; $7671: $04
	rlca                                             ; $7672: $07
	dec  bc                                          ; $7673: $0b
	add  e                                           ; $7674: $83
	rrca                                             ; $7675: $0f
	ld   [bc], a                                     ; $7676: $02
	ld   b, $07                                      ; $7677: $06 $07
	ld   bc, $0781                                   ; $7679: $01 $81 $07
	ld   [bc], a                                     ; $767c: $02
	cp   $f3                                         ; $767d: $fe $f3
	ldh  a, [c]                                      ; $767f: $f2
	add  l                                           ; $7680: $85
	sub  d                                           ; $7681: $92
	ld   [$ff93], sp                                 ; $7682: $08 $93 $ff
	cp   $44                                         ; $7685: $fe $44
	nop                                              ; $7687: $00
	rst  $38                                         ; $7688: $ff
	cp   e                                           ; $7689: $bb
	db   $fc                                         ; $768a: $fc
	inc  b                                           ; $768b: $04
	add  e                                           ; $768c: $83
	db   $fc                                         ; $768d: $fc
	ld   [bc], a                                     ; $768e: $02
	db   $f4                                         ; $768f: $f4
	rst  $38                                         ; $7690: $ff
	rrca                                             ; $7691: $0f
	add  b                                           ; $7692: $80
	ld   a, [$fd80]                                  ; $7693: $fa $80 $fd
	inc  bc                                          ; $7696: $03
	rst  $38                                         ; $7697: $ff
	or   $9f                                         ; $7698: $f6 $9f
	sub  c                                           ; $769a: $91
	add  e                                           ; $769b: $83
	sub  a                                           ; $769c: $97
	ld   [bc], a                                     ; $769d: $02
	adc  b                                           ; $769e: $88
	rst  $28                                         ; $769f: $ef
	rst  $30                                         ; $76a0: $f7
	add  b                                           ; $76a1: $80
	daa                                              ; $76a2: $27
	inc  bc                                          ; $76a3: $03
	rst  JumpTable                                         ; $76a4: $df
	ret  c                                           ; $76a5: $d8

	ld   hl, sp+$1f                                  ; $76a6: $f8 $1f
	add  h                                           ; $76a8: $84
	pop  af                                          ; $76a9: $f1
	ld   b, $ff                                      ; $76aa: $06 $ff
	rra                                              ; $76ac: $1f
	add  sp, -$20                                    ; $76ad: $e8 $e0
	rst  $38                                         ; $76af: $ff
	rst  $30                                         ; $76b0: $f7
	rst  $38                                         ; $76b1: $ff
	add  b                                           ; $76b2: $80
	nop                                              ; $76b3: $00
	ld   [bc], a                                     ; $76b4: $02
	db   $fc                                         ; $76b5: $fc
	dec  de                                          ; $76b6: $1b
	ld   a, [de]                                     ; $76b7: $1a
	add  c                                           ; $76b8: $81
	dec  de                                          ; $76b9: $1b
	rlca                                             ; $76ba: $07
	dec  b                                           ; $76bb: $05
	rst  $20                                         ; $76bc: $e7
	ei                                               ; $76bd: $fb
	inc  de                                          ; $76be: $13
	inc  bc                                          ; $76bf: $03
	db   $fc                                         ; $76c0: $fc
	db   $ec                                         ; $76c1: $ec
	db   $fd                                         ; $76c2: $fd
	add  b                                           ; $76c3: $80
	nop                                              ; $76c4: $00
	ld   [bc], a                                     ; $76c5: $02
	inc  a                                           ; $76c6: $3c
	sbc  $7e                                         ; $76c7: $de $7e
	add  l                                           ; $76c9: $85
	cp   [hl]                                        ; $76ca: $be
	ld   [$00df], sp                                 ; $76cb: $08 $df $00
	dec  d                                           ; $76ce: $15
	nop                                              ; $76cf: $00
	ld   d, l                                        ; $76d0: $55
	dec  b                                           ; $76d1: $05
	dec  a                                           ; $76d2: $3d
	db   $fc                                         ; $76d3: $fc
	inc  b                                           ; $76d4: $04
	add  b                                           ; $76d5: $80
	ld   a, a                                        ; $76d6: $7f
	ld   [$787a], sp                                 ; $76d7: $08 $7a $78
	ld   a, a                                        ; $76da: $7f
	ld   a, l                                        ; $76db: $7d
	ld   b, b                                        ; $76dc: $40
	ret  nz                                          ; $76dd: $c0

	dec  d                                           ; $76de: $15
	ld   b, b                                        ; $76df: $40
	nop                                              ; $76e0: $00
	add  c                                           ; $76e1: $81
	ld   d, l                                        ; $76e2: $55
	add  b                                           ; $76e3: $80
	jr   nz, jr_074_7666                             ; $76e4: $20 $80

	rst  $38                                         ; $76e6: $ff
	add  b                                           ; $76e7: $80
	nop                                              ; $76e8: $00
	add  b                                           ; $76e9: $80
	rst  $38                                         ; $76ea: $ff
	add  b                                           ; $76eb: $80
	nop                                              ; $76ec: $00
	nop                                              ; $76ed: $00
	ld   d, l                                        ; $76ee: $55
	add  b                                           ; $76ef: $80
	nop                                              ; $76f0: $00
	add  b                                           ; $76f1: $80
	ld   d, l                                        ; $76f2: $55
	ld   [$9f05], sp                                 ; $76f3: $08 $05 $9f
	adc  a                                           ; $76f6: $8f
	sbc  a                                           ; $76f7: $9f
	rst  JumpTable                                         ; $76f8: $df
	sbc  a                                           ; $76f9: $9f
	rra                                              ; $76fa: $1f
	db   $fc                                         ; $76fb: $fc
	ld   a, h                                        ; $76fc: $7c
	add  b                                           ; $76fd: $80
	ld   bc, $6d00                                   ; $76fe: $01 $00 $6d
	add  b                                           ; $7701: $80
	nop                                              ; $7702: $00
	add  c                                           ; $7703: $81
	ld   l, l                                        ; $7704: $6d
	add  b                                           ; $7705: $80
	rst  $38                                         ; $7706: $ff
	dec  b                                           ; $7707: $05
	ret                                              ; $7708: $c9


	ret  z                                           ; $7709: $c8

	or   $f7                                         ; $770a: $f6 $f7
	nop                                              ; $770c: $00
	ld   bc, $bb80                                   ; $770d: $01 $80 $bb
	nop                                              ; $7710: $00
	cp   d                                           ; $7711: $ba
	add  b                                           ; $7712: $80
	ld   bc, $ba06                                   ; $7713: $01 $06 $ba
	cp   e                                           ; $7716: $bb
	db   $10                                         ; $7717: $10
	ld   d, l                                        ; $7718: $55
	nop                                              ; $7719: $00
	rst  $38                                         ; $771a: $ff
	nop                                              ; $771b: $00
	add  b                                           ; $771c: $80
	rst  $38                                         ; $771d: $ff
	nop                                              ; $771e: $00
	nop                                              ; $771f: $00
	add  c                                           ; $7720: $81
	cp   e                                           ; $7721: $bb
	nop                                              ; $7722: $00
	nop                                              ; $7723: $00
	add  b                                           ; $7724: $80
	cp   e                                           ; $7725: $bb
	ld   b, $00                                      ; $7726: $06 $00
	cp   e                                           ; $7728: $bb
	cp   a                                           ; $7729: $bf
	ld   a, a                                        ; $772a: $7f
	nop                                              ; $772b: $00
	rst  $38                                         ; $772c: $ff
	nop                                              ; $772d: $00
	add  b                                           ; $772e: $80
	rst  $38                                         ; $772f: $ff
	inc  b                                           ; $7730: $04
	ccf                                              ; $7731: $3f
	add  b                                           ; $7732: $80
	cp   a                                           ; $7733: $bf
	add  b                                           ; $7734: $80
	nop                                              ; $7735: $00
	add  b                                           ; $7736: $80
	cp   a                                           ; $7737: $bf
	ld   bc, $bf00                                   ; $7738: $01 $00 $bf
	add  b                                           ; $773b: $80
	rst  $38                                         ; $773c: $ff
	ld   [bc], a                                     ; $773d: $02
	inc  b                                           ; $773e: $04
	ei                                               ; $773f: $fb
	ld   [$f981], sp                                 ; $7740: $08 $81 $f9
	ld   bc, $f10e                                   ; $7743: $01 $0e $f1
	add  b                                           ; $7746: $80
	ld   c, $08                                      ; $7747: $0e $08
	db   $fd                                         ; $7749: $fd
	ei                                               ; $774a: $fb
	ld   [bc], a                                     ; $774b: $02
	ei                                               ; $774c: $fb
	or   $cf                                         ; $774d: $f6 $cf
	cpl                                              ; $774f: $2f
	rst  $28                                         ; $7750: $ef
	ccf                                              ; $7751: $3f
	add  c                                           ; $7752: $81
	rst  $38                                         ; $7753: $ff
	ld   bc, $df1f                                   ; $7754: $01 $1f $df
	add  b                                           ; $7757: $80
	rra                                              ; $7758: $1f
	add  b                                           ; $7759: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $775a: $cf
	inc  bc                                          ; $775b: $03
	cpl                                              ; $775c: $2f
	rst  $28                                         ; $775d: $ef
	ld   a, b                                        ; $775e: $78
	ld   b, b                                        ; $775f: $40
	adc  b                                           ; $7760: $88
	nop                                              ; $7761: $00
	add  b                                           ; $7762: $80
	ld   b, b                                        ; $7763: $40
	add  b                                           ; $7764: $80
	jr   nz, jr_074_7769                             ; $7765: $20 $02

	ld   [bc], a                                     ; $7767: $02
	add  a                                           ; $7768: $87

jr_074_7769:
	nop                                              ; $7769: $00
	nop                                              ; $776a: $00
	rrca                                             ; $776b: $0f
	add  b                                           ; $776c: $80
	dec  bc                                          ; $776d: $0b
	add  e                                           ; $776e: $83
	rrca                                             ; $776f: $0f
	add  l                                           ; $7770: $85
	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	db   $10                                         ; $7773: $10
	add  c                                           ; $7774: $81
	rst  $38                                         ; $7775: $ff
	add  b                                           ; $7776: $80
	db   $fd                                         ; $7777: $fd
	add  b                                           ; $7778: $80
	ld   a, a                                        ; $7779: $7f
	nop                                              ; $777a: $00
	rst  $28                                         ; $777b: $ef
	add  l                                           ; $777c: $85
	nop                                              ; $777d: $00
	nop                                              ; $777e: $00
	db   $10                                         ; $777f: $10
	add  l                                           ; $7780: $85
	rst  $38                                         ; $7781: $ff
	nop                                              ; $7782: $00
	rst  $28                                         ; $7783: $ef
	add  l                                           ; $7784: $85
	nop                                              ; $7785: $00
	inc  bc                                          ; $7786: $03
	daa                                              ; $7787: $27
	ei                                               ; $7788: $fb
	db   $fd                                         ; $7789: $fd
	cp   $80                                         ; $778a: $fe $80
	ei                                               ; $778c: $fb
	add  b                                           ; $778d: $80
	db   $fd                                         ; $778e: $fd
	nop                                              ; $778f: $00
	rst  JumpTable                                         ; $7790: $df
	add  l                                           ; $7791: $85
	nop                                              ; $7792: $00
	nop                                              ; $7793: $00
	rst  $38                                         ; $7794: $ff
	add  b                                           ; $7795: $80
	rra                                              ; $7796: $1f
	dec  b                                           ; $7797: $05
	rst  ToBoot                                         ; $7798: $c7
	add  a                                           ; $7799: $87
	pop  af                                          ; $779a: $f1
	pop  bc                                          ; $779b: $c1
	db   $fc                                         ; $779c: $fc
	ld   [hl], e                                     ; $779d: $73
	add  l                                           ; $779e: $85
	nop                                              ; $779f: $00
	nop                                              ; $77a0: $00
	rst  $38                                         ; $77a1: $ff
	add  b                                           ; $77a2: $80
	ccf                                              ; $77a3: $3f
	add  b                                           ; $77a4: $80
	rst  $28                                         ; $77a5: $ef
	add  b                                           ; $77a6: $80
	rst  $30                                         ; $77a7: $f7
	ld   bc, $837c                                   ; $77a8: $01 $7c $83
	add  l                                           ; $77ab: $85
	nop                                              ; $77ac: $00
	add  l                                           ; $77ad: $85
	rst  $38                                         ; $77ae: $ff
	ld   bc, $ff00                                   ; $77af: $01 $00 $ff
	add  l                                           ; $77b2: $85
	nop                                              ; $77b3: $00
	add  l                                           ; $77b4: $85
	rst  $38                                         ; $77b5: $ff
	ld   bc, $ff00                                   ; $77b6: $01 $00 $ff
	add  l                                           ; $77b9: $85
	nop                                              ; $77ba: $00
	nop                                              ; $77bb: $00
	rst  $38                                         ; $77bc: $ff
	add  h                                           ; $77bd: $84
	db   $fc                                         ; $77be: $fc
	ld   bc, $fe01                                   ; $77bf: $01 $01 $fe
	add  l                                           ; $77c2: $85
	nop                                              ; $77c3: $00
	nop                                              ; $77c4: $00
	rst  $38                                         ; $77c5: $ff
	add  b                                           ; $77c6: $80
	cp   a                                           ; $77c7: $bf
	nop                                              ; $77c8: $00
	ld   a, a                                        ; $77c9: $7f
	add  c                                           ; $77ca: $81
	ld   a, [hl]                                     ; $77cb: $7e
	ld   bc, $bc42                                   ; $77cc: $01 $42 $bc
	add  l                                           ; $77cf: $85
	nop                                              ; $77d0: $00
	nop                                              ; $77d1: $00
	rst  $38                                         ; $77d2: $ff
	add  b                                           ; $77d3: $80
	jp   $0305                                       ; $77d4: $c3 $05 $03


	rlca                                             ; $77d7: $07
	inc  bc                                          ; $77d8: $03
	adc  d                                           ; $77d9: $8a
	ld   [bc], a                                     ; $77da: $02
	ld   [hl], b                                     ; $77db: $70
	add  l                                           ; $77dc: $85
	nop                                              ; $77dd: $00
	nop                                              ; $77de: $00
	rst  $38                                         ; $77df: $ff
	add  b                                           ; $77e0: $80
	ei                                               ; $77e1: $fb
	dec  b                                           ; $77e2: $05
	ld   a, b                                        ; $77e3: $78
	ld   hl, sp+$3f                                  ; $77e4: $f8 $3f
	ld   a, a                                        ; $77e6: $7f
	jr   nc, jr_074_77f8                             ; $77e7: $30 $0f

	add  l                                           ; $77e9: $85
	nop                                              ; $77ea: $00
	nop                                              ; $77eb: $00
	rst  $38                                         ; $77ec: $ff
	add  b                                           ; $77ed: $80
	cp   a                                           ; $77ee: $bf
	add  d                                           ; $77ef: $82
	rra                                              ; $77f0: $1f
	ld   bc, $af50                                   ; $77f1: $01 $50 $af
	add  l                                           ; $77f4: $85
	nop                                              ; $77f5: $00
	add  l                                           ; $77f6: $85
	rst  $38                                         ; $77f7: $ff

jr_074_77f8:
	ld   bc, $ff00                                   ; $77f8: $01 $00 $ff
	add  l                                           ; $77fb: $85
	nop                                              ; $77fc: $00
	add  l                                           ; $77fd: $85
	rst  $38                                         ; $77fe: $ff
	ld   bc, $ff00                                   ; $77ff: $01 $00 $ff
	add  l                                           ; $7802: $85
	nop                                              ; $7803: $00
	nop                                              ; $7804: $00
	rst  $38                                         ; $7805: $ff
	add  b                                           ; $7806: $80
	cp   $80                                         ; $7807: $fe $80
	db   $fd                                         ; $7809: $fd
	add  b                                           ; $780a: $80
	rst  $30                                         ; $780b: $f7
	ld   [bc], a                                     ; $780c: $02
	ccf                                              ; $780d: $3f
	ret  nz                                          ; $780e: $c0

	rrca                                             ; $780f: $0f
	add  b                                           ; $7810: $80
	rlca                                             ; $7811: $07
	adc  b                                           ; $7812: $88
	rrca                                             ; $7813: $0f
	add  b                                           ; $7814: $80
	dec  bc                                          ; $7815: $0b
	ld   bc, $ff1f                                   ; $7816: $01 $1f $ff
	add  b                                           ; $7819: $80
	ld   a, a                                        ; $781a: $7f
	rlca                                             ; $781b: $07
	rst  $28                                         ; $781c: $ef
	rst  $38                                         ; $781d: $ff
	rst  $28                                         ; $781e: $ef
	rst  $38                                         ; $781f: $ff
	rst  $28                                         ; $7820: $ef
	rst  $38                                         ; $7821: $ff
	ld   l, l                                        ; $7822: $6d
	ld   a, l                                        ; $7823: $7d
	add  b                                           ; $7824: $80
	rst  $38                                         ; $7825: $ff
	inc  bc                                          ; $7826: $03
	rst  JumpTable                                         ; $7827: $df
	rst  $38                                         ; $7828: $ff
	db   $dd                                         ; $7829: $dd
	db   $fd                                         ; $782a: $fd
	add  b                                           ; $782b: $80
	rst  $38                                         ; $782c: $ff
	add  b                                           ; $782d: $80
	db   $fd                                         ; $782e: $fd
	add  b                                           ; $782f: $80
	cp   l                                           ; $7830: $bd
	add  b                                           ; $7831: $80
	rst  $38                                         ; $7832: $ff
	inc  bc                                          ; $7833: $03
	rst  $28                                         ; $7834: $ef
	rst  $38                                         ; $7835: $ff
	db   $eb                                         ; $7836: $eb
	ei                                               ; $7837: $fb
	add  b                                           ; $7838: $80
	rst  $38                                         ; $7839: $ff
	ld   bc, $ffcf                                   ; $783a: $01 $cf $ff
	add  b                                           ; $783d: $80
	ld   a, [$ff80]                                  ; $783e: $fa $80 $ff
	add  b                                           ; $7841: $80
	ei                                               ; $7842: $fb
	add  b                                           ; $7843: $80
	db   $fd                                         ; $7844: $fd
	add  b                                           ; $7845: $80
	rst  $38                                         ; $7846: $ff
	add  b                                           ; $7847: $80
	cp   $80                                         ; $7848: $fe $80
	rst  $38                                         ; $784a: $ff
	inc  bc                                          ; $784b: $03
	ld   c, h                                        ; $784c: $4c
	rst  $28                                         ; $784d: $ef
	ld   a, [$80fb]                                  ; $784e: $fa $fb $80
	rst  $38                                         ; $7851: $ff
	add  b                                           ; $7852: $80
	rst  $28                                         ; $7853: $ef
	add  h                                           ; $7854: $84
	rst  $38                                         ; $7855: $ff
	add  b                                           ; $7856: $80
	rst  $28                                         ; $7857: $ef
	nop                                              ; $7858: $00
	add  d                                           ; $7859: $82
	add  b                                           ; $785a: $80
	ld   e, $05                                      ; $785b: $1e $05
	jp   $f003                                       ; $785d: $c3 $03 $f0


	sub  b                                           ; $7860: $90
	cp   a                                           ; $7861: $bf
	ldh  a, [$81]                                    ; $7862: $f0 $81
	rst  $38                                         ; $7864: $ff
	add  b                                           ; $7865: $80
	ei                                               ; $7866: $fb
	add  b                                           ; $7867: $80
	rst  $38                                         ; $7868: $ff
	nop                                              ; $7869: $00
	db   $10                                         ; $786a: $10
	add  b                                           ; $786b: $80
	nop                                              ; $786c: $00
	add  b                                           ; $786d: $80
	rst  $38                                         ; $786e: $ff
	add  b                                           ; $786f: $80
	nop                                              ; $7870: $00
	inc  bc                                          ; $7871: $03
	rst  $38                                         ; $7872: $ff
	add  h                                           ; $7873: $84
	rst  $38                                         ; $7874: $ff
	ld   a, a                                        ; $7875: $7f
	add  c                                           ; $7876: $81
	rst  $38                                         ; $7877: $ff
	add  b                                           ; $7878: $80
	ld   a, a                                        ; $7879: $7f
	nop                                              ; $787a: $00
	inc  b                                           ; $787b: $04
	add  b                                           ; $787c: $80
	nop                                              ; $787d: $00
	add  b                                           ; $787e: $80
	rst  $38                                         ; $787f: $ff
	add  b                                           ; $7880: $80
	nop                                              ; $7881: $00
	ld   [bc], a                                     ; $7882: $02
	rst  $38                                         ; $7883: $ff
	ld   de, $80fe                                   ; $7884: $11 $fe $80
	ld   hl, sp-$80                                  ; $7887: $f8 $80
	ldh  a, [rP1]                                    ; $7889: $f0 $00
	db   $10                                         ; $788b: $10
	add  b                                           ; $788c: $80
	ret  nc                                          ; $788d: $d0

	add  b                                           ; $788e: $80
	rlca                                             ; $788f: $07
	add  b                                           ; $7890: $80
	rst  $38                                         ; $7891: $ff
	ld   bc, $1f00                                   ; $7892: $01 $00 $1f
	add  b                                           ; $7895: $80
	db   $e4                                         ; $7896: $e4
	add  b                                           ; $7897: $80
	ld   b, h                                        ; $7898: $44
	ld   bc, $0545                                   ; $7899: $01 $45 $05
	add  c                                           ; $789c: $81
	ld   b, l                                        ; $789d: $45
	ld   [$fd06], sp                                 ; $789e: $08 $06 $fd
	pop  hl                                          ; $78a1: $e1
	di                                               ; $78a2: $f3
	rrca                                             ; $78a3: $0f
	rst  $38                                         ; $78a4: $ff
	db   $fd                                         ; $78a5: $fd
	and  c                                           ; $78a6: $a1
	and  b                                           ; $78a7: $a0
	add  b                                           ; $78a8: $80
	sbc  b                                           ; $78a9: $98
	add  b                                           ; $78aa: $80
	ld   b, [hl]                                     ; $78ab: $46
	dec  b                                           ; $78ac: $05
	ld   hl, $8d20                                   ; $78ad: $21 $20 $8d
	ld   [$ff84], sp                                 ; $78b0: $08 $84 $ff
	add  b                                           ; $78b3: $80
	ld   a, e                                        ; $78b4: $7b
	ld   [bc], a                                     ; $78b5: $02
	or   d                                           ; $78b6: $b2
	adc  e                                           ; $78b7: $8b
	add  $80                                         ; $78b8: $c6 $80
	db   $ed                                         ; $78ba: $ed
	add  b                                           ; $78bb: $80
	dec  [hl]                                        ; $78bc: $35
	add  b                                           ; $78bd: $80
	push de                                          ; $78be: $d5
	add  b                                           ; $78bf: $80
	ld   e, a                                        ; $78c0: $5f
	add  b                                           ; $78c1: $80
	ld   a, a                                        ; $78c2: $7f
	ld   c, $f7                                      ; $78c3: $0e $f7
	cp   a                                           ; $78c5: $bf
	cp   b                                           ; $78c6: $b8
	ld   a, a                                        ; $78c7: $7f
	ld   l, a                                        ; $78c8: $6f
	ldh  [$c0], a                                    ; $78c9: $e0 $c0
	pop  bc                                          ; $78cb: $c1
	ld   bc, $6606                                   ; $78cc: $01 $06 $66
	ld   a, b                                        ; $78cf: $78
	ld   c, b                                        ; $78d0: $48
	ld   d, d                                        ; $78d1: $52
	db   $fd                                         ; $78d2: $fd
	add  c                                           ; $78d3: $81
	rst  $38                                         ; $78d4: $ff
	inc  b                                           ; $78d5: $04
	nop                                              ; $78d6: $00
	rst  $38                                         ; $78d7: $ff
	ld   hl, sp-$19                                  ; $78d8: $f8 $e7
	pop  hl                                          ; $78da: $e1
	add  b                                           ; $78db: $80
	and  d                                           ; $78dc: $a2
	add  b                                           ; $78dd: $80
	ld   d, d                                        ; $78de: $52
	add  b                                           ; $78df: $80
	sub  d                                           ; $78e0: $92
	ld   bc, $cc32                                   ; $78e1: $01 $32 $cc
	add  b                                           ; $78e4: $80
	nop                                              ; $78e5: $00
	ld   b, $ff                                      ; $78e6: $06 $ff
	ret  nz                                          ; $78e8: $c0

	ccf                                              ; $78e9: $3f
	nop                                              ; $78ea: $00
	rst  $38                                         ; $78eb: $ff
	cp   [hl]                                        ; $78ec: $be
	ld   b, c                                        ; $78ed: $41
	add  b                                           ; $78ee: $80
	ld   bc, $4080                                   ; $78ef: $01 $80 $40
	add  b                                           ; $78f2: $80
	ld   b, c                                        ; $78f3: $41
	add  c                                           ; $78f4: $81
	nop                                              ; $78f5: $00
	dec  b                                           ; $78f6: $05
	rst  $38                                         ; $78f7: $ff
	nop                                              ; $78f8: $00
	rst  $38                                         ; $78f9: $ff
	nop                                              ; $78fa: $00
	rst  $38                                         ; $78fb: $ff
	db   $fd                                         ; $78fc: $fd
	add  l                                           ; $78fd: $85
	ld   [bc], a                                     ; $78fe: $02
	nop                                              ; $78ff: $00
	nop                                              ; $7900: $00
	add  b                                           ; $7901: $80
	inc  e                                           ; $7902: $1c
	ld   b, $f1                                      ; $7903: $06 $f1
	ld   bc, $02f6                                   ; $7905: $01 $f6 $02
	db   $fc                                         ; $7908: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7909: $cf
	ccf                                              ; $790a: $3f
	add  b                                           ; $790b: $80
	ld   a, l                                        ; $790c: $7d
	add  b                                           ; $790d: $80
	db   $fd                                         ; $790e: $fd
	add  b                                           ; $790f: $80
	rst  $38                                         ; $7910: $ff
	ld   bc, $0ff7                                   ; $7911: $01 $f7 $0f
	add  b                                           ; $7914: $80
	ld   c, $8a                                      ; $7915: $0e $8a
	rrca                                             ; $7917: $0f
	nop                                              ; $7918: $00
	rra                                              ; $7919: $1f
	add  c                                           ; $791a: $81
	rst  JumpTable                                         ; $791b: $df
	add  b                                           ; $791c: $80
	db   $db                                         ; $791d: $db
	add  a                                           ; $791e: $87
	rst  JumpTable                                         ; $791f: $df
	ld   [bc], a                                     ; $7920: $02
	ld   sp, hl                                      ; $7921: $f9
	cp   c                                           ; $7922: $b9
	cp   a                                           ; $7923: $bf
	adc  d                                           ; $7924: $8a
	rst  $38                                         ; $7925: $ff
	inc  bc                                          ; $7926: $03
	rst  $28                                         ; $7927: $ef
	sub  l                                           ; $7928: $95
	or   h                                           ; $7929: $b4
	cp   $80                                         ; $792a: $fe $80
	rst  $38                                         ; $792c: $ff
	add  b                                           ; $792d: $80
	cp   l                                           ; $792e: $bd
	add  b                                           ; $792f: $80
	db   $fd                                         ; $7930: $fd
	add  b                                           ; $7931: $80
	ld   a, a                                        ; $7932: $7f
	add  d                                           ; $7933: $82
	rst  $38                                         ; $7934: $ff
	inc  bc                                          ; $7935: $03
	rst  JumpTable                                         ; $7936: $df
	ld   sp, $ffb3                                   ; $7937: $31 $b3 $ff
	add  b                                           ; $793a: $80
	rst  $30                                         ; $793b: $f7
	add  d                                           ; $793c: $82
	rst  $38                                         ; $793d: $ff
	add  b                                           ; $793e: $80
	rst  $30                                         ; $793f: $f7
	add  d                                           ; $7940: $82
	rst  $38                                         ; $7941: $ff
	inc  bc                                          ; $7942: $03
	ld   a, l                                        ; $7943: $7d
	or   b                                           ; $7944: $b0
	and  l                                           ; $7945: $a5
	ld   a, [$ff80]                                  ; $7946: $fa $80 $ff
	rlca                                             ; $7949: $07
	ld   h, a                                        ; $794a: $67
	ld   [hl], a                                     ; $794b: $77
	xor  $fe                                         ; $794c: $ee $fe
	rst  $28                                         ; $794e: $ef
	rst  $38                                         ; $794f: $ff
	rst  $28                                         ; $7950: $ef
	rst  $38                                         ; $7951: $ff
	add  b                                           ; $7952: $80
	cp   $06                                         ; $7953: $fe $06
	rst  $28                                         ; $7955: $ef
	ld   sp, $ff35                                   ; $7956: $31 $35 $ff
	ld   a, [hl]                                     ; $7959: $7e
	cp   $f8                                         ; $795a: $fe $f8
	add  c                                           ; $795c: $81
	db   $fc                                         ; $795d: $fc
	add  b                                           ; $795e: $80
	db   $f4                                         ; $795f: $f4
	add  b                                           ; $7960: $80
	db   $e4                                         ; $7961: $e4
	add  b                                           ; $7962: $80
	add  $02                                         ; $7963: $c6 $02
	ld   a, [hl]                                     ; $7965: $7e
	inc  b                                           ; $7966: $04
	ld   l, d                                        ; $7967: $6a
	adc  c                                           ; $7968: $89
	ld   d, b                                        ; $7969: $50
	dec  b                                           ; $796a: $05
	ldh  a, [rSVBK]                                  ; $796b: $f0 $70
	ei                                               ; $796d: $fb
	ld   b, e                                        ; $796e: $43
	and  a                                           ; $796f: $a7
	ld   b, l                                        ; $7970: $45
	add  [hl]                                        ; $7971: $86
	ld   b, h                                        ; $7972: $44
	nop                                              ; $7973: $00
	ld   b, l                                        ; $7974: $45
	add  e                                           ; $7975: $83
	ld   b, h                                        ; $7976: $44
	ld   [$63e5], sp                                 ; $7977: $08 $e5 $63
	db   $e3                                         ; $797a: $e3
	sub  c                                           ; $797b: $91
	ret  nc                                          ; $797c: $d0

	add  $66                                         ; $797d: $c6 $66
	ldh  [$80], a                                    ; $797f: $e0 $80
	add  b                                           ; $7981: $80
	ld   hl, sp+$00                                  ; $7982: $f8 $00
	rst  $38                                         ; $7984: $ff
	add  b                                           ; $7985: $80
	rst  JumpTable                                         ; $7986: $df
	ld   [$4dcd], sp                                 ; $7987: $08 $cd $4d
	ld   l, d                                        ; $798a: $6a
	rra                                              ; $798b: $1f
	xor  $ff                                         ; $798c: $ee $ff
	rst  $10                                         ; $798e: $d7
	adc  $02                                         ; $798f: $ce $02
	add  b                                           ; $7991: $80
	rst  $38                                         ; $7992: $ff
	add  b                                           ; $7993: $80
	rra                                              ; $7994: $1f
	add  b                                           ; $7995: $80
	nop                                              ; $7996: $00
	add  c                                           ; $7997: $81
	rst  $38                                         ; $7998: $ff
	ld   b, $ef                                      ; $7999: $06 $ef
	inc  e                                           ; $799b: $1c
	db   $fc                                         ; $799c: $fc
	pop  af                                          ; $799d: $f1
	ld   h, c                                        ; $799e: $61
	ld   l, [hl]                                     ; $799f: $6e
	ld   c, $80                                      ; $79a0: $0e $80
	ldh  a, [$80]                                    ; $79a2: $f0 $80
	add  a                                           ; $79a4: $87
	add  b                                           ; $79a5: $80
	ccf                                              ; $79a6: $3f
	nop                                              ; $79a7: $00
	rst  $38                                         ; $79a8: $ff
	add  b                                           ; $79a9: $80
	ld   sp, hl                                      ; $79aa: $f9
	ld   [$52fe], sp                                 ; $79ab: $08 $fe $52
	ld   [hl], d                                     ; $79ae: $72
	and  d                                           ; $79af: $a2
	ldh  [c], a                                      ; $79b0: $e2
	ld   h, d                                        ; $79b1: $62
	jp   nz, $22e2                                   ; $79b2: $c2 $e2 $22

	add  c                                           ; $79b5: $81
	ldh  [c], a                                      ; $79b6: $e2
	add  b                                           ; $79b7: $80
	ld   h, d                                        ; $79b8: $62
	add  b                                           ; $79b9: $80
	ld   [hl+], a                                    ; $79ba: $22
	nop                                              ; $79bb: $00
	ld   e, l                                        ; $79bc: $5d
	adc  c                                           ; $79bd: $89
	ld   b, c                                        ; $79be: $41
	nop                                              ; $79bf: $00
	ld   b, b                                        ; $79c0: $40
	add  c                                           ; $79c1: $81
	ld   b, c                                        ; $79c2: $41
	ld   [bc], a                                     ; $79c3: $02
	ld   [bc], a                                     ; $79c4: $02
	inc  bc                                          ; $79c5: $03
	ld   bc, $0381                                   ; $79c6: $01 $81 $03
	add  b                                           ; $79c9: $80
	rlca                                             ; $79ca: $07
	add  d                                           ; $79cb: $82
	rrca                                             ; $79cc: $0f
	add  b                                           ; $79cd: $80
	rra                                              ; $79ce: $1f
	add  b                                           ; $79cf: $80
	dec  de                                          ; $79d0: $1b
	ld   bc, $fdf7                                   ; $79d1: $01 $f7 $fd
	add  [hl]                                        ; $79d4: $86
	rst  $38                                         ; $79d5: $ff
	add  d                                           ; $79d6: $82
	db   $fd                                         ; $79d7: $fd
	add  b                                           ; $79d8: $80
	rst  $38                                         ; $79d9: $ff
	nop                                              ; $79da: $00
	rst  $30                                         ; $79db: $f7
	add  [hl]                                        ; $79dc: $86
	rrca                                             ; $79dd: $0f
	add  b                                           ; $79de: $80
	ld   c, $05                                      ; $79df: $0e $05
	inc  c                                           ; $79e1: $0c
	rrca                                             ; $79e2: $0f
	dec  c                                           ; $79e3: $0d
	ld   c, $0f                                      ; $79e4: $0e $0f
	ld   c, $82                                      ; $79e6: $0e $82
	adc  b                                           ; $79e8: $88
	ld   bc, $0908                                   ; $79e9: $01 $08 $09
	add  b                                           ; $79ec: $80
	ld   [$1881], sp                                 ; $79ed: $08 $81 $18
	ld   b, $11                                      ; $79f0: $06 $11
	add  hl, sp                                      ; $79f2: $39
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79f3: $cf
	rst  $38                                         ; $79f4: $ff
	sub  l                                           ; $79f5: $95
	nop                                              ; $79f6: $00
	sub  b                                           ; $79f7: $90
	add  c                                           ; $79f8: $81
	nop                                              ; $79f9: $00
	ld   [bc], a                                     ; $79fa: $02
	rlca                                             ; $79fb: $07
	nop                                              ; $79fc: $00
	ld   [bc], a                                     ; $79fd: $02
	add  b                                           ; $79fe: $80
	add  b                                           ; $79ff: $80
	dec  b                                           ; $7a00: $05
	sub  b                                           ; $7a01: $90
	ld   l, b                                        ; $7a02: $68
	ld   hl, sp+$3f                                  ; $7a03: $f8 $3f
	rst  $38                                         ; $7a05: $ff
	rst  $30                                         ; $7a06: $f7
	add  c                                           ; $7a07: $81
	nop                                              ; $7a08: $00
	inc  b                                           ; $7a09: $04
	ld   [de], a                                     ; $7a0a: $12
	nop                                              ; $7a0b: $00
	jr   nz, jr_074_7a0e                             ; $7a0c: $20 $00

jr_074_7a0e:
	ld   bc, $2081                                   ; $7a0e: $01 $81 $20
	ld   [$f0d4], sp                                 ; $7a11: $08 $d4 $f0
	ccf                                              ; $7a14: $3f
	rst  $38                                         ; $7a15: $ff
	cp   $00                                         ; $7a16: $fe $00
	inc  d                                           ; $7a18: $14
	nop                                              ; $7a19: $00
	ld   [hl+], a                                    ; $7a1a: $22
	add  b                                           ; $7a1b: $80
	nop                                              ; $7a1c: $00
	inc  b                                           ; $7a1d: $04
	jr   nz, jr_074_7a48                             ; $7a1e: $20 $28

	jr   nz, jr_074_7a72                             ; $7a20: $20 $50

	ld   [hl], b                                     ; $7a22: $70
	add  b                                           ; $7a23: $80
	ld   hl, sp+$1a                                  ; $7a24: $f8 $1a
	ld   [hl], e                                     ; $7a26: $73
	rst  $28                                         ; $7a27: $ef
	ld   e, c                                        ; $7a28: $59
	nop                                              ; $7a29: $00
	ld   b, b                                        ; $7a2a: $40
	nop                                              ; $7a2b: $00
	ld   bc, $8000                                   ; $7a2c: $01 $00 $80
	nop                                              ; $7a2f: $00
	inc  b                                           ; $7a30: $04
	ld   hl, $2129                                   ; $7a31: $21 $29 $21
	jp   c, $fef3                                    ; $7a34: $da $f3 $fe

	rst  $38                                         ; $7a37: $ff
	ld   h, l                                        ; $7a38: $65
	nop                                              ; $7a39: $00
	ld   bc, $2000                                   ; $7a3a: $01 $00 $20
	nop                                              ; $7a3d: $00
	dec  b                                           ; $7a3e: $05
	inc  b                                           ; $7a3f: $04
	ld   b, h                                        ; $7a40: $44
	add  b                                           ; $7a41: $80
	inc  b                                           ; $7a42: $04
	nop                                              ; $7a43: $00
	ld   b, $80                                      ; $7a44: $06 $80
	ld   c, $02                                      ; $7a46: $0e $02

jr_074_7a48:
	ld   a, b                                        ; $7a48: $78
	cp   $44                                         ; $7a49: $fe $44
	add  c                                           ; $7a4b: $81
	nop                                              ; $7a4c: $00
	ld   [bc], a                                     ; $7a4d: $02
	inc  b                                           ; $7a4e: $04
	nop                                              ; $7a4f: $00
	add  b                                           ; $7a50: $80
	add  c                                           ; $7a51: $81
	ld   [$400e], sp                                 ; $7a52: $08 $0e $40
	inc  e                                           ; $7a55: $1c
	ld   [$1d3f], sp                                 ; $7a56: $08 $3f $1d
	ccf                                              ; $7a59: $3f
	ld   de, $3666                                   ; $7a5a: $11 $66 $36
	ld   b, $07                                      ; $7a5d: $06 $07
	ld   [bc], a                                     ; $7a5f: $02
	inc  bc                                          ; $7a60: $03
	db   $10                                         ; $7a61: $10
	ld   d, b                                        ; $7a62: $50
	add  b                                           ; $7a63: $80
	db   $10                                         ; $7a64: $10
	rlca                                             ; $7a65: $07
	sub  b                                           ; $7a66: $90
	ret  z                                           ; $7a67: $c8

	sbc  b                                           ; $7a68: $98
	cp   b                                           ; $7a69: $b8
	ld   hl, sp-$4a                                  ; $7a6a: $f8 $b6
	ld   c, c                                        ; $7a6c: $49
	ld   e, c                                        ; $7a6d: $59
	add  c                                           ; $7a6e: $81
	ld   c, c                                        ; $7a6f: $49
	ld   [bc], a                                     ; $7a70: $02
	ld   l, l                                        ; $7a71: $6d

jr_074_7a72:
	jp   hl                                          ; $7a72: $e9


	db   $eb                                         ; $7a73: $eb
	add  c                                           ; $7a74: $81
	ld   l, c                                        ; $7a75: $69
	add  b                                           ; $7a76: $80
	ld   c, c                                        ; $7a77: $49
	inc  bc                                          ; $7a78: $03
	ld   l, c                                        ; $7a79: $69
	ld   c, c                                        ; $7a7a: $49
	adc  c                                           ; $7a7b: $89
	ccf                                              ; $7a7c: $3f
	add  h                                           ; $7a7d: $84
	ld   [de], a                                     ; $7a7e: $12
	nop                                              ; $7a7f: $00
	sub  [hl]                                        ; $7a80: $96
	add  c                                           ; $7a81: $81
	ld   [de], a                                     ; $7a82: $12
	nop                                              ; $7a83: $00
	inc  de                                          ; $7a84: $13
	add  c                                           ; $7a85: $81
	ld   [de], a                                     ; $7a86: $12
	nop                                              ; $7a87: $00
	call c, Call_074_5981                            ; $7a88: $dc $81 $59
	nop                                              ; $7a8b: $00
	ld   e, e                                        ; $7a8c: $5b
	add  [hl]                                        ; $7a8d: $86
	ld   e, c                                        ; $7a8e: $59
	add  c                                           ; $7a8f: $81
	ld   d, c                                        ; $7a90: $51
	ld   [bc], a                                     ; $7a91: $02
	inc  [hl]                                        ; $7a92: $34
	ld   [hl+], a                                    ; $7a93: $22
	ldh  [c], a                                      ; $7a94: $e2
	adc  d                                           ; $7a95: $8a
	ld   a, [hl+]                                    ; $7a96: $2a
	inc  bc                                          ; $7a97: $03
	ld   l, d                                        ; $7a98: $6a
	call nc, $0141                                   ; $7a99: $d4 $41 $01
	add  b                                           ; $7a9c: $80
	ld   b, c                                        ; $7a9d: $41
	add  e                                           ; $7a9e: $83
	ld   b, b                                        ; $7a9f: $40
	rlca                                             ; $7aa0: $07

jr_074_7aa1:
	ld   b, h                                        ; $7aa1: $44
	ld   e, l                                        ; $7aa2: $5d
	add  hl, hl                                      ; $7aa3: $29
	ld   a, l                                        ; $7aa4: $7d
	ld   b, d                                        ; $7aa5: $42
	ld   c, b                                        ; $7aa6: $48
	ld   a, [hl-]                                    ; $7aa7: $3a
	ccf                                              ; $7aa8: $3f
	add  b                                           ; $7aa9: $80
	ld   a, a                                        ; $7aaa: $7f
	dec  c                                           ; $7aab: $0d
	db   $ed                                         ; $7aac: $ed
	rst  $28                                         ; $7aad: $ef
	ld   e, d                                        ; $7aae: $5a
	or   $54                                         ; $7aaf: $f6 $54
	rst  $30                                         ; $7ab1: $f7
	ld   d, e                                        ; $7ab2: $53
	db   $e3                                         ; $7ab3: $e3
	xor  e                                           ; $7ab4: $ab
	jp   hl                                          ; $7ab5: $e9


	ld   hl, sp-$4e                                  ; $7ab6: $f8 $b2
	ld   b, b                                        ; $7ab8: $40
	rst  $38                                         ; $7ab9: $ff
	add  b                                           ; $7aba: $80
	ld   a, a                                        ; $7abb: $7f
	inc  bc                                          ; $7abc: $03
	add  d                                           ; $7abd: $82
	push de                                          ; $7abe: $d5
	jr   nz, jr_074_7aa1                             ; $7abf: $20 $e0

	add  b                                           ; $7ac1: $80
	pop  af                                          ; $7ac2: $f1
	ld   bc, $7191                                   ; $7ac3: $01 $91 $71
	add  b                                           ; $7ac6: $80
	ld   a, c                                        ; $7ac7: $79
	inc  bc                                          ; $7ac8: $03
	xor  a                                           ; $7ac9: $af
	rra                                              ; $7aca: $1f
	jr   nc, jr_074_7adc                             ; $7acb: $30 $0f

	add  b                                           ; $7acd: $80
	dec  c                                           ; $7ace: $0d
	add  b                                           ; $7acf: $80
	ld   a, [bc]                                     ; $7ad0: $0a
	add  d                                           ; $7ad1: $82
	rrca                                             ; $7ad2: $0f
	add  b                                           ; $7ad3: $80
	rlca                                             ; $7ad4: $07
	add  b                                           ; $7ad5: $80
	rrca                                             ; $7ad6: $0f
	add  b                                           ; $7ad7: $80
	dec  c                                           ; $7ad8: $0d
	ld   [bc], a                                     ; $7ad9: $02
	ld   h, e                                        ; $7ada: $63
	rst  $38                                         ; $7adb: $ff

jr_074_7adc:
	and  e                                           ; $7adc: $a3
	adc  e                                           ; $7add: $8b
	cp   a                                           ; $7ade: $bf
	ld   [bc], a                                     ; $7adf: $02
	or   c                                           ; $7ae0: $b1
	rst  JumpTable                                         ; $7ae1: $df
	pop  af                                          ; $7ae2: $f1
	add  c                                           ; $7ae3: $81
	rst  $38                                         ; $7ae4: $ff
	add  b                                           ; $7ae5: $80
	db   $fd                                         ; $7ae6: $fd
	add  [hl]                                        ; $7ae7: $86
	rst  $38                                         ; $7ae8: $ff
	inc  bc                                          ; $7ae9: $03
	add  e                                           ; $7aea: $83
	cp   a                                           ; $7aeb: $bf
	rst  $30                                         ; $7aec: $f7
	ei                                               ; $7aed: $fb
	add  b                                           ; $7aee: $80
	rst  $28                                         ; $7aef: $ef
	add  b                                           ; $7af0: $80
	rst  $30                                         ; $7af1: $f7
	add  h                                           ; $7af2: $84
	rst  $38                                         ; $7af3: $ff
	add  b                                           ; $7af4: $80
	rst  $28                                         ; $7af5: $ef
	inc  bc                                          ; $7af6: $03
	ld   b, a                                        ; $7af7: $47
	add  a                                           ; $7af8: $87
	adc  a                                           ; $7af9: $8f
	add  a                                           ; $7afa: $87
	add  b                                           ; $7afb: $80
	add  d                                           ; $7afc: $82
	nop                                              ; $7afd: $00
	add  e                                           ; $7afe: $83
	add  c                                           ; $7aff: $81
	add  d                                           ; $7b00: $82
	ld   [bc], a                                     ; $7b01: $02
	sub  b                                           ; $7b02: $90
	ret  nz                                          ; $7b03: $c0

	call nz, $c081                                   ; $7b04: $c4 $81 $c0
	ld   [bc], a                                     ; $7b07: $02
	ld   a, [hl]                                     ; $7b08: $7e
	rst  $38                                         ; $7b09: $ff
	db   $d3                                         ; $7b0a: $d3
	add  c                                           ; $7b0b: $81
	rst  $38                                         ; $7b0c: $ff
	add  b                                           ; $7b0d: $80
	rst  $30                                         ; $7b0e: $f7
	add  b                                           ; $7b0f: $80
	or   e                                           ; $7b10: $b3
	add  d                                           ; $7b11: $82
	inc  sp                                          ; $7b12: $33
	add  b                                           ; $7b13: $80
	or   d                                           ; $7b14: $b2
	add  hl, bc                                      ; $7b15: $09
	ret  nc                                          ; $7b16: $d0

	rst  $38                                         ; $7b17: $ff
	rst  $28                                         ; $7b18: $ef
	rst  $38                                         ; $7b19: $ff
	ei                                               ; $7b1a: $fb
	rst  $38                                         ; $7b1b: $ff
	rst  JumpTable                                         ; $7b1c: $df
	rst  $38                                         ; $7b1d: $ff
	db   $fd                                         ; $7b1e: $fd
	rst  $38                                         ; $7b1f: $ff
	add  b                                           ; $7b20: $80
	xor  a                                           ; $7b21: $af
	ld   bc, $afa7                                   ; $7b22: $01 $a7 $af
	add  b                                           ; $7b25: $80
	xor  e                                           ; $7b26: $ab
	nop                                              ; $7b27: $00
	sub  b                                           ; $7b28: $90
	add  b                                           ; $7b29: $80
	cp   $01                                         ; $7b2a: $fe $01
	ld   a, [hl]                                     ; $7b2c: $7e
	halt                                             ; $7b2d: $76
	add  h                                           ; $7b2e: $84
	ld   a, [hl]                                     ; $7b2f: $7e
	add  e                                           ; $7b30: $83
	ld   a, a                                        ; $7b31: $7f
	inc  b                                           ; $7b32: $04
	jr   nz, jr_074_7bb2                             ; $7b33: $20 $7d

	ld   b, l                                        ; $7b35: $45
	ld   e, a                                        ; $7b36: $5f
	ld   e, [hl]                                     ; $7b37: $5e
	add  d                                           ; $7b38: $82
	ld   e, c                                        ; $7b39: $59
	add  c                                           ; $7b3a: $81
	ld   e, b                                        ; $7b3b: $58
	nop                                              ; $7b3c: $00
	ld   c, b                                        ; $7b3d: $48
	add  c                                           ; $7b3e: $81
	ld   [$9802], sp                                 ; $7b3f: $08 $02 $98
	ret                                              ; $7b42: $c9


	ld   c, c                                        ; $7b43: $49
	add  e                                           ; $7b44: $83
	ret                                              ; $7b45: $c9


	add  d                                           ; $7b46: $82
	adc  c                                           ; $7b47: $89
	nop                                              ; $7b48: $00
	add  [hl]                                        ; $7b49: $86
	add  b                                           ; $7b4a: $80
	adc  a                                           ; $7b4b: $8f
	ld   bc, $e483                                   ; $7b4c: $01 $83 $e4
	adc  l                                           ; $7b4f: $8d
	ld   [de], a                                     ; $7b50: $12
	nop                                              ; $7b51: $00
	sbc  [hl]                                        ; $7b52: $9e
	add  c                                           ; $7b53: $81
	ld   d, c                                        ; $7b54: $51
	nop                                              ; $7b55: $00
	ld   [hl], c                                     ; $7b56: $71
	adc  c                                           ; $7b57: $89
	ld   d, c                                        ; $7b58: $51
	nop                                              ; $7b59: $00
	call nc, Call_074_6a80                           ; $7b5a: $d4 $80 $6a
	add  b                                           ; $7b5d: $80
	ld   a, d                                        ; $7b5e: $7a
	add  d                                           ; $7b5f: $82
	ld   a, [hl-]                                    ; $7b60: $3a
	add  b                                           ; $7b61: $80
	ld   a, [de]                                     ; $7b62: $1a
	add  d                                           ; $7b63: $82
	ld   e, $31                                      ; $7b64: $1e $31
	ld   c, $f7                                      ; $7b66: $0e $f7
	ld   c, h                                        ; $7b68: $4c
	dec  bc                                          ; $7b69: $0b
	ld   a, d                                        ; $7b6a: $7a
	ld   a, e                                        ; $7b6b: $7b
	ld   b, [hl]                                     ; $7b6c: $46
	ccf                                              ; $7b6d: $3f
	ld   a, [hl]                                     ; $7b6e: $7e
	ld   h, h                                        ; $7b6f: $64
	ld   [hl], h                                     ; $7b70: $74
	rla                                              ; $7b71: $17
	ld   hl, sp-$44                                  ; $7b72: $f8 $bc
	push af                                          ; $7b74: $f5
	rst  $30                                         ; $7b75: $f7
	ld   [hl], e                                     ; $7b76: $73
	db   $dd                                         ; $7b77: $dd
	ld   h, b                                        ; $7b78: $60
	call Call_074_5f6e                               ; $7b79: $cd $6e $5f
	ld   a, [bc]                                     ; $7b7c: $0a
	ld   [$a78d], sp                                 ; $7b7d: $08 $8d $a7

Call_074_7b80:
	db   $dd                                         ; $7b80: $dd
	rst  ToBoot                                         ; $7b81: $c7
	xor  $2e                                         ; $7b82: $ee $2e
	ld   a, c                                        ; $7b84: $79
	halt                                             ; $7b85: $76
	sbc  c                                           ; $7b86: $99
	db   $d3                                         ; $7b87: $d3
	ld   a, a                                        ; $7b88: $7f
	ld   a, c                                        ; $7b89: $79

jr_074_7b8a:
	rrca                                             ; $7b8a: $0f
	add  d                                           ; $7b8b: $82
	xor  a                                           ; $7b8c: $af
	daa                                              ; $7b8d: $27
	rst  $28                                         ; $7b8e: $ef
	and  $bb                                         ; $7b8f: $e6 $bb
	and  c                                           ; $7b91: $a1
	sub  e                                           ; $7b92: $93
	pop  bc                                          ; $7b93: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b94: $cf
	ld   l, a                                        ; $7b95: $6f
	adc  a                                           ; $7b96: $8f
	db   $10                                         ; $7b97: $10
	add  l                                           ; $7b98: $85
	rrca                                             ; $7b99: $0f
	add  b                                           ; $7b9a: $80
	dec  bc                                          ; $7b9b: $0b
	add  h                                           ; $7b9c: $84
	rrca                                             ; $7b9d: $0f
	ld   bc, $bb3b                                   ; $7b9e: $01 $3b $bb
	add  d                                           ; $7ba1: $82
	cp   a                                           ; $7ba2: $bf
	add  b                                           ; $7ba3: $80
	cp   e                                           ; $7ba4: $bb
	add  d                                           ; $7ba5: $82
	cp   a                                           ; $7ba6: $bf
	nop                                              ; $7ba7: $00
	rst  $38                                         ; $7ba8: $ff
	add  b                                           ; $7ba9: $80
	cp   a                                           ; $7baa: $bf
	ld   [bc], a                                     ; $7bab: $02
	rst  $38                                         ; $7bac: $ff
	sbc  e                                           ; $7bad: $9b
	ei                                               ; $7bae: $fb
	add  h                                           ; $7baf: $84
	rst  $38                                         ; $7bb0: $ff
	add  b                                           ; $7bb1: $80

jr_074_7bb2:
	cp   $80                                         ; $7bb2: $fe $80
	ld   a, a                                        ; $7bb4: $7f
	add  b                                           ; $7bb5: $80
	rst  $38                                         ; $7bb6: $ff
	add  b                                           ; $7bb7: $80
	ld   a, a                                        ; $7bb8: $7f
	nop                                              ; $7bb9: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bba: $cf
	add  a                                           ; $7bbb: $87
	rst  $38                                         ; $7bbc: $ff
	add  d                                           ; $7bbd: $82
	db   $fd                                         ; $7bbe: $fd
	add  b                                           ; $7bbf: $80
	rst  $38                                         ; $7bc0: $ff
	nop                                              ; $7bc1: $00
	ld   e, a                                        ; $7bc2: $5f
	add  d                                           ; $7bc3: $82
	ldh  [c], a                                      ; $7bc4: $e2
	add  b                                           ; $7bc5: $80
	ldh  a, [c]                                      ; $7bc6: $f2
	add  b                                           ; $7bc7: $80
	pop  af                                          ; $7bc8: $f1
	rlca                                             ; $7bc9: $07
	ld   hl, sp-$05                                  ; $7bca: $f8 $fb
	rst  $38                                         ; $7bcc: $ff
	pop  af                                          ; $7bcd: $f1
	ldh  a, [$fe]                                    ; $7bce: $f0 $fe
	db   $e4                                         ; $7bd0: $e4
	ld   a, [hl-]                                    ; $7bd1: $3a
	add  c                                           ; $7bd2: $81
	or   d                                           ; $7bd3: $b2
	add  b                                           ; $7bd4: $80
	cp   d                                           ; $7bd5: $ba
	inc  c                                           ; $7bd6: $0c
	xor  a                                           ; $7bd7: $af
	ld   h, a                                        ; $7bd8: $67
	rst  $20                                         ; $7bd9: $e7
	add  sp, $10                                     ; $7bda: $e8 $10
	pop  bc                                          ; $7bdc: $c1
	ld   [hl], $00                                   ; $7bdd: $36 $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bdf: $cf
	nop                                              ; $7be0: $00
	ld   d, l                                        ; $7be1: $55
	xor  e                                           ; $7be2: $ab
	xor  d                                           ; $7be3: $aa
	add  c                                           ; $7be4: $81
	xor  e                                           ; $7be5: $ab
	add  b                                           ; $7be6: $80
	dec  hl                                          ; $7be7: $2b
	ld   a, [bc]                                     ; $7be8: $0a
	db   $eb                                         ; $7be9: $eb
	ld   [$a4ee], a                                  ; $7bea: $ea $ee $a4
	ld   [hl], l                                     ; $7bed: $75
	inc  h                                           ; $7bee: $24
	inc  hl                                          ; $7bef: $23
	jr   c, jr_074_7b8a                              ; $7bf0: $38 $98

	ld   a, a                                        ; $7bf2: $7f
	ld   a, [hl]                                     ; $7bf3: $7e
	add  c                                           ; $7bf4: $81
	ld   a, a                                        ; $7bf5: $7f
	inc  bc                                          ; $7bf6: $03
	ld   h, a                                        ; $7bf7: $67
	ld   h, e                                        ; $7bf8: $63
	ld   h, a                                        ; $7bf9: $67
	ld   h, h                                        ; $7bfa: $64
	add  b                                           ; $7bfb: $80
	ld   a, h                                        ; $7bfc: $7c
	ld   [$fe7e], sp                                 ; $7bfd: $08 $7e $fe
	ld   h, e                                        ; $7c00: $63
	db   $e3                                         ; $7c01: $e3
	rrca                                             ; $7c02: $0f
	nop                                              ; $7c03: $00
	ld   [bc], a                                     ; $7c04: $02
	nop                                              ; $7c05: $00
	ld   [$0080], sp                                 ; $7c06: $08 $80 $00
	add  c                                           ; $7c09: $81
	add  b                                           ; $7c0a: $80
	ld   bc, $8090                                   ; $7c0b: $01 $90 $80
	add  b                                           ; $7c0e: $80
	add  d                                           ; $7c0f: $82
	ld   a, [bc]                                     ; $7c10: $0a
	adc  d                                           ; $7c11: $8a
	jp   z, $87c1                                    ; $7c12: $ca $c1 $87

	add  e                                           ; $7c15: $83
	add  a                                           ; $7c16: $87
	sub  a                                           ; $7c17: $97
	add  b                                           ; $7c18: $80
	and  b                                           ; $7c19: $a0
	add  b                                           ; $7c1a: $80
	ret  nz                                          ; $7c1b: $c0

	add  b                                           ; $7c1c: $80
	add  b                                           ; $7c1d: $80
	ld   [bc], a                                     ; $7c1e: $02
	pop  bc                                          ; $7c1f: $c1
	add  c                                           ; $7c20: $81
	or   a                                           ; $7c21: $b7
	add  b                                           ; $7c22: $80
	add  [hl]                                        ; $7c23: $86
	nop                                              ; $7c24: $00
	and  b                                           ; $7c25: $a0
	add  c                                           ; $7c26: $81
	ld   [de], a                                     ; $7c27: $12
	add  b                                           ; $7c28: $80
	sub  d                                           ; $7c29: $92
	ld   bc, $d2f2                                   ; $7c2a: $01 $f2 $d2
	add  h                                           ; $7c2d: $84
	di                                               ; $7c2e: $f3
	ld   [bc], a                                     ; $7c2f: $02
	ld   de, $9c13                                   ; $7c30: $11 $13 $9c
	add  a                                           ; $7c33: $87
	ld   d, c                                        ; $7c34: $51
	nop                                              ; $7c35: $00
	ld   d, l                                        ; $7c36: $55
	add  b                                           ; $7c37: $80
	ld   d, c                                        ; $7c38: $51
	inc  bc                                          ; $7c39: $03
	pop  de                                          ; $7c3a: $d1
	sub  c                                           ; $7c3b: $91
	pop  de                                          ; $7c3c: $d1
	db   $10                                         ; $7c3d: $10
	add  b                                           ; $7c3e: $80
	ld   c, $81                                      ; $7c3f: $0e $81
	ld   h, $82                                      ; $7c41: $26 $82
	daa                                              ; $7c43: $27
	inc  de                                          ; $7c44: $13
	ccf                                              ; $7c45: $3f
	daa                                              ; $7c46: $27
	ld   l, $3e                                      ; $7c47: $2e $3e
	inc  [hl]                                        ; $7c49: $34
	cp   [hl]                                        ; $7c4a: $be
	ld   e, d                                        ; $7c4b: $5a
	ld   d, c                                        ; $7c4c: $51
	ld   h, c                                        ; $7c4d: $61
	ld   a, a                                        ; $7c4e: $7f
	ld   l, [hl]                                     ; $7c4f: $6e
	db   $fd                                         ; $7c50: $fd
	ld   d, c                                        ; $7c51: $51
	db   $fd                                         ; $7c52: $fd
	jp   nc, $e3f2                                   ; $7c53: $d2 $f2 $e3

	ld   sp, hl                                      ; $7c56: $f9

jr_074_7c57:
	sbc  $db                                         ; $7c57: $de $db
	add  b                                           ; $7c59: $80
	rst  $38                                         ; $7c5a: $ff
	dec  b                                           ; $7c5b: $05
	ld   hl, $a1bf                                   ; $7c5c: $21 $bf $a1
	rst  $28                                         ; $7c5f: $ef
	sbc  [hl]                                        ; $7c60: $9e
	ld   a, [hl]                                     ; $7c61: $7e
	add  b                                           ; $7c62: $80
	pop  hl                                          ; $7c63: $e1
	add  hl, bc                                      ; $7c64: $09
	ld   e, l                                        ; $7c65: $5d
	sbc  $da                                         ; $7c66: $de $da
	sub  $d4                                         ; $7c68: $d6 $d4
	rst  $10                                         ; $7c6a: $d7
	ldh  a, [rIE]                                    ; $7c6b: $f0 $ff
	db   $fc                                         ; $7c6d: $fc
	rst  $38                                         ; $7c6e: $ff
	add  b                                           ; $7c6f: $80
	inc  bc                                          ; $7c70: $03
	inc  bc                                          ; $7c71: $03
	db   $ec                                         ; $7c72: $ec
	ldh  a, [rAUD1ENV]                               ; $7c73: $f0 $12
	pop  af                                          ; $7c75: $f1
	add  b                                           ; $7c76: $80
	rst  $20                                         ; $7c77: $e7
	add  b                                           ; $7c78: $80
	and  $05                                         ; $7c79: $e6 $05
	inc  h                                           ; $7c7b: $24
	db   $e4                                         ; $7c7c: $e4
	call nz, $1be4                                   ; $7c7d: $c4 $e4 $1b
	dec  bc                                          ; $7c80: $0b
	add  d                                           ; $7c81: $82
	rrca                                             ; $7c82: $0f
	add  b                                           ; $7c83: $80
	dec  c                                           ; $7c84: $0d
	add  b                                           ; $7c85: $80
	dec  bc                                          ; $7c86: $0b
	add  h                                           ; $7c87: $84
	rrca                                             ; $7c88: $0f
	ld   bc, $ff7f                                   ; $7c89: $01 $7f $ff
	add  b                                           ; $7c8c: $80
	cp   $86                                         ; $7c8d: $fe $86
	cp   a                                           ; $7c8f: $bf
	dec  b                                           ; $7c90: $05
	cp   [hl]                                        ; $7c91: $be
	cp   a                                           ; $7c92: $bf
	or   c                                           ; $7c93: $b1
	cp   a                                           ; $7c94: $bf
	or   d                                           ; $7c95: $b2
	db   $dd                                         ; $7c96: $dd
	add  h                                           ; $7c97: $84
	rst  $38                                         ; $7c98: $ff
	inc  b                                           ; $7c99: $04
	ld   hl, sp-$01                                  ; $7c9a: $f8 $ff
	rst  $10                                         ; $7c9c: $d7
	cp   $3e                                         ; $7c9d: $fe $3e
	add  b                                           ; $7c9f: $80
	rst  $20                                         ; $7ca0: $e7
	rlca                                             ; $7ca1: $07
	sbc  a                                           ; $7ca2: $9f
	ld   b, b                                        ; $7ca3: $40
	rst  $38                                         ; $7ca4: $ff
	ld   hl, sp-$01                                  ; $7ca5: $f8 $ff
	rst  $20                                         ; $7ca7: $e7
	db   $fd                                         ; $7ca8: $fd
	dec  a                                           ; $7ca9: $3d
	add  b                                           ; $7caa: $80
	rst  $38                                         ; $7cab: $ff
	ld   [bc], a                                     ; $7cac: $02
	cp   a                                           ; $7cad: $bf
	cp   [hl]                                        ; $7cae: $be
	cp   $80                                         ; $7caf: $fe $80
	ldh  a, [$81]                                    ; $7cb1: $f0 $81
	ret  nz                                          ; $7cb3: $c0

	ld   bc, $b8f8                                   ; $7cb4: $01 $f8 $b8
	add  b                                           ; $7cb7: $80
	add  b                                           ; $7cb8: $80
	add  b                                           ; $7cb9: $80
	adc  b                                           ; $7cba: $88
	add  hl, bc                                      ; $7cbb: $09
	sub  [hl]                                        ; $7cbc: $96
	ld   d, $f5                                      ; $7cbd: $16 $f5
	dec  d                                           ; $7cbf: $15
	inc  e                                           ; $7cc0: $1c
	inc  b                                           ; $7cc1: $04
	rlca                                             ; $7cc2: $07
	ret  nz                                          ; $7cc3: $c0

	nop                                              ; $7cc4: $00
	ccf                                              ; $7cc5: $3f
	add  h                                           ; $7cc6: $84
	nop                                              ; $7cc7: $00
	inc  b                                           ; $7cc8: $04
	rst  $28                                         ; $7cc9: $ef
	rst  $38                                         ; $7cca: $ff
	ld   c, c                                        ; $7ccb: $49
	ld   l, a                                        ; $7ccc: $6f
	ret                                              ; $7ccd: $c9


	add  b                                           ; $7cce: $80
	rst  $38                                         ; $7ccf: $ff
	add  b                                           ; $7cd0: $80
	nop                                              ; $7cd1: $00
	nop                                              ; $7cd2: $00
	rst  $38                                         ; $7cd3: $ff
	add  b                                           ; $7cd4: $80
	jr   z, jr_074_7c57                              ; $7cd5: $28 $80

	ld   c, b                                        ; $7cd7: $48
	ld   b, $f0                                      ; $7cd8: $06 $f0
	or   b                                           ; $7cda: $b0
	jr   z, jr_074_7d45                              ; $7cdb: $28 $68

	daa                                              ; $7cdd: $27
	ld   b, $de                                      ; $7cde: $06 $de
	add  b                                           ; $7ce0: $80
	ld   bc, $1f05                                   ; $7ce1: $01 $05 $1f
	nop                                              ; $7ce4: $00
	ld   e, $e1                                      ; $7ce5: $1e $e1
	rst  $38                                         ; $7ce7: $ff
	db   $e3                                         ; $7ce8: $e3
	add  b                                           ; $7ce9: $80
	ldh  [c], a                                      ; $7cea: $e2
	nop                                              ; $7ceb: $00
	ld   h, e                                        ; $7cec: $63
	add  b                                           ; $7ced: $80
	ld   h, [hl]                                     ; $7cee: $66
	rla                                              ; $7cef: $17
	ld   a, l                                        ; $7cf0: $7d
	db   $fc                                         ; $7cf1: $fc
	ld   h, [hl]                                     ; $7cf2: $66
	ldh  [$f8], a                                    ; $7cf3: $e0 $f8
	db   $e3                                         ; $7cf5: $e3
	ld   h, b                                        ; $7cf6: $60
	sbc  h                                           ; $7cf7: $9c
	ld   c, d                                        ; $7cf8: $4a
	jp   z, $aaea                                    ; $7cf9: $ca $ea $aa

	and  [hl]                                        ; $7cfc: $a6
	add  [hl]                                        ; $7cfd: $86
	sub  [hl]                                        ; $7cfe: $96
	ld   d, $12                                      ; $7cff: $16 $12
	ld   [hl], b                                     ; $7d01: $70
	ld   [$0ca8], sp                                 ; $7d02: $08 $a8 $0c
	ld   l, h                                        ; $7d05: $6c
	inc  e                                           ; $7d06: $1c
	ld   d, b                                        ; $7d07: $50
	add  e                                           ; $7d08: $83
	add  [hl]                                        ; $7d09: $86
	ld   [bc], a                                     ; $7d0a: $02
	sub  a                                           ; $7d0b: $97
	sbc  a                                           ; $7d0c: $9f
	ld   a, a                                        ; $7d0d: $7f
	add  b                                           ; $7d0e: $80
	rra                                              ; $7d0f: $1f
	nop                                              ; $7d10: $00
	nop                                              ; $7d11: $00
	add  b                                           ; $7d12: $80
	rst  $38                                         ; $7d13: $ff
	add  b                                           ; $7d14: $80
	nop                                              ; $7d15: $00
	rlca                                             ; $7d16: $07
	di                                               ; $7d17: $f3
	rla                                              ; $7d18: $17
	ld   h, h                                        ; $7d19: $64
	ld   a, a                                        ; $7d1a: $7f
	nop                                              ; $7d1b: $00
	rst  $38                                         ; $7d1c: $ff
	ld   a, b                                        ; $7d1d: $78
	rst  $38                                         ; $7d1e: $ff
	add  c                                           ; $7d1f: $81
	add  a                                           ; $7d20: $87
	nop                                              ; $7d21: $00
	rlca                                             ; $7d22: $07
	add  b                                           ; $7d23: $80
	rst  $38                                         ; $7d24: $ff
	add  b                                           ; $7d25: $80
	rlca                                             ; $7d26: $07
	ld   [$f1d8], sp                                 ; $7d27: $08 $d8 $f1
	ld   hl, $01f1                                   ; $7d2a: $21 $f1 $01
	ldh  a, [rSB]                                    ; $7d2d: $f0 $01
	ld   sp, hl                                      ; $7d2f: $f9
	ret  z                                           ; $7d30: $c8

	add  b                                           ; $7d31: $80
	ld   hl, sp-$80                                  ; $7d32: $f8 $80
	db   $fc                                         ; $7d34: $fc
	add  c                                           ; $7d35: $81
	rst  $38                                         ; $7d36: $ff
	ld   b, $ce                                      ; $7d37: $06 $ce
	ld   a, a                                        ; $7d39: $7f
	ld   [hl], c                                     ; $7d3a: $71
	ld   e, a                                        ; $7d3b: $5f
	rst  JumpTable                                         ; $7d3c: $df
	rst  $10                                         ; $7d3d: $d7
	ld   d, a                                        ; $7d3e: $57
	add  b                                           ; $7d3f: $80
	ld   a, e                                        ; $7d40: $7b
	dec  bc                                          ; $7d41: $0b
	rst  $38                                         ; $7d42: $ff
	rst  $30                                         ; $7d43: $f7
	cp   a                                           ; $7d44: $bf

jr_074_7d45:
	dec  a                                           ; $7d45: $3d
	sub  a                                           ; $7d46: $97
	sub  e                                           ; $7d47: $93
	rst  $20                                         ; $7d48: $e7
	sub  $e0                                         ; $7d49: $d6 $e0
	ld   c, a                                        ; $7d4b: $4f
	ld   l, a                                        ; $7d4c: $6f
	ld   e, a                                        ; $7d4d: $5f
	add  b                                           ; $7d4e: $80
	ret  c                                           ; $7d4f: $d8

	add  c                                           ; $7d50: $81
	pop  de                                          ; $7d51: $d1
	ld   a, [hl+]                                    ; $7d52: $2a
	ld   [hl], c                                     ; $7d53: $71
	ldh  a, [$30]                                    ; $7d54: $f0 $30
	ldh  a, [$b0]                                    ; $7d56: $f0 $b0
	ld   hl, sp-$35                                  ; $7d58: $f8 $cb
	rst  $38                                         ; $7d5a: $ff
	cp   c                                           ; $7d5b: $b9
	rst  $38                                         ; $7d5c: $ff
	add  hl, bc                                      ; $7d5d: $09
	rst  $38                                         ; $7d5e: $ff
	sbc  e                                           ; $7d5f: $9b
	rst  $38                                         ; $7d60: $ff
	sbc  a                                           ; $7d61: $9f
	rst  $38                                         ; $7d62: $ff
	rlca                                             ; $7d63: $07
	rst  $38                                         ; $7d64: $ff
	rst  $20                                         ; $7d65: $e7
	rst  $38                                         ; $7d66: $ff
	db   $db                                         ; $7d67: $db
	rst  $38                                         ; $7d68: $ff
	ret  c                                           ; $7d69: $d8

	db   $f4                                         ; $7d6a: $f4
	ld   a, c                                        ; $7d6b: $79
	rst  $38                                         ; $7d6c: $ff
	rst  JumpTable                                         ; $7d6d: $df
	rst  $38                                         ; $7d6e: $ff
	jp   nz, $f0ff                                   ; $7d6f: $c2 $ff $f0

	rst  $38                                         ; $7d72: $ff
	cp   $ff                                         ; $7d73: $fe $ff
	ld   hl, sp-$01                                  ; $7d75: $f8 $ff
	cp   $ff                                         ; $7d77: $fe $ff
	db   $fc                                         ; $7d79: $fc
	rrca                                             ; $7d7a: $0f
	ld   c, $0f                                      ; $7d7b: $0e $0f
	ld   bc, $0e80                                   ; $7d7d: $01 $80 $0e
	add  h                                           ; $7d80: $84
	dec  bc                                          ; $7d81: $0b
	add  c                                           ; $7d82: $81
	rrca                                             ; $7d83: $0f
	ld   [bc], a                                     ; $7d84: $02
	ld   a, a                                        ; $7d85: $7f
	cp   a                                           ; $7d86: $bf
	ccf                                              ; $7d87: $3f
	add  h                                           ; $7d88: $84
	cp   a                                           ; $7d89: $bf
	add  b                                           ; $7d8a: $80
	cp   h                                           ; $7d8b: $bc
	add  b                                           ; $7d8c: $80
	or   b                                           ; $7d8d: $b0
	inc  bc                                          ; $7d8e: $03
	add  b                                           ; $7d8f: $80
	ret  nz                                          ; $7d90: $c0

	add  b                                           ; $7d91: $80
	ret  nz                                          ; $7d92: $c0

	add  b                                           ; $7d93: $80
	rst  $38                                         ; $7d94: $ff
	add  b                                           ; $7d95: $80
	db   $fc                                         ; $7d96: $fc
	add  b                                           ; $7d97: $80
	ldh  [$87], a                                    ; $7d98: $e0 $87
	nop                                              ; $7d9a: $00
	inc  b                                           ; $7d9b: $04
	inc  bc                                          ; $7d9c: $03
	nop                                              ; $7d9d: $00
	ld   [bc], a                                     ; $7d9e: $02
	nop                                              ; $7d9f: $00
	ld   bc, $0089                                   ; $7da0: $01 $89 $00
	ld   a, [bc]                                     ; $7da3: $0a
	db   $fc                                         ; $7da4: $fc
	nop                                              ; $7da5: $00
	inc  bc                                          ; $7da6: $03
	nop                                              ; $7da7: $00
	add  b                                           ; $7da8: $80
	nop                                              ; $7da9: $00
	ld   [hl], b                                     ; $7daa: $70
	nop                                              ; $7dab: $00
	ld   c, $00                                      ; $7dac: $0e $00
	ld   bc, $0083                                   ; $7dae: $01 $83 $00
	ld   [bc], a                                     ; $7db1: $02
	ld   bc, $fe00                                   ; $7db2: $01 $00 $fe
	add  l                                           ; $7db5: $85
	nop                                              ; $7db6: $00
	ld   b, $c0                                      ; $7db7: $06 $c0
	nop                                              ; $7db9: $00
	jr   c, jr_074_7dbc                              ; $7dba: $38 $00

jr_074_7dbc:
	rlca                                             ; $7dbc: $07
	nop                                              ; $7dbd: $00
	rst  $38                                         ; $7dbe: $ff
	adc  e                                           ; $7dbf: $8b
	nop                                              ; $7dc0: $00
	ld   [hl+], a                                    ; $7dc1: $22
	ld   a, a                                        ; $7dc2: $7f
	nop                                              ; $7dc3: $00
	rra                                              ; $7dc4: $1f
	ld   h, b                                        ; $7dc5: $60
	ld   h, c                                        ; $7dc6: $61
	ld   h, b                                        ; $7dc7: $60
	ld   h, e                                        ; $7dc8: $63
	ld   h, b                                        ; $7dc9: $60
	ld   l, [hl]                                     ; $7dca: $6e
	ld   h, c                                        ; $7dcb: $61
	ld   a, l                                        ; $7dcc: $7d
	ld   h, b                                        ; $7dcd: $60
	ld   a, d                                        ; $7dce: $7a
	ld   h, h                                        ; $7dcf: $64
	ld   a, h                                        ; $7dd0: $7c
	ld   l, h                                        ; $7dd1: $6c
	ld   a, h                                        ; $7dd2: $7c
	ld   [hl], h                                     ; $7dd3: $74
	sub  h                                           ; $7dd4: $94
	inc  [hl]                                        ; $7dd5: $34
	xor  $04                                         ; $7dd6: $ee $04
	inc  c                                           ; $7dd8: $0c
	add  h                                           ; $7dd9: $84
	inc  d                                           ; $7dda: $14
	inc  c                                           ; $7ddb: $0c
	ld   c, $04                                      ; $7ddc: $0e $04
	ld   b, h                                        ; $7dde: $44
	inc  b                                           ; $7ddf: $04
	inc  c                                           ; $7de0: $0c
	inc  b                                           ; $7de1: $04
	inc  d                                           ; $7de2: $14
	inc  b                                           ; $7de3: $04
	sbc  [hl]                                        ; $7de4: $9e
	add  c                                           ; $7de5: $81
	rst  $38                                         ; $7de6: $ff
	nop                                              ; $7de7: $00
	nop                                              ; $7de8: $00
	add  b                                           ; $7de9: $80
	rst  $38                                         ; $7dea: $ff
	add  a                                           ; $7deb: $87
	ld   a, a                                        ; $7dec: $7f
	nop                                              ; $7ded: $00
	add  a                                           ; $7dee: $87
	add  c                                           ; $7def: $81
	rst  $38                                         ; $7df0: $ff
	nop                                              ; $7df1: $00
	rlca                                             ; $7df2: $07
	add  b                                           ; $7df3: $80
	rst  $38                                         ; $7df4: $ff
	add  e                                           ; $7df5: $83
	rst  $30                                         ; $7df6: $f7
	nop                                              ; $7df7: $00
	db   $f4                                         ; $7df8: $f4
	add  c                                           ; $7df9: $81
	rst  $30                                         ; $7dfa: $f7
	inc  b                                           ; $7dfb: $04
	di                                               ; $7dfc: $f3
	rst  $38                                         ; $7dfd: $ff
	rst  $20                                         ; $7dfe: $e7
	ld   hl, sp-$28                                  ; $7dff: $f8 $d8
	add  b                                           ; $7e01: $80
	ldh  a, [$0b]                                    ; $7e02: $f0 $0b
	rst  $38                                         ; $7e04: $ff
	ldh  [$ef], a                                    ; $7e05: $e0 $ef
	db   $ec                                         ; $7e07: $ec
	rst  $28                                         ; $7e08: $ef
	ld   l, a                                        ; $7e09: $6f
	rst  $28                                         ; $7e0a: $ef
	xor  a                                           ; $7e0b: $af
	rst  $28                                         ; $7e0c: $ef
	ldh  [c], a                                      ; $7e0d: $e2
	rst  $30                                         ; $7e0e: $f7
	ld   sp, hl                                      ; $7e0f: $f9
	add  c                                           ; $7e10: $81
	rra                                              ; $7e11: $1f
	inc  b                                           ; $7e12: $04
	nop                                              ; $7e13: $00
	rst  $38                                         ; $7e14: $ff
	nop                                              ; $7e15: $00
	rst  $38                                         ; $7e16: $ff
	ld   c, $83                                      ; $7e17: $0e $83
	rst  $30                                         ; $7e19: $f7
	dec  b                                           ; $7e1a: $05
	ldh  [c], a                                      ; $7e1b: $e2
	dec  e                                           ; $7e1c: $1d
	add  c                                           ; $7e1d: $81
	add  [hl]                                        ; $7e1e: $86
	sbc  $dc                                         ; $7e1f: $de $dc
	add  b                                           ; $7e21: $80
	inc  a                                           ; $7e22: $3c
	ld   bc, $edfd                                   ; $7e23: $01 $fd $ed
	add  c                                           ; $7e26: $81
	dec  l                                           ; $7e27: $2d
	add  b                                           ; $7e28: $80
	cpl                                              ; $7e29: $2f
	dec  bc                                          ; $7e2a: $0b
	ccf                                              ; $7e2b: $3f
	call $edff                                       ; $7e2c: $cd $ff $ed
	ld   a, a                                        ; $7e2f: $7f
	sub  [hl]                                        ; $7e30: $96
	rst  $38                                         ; $7e31: $ff
	ldh  a, [$d8]                                    ; $7e32: $f0 $d8
	add  a                                           ; $7e34: $87
	sub  [hl]                                        ; $7e35: $96
	or   [hl]                                        ; $7e36: $b6
	add  c                                           ; $7e37: $81
	or   h                                           ; $7e38: $b4
	inc  c                                           ; $7e39: $0c
	cp   b                                           ; $7e3a: $b8
	or   d                                           ; $7e3b: $b2
	ei                                               ; $7e3c: $fb
	rst  $38                                         ; $7e3d: $ff
	cp   $ff                                         ; $7e3e: $fe $ff
	ld   a, b                                        ; $7e40: $78
	cp   $7b                                         ; $7e41: $fe $7b
	ld   bc, $de3f                                   ; $7e43: $01 $3f $de
	jp   nc, wDormRoomButtonsDisplayed                                   ; $7e46: $d2 $83 $cc

	ld   l, c                                        ; $7e49: $69
	nop                                              ; $7e4a: $00
	ld   bc, $04fb                                   ; $7e4b: $01 $fb $04
	add  b                                           ; $7e4e: $80
	ld   a, [bc]                                     ; $7e4f: $0a
	add  b                                           ; $7e50: $80
	ld   b, $84                                      ; $7e51: $06 $84
	ld   c, $80                                      ; $7e53: $0e $80
	ld   b, $81                                      ; $7e55: $06 $81
	nop                                              ; $7e57: $00
	add  [hl]                                        ; $7e58: $86
	ld   a, a                                        ; $7e59: $7f
	dec  b                                           ; $7e5a: $05
	ld   bc, $feff                                   ; $7e5b: $01 $ff $fe
	inc  bc                                          ; $7e5e: $03
	xor  e                                           ; $7e5f: $ab
	xor  b                                           ; $7e60: $a8
	add  b                                           ; $7e61: $80
	ld   d, h                                        ; $7e62: $54
	add  h                                           ; $7e63: $84

jr_074_7e64:
	db   $fc                                         ; $7e64: $fc
	add  d                                           ; $7e65: $82
	ld   hl, sp+$00                                  ; $7e66: $f8 $00

jr_074_7e68:
	nop                                              ; $7e68: $00
	add  b                                           ; $7e69: $80
	ld   hl, sp+$02                                  ; $7e6a: $f8 $02

jr_074_7e6c:
	nop                                              ; $7e6c: $00
	xor  b                                           ; $7e6d: $a8
	xor  h                                           ; $7e6e: $ac
	add  c                                           ; $7e6f: $81
	inc  d                                           ; $7e70: $14
	nop                                              ; $7e71: $00
	ld   [de], a                                     ; $7e72: $12
	adc  b                                           ; $7e73: $88
	ld   a, [de]                                     ; $7e74: $1a
	nop                                              ; $7e75: $00
	ld   [bc], a                                     ; $7e76: $02
	add  b                                           ; $7e77: $80
	inc  bc                                          ; $7e78: $03
	add  d                                           ; $7e79: $82
	ld   bc, $0084                                   ; $7e7a: $01 $84 $00
	add  b                                           ; $7e7d: $80
	jr   c, @-$7e                                    ; $7e7e: $38 $80

	db   $fc                                         ; $7e80: $fc
	nop                                              ; $7e81: $00
	ldh  [c], a                                      ; $7e82: $e2
	add  b                                           ; $7e83: $80
	db   $fd                                         ; $7e84: $fd
	add  hl, bc                                      ; $7e85: $09
	db   $fc                                         ; $7e86: $fc
	rst  $38                                         ; $7e87: $ff
	db   $fd                                         ; $7e88: $fd
	rst  $38                                         ; $7e89: $ff
	di                                               ; $7e8a: $f3
	ld   e, $0d                                      ; $7e8b: $1e $0d
	add  hl, de                                      ; $7e8d: $19
	dec  e                                           ; $7e8e: $1d
	dec  h                                           ; $7e8f: $25
	add  c                                           ; $7e90: $81
	dec  a                                           ; $7e91: $3d
	ld   [bc], a                                     ; $7e92: $02
	ld   l, e                                        ; $7e93: $6b
	ld   h, h                                        ; $7e94: $64
	db   $e4                                         ; $7e95: $e4

jr_074_7e96:
	add  b                                           ; $7e96: $80
	call nz, $8480                                   ; $7e97: $c4 $80 $84

jr_074_7e9a:
	ld   bc, $1004                                   ; $7e9a: $01 $04 $10
	add  l                                           ; $7e9d: $85
	nop                                              ; $7e9e: $00

jr_074_7e9f:
	nop                                              ; $7e9f: $00
	rra                                              ; $7ea0: $1f
	add  l                                           ; $7ea1: $85
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	rst  $38                                         ; $7ea4: $ff
	add  l                                           ; $7ea5: $85
	inc  bc                                          ; $7ea6: $03
	nop                                              ; $7ea7: $00
	db   $fc                                         ; $7ea8: $fc
	add  l                                           ; $7ea9: $85
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	ldh  a, [$85]                                    ; $7eac: $f0 $85
	ld   h, b                                        ; $7eae: $60
	nop                                              ; $7eaf: $00
	ld   l, a                                        ; $7eb0: $6f
	adc  l                                           ; $7eb1: $8d
	inc  bc                                          ; $7eb2: $03
	nop                                              ; $7eb3: $00
	inc  c                                           ; $7eb4: $0c
	adc  l                                           ; $7eb5: $8d
	ld   h, b                                        ; $7eb6: $60
	nop                                              ; $7eb7: $00
	ld   l, a                                        ; $7eb8: $6f
	add  e                                           ; $7eb9: $83
	inc  bc                                          ; $7eba: $03
	adc  d                                           ; $7ebb: $8a
	dec  bc                                          ; $7ebc: $0b
	nop                                              ; $7ebd: $00
	dec  de                                          ; $7ebe: $1b
	add  b                                           ; $7ebf: $80

jr_074_7ec0:
	ld   a, [de]                                     ; $7ec0: $1a
	add  b                                           ; $7ec1: $80
	dec  de                                          ; $7ec2: $1b
	add  b                                           ; $7ec3: $80
	ld   a, [de]                                     ; $7ec4: $1a
	add  b                                           ; $7ec5: $80
	dec  de                                          ; $7ec6: $1b
	add  b                                           ; $7ec7: $80
	ld   a, [de]                                     ; $7ec8: $1a
	add  b                                           ; $7ec9: $80
	dec  de                                          ; $7eca: $1b
	add  b                                           ; $7ecb: $80
	ld   a, [de]                                     ; $7ecc: $1a
	inc  bc                                          ; $7ecd: $03
	dec  de                                          ; $7ece: $1b
	inc  de                                          ; $7ecf: $13
	ld   [de], a                                     ; $7ed0: $12
	ld   a, [de]                                     ; $7ed1: $1a
	add  b                                           ; $7ed2: $80
	dec  de                                          ; $7ed3: $1b
	add  b                                           ; $7ed4: $80
	ld   a, [de]                                     ; $7ed5: $1a
	rlca                                             ; $7ed6: $07
	dec  de                                          ; $7ed7: $1b
	dec  sp                                          ; $7ed8: $3b
	jr   c, jr_074_7f53                              ; $7ed9: $38 $78

	ld   a, c                                        ; $7edb: $79
	ld   bc, $0f00                                   ; $7edc: $01 $00 $0f
	add  b                                           ; $7edf: $80
	ld   h, b                                        ; $7ee0: $60
	add  b                                           ; $7ee1: $80
	jr   nz, jr_074_7e64                             ; $7ee2: $20 $80

	ld   h, b                                        ; $7ee4: $60
	add  b                                           ; $7ee5: $80
	jr   nz, jr_074_7e68                             ; $7ee6: $20 $80

	ld   h, b                                        ; $7ee8: $60
	add  b                                           ; $7ee9: $80
	jr   nz, jr_074_7e6c                             ; $7eea: $20 $80

	ld   h, b                                        ; $7eec: $60
	ld   a, [de]                                     ; $7eed: $1a
	jr   nz, jr_074_7ec0                             ; $7eee: $20 $d0

	rst  $38                                         ; $7ef0: $ff
	push de                                          ; $7ef1: $d5
	rst  $38                                         ; $7ef2: $ff
	dec  d                                           ; $7ef3: $15
	ccf                                              ; $7ef4: $3f
	push de                                          ; $7ef5: $d5
	rst  $38                                         ; $7ef6: $ff
	ret  nz                                          ; $7ef7: $c0

	rst  $38                                         ; $7ef8: $ff
	ld   a, [hl+]                                    ; $7ef9: $2a
	ccf                                              ; $7efa: $3f
	ld   [$c4ff], a                                  ; $7efb: $ea $ff $c4
	rst  $38                                         ; $7efe: $ff
	sub  $f8                                         ; $7eff: $d6 $f8
	ld   a, b                                        ; $7f01: $78
	ld   hl, sp+$40                                  ; $7f02: $f8 $40
	ret  nz                                          ; $7f04: $c0

	ld   a, h                                        ; $7f05: $7c
	db   $fc                                         ; $7f06: $fc
	ld   a, [hl]                                     ; $7f07: $7e
	cp   $80                                         ; $7f08: $fe $80
	ldh  [rDIV], a                                   ; $7f0a: $e0 $04
	cp   a                                           ; $7f0c: $bf
	rst  $38                                         ; $7f0d: $ff
	ccf                                              ; $7f0e: $3f
	rst  $38                                         ; $7f0f: $ff
	adc  a                                           ; $7f10: $8f
	add  b                                           ; $7f11: $80
	ld   b, b                                        ; $7f12: $40
	add  b                                           ; $7f13: $80
	jr   nz, jr_074_7e96                             ; $7f14: $20 $80

	ld   b, b                                        ; $7f16: $40
	add  b                                           ; $7f17: $80
	jr   nz, jr_074_7e9a                             ; $7f18: $20 $80

	nop                                              ; $7f1a: $00
	add  b                                           ; $7f1b: $80
	jr   nz, jr_074_7e9f                             ; $7f1c: $20 $81

	nop                                              ; $7f1e: $00
	ld   hl, $7f70                                   ; $7f1f: $21 $70 $7f
	call nc, $c3ff                                   ; $7f22: $d4 $ff $c3
	rst  $38                                         ; $7f25: $ff
	ld   l, b                                        ; $7f26: $68
	ld   a, a                                        ; $7f27: $7f
	add  sp, -$01                                    ; $7f28: $e8 $ff
	jp   Jump_074_54ff                               ; $7f2a: $c3 $ff $54


	ld   a, a                                        ; $7f2d: $7f
	call nc, $d3ff                                   ; $7f2e: $d4 $ff $d3
	ld   hl, sp+$5f                                  ; $7f31: $f8 $5f
	rst  $38                                         ; $7f33: $ff
	adc  a                                           ; $7f34: $8f
	rst  $38                                         ; $7f35: $ff
	jr   z, @-$06                                    ; $7f36: $28 $f8

	cpl                                              ; $7f38: $2f
	rst  $38                                         ; $7f39: $ff
	add  a                                           ; $7f3a: $87
	rst  $38                                         ; $7f3b: $ff
	ld   d, [hl]                                     ; $7f3c: $56
	cp   $17                                         ; $7f3d: $fe $17
	rst  $38                                         ; $7f3f: $ff
	rst  $20                                         ; $7f40: $e7
	nop                                              ; $7f41: $00
	add  d                                           ; $7f42: $82
	add  b                                           ; $7f43: $80
	add  b                                           ; $7f44: $80
	nop                                              ; $7f45: $00
	add  b                                           ; $7f46: $80
	ret  nz                                          ; $7f47: $c0

	add  b                                           ; $7f48: $80
	ldh  [$80], a                                    ; $7f49: $e0 $80
	nop                                              ; $7f4b: $00
	add  b                                           ; $7f4c: $80
	ldh  a, [rAUD3HIGH]                              ; $7f4d: $f0 $1e
	rst  $20                                         ; $7f4f: $e7
	rst  $38                                         ; $7f50: $ff
	ld   l, b                                        ; $7f51: $68
	ld   a, a                                        ; $7f52: $7f

jr_074_7f53:
	add  sp, -$01                                    ; $7f53: $e8 $ff
	jp   Jump_074_54ff                               ; $7f55: $c3 $ff $54


	ld   a, a                                        ; $7f58: $7f
	call nc, $c3ff                                   ; $7f59: $d4 $ff $c3
	rst  $38                                         ; $7f5c: $ff
	ld   l, b                                        ; $7f5d: $68
	ld   a, a                                        ; $7f5e: $7f
	dec  hl                                          ; $7f5f: $2b
	rst  $38                                         ; $7f60: $ff
	dec  hl                                          ; $7f61: $2b
	rst  $38                                         ; $7f62: $ff
	dec  bc                                          ; $7f63: $0b
	rst  $38                                         ; $7f64: $ff
	pop  hl                                          ; $7f65: $e1
	rst  $38                                         ; $7f66: $ff
	dec  d                                           ; $7f67: $15
	rst  $38                                         ; $7f68: $ff
	ld   [bc], a                                     ; $7f69: $02
	rst  $38                                         ; $7f6a: $ff
	ld   hl, sp-$01                                  ; $7f6b: $f8 $ff
	dec  b                                           ; $7f6d: $05
	add  b                                           ; $7f6e: $80
	rst  $38                                         ; $7f6f: $ff
	nop                                              ; $7f70: $00
	ldh  a, [$80]                                    ; $7f71: $f0 $80
	nop                                              ; $7f73: $00
	add  d                                           ; $7f74: $82
	ldh  a, [$80]                                    ; $7f75: $f0 $80
	ldh  [$82], a                                    ; $7f77: $e0 $82
	ldh  a, [$80]                                    ; $7f79: $f0 $80
	ret  nz                                          ; $7f7b: $c0

	ld   h, b                                        ; $7f7c: $60
	db   $db                                         ; $7f7d: $db
	rst  $38                                         ; $7f7e: $ff
	jp   $c3ff                                       ; $7f7f: $c3 $ff $c3


	rst  $38                                         ; $7f82: $ff
	ld   d, h                                        ; $7f83: $54
	ld   a, a                                        ; $7f84: $7f
	add  sp, -$01                                    ; $7f85: $e8 $ff
	jp   $c3ff                                       ; $7f87: $c3 $ff $c3


	rst  $38                                         ; $7f8a: $ff
	ld   l, b                                        ; $7f8b: $68
	ld   a, a                                        ; $7f8c: $7f
	ld   [bc], a                                     ; $7f8d: $02
	rst  $38                                         ; $7f8e: $ff
	db   $fc                                         ; $7f8f: $fc
	rst  $38                                         ; $7f90: $ff
	db   $fc                                         ; $7f91: $fc
	rst  $38                                         ; $7f92: $ff
	ld   [bc], a                                     ; $7f93: $02
	rst  $38                                         ; $7f94: $ff
	ld   bc, $feff                                   ; $7f95: $01 $ff $fe
	rst  $38                                         ; $7f98: $ff
	cp   $ff                                         ; $7f99: $fe $ff
	ld   bc, sRandomSeed                                   ; $7f9b: $01 $ff $bf
	ldh  a, [$30]                                    ; $7f9e: $f0 $30
	ldh  a, [$30]                                    ; $7fa0: $f0 $30
	ldh  a, [hScriptOpcodeParams]                                    ; $7fa2: $f0 $a0
	ldh  [$50], a                                    ; $7fa4: $e0 $50
	ldh  a, [rAUD1SWEEP]                             ; $7fa6: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $7fa8: $f0 $10
	ldh  a, [$50]                                    ; $7faa: $f0 $50
	ldh  a, [$e7]                                    ; $7fac: $f0 $e7
	rst  $38                                         ; $7fae: $ff
	jp   $c3ff                                       ; $7faf: $c3 $ff $c3


	rst  $38                                         ; $7fb2: $ff
	add  sp, -$01                                    ; $7fb3: $e8 $ff
	ld   [$e1ff], a                                  ; $7fb5: $ea $ff $e1
	rst  $38                                         ; $7fb8: $ff
	pop  hl                                          ; $7fb9: $e1
	rst  $38                                         ; $7fba: $ff
	pop  bc                                          ; $7fbb: $c1
	rst  $38                                         ; $7fbc: $ff
	ld   a, [hl+]                                    ; $7fbd: $2a
	rst  $38                                         ; $7fbe: $ff
	cp   $ff                                         ; $7fbf: $fe $ff
	cp   $ff                                         ; $7fc1: $fe $ff
	ld   bc, $01ff                                   ; $7fc3: $01 $ff $01
	rst  $38                                         ; $7fc6: $ff
	db   $fc                                         ; $7fc7: $fc
	rst  $38                                         ; $7fc8: $ff
	db   $fc                                         ; $7fc9: $fc
	rst  $38                                         ; $7fca: $ff
	db   $fc                                         ; $7fcb: $fc
	rst  $38                                         ; $7fcc: $ff
	and  d                                           ; $7fcd: $a2
	ldh  a, [rP1]                                    ; $7fce: $f0 $00
	ldh  a, [rP1]                                    ; $7fd0: $f0 $00
	ldh  a, [$50]                                    ; $7fd2: $f0 $50
	ldh  a, [$50]                                    ; $7fd4: $f0 $50
	ldh  a, [rP1]                                    ; $7fd6: $f0 $00
	ldh  a, [rP1]                                    ; $7fd8: $f0 $00
	ldh  a, [rP1]                                    ; $7fda: $f0 $00
	ldh  a, [hScriptOpcodeParams]                                    ; $7fdc: $f0 $a0
	rst  $38                                         ; $7fde: $ff
	nop                                              ; $7fdf: $00
	rst  $38                                         ; $7fe0: $ff
	nop                                              ; $7fe1: $00
	rst  $38                                         ; $7fe2: $ff
	nop                                              ; $7fe3: $00
	rst  $38                                         ; $7fe4: $ff
	nop                                              ; $7fe5: $00
	rst  $38                                         ; $7fe6: $ff
	nop                                              ; $7fe7: $00
	rst  $38                                         ; $7fe8: $ff
	nop                                              ; $7fe9: $00
	rst  $38                                         ; $7fea: $ff
	nop                                              ; $7feb: $00
	rst  $38                                         ; $7fec: $ff
	nop                                              ; $7fed: $00
	rst  $38                                         ; $7fee: $ff
	nop                                              ; $7fef: $00
	rst  $38                                         ; $7ff0: $ff
	nop                                              ; $7ff1: $00
	rst  $38                                         ; $7ff2: $ff
	nop                                              ; $7ff3: $00
	rst  $38                                         ; $7ff4: $ff
	nop                                              ; $7ff5: $00
	sub  c                                           ; $7ff6: $91
	nop                                              ; $7ff7: $00
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
