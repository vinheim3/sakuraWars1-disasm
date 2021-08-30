; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $070", ROMX[$4000], BANK[$70]

	adc  b                                           ; $4000: $88
	ld   bc, $0086                                   ; $4001: $01 $86 $00
	dec  b                                           ; $4004: $05
	inc  bc                                          ; $4005: $03
	rrca                                             ; $4006: $0f
	add  hl, bc                                      ; $4007: $09
	dec  c                                           ; $4008: $0d
	ld   bc, $8009                                   ; $4009: $01 $09 $80
	rrca                                             ; $400c: $0f
	add  [hl]                                        ; $400d: $86
	nop                                              ; $400e: $00
	rlca                                             ; $400f: $07
	ld   l, d                                        ; $4010: $6a
	ld   a, a                                        ; $4011: $7f
	adc  l                                           ; $4012: $8d
	rst  $38                                         ; $4013: $ff
	ld   hl, sp-$01                                  ; $4014: $f8 $ff
	sbc  l                                           ; $4016: $9d
	db   $fd                                         ; $4017: $fd
	add  [hl]                                        ; $4018: $86
	nop                                              ; $4019: $00
	rlca                                             ; $401a: $07
	add  e                                           ; $401b: $83
	rst  $38                                         ; $401c: $ff
	ld   [hl], e                                     ; $401d: $73
	rst  $38                                         ; $401e: $ff
	add  c                                           ; $401f: $81
	push af                                          ; $4020: $f5
	ei                                               ; $4021: $fb
	ld   a, a                                        ; $4022: $7f
	add  [hl]                                        ; $4023: $86
	nop                                              ; $4024: $00
	rlca                                             ; $4025: $07
	rst  $38                                         ; $4026: $ff
	add  e                                           ; $4027: $83
	and  b                                           ; $4028: $a0
	ld   a, a                                        ; $4029: $7f
	ld   c, c                                        ; $402a: $49
	rst  $28                                         ; $402b: $ef
	ld   a, [$86ff]                                  ; $402c: $fa $ff $86
	nop                                              ; $402f: $00
	rlca                                             ; $4030: $07
	call nc, $22ff                                   ; $4031: $d4 $ff $22
	rst  $38                                         ; $4034: $ff
	pop  af                                          ; $4035: $f1
	rst  $38                                         ; $4036: $ff
	rlca                                             ; $4037: $07
	rst  $38                                         ; $4038: $ff
	add  [hl]                                        ; $4039: $86
	nop                                              ; $403a: $00
	ld   [rAUDVOL], sp                                 ; $403b: $08 $24 $ff
	ld   [bc], a                                     ; $403e: $02
	rst  $38                                         ; $403f: $ff
	add  $ff                                         ; $4040: $c6 $ff
	and  d                                           ; $4042: $a2
	cp   a                                           ; $4043: $bf
	ld   [bc], a                                     ; $4044: $02
	add  l                                           ; $4045: $85
	nop                                              ; $4046: $00
	ld   [$ff03], sp                                 ; $4047: $08 $03 $ff
	or   e                                           ; $404a: $b3
	rst  $38                                         ; $404b: $ff
	db   $db                                         ; $404c: $db
	db   $fd                                         ; $404d: $fd
	add  hl, bc                                      ; $404e: $09
	rst  $38                                         ; $404f: $ff
	ld   h, b                                        ; $4050: $60
	add  l                                           ; $4051: $85
	nop                                              ; $4052: $00
	nop                                              ; $4053: $00
	ldh  [$80], a                                    ; $4054: $e0 $80
	rst  JumpTable                                         ; $4056: $df
	add  b                                           ; $4057: $80
	ld   c, l                                        ; $4058: $4d
	inc  bc                                          ; $4059: $03
	call $cd4d                                       ; $405a: $cd $4d $cd
	xor  l                                           ; $405d: $ad
	add  l                                           ; $405e: $85
	nop                                              ; $405f: $00
	nop                                              ; $4060: $00
	pop  bc                                          ; $4061: $c1

Jump_070_4062:
	add  l                                           ; $4062: $85
	ld   a, [de]                                     ; $4063: $1a
	nop                                              ; $4064: $00
	db   $db                                         ; $4065: $db
	add  l                                           ; $4066: $85
	nop                                              ; $4067: $00
	ld   [$c0df], sp                                 ; $4068: $08 $df $c0
	sbc  $c1                                         ; $406b: $de $c1
	sub  h                                           ; $406d: $94
	call nc, $ed8d                                   ; $406e: $d4 $8d $ed
	db   $20, $85                                    ; $4071: $20 $85
	nop                                              ; $4073: $00
	add  b                                           ; $4074: $80
	dec  b                                           ; $4075: $05
	add  b                                           ; $4076: $80
	sbc  e                                           ; $4077: $9b
	add  d                                           ; $4078: $82
	ld   e, a                                        ; $4079: $5f
	add  [hl]                                        ; $407a: $86
	nop                                              ; $407b: $00
	rlca                                             ; $407c: $07
	add  e                                           ; $407d: $83
	rst  $38                                         ; $407e: $ff
	xor  h                                           ; $407f: $ac
	rst  $38                                         ; $4080: $ff
	ld   [hl], b                                     ; $4081: $70
	rst  $38                                         ; $4082: $ff
	db   $db                                         ; $4083: $db
	ld   a, e                                        ; $4084: $7b
	add  [hl]                                        ; $4085: $86
	nop                                              ; $4086: $00
	ld   [$ff60], sp                                 ; $4087: $08 $60 $ff
	sub  e                                           ; $408a: $93
	rst  $38                                         ; $408b: $ff
	sub  c                                           ; $408c: $91
	rst  $38                                         ; $408d: $ff
	ld   c, h                                        ; $408e: $4c
	rst  $38                                         ; $408f: $ff
	ld   l, $85                                      ; $4090: $2e $85
	nop                                              ; $4092: $00
	ld   [$ff69], sp                                 ; $4093: $08 $69 $ff
	halt                                             ; $4096: $76
	rst  $38                                         ; $4097: $ff
	sbc  a                                           ; $4098: $9f
	rst  $38                                         ; $4099: $ff
	add  [hl]                                        ; $409a: $86
	rst  $38                                         ; $409b: $ff
	ld   b, $85                                      ; $409c: $06 $85
	nop                                              ; $409e: $00
	ld   [$ff96], sp                                 ; $409f: $08 $96 $ff
	ldh  [rIE], a                                    ; $40a2: $e0 $ff
	rst  $10                                         ; $40a4: $d7
	rst  $38                                         ; $40a5: $ff
	xor  [hl]                                        ; $40a6: $ae
	rst  $38                                         ; $40a7: $ff
	rrca                                             ; $40a8: $0f
	add  l                                           ; $40a9: $85
	nop                                              ; $40aa: $00
	ld   [$ff8d], sp                                 ; $40ab: $08 $8d $ff
	ret  c                                           ; $40ae: $d8

	rst  $38                                         ; $40af: $ff
	cp   b                                           ; $40b0: $b8
	rst  $38                                         ; $40b1: $ff
	ld   a, [hl+]                                    ; $40b2: $2a
	rst  $38                                         ; $40b3: $ff
	ret  z                                           ; $40b4: $c8

	add  c                                           ; $40b5: $81
	rrca                                             ; $40b6: $0f
	ld   bc, $0f07                                   ; $40b7: $01 $07 $0f
	add  b                                           ; $40ba: $80
	rlca                                             ; $40bb: $07
	add  hl, de                                      ; $40bc: $19
	ld   c, $0f                                      ; $40bd: $0e $0f
	dec  bc                                          ; $40bf: $0b
	ld   c, $07                                      ; $40c0: $0e $07
	rrca                                             ; $40c2: $0f
	ld   bc, $fc03                                   ; $40c3: $01 $03 $fc
	ld   a, [$a6a7]                                  ; $40c6: $fa $a7 $a6
	ld   b, d                                        ; $40c9: $42
	ld   h, d                                        ; $40ca: $62
	cp   h                                           ; $40cb: $bc
	sbc  $64                                         ; $40cc: $de $64
	and  h                                           ; $40ce: $a4
	sbc  b                                           ; $40cf: $98
	dec  e                                           ; $40d0: $1d
	push af                                          ; $40d1: $f5
	db   $fd                                         ; $40d2: $fd
	adc  l                                           ; $40d3: $8d
	db   $fd                                         ; $40d4: $fd
	add  c                                           ; $40d5: $81
	rst  $38                                         ; $40d6: $ff
	add  b                                           ; $40d7: $80
	rst  $30                                         ; $40d8: $f7
	nop                                              ; $40d9: $00
	rst  $38                                         ; $40da: $ff
	add  b                                           ; $40db: $80
	db   $fc                                         ; $40dc: $fc
	add  b                                           ; $40dd: $80
	db   $e3                                         ; $40de: $e3
	inc  d                                           ; $40df: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40e0: $cf
	add  $ff                                         ; $40e1: $c6 $ff
	or   [hl]                                        ; $40e3: $b6
	rst  $38                                         ; $40e4: $ff
	adc  b                                           ; $40e5: $88
	rst  $38                                         ; $40e6: $ff
	ret  z                                           ; $40e7: $c8

	rst  $38                                         ; $40e8: $ff
	inc  bc                                          ; $40e9: $03
	di                                               ; $40ea: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40eb: $cf
	rst  $38                                         ; $40ec: $ff
	ld   l, $ef                                      ; $40ed: $2e $ef
	add  c                                           ; $40ef: $81
	rst  $38                                         ; $40f0: $ff
	ret  nz                                          ; $40f1: $c0

	add  b                                           ; $40f2: $80
	ret  nz                                          ; $40f3: $c0

	rst  $38                                         ; $40f4: $ff
	add  b                                           ; $40f5: $80
	cp   $1a                                         ; $40f6: $fe $1a
	rst  JumpTable                                         ; $40f8: $df
	rst  $38                                         ; $40f9: $ff
	ld   bc, $e1ff                                   ; $40fa: $01 $ff $e1
	db   $d3                                         ; $40fd: $d3
	sub  e                                           ; $40fe: $93
	cp   a                                           ; $40ff: $bf
	dec  sp                                          ; $4100: $3b
	ld   a, e                                        ; $4101: $7b
	ld   l, a                                        ; $4102: $6f
	rst  $28                                         ; $4103: $ef
	cp   $ff                                         ; $4104: $fe $ff
	db   $fc                                         ; $4106: $fc
	ei                                               ; $4107: $fb
	daa                                              ; $4108: $27
	rst  $38                                         ; $4109: $ff
	ld   a, c                                        ; $410a: $79
	rst  $38                                         ; $410b: $ff
	and  a                                           ; $410c: $a7
	cp   $6e                                         ; $410d: $fe $6e
	ld   a, e                                        ; $410f: $7b
	db   $eb                                         ; $4110: $eb
	pop  hl                                          ; $4111: $e1
	rst  $38                                         ; $4112: $ff
	add  b                                           ; $4113: $80
	ld   e, [hl]                                     ; $4114: $5e
	dec  b                                           ; $4115: $05
	call z, $cc8c                                    ; $4116: $cc $8c $cc
	sub  d                                           ; $4119: $92
	pop  hl                                          ; $411a: $e1
	rst  $38                                         ; $411b: $ff
	add  b                                           ; $411c: $80
	ld   e, [hl]                                     ; $411d: $5e
	add  e                                           ; $411e: $83
	call z, $8c02                                    ; $411f: $cc $02 $8c
	call z, $818c                                    ; $4122: $cc $8c $81
	call z, Call_070_4d12                            ; $4125: $cc $12 $4d
	call $cd0d                                       ; $4128: $cd $0d $cd
	adc  l                                           ; $412b: $8d
	call $cd4d                                       ; $412c: $cd $4d $cd
	dec  c                                           ; $412f: $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4130: $cf
	add  c                                           ; $4131: $81
	pop  de                                          ; $4132: $d1
	ld   b, b                                        ; $4133: $40
	ldh  [$60], a                                    ; $4134: $e0 $60
	rst  $38                                         ; $4136: $ff
	db   $dd                                         ; $4137: $dd
	ld   [hl+], a                                    ; $4138: $22
	nop                                              ; $4139: $00
	add  b                                           ; $413a: $80
	ld   b, c                                        ; $413b: $41
	inc  h                                           ; $413c: $24
	ld   a, a                                        ; $413d: $7f
	ld   l, l                                        ; $413e: $6d
	ld   a, a                                        ; $413f: $7f
	ld   h, e                                        ; $4140: $63
	ld   a, a                                        ; $4141: $7f
	ld   c, [hl]                                     ; $4142: $4e
	ld   a, a                                        ; $4143: $7f
	ld   c, e                                        ; $4144: $4b
	rst  $38                                         ; $4145: $ff
	ld   d, e                                        ; $4146: $53
	ld   a, a                                        ; $4147: $7f
	push de                                          ; $4148: $d5
	ldh  a, [c]                                      ; $4149: $f2
	ld   e, h                                        ; $414a: $5c
	db   $fc                                         ; $414b: $fc
	ld   d, [hl]                                     ; $414c: $56
	cp   $56                                         ; $414d: $fe $56
	cp   $bb                                         ; $414f: $fe $bb
	rst  $38                                         ; $4151: $ff
	db   $db                                         ; $4152: $db
	rst  $38                                         ; $4153: $ff
	sbc  h                                           ; $4154: $9c
	cp   $dd                                         ; $4155: $fe $dd
	rst  $38                                         ; $4157: $ff
	cp   [hl]                                        ; $4158: $be
	ccf                                              ; $4159: $3f
	ld   e, [hl]                                     ; $415a: $5e
	ld   e, a                                        ; $415b: $5f
	ld   de, $8417                                   ; $415c: $11 $17 $84
	or   e                                           ; $415f: $b3
	pop  de                                          ; $4160: $d1
	ldh  [$80], a                                    ; $4161: $e0 $80
	sub  l                                           ; $4163: $95
	add  b                                           ; $4164: $80
	jp   nc, $8e80                                   ; $4165: $d2 $80 $8e

	dec  sp                                          ; $4168: $3b
	cp   $ff                                         ; $4169: $fe $ff
	or   b                                           ; $416b: $b0
	rst  $38                                         ; $416c: $ff
	adc  c                                           ; $416d: $89
	rst  $38                                         ; $416e: $ff
	db   $f4                                         ; $416f: $f4
	rst  $38                                         ; $4170: $ff
	sub  e                                           ; $4171: $93
	rst  $38                                         ; $4172: $ff
	add  b                                           ; $4173: $80
	rst  $38                                         ; $4174: $ff
	ldh  a, [c]                                      ; $4175: $f2
	rst  $38                                         ; $4176: $ff
	jp   nc, $87ff                                   ; $4177: $d2 $ff $87

	rst  $38                                         ; $417a: $ff
	ld   h, a                                        ; $417b: $67
	rst  $38                                         ; $417c: $ff
	rst  $10                                         ; $417d: $d7
	rst  $30                                         ; $417e: $f7
	db   $fd                                         ; $417f: $fd
	rst  $38                                         ; $4180: $ff
	dec  [hl]                                        ; $4181: $35
	rst  $38                                         ; $4182: $ff
	cp   e                                           ; $4183: $bb
	rst  $38                                         ; $4184: $ff
	and  h                                           ; $4185: $a4
	rst  $38                                         ; $4186: $ff
	ret  c                                           ; $4187: $d8

	rst  $38                                         ; $4188: $ff
	adc  $7f                                         ; $4189: $ce $7f
	ld   a, [hl]                                     ; $418b: $7e
	add  e                                           ; $418c: $83
	and  e                                           ; $418d: $a3
	ld   hl, sp+$1a                                  ; $418e: $f8 $1a
	cp   $2c                                         ; $4190: $fe $2c
	rst  $38                                         ; $4192: $ff
	sub  c                                           ; $4193: $91
	rst  $38                                         ; $4194: $ff
	ld   h, c                                        ; $4195: $61
	rst  $38                                         ; $4196: $ff
	dec  de                                          ; $4197: $1b
	rst  $38                                         ; $4198: $ff
	reti                                             ; $4199: $d9


	rst  JumpTable                                         ; $419a: $df
	call c, $f6df                                    ; $419b: $dc $df $f6
	scf                                              ; $419e: $37
	rst  $38                                         ; $419f: $ff
	ret  nz                                          ; $41a0: $c0

	dec  sp                                          ; $41a1: $3b
	ei                                               ; $41a2: $fb
	add  b                                           ; $41a3: $80
	cp   a                                           ; $41a4: $bf
	add  b                                           ; $41a5: $80
	rst  $38                                         ; $41a6: $ff
	rlca                                             ; $41a7: $07
	ld   a, a                                        ; $41a8: $7f
	add  a                                           ; $41a9: $87
	ld   h, $df                                      ; $41aa: $26 $df
	db   $fc                                         ; $41ac: $fc
	db   $fd                                         ; $41ad: $fd
	ld   l, e                                        ; $41ae: $6b
	db   $eb                                         ; $41af: $eb
	add  b                                           ; $41b0: $80
	ld   [hl], d                                     ; $41b1: $72
	ld   [$3f7f], sp                                 ; $41b2: $08 $7f $3f
	cp   c                                           ; $41b5: $b9
	sbc  c                                           ; $41b6: $99
	rst  JumpTable                                         ; $41b7: $df
	ld   e, a                                        ; $41b8: $5f
	rst  $38                                         ; $41b9: $ff
	and  c                                           ; $41ba: $a1
	inc  sp                                          ; $41bb: $33
	add  c                                           ; $41bc: $81
	rrca                                             ; $41bd: $0f
	ld   [bc], a                                     ; $41be: $02
	dec  b                                           ; $41bf: $05
	dec  c                                           ; $41c0: $0d
	inc  b                                           ; $41c1: $04
	add  b                                           ; $41c2: $80
	dec  bc                                          ; $41c3: $0b
	nop                                              ; $41c4: $00
	add  hl, bc                                      ; $41c5: $09
	add  b                                           ; $41c6: $80
	ld   c, $18                                      ; $41c7: $0e $18
	ld   b, $0e                                      ; $41c9: $06 $0e
	nop                                              ; $41cb: $00
	ld   [bc], a                                     ; $41cc: $02
	or   d                                           ; $41cd: $b2
	cp   c                                           ; $41ce: $b9
	and  l                                           ; $41cf: $a5
	cp   l                                           ; $41d0: $bd
	adc  l                                           ; $41d1: $8d
	db   $dd                                         ; $41d2: $dd
	add  l                                           ; $41d3: $85
	call c, $ac94                                    ; $41d4: $dc $94 $ac
	xor  $ce                                         ; $41d7: $ee $ce
	halt                                             ; $41d9: $76
	cp   $78                                         ; $41da: $fe $78
	ld   a, h                                        ; $41dc: $7c
	ld   hl, $42ff                                   ; $41dd: $21 $ff $42
	ld   hl, sp+$18                                  ; $41e0: $f8 $18
	add  b                                           ; $41e2: $80
	di                                               ; $41e3: $f3
	ld   de, $e7e6                                   ; $41e4: $11 $e6 $e7
	call $bcc9                                       ; $41e7: $cd $c9 $bc
	xor  b                                           ; $41ea: $a8
	inc  a                                           ; $41eb: $3c
	xor  b                                           ; $41ec: $a8
	cp   h                                           ; $41ed: $bc
	dec  e                                           ; $41ee: $1d
	rst  $38                                         ; $41ef: $ff
	db   $db                                         ; $41f0: $db
	rst  $38                                         ; $41f1: $ff
	rst  JumpTable                                         ; $41f2: $df
	ld   hl, sp-$21                                  ; $41f3: $f8 $df
	scf                                              ; $41f5: $37
	rst  $30                                         ; $41f6: $f7
	add  b                                           ; $41f7: $80
	jp   nc, $9283                                   ; $41f8: $d2 $83 $92

	ld   b, $45                                      ; $41fb: $06 $45
	or   c                                           ; $41fd: $b1
	cpl                                              ; $41fe: $2f
	xor  $2e                                         ; $41ff: $ee $2e
	db   $e4                                         ; $4201: $e4
	and  h                                           ; $4202: $a4
	add  c                                           ; $4203: $81
	ld   h, h                                        ; $4204: $64
	ld   [$6424], sp                                 ; $4205: $08 $24 $64
	inc  h                                           ; $4208: $24
	ld   h, h                                        ; $4209: $64
	ld   h, b                                        ; $420a: $60
	ld   l, d                                        ; $420b: $6a
	ld   a, [hl]                                     ; $420c: $7e
	call z, $818c                                    ; $420d: $cc $8c $81
	call z, $8c00                                    ; $4210: $cc $00 $8c
	add  c                                           ; $4213: $81
	call z, $c002                                    ; $4214: $cc $02 $c0
	jp   nc, $80c0                                   ; $4217: $d2 $c0 $80

	pop  hl                                          ; $421a: $e1
	ld   b, [hl]                                     ; $421b: $46
	rst  $38                                         ; $421c: $ff
	pop  hl                                          ; $421d: $e1
	call z, $cc8c                                    ; $421e: $cc $8c $cc
	ret  nz                                          ; $4221: $c0

	jp   nc, $e100                                   ; $4222: $d2 $00 $e1

	ld   d, c                                        ; $4225: $51
	rst  $38                                         ; $4226: $ff
	dec  h                                           ; $4227: $25
	rst  $38                                         ; $4228: $ff
	jp   z, Jump_070_58ff                            ; $4229: $ca $ff $58

	rst  $38                                         ; $422c: $ff
	xor  a                                           ; $422d: $af
	rst  $38                                         ; $422e: $ff
	db   $f4                                         ; $422f: $f4
	db   $fd                                         ; $4230: $fd
	sub  e                                           ; $4231: $93
	rst  $38                                         ; $4232: $ff
	ld   b, $ff                                      ; $4233: $06 $ff
	di                                               ; $4235: $f3
	rst  $38                                         ; $4236: $ff
	inc  l                                           ; $4237: $2c
	rst  $38                                         ; $4238: $ff
	sbc  b                                           ; $4239: $98
	rst  $28                                         ; $423a: $ef
	ldh  [$ef], a                                    ; $423b: $e0 $ef
	db   $ec                                         ; $423d: $ec
	rst  $38                                         ; $423e: $ff
	call $deef                                       ; $423f: $cd $ef $de
	rst  $38                                         ; $4242: $ff
	jp   c, $24ff                                    ; $4243: $da $ff $24

	rst  $38                                         ; $4246: $ff
	sub  h                                           ; $4247: $94
	rst  $38                                         ; $4248: $ff
	sub  l                                           ; $4249: $95
	rst  $38                                         ; $424a: $ff
	di                                               ; $424b: $f3
	rst  $38                                         ; $424c: $ff
	ld   e, a                                        ; $424d: $5f
	cp   a                                           ; $424e: $bf
	cp   $ff                                         ; $424f: $fe $ff
	ld   a, d                                        ; $4251: $7a
	rst  $38                                         ; $4252: $ff
	ld   l, a                                        ; $4253: $6f
	rst  $38                                         ; $4254: $ff
	cp   c                                           ; $4255: $b9
	rst  $38                                         ; $4256: $ff
	or   $bf                                         ; $4257: $f6 $bf
	or   e                                           ; $4259: $b3
	rst  $38                                         ; $425a: $ff
	or   [hl]                                        ; $425b: $b6
	rst  $38                                         ; $425c: $ff
	xor  $e0                                         ; $425d: $ee $e0
	ld   e, e                                        ; $425f: $5b
	db   $db                                         ; $4260: $db
	ld   d, e                                        ; $4261: $53
	db   $d3                                         ; $4262: $d3
	add  b                                           ; $4263: $80
	ld   d, b                                        ; $4264: $50
	add  b                                           ; $4265: $80
	ld   hl, sp+$10                                  ; $4266: $f8 $10
	ld   a, d                                        ; $4268: $7a
	ld   a, [$fe3e]                                  ; $4269: $fa $3e $fe
	ld   a, $fe                                      ; $426c: $3e $fe
	scf                                              ; $426e: $37
	cp   a                                           ; $426f: $bf
	ei                                               ; $4270: $fb
	rst  $38                                         ; $4271: $ff
	ld   [hl], b                                     ; $4272: $70
	ld   a, a                                        ; $4273: $7f

jr_070_4274:
	ld   e, $1f                                      ; $4274: $1e $1f
	jr   c, @+$41                                    ; $4276: $38 $3f

	jp   z, $cf80                                    ; $4278: $ca $80 $cf

	dec  h                                           ; $427b: $25
	rst  $28                                         ; $427c: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $427d: $cf
	xor  $bf                                         ; $427e: $ee $bf
	cp   [hl]                                        ; $4280: $be
	call c, $16fc                                    ; $4281: $dc $fc $16
	or   $79                                         ; $4284: $f6 $79
	cp   e                                           ; $4286: $bb
	inc  a                                           ; $4287: $3c
	ld   a, [hl-]                                    ; $4288: $3a
	ld   e, e                                        ; $4289: $5b
	ld   c, [hl]                                     ; $428a: $4e
	sbc  $ce                                         ; $428b: $de $ce
	ld   a, $46                                      ; $428d: $3e $46
	add  hl, bc                                      ; $428f: $09
	ld   [hl], h                                     ; $4290: $74
	cp   h                                           ; $4291: $bc
	or   b                                           ; $4292: $b0
	res  4, e                                        ; $4293: $cb $a3
	add  hl, hl                                      ; $4295: $29
	ld   c, c                                        ; $4296: $49
	rst  $28                                         ; $4297: $ef
	rrca                                             ; $4298: $0f
	ldh  a, [c]                                      ; $4299: $f2
	rst  $20                                         ; $429a: $e7
	ld   [$4d4f], a                                  ; $429b: $ea $4f $4d
	ld   c, a                                        ; $429e: $4f
	dec  l                                           ; $429f: $2d
	rlca                                             ; $42a0: $07
	rst  $38                                         ; $42a1: $ff
	add  b                                           ; $42a2: $80
	ld   a, e                                        ; $42a3: $7b
	nop                                              ; $42a4: $00
	dec  hl                                          ; $42a5: $2b
	add  h                                           ; $42a6: $84
	ld   a, [hl+]                                    ; $42a7: $2a
	add  b                                           ; $42a8: $80
	dec  hl                                          ; $42a9: $2b
	ld   [$4b1b], sp                                 ; $42aa: $08 $1b $4b
	ld   b, d                                        ; $42ad: $42
	ldh  [$7f], a                                    ; $42ae: $e0 $7f
	ld   e, [hl]                                     ; $42b0: $5e
	ld   e, $4a                                      ; $42b1: $1e $4a
	adc  d                                           ; $42b3: $8a
	add  e                                           ; $42b4: $83
	jp   z, Jump_070_4a80                            ; $42b5: $ca $80 $4a

	add  hl, bc                                      ; $42b8: $09
	ld   a, [bc]                                     ; $42b9: $0a
	ld   e, [hl]                                     ; $42ba: $5e
	jr   nc, @+$0a                                   ; $42bb: $30 $08

	inc  c                                           ; $42bd: $0c
	nop                                              ; $42be: $00
	ld   b, $04                                      ; $42bf: $06 $04
	dec  b                                           ; $42c1: $05
	inc  b                                           ; $42c2: $04
	add  b                                           ; $42c3: $80
	ld   b, $00                                      ; $42c4: $06 $00
	inc  b                                           ; $42c6: $04

Jump_070_42c7:
	add  c                                           ; $42c7: $81
	ld   b, $0b                                      ; $42c8: $06 $0b
	ld   bc, $ec0f                                   ; $42ca: $01 $0f $ec
	ld   l, a                                        ; $42cd: $6f
	ld   a, b                                        ; $42ce: $78
	inc  a                                           ; $42cf: $3c
	jr   c, jr_070_430e                              ; $42d0: $38 $3c

	cp   [hl]                                        ; $42d2: $be
	sbc  [hl]                                        ; $42d3: $9e
	sub  [hl]                                        ; $42d4: $96
	adc  [hl]                                        ; $42d5: $8e
	add  b                                           ; $42d6: $80
	call nz, $e280                                   ; $42d7: $c4 $80 $e2
	add  hl, bc                                      ; $42da: $09
	ldh  [rBCPS], a                                  ; $42db: $e0 $68
	ret                                              ; $42dd: $c9


	db   $fc                                         ; $42de: $fc
	ld   a, l                                        ; $42df: $7d
	db   $fd                                         ; $42e0: $fd
	xor  a                                           ; $42e1: $af
	db   $ec                                         ; $42e2: $ec
	ld   a, l                                        ; $42e3: $7d
	rst  $38                                         ; $42e4: $ff
	add  b                                           ; $42e5: $80
	db   $db                                         ; $42e6: $db
	nop                                              ; $42e7: $00
	ldh  a, [$81]                                    ; $42e8: $f0 $81
	push af                                          ; $42ea: $f5
	ld   b, $75                                      ; $42eb: $06 $75
	push af                                          ; $42ed: $f5
	cp   h                                           ; $42ee: $bc
	sub  l                                           ; $42ef: $95
	db   $10                                         ; $42f0: $10
	ld   e, b                                        ; $42f1: $58
	jr   jr_070_4274                                 ; $42f2: $18 $80

	ccf                                              ; $42f4: $3f
	add  b                                           ; $42f5: $80
	rst  $28                                         ; $42f6: $ef
	add  b                                           ; $42f7: $80
	ei                                               ; $42f8: $fb
	ld   bc, $fece                                   ; $42f9: $01 $ce $fe
	add  b                                           ; $42fc: $80
	or   a                                           ; $42fd: $b7
	ld   bc, $a696                                   ; $42fe: $01 $96 $a6
	add  b                                           ; $4301: $80
	ld   [hl], c                                     ; $4302: $71
	nop                                              ; $4303: $00
	rst  $38                                         ; $4304: $ff
	add  b                                           ; $4305: $80
	di                                               ; $4306: $f3
	add  b                                           ; $4307: $80
	call c, $f780                                    ; $4308: $dc $80 $f7
	add  b                                           ; $430b: $80
	rst  $38                                         ; $430c: $ff
	inc  hl                                          ; $430d: $23

jr_070_430e:
	db   $fd                                         ; $430e: $fd
	call Call_070_7dcf                               ; $430f: $cd $cf $7d
	add  hl, sp                                      ; $4312: $39
	rst  $38                                         ; $4313: $ff
	sbc  l                                           ; $4314: $9d
	rst  $38                                         ; $4315: $ff
	add  $ff                                         ; $4316: $c6 $ff
	nop                                              ; $4318: $00
	rra                                              ; $4319: $1f
	xor  e                                           ; $431a: $ab
	xor  a                                           ; $431b: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $431c: $cf
	res  1, a                                        ; $431d: $cb $8f
	rst  $28                                         ; $431f: $ef
	inc  de                                          ; $4320: $13
	rst  $38                                         ; $4321: $ff
	ld   [hl], e                                     ; $4322: $73
	rst  $38                                         ; $4323: $ff
	db   $eb                                         ; $4324: $eb
	db   $db                                         ; $4325: $db
	xor  $ce                                         ; $4326: $ee $ce
	push af                                          ; $4328: $f5
	db   $e3                                         ; $4329: $e3
	db   $fc                                         ; $432a: $fc
	ld   sp, hl                                      ; $432b: $f9
	or   $34                                         ; $432c: $f6 $34
	or   a                                           ; $432e: $b7
	ld   [hl], $fe                                   ; $432f: $36 $fe
	sbc  [hl]                                        ; $4331: $9e
	add  b                                           ; $4332: $80
	rst  $28                                         ; $4333: $ef
	inc  bc                                          ; $4334: $03
	cp   a                                           ; $4335: $bf
	rst  $28                                         ; $4336: $ef
	and  l                                           ; $4337: $a5
	db   $ed                                         ; $4338: $ed
	add  b                                           ; $4339: $80
	rst  $20                                         ; $433a: $e7
	inc  [hl]                                        ; $433b: $34
	or   $d6                                         ; $433c: $f6 $d6
	db   $d3                                         ; $433e: $d3
	rst  $10                                         ; $433f: $d7
	ld   e, c                                        ; $4340: $59
	sra  d                                           ; $4341: $cb $2a
	ld   l, d                                        ; $4343: $6a
	ld   [hl], e                                     ; $4344: $73
	rst  $38                                         ; $4345: $ff
	xor  a                                           ; $4346: $af
	rst  $38                                         ; $4347: $ff
	call $bbff                                       ; $4348: $cd $ff $bb
	rst  $38                                         ; $434b: $ff
	and  b                                           ; $434c: $a0
	rst  $38                                         ; $434d: $ff
	call c, $a0f8                                    ; $434e: $dc $f8 $a0
	rst  ToBoot                                         ; $4351: $c7
	add  a                                           ; $4352: $87
	rra                                              ; $4353: $1f
	ld   b, b                                        ; $4354: $40
	rst  $38                                         ; $4355: $ff
	call z, $b2ff                                    ; $4356: $cc $ff $b2
	cp   $1f                                         ; $4359: $fe $1f
	rst  $38                                         ; $435b: $ff
	jp   nz, $34ff                                   ; $435c: $c2 $ff $34

	rst  $38                                         ; $435f: $ff
	add  hl, hl                                      ; $4360: $29
	rst  $38                                         ; $4361: $ff
	rra                                              ; $4362: $1f
	di                                               ; $4363: $f3
	ldh  [c], a                                      ; $4364: $e2
	rst  $28                                         ; $4365: $ef
	add  sp, -$13                                    ; $4366: $e8 $ed
	db   $e3                                         ; $4368: $e3
	rst  $38                                         ; $4369: $ff
	rst  JumpTable                                         ; $436a: $df
	rst  $38                                         ; $436b: $ff
	rst  ToBoot                                         ; $436c: $c7
	db   $f4                                         ; $436d: $f4
	rst  $30                                         ; $436e: $f7
	sbc  e                                           ; $436f: $9b
	ei                                               ; $4370: $fb
	add  b                                           ; $4371: $80
	ld   l, c                                        ; $4372: $69
	dec  b                                           ; $4373: $05
	add  hl, hl                                      ; $4374: $29
	jp   nz, $df77                                   ; $4375: $c2 $77 $df

	pop  af                                          ; $4378: $f1
	rst  JumpTable                                         ; $4379: $df
	add  b                                           ; $437a: $80
	xor  [hl]                                        ; $437b: $ae
	add  b                                           ; $437c: $80
	db   $e4                                         ; $437d: $e4
	ld   bc, $e464                                   ; $437e: $01 $64 $e4
	add  b                                           ; $4381: $80
	and  h                                           ; $4382: $a4
	dec  bc                                          ; $4383: $0b
	inc  h                                           ; $4384: $24
	jr   nz, jr_070_43b1                             ; $4385: $20 $2a

	sbc  b                                           ; $4387: $98
	cp   d                                           ; $4388: $ba
	cp   b                                           ; $4389: $b8
	sub  d                                           ; $438a: $92
	sub  b                                           ; $438b: $90
	sub  d                                           ; $438c: $92
	sub  b                                           ; $438d: $90
	sub  d                                           ; $438e: $92
	sub  b                                           ; $438f: $90
	add  b                                           ; $4390: $80
	sub  e                                           ; $4391: $93
	jr   @-$43                                       ; $4392: $18 $bb

	add  e                                           ; $4394: $83
	push bc                                          ; $4395: $c5
	add  l                                           ; $4396: $85
	cp   h                                           ; $4397: $bc
	inc  d                                           ; $4398: $14
	ld   b, a                                        ; $4399: $47
	ld   c, b                                        ; $439a: $48
	ld   b, e                                        ; $439b: $43
	ld   b, h                                        ; $439c: $44
	ld   c, e                                        ; $439d: $4b
	ld   c, c                                        ; $439e: $49
	jp   hl                                          ; $439f: $e9


	dec  bc                                          ; $43a0: $0b
	dec  e                                           ; $43a1: $1d
	inc  a                                           ; $43a2: $3c
	db   $fc                                         ; $43a3: $fc
	push bc                                          ; $43a4: $c5
	db   $fc                                         ; $43a5: $fc
	rst  $20                                         ; $43a6: $e7
	db   $fc                                         ; $43a7: $fc
	rst  $38                                         ; $43a8: $ff
	add  a                                           ; $43a9: $87
	and  l                                           ; $43aa: $a5
	push bc                                          ; $43ab: $c5
	add  b                                           ; $43ac: $80
	sub  a                                           ; $43ad: $97
	add  b                                           ; $43ae: $80
	ld   d, l                                        ; $43af: $55
	add  b                                           ; $43b0: $80

jr_070_43b1:
	ld   d, a                                        ; $43b1: $57
	add  d                                           ; $43b2: $82
	sub  $03                                         ; $43b3: $d6 $03
	ret  nc                                          ; $43b5: $d0

	push de                                          ; $43b6: $d5
	and  d                                           ; $43b7: $a2
	add  c                                           ; $43b8: $81
	add  b                                           ; $43b9: $80
	and  c                                           ; $43ba: $a1
	ld   bc, $6721                                   ; $43bb: $01 $21 $67
	add  d                                           ; $43be: $82
	ld   l, a                                        ; $43bf: $6f
	add  b                                           ; $43c0: $80
	ld   c, l                                        ; $43c1: $4d
	dec  b                                           ; $43c2: $05
	ld   b, a                                        ; $43c3: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43c4: $cf
	ret                                              ; $43c5: $c9


	reti                                             ; $43c6: $d9


	rst  $20                                         ; $43c7: $e7
	rlca                                             ; $43c8: $07
	add  b                                           ; $43c9: $80
	rrca                                             ; $43ca: $0f
	add  b                                           ; $43cb: $80
	dec  bc                                          ; $43cc: $0b
	ld   b, $05                                      ; $43cd: $06 $05
	rlca                                             ; $43cf: $07
	dec  c                                           ; $43d0: $0d
	add  hl, bc                                      ; $43d1: $09
	ld   bc, $0c04                                   ; $43d2: $01 $04 $0c
	add  c                                           ; $43d5: $81
	rrca                                             ; $43d6: $0f
	inc  bc                                          ; $43d7: $03
	add  a                                           ; $43d8: $87

jr_070_43d9:
	cp   b                                           ; $43d9: $b8
	db   $fc                                         ; $43da: $fc
	call c, $d280                                    ; $43db: $dc $80 $d2
	ld   bc, $eefe                                   ; $43de: $01 $fe $ee
	add  b                                           ; $43e1: $80
	db   $ec                                         ; $43e2: $ec
	dec  bc                                          ; $43e3: $0b
	rst  $38                                         ; $43e4: $ff
	rst  $30                                         ; $43e5: $f7
	or   a                                           ; $43e6: $b7
	ld   [hl], a                                     ; $43e7: $77
	rla                                              ; $43e8: $17
	or   e                                           ; $43e9: $b3
	sub  [hl]                                        ; $43ea: $96
	ld   [hl], e                                     ; $43eb: $73
	inc  sp                                          ; $43ec: $33
	ld   a, e                                        ; $43ed: $7b
	ld   l, c                                        ; $43ee: $69
	ld   l, e                                        ; $43ef: $6b
	add  c                                           ; $43f0: $81
	dec  hl                                          ; $43f1: $2b
	ld   [bc], a                                     ; $43f2: $02
	dec  sp                                          ; $43f3: $3b
	inc  de                                          ; $43f4: $13
	inc  sp                                          ; $43f5: $33
	add  b                                           ; $43f6: $80
	sub  a                                           ; $43f7: $97
	add  b                                           ; $43f8: $80
	add  a                                           ; $43f9: $87
	nop                                              ; $43fa: $00
	or   d                                           ; $43fb: $b2
	add  b                                           ; $43fc: $80
	sub  l                                           ; $43fd: $95
	dec  e                                           ; $43fe: $1d
	sub  h                                           ; $43ff: $94

Call_070_4400:
	sub  b                                           ; $4400: $90
	sub  h                                           ; $4401: $94
	db   $10                                         ; $4402: $10
	or   h                                           ; $4403: $b4
	inc  c                                           ; $4404: $0c
	call $fe00                                       ; $4405: $cd $00 $fe
	adc  d                                           ; $4408: $8a
	rst  $38                                         ; $4409: $ff
	ld   a, a                                        ; $440a: $7f
	ld   c, a                                        ; $440b: $4f
	ld   a, a                                        ; $440c: $7f
	or   e                                           ; $440d: $b3
	sbc  a                                           ; $440e: $9f
	xor  l                                           ; $440f: $ad
	adc  l                                           ; $4410: $8d
	and  l                                           ; $4411: $a5
	add  l                                           ; $4412: $85
	and  l                                           ; $4413: $a5
	add  l                                           ; $4414: $85
	and  l                                           ; $4415: $a5
	dec  h                                           ; $4416: $25
	ld   l, l                                        ; $4417: $6d
	ld   hl, $9bf3                                   ; $4418: $21 $f3 $9b
	rst  $38                                         ; $441b: $ff
	rst  $10                                         ; $441c: $d7
	add  b                                           ; $441d: $80
	rst  $30                                         ; $441e: $f7
	ld   bc, $ff9c                                   ; $441f: $01 $9c $ff
	add  b                                           ; $4422: $80
	ld   l, e                                        ; $4423: $6b
	add  c                                           ; $4424: $81
	add  hl, hl                                      ; $4425: $29
	inc  b                                           ; $4426: $04
	ld   hl, $2129                                   ; $4427: $21 $29 $21
	ld   l, e                                        ; $442a: $6b
	ld   [$9c80], sp                                 ; $442b: $08 $80 $9c
	add  b                                           ; $442e: $80
	rst  $20                                         ; $442f: $e7
	ld   bc, $f9e1                                   ; $4430: $01 $e1 $f9
	add  b                                           ; $4433: $80
	ld   e, b                                        ; $4434: $58
	add  d                                           ; $4435: $82
	ld   c, d                                        ; $4436: $4a
	add  c                                           ; $4437: $81
	ld   c, e                                        ; $4438: $4b
	ld   b, $53                                      ; $4439: $06 $53
	rst  $20                                         ; $443b: $e7
	db   $db                                         ; $443c: $db
	dec  a                                           ; $443d: $3d
	jr   jr_070_43d9                                 ; $443e: $18 $99

	ld   e, h                                        ; $4440: $5c
	add  b                                           ; $4441: $80
	sbc  l                                           ; $4442: $9d
	inc  b                                           ; $4443: $04
	call $d9c8                                       ; $4444: $cd $c8 $d9
	ld   c, l                                        ; $4447: $4d
	adc  l                                           ; $4448: $8d
	add  b                                           ; $4449: $80
	adc  h                                           ; $444a: $8c
	add  b                                           ; $444b: $80
	xor  b                                           ; $444c: $a8
	inc  b                                           ; $444d: $04
	ret  nz                                          ; $444e: $c0

	ld   a, [hl]                                     ; $444f: $7e
	rst  $38                                         ; $4450: $ff
	call $807d                                       ; $4451: $cd $7d $80
	or   h                                           ; $4454: $b4
	add  d                                           ; $4455: $82
	sub  h                                           ; $4456: $94
	rlca                                             ; $4457: $07
	sub  l                                           ; $4458: $95
	sub  h                                           ; $4459: $94
	or   [hl]                                        ; $445a: $b6
	add  [hl]                                        ; $445b: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $445c: $cf
	jp   $ed6d                                       ; $445d: $c3 $6d $ed


	add  e                                           ; $4460: $83
	and  l                                           ; $4461: $a5
	ld   [$8d85], sp                                 ; $4462: $08 $85 $8d
	and  c                                           ; $4465: $a1
	or   e                                           ; $4466: $b3
	inc  sp                                          ; $4467: $33
	ld   a, a                                        ; $4468: $7f
	ld   l, [hl]                                     ; $4469: $6e
	rst  $28                                         ; $446a: $ef

jr_070_446b:
	sbc  l                                           ; $446b: $9d
	add  c                                           ; $446c: $81
	add  hl, hl                                      ; $446d: $29
	inc  l                                           ; $446e: $2c
	jr   z, jr_070_449b                              ; $446f: $28 $2a

	jr   z, @+$6e                                    ; $4471: $28 $6c

	inc  c                                           ; $4473: $0c
	sbc  a                                           ; $4474: $9f
	add  [hl]                                        ; $4475: $86
	cp   $58                                         ; $4476: $fe $58
	db   $fd                                         ; $4478: $fd
	pop  bc                                          ; $4479: $c1
	rst  $38                                         ; $447a: $ff
	db   $fd                                         ; $447b: $fd
	ld   sp, $3b34                                   ; $447c: $31 $34 $3b
	dec  a                                           ; $447f: $3d
	cp   a                                           ; $4480: $bf
	ld   a, [de]                                     ; $4481: $1a
	ld   a, h                                        ; $4482: $7c
	ld   d, [hl]                                     ; $4483: $56
	cp   $de                                         ; $4484: $fe $de
	ei                                               ; $4486: $fb
	add  [hl]                                        ; $4487: $86
	rst  $28                                         ; $4488: $ef
	jr   nz, jr_070_446b                             ; $4489: $20 $e0

	ld   a, h                                        ; $448b: $7c
	rst  $38                                         ; $448c: $ff
	db   $f4                                         ; $448d: $f4
	ld   [hl], a                                     ; $448e: $77
	db   $fd                                         ; $448f: $fd
	cp   l                                           ; $4490: $bd
	ld   a, a                                        ; $4491: $7f
	adc  $ee                                         ; $4492: $ce $ee
	rst  $20                                         ; $4494: $e7
	sub  a                                           ; $4495: $97
	rst  $30                                         ; $4496: $f7
	cp   a                                           ; $4497: $bf
	cp   e                                           ; $4498: $bb
	rst  $28                                         ; $4499: $ef
	db   $fd                                         ; $449a: $fd

jr_070_449b:
	pop  de                                          ; $449b: $d1
	add  b                                           ; $449c: $80
	rra                                              ; $449d: $1f
	inc  b                                           ; $449e: $04
	ccf                                              ; $449f: $3f
	inc  l                                           ; $44a0: $2c
	and  e                                           ; $44a1: $a3
	xor  c                                           ; $44a2: $a9
	or   c                                           ; $44a3: $b1
	add  b                                           ; $44a4: $80
	ld   sp, $6821                                   ; $44a5: $31 $21 $68
	ld   h, b                                        ; $44a8: $60
	pop  hl                                          ; $44a9: $e1
	ldh  [$f2], a                                    ; $44aa: $e0 $f2
	ld   [hl], d                                     ; $44ac: $72
	halt                                             ; $44ad: $76
	or   l                                           ; $44ae: $b5
	dec  [hl]                                        ; $44af: $35
	db   $d3                                         ; $44b0: $d3
	sub  e                                           ; $44b1: $93
	or   e                                           ; $44b2: $b3
	ld   [hl], e                                     ; $44b3: $73
	inc  sp                                          ; $44b4: $33
	or   e                                           ; $44b5: $b3
	inc  sp                                          ; $44b6: $33
	ld   a, [hl+]                                    ; $44b7: $2a
	ld   l, d                                        ; $44b8: $6a
	ld   c, d                                        ; $44b9: $4a
	ld   b, [hl]                                     ; $44ba: $46
	ld   d, [hl]                                     ; $44bb: $56
	sub  $88                                         ; $44bc: $d6 $88
	sbc  a                                           ; $44be: $9f
	sbc  [hl]                                        ; $44bf: $9e
	sbc  a                                           ; $44c0: $9f
	add  hl, sp                                      ; $44c1: $39
	dec  sp                                          ; $44c2: $3b
	ld   [de], a                                     ; $44c3: $12
	ld   [hl], $24                                   ; $44c4: $36 $24
	dec  l                                           ; $44c6: $2d
	add  hl, bc                                      ; $44c7: $09
	add  hl, de                                      ; $44c8: $19
	add  b                                           ; $44c9: $80
	inc  de                                          ; $44ca: $13
	ld   [bc], a                                     ; $44cb: $02
	ld   de, $f333                                   ; $44cc: $11 $33 $f3
	add  b                                           ; $44cf: $80
	inc  bc                                          ; $44d0: $03
	ld   [bc], a                                     ; $44d1: $02
	ld   c, $0d                                      ; $44d2: $0e $0d
	inc  c                                           ; $44d4: $0c
	add  b                                           ; $44d5: $80
	ld   b, $02                                      ; $44d6: $06 $02
	inc  b                                           ; $44d8: $04
	inc  c                                           ; $44d9: $0c
	ld   [$0083], sp                                 ; $44da: $08 $83 $00
	ld   bc, $fb80                                   ; $44dd: $01 $80 $fb
	add  b                                           ; $44e0: $80
	dec  hl                                          ; $44e1: $2b

jr_070_44e2:
	ld   [bc], a                                     ; $44e2: $02
	ld   l, e                                        ; $44e3: $6b
	add  hl, hl                                      ; $44e4: $29
	ld   hl, $a180                                   ; $44e5: $21 $80 $a1
	ld   [bc], a                                     ; $44e8: $02
	ld   h, c                                        ; $44e9: $61
	ld   l, c                                        ; $44ea: $69
	inc  l                                           ; $44eb: $2c
	add  c                                           ; $44ec: $81
	inc  h                                           ; $44ed: $24
	ld   b, $65                                      ; $44ee: $06 $65
	ld   b, d                                        ; $44f0: $42
	rst  ToBoot                                         ; $44f1: $c7
	adc  l                                           ; $44f2: $8d
	adc  a                                           ; $44f3: $8f
	ret  z                                           ; $44f4: $c8

	jp   z, $8880                                    ; $44f5: $ca $80 $88

	ld   bc, $c5c1                                   ; $44f8: $01 $c1 $c5
	add  b                                           ; $44fb: $80
	db   $e4                                         ; $44fc: $e4
	add  b                                           ; $44fd: $80
	call nz, $e480                                   ; $44fe: $c4 $80 $e4
	dec  b                                           ; $4501: $05
	ld   l, a                                        ; $4502: $6f
	ld   a, b                                        ; $4503: $78
	inc  c                                           ; $4504: $0c
	sbc  l                                           ; $4505: $9d
	db   $dd                                         ; $4506: $dd
	cp   e                                           ; $4507: $bb
	add  b                                           ; $4508: $80
	dec  [hl]                                        ; $4509: $35
	nop                                              ; $450a: $00
	inc  d                                           ; $450b: $14
	add  e                                           ; $450c: $83
	db   $10                                         ; $450d: $10
	add  hl, bc                                      ; $450e: $09
	inc  e                                           ; $450f: $1c
	ld   a, b                                        ; $4510: $78
	add  a                                           ; $4511: $87
	rst  $38                                         ; $4512: $ff
	adc  c                                           ; $4513: $89
	cp   l                                           ; $4514: $bd
	add  [hl]                                        ; $4515: $86
	cp   a                                           ; $4516: $bf
	sbc  d                                           ; $4517: $9a
	sub  e                                           ; $4518: $93
	add  b                                           ; $4519: $80
	ld   l, h                                        ; $451a: $6c
	add  b                                           ; $451b: $80
	sub  l                                           ; $451c: $95
	add  b                                           ; $451d: $80
	db   $10                                         ; $451e: $10
	add  b                                           ; $451f: $80
	ret  nz                                          ; $4520: $c0

	rlca                                             ; $4521: $07
	rst  $20                                         ; $4522: $e7
	db   $fc                                         ; $4523: $fc
	ret  z                                           ; $4524: $c8

	cp   $83                                         ; $4525: $fe $83
	cp   $e7                                         ; $4527: $fe $e7
	or   a                                           ; $4529: $b7
	add  b                                           ; $452a: $80
	xor  d                                           ; $452b: $aa
	add  b                                           ; $452c: $80
	ld   [hl], b                                     ; $452d: $70
	add  b                                           ; $452e: $80
	ld   c, b                                        ; $452f: $48
	add  b                                           ; $4530: $80
	nop                                              ; $4531: $00
	inc  b                                           ; $4532: $04
	ld   [hl], h                                     ; $4533: $74
	ei                                               ; $4534: $fb
	ld   e, e                                        ; $4535: $5b
	ld   e, d                                        ; $4536: $5a
	ld   a, [bc]                                     ; $4537: $0a
	add  b                                           ; $4538: $80
	ld   c, d                                        ; $4539: $4a
	ld   [bc], a                                     ; $453a: $02
	ld   l, d                                        ; $453b: $6a
	ld   a, [hl+]                                    ; $453c: $2a
	dec  hl                                          ; $453d: $2b
	add  d                                           ; $453e: $82
	xor  b                                           ; $453f: $a8
	add  b                                           ; $4540: $80
	call z, $e900                                    ; $4541: $cc $00 $e9
	add  b                                           ; $4544: $80
	add  hl, sp                                      ; $4545: $39
	inc  b                                           ; $4546: $04
	cp   c                                           ; $4547: $b9
	cp   e                                           ; $4548: $bb
	sbc  e                                           ; $4549: $9b
	sub  c                                           ; $454a: $91
	or   c                                           ; $454b: $b1
	add  b                                           ; $454c: $80
	cp   e                                           ; $454d: $bb
	nop                                              ; $454e: $00
	or   e                                           ; $454f: $b3
	add  d                                           ; $4550: $82

jr_070_4551:
	or   d                                           ; $4551: $b2
	dec  b                                           ; $4552: $05

jr_070_4553:
	sub  d                                           ; $4553: $92
	ld   [hl-], a                                    ; $4554: $32
	rst  $38                                         ; $4555: $ff
	push hl                                          ; $4556: $e5
	rst  $30                                         ; $4557: $f7
	cp   a                                           ; $4558: $bf
	add  b                                           ; $4559: $80
	rst  $38                                         ; $455a: $ff
	nop                                              ; $455b: $00
	cp   $80                                         ; $455c: $fe $80
	ld   [hl], h                                     ; $455e: $74
	add  b                                           ; $455f: $80
	jr   z, jr_070_44e2                              ; $4560: $28 $80

	ld   b, b                                        ; $4562: $40
	add  b                                           ; $4563: $80
	nop                                              ; $4564: $00
	inc  b                                           ; $4565: $04
	rst  JumpTable                                         ; $4566: $df
	push hl                                          ; $4567: $e5
	ldh  a, [$d5]                                    ; $4568: $f0 $d5
	inc  c                                           ; $456a: $0c
	add  b                                           ; $456b: $80
	inc  e                                           ; $456c: $1c
	nop                                              ; $456d: $00
	inc  d                                           ; $456e: $14
	add  b                                           ; $456f: $80
	ld   c, h                                        ; $4570: $4c
	add  b                                           ; $4571: $80
	inc  d                                           ; $4572: $14
	add  d                                           ; $4573: $82
	inc  b                                           ; $4574: $04
	rlca                                             ; $4575: $07
	ld   a, [$27e5]                                  ; $4576: $fa $e5 $27
	rst  JumpTable                                         ; $4579: $df
	ld   b, a                                        ; $457a: $47
	ld   h, a                                        ; $457b: $67
	ld   b, e                                        ; $457c: $43
	inc  bc                                          ; $457d: $03
	add  b                                           ; $457e: $80
	ld   [$0180], sp                                 ; $457f: $08 $80 $01
	add  b                                           ; $4582: $80
	inc  b                                           ; $4583: $04
	add  b                                           ; $4584: $80
	nop                                              ; $4585: $00
	inc  de                                          ; $4586: $13
	dec  c                                           ; $4587: $0d
	rst  $38                                         ; $4588: $ff
	inc  d                                           ; $4589: $14
	rst  $38                                         ; $458a: $ff
	jr   z, @+$01                                    ; $458b: $28 $ff

	push bc                                          ; $458d: $c5
	cp   a                                           ; $458e: $bf
	ld   c, h                                        ; $458f: $4c
	ld   a, [hl]                                     ; $4590: $7e
	add  hl, bc                                      ; $4591: $09
	rra                                              ; $4592: $1f
	ld   c, b                                        ; $4593: $48
	ld   e, [hl]                                     ; $4594: $5e
	ld   [bc], a                                     ; $4595: $02
	inc  b                                           ; $4596: $04
	pop  af                                          ; $4597: $f1
	cp   $d5                                         ; $4598: $fe $d5
	db   $dd                                         ; $459a: $dd
	add  b                                           ; $459b: $80
	cp   $80                                         ; $459c: $fe $80
	push af                                          ; $459e: $f5
	add  b                                           ; $459f: $80
	and  [hl]                                        ; $45a0: $a6
	add  b                                           ; $45a1: $80
	inc  b                                           ; $45a2: $04
	add  b                                           ; $45a3: $80
	ld   h, $80                                      ; $45a4: $26 $80
	ld   b, h                                        ; $45a6: $44
	nop                                              ; $45a7: $00
	sbc  a                                           ; $45a8: $9f
	add  d                                           ; $45a9: $82
	ld   h, l                                        ; $45aa: $65
	nop                                              ; $45ab: $00
	ld   h, e                                        ; $45ac: $63
	add  b                                           ; $45ad: $80
	ld   h, d                                        ; $45ae: $62
	add  b                                           ; $45af: $80
	ld   b, e                                        ; $45b0: $43
	add  b                                           ; $45b1: $80
	ld   c, d                                        ; $45b2: $4a
	ld   bc, $474b                                   ; $45b3: $01 $4b $47
	add  b                                           ; $45b6: $80
	call nc, $d680                                   ; $45b7: $d4 $80 $d6
	inc  bc                                          ; $45ba: $03
	inc  d                                           ; $45bb: $14
	inc  b                                           ; $45bc: $04
	add  [hl]                                        ; $45bd: $86
	adc  [hl]                                        ; $45be: $8e
	add  d                                           ; $45bf: $82
	inc  l                                           ; $45c0: $2c
	add  b                                           ; $45c1: $80
	ld   c, $80                                      ; $45c2: $0e $80
	inc  l                                           ; $45c4: $2c
	add  b                                           ; $45c5: $80
	inc  c                                           ; $45c6: $0c

Jump_070_45c7:
	ld   bc, $2f38                                   ; $45c7: $01 $38 $2f
	add  b                                           ; $45ca: $80
	ld   l, e                                        ; $45cb: $6b
	add  b                                           ; $45cc: $80
	dec  h                                           ; $45cd: $25
	add  b                                           ; $45ce: $80
	jr   nz, jr_070_4551                             ; $45cf: $20 $80

	jr   nc, jr_070_4553                             ; $45d1: $30 $80

	ld   b, d                                        ; $45d3: $42
	add  c                                           ; $45d4: $81
	ld   h, b                                        ; $45d5: $60
	ld   bc, $fc64                                   ; $45d6: $01 $64 $fc
	add  c                                           ; $45d9: $81
	nop                                              ; $45da: $00
	add  b                                           ; $45db: $80
	ld   bc, $0c05                                   ; $45dc: $01 $05 $0c
	rrca                                             ; $45df: $0f
	add  hl, bc                                      ; $45e0: $09
	dec  c                                           ; $45e1: $0d
	ld   bc, $8209                                   ; $45e2: $01 $09 $82
	nop                                              ; $45e5: $00
	ld   [bc], a                                     ; $45e6: $02
	ld   [hl], e                                     ; $45e7: $73
	ld   h, b                                        ; $45e8: $60
	ret  nz                                          ; $45e9: $c0

	add  c                                           ; $45ea: $81
	ld   hl, sp+$03                                  ; $45eb: $f8 $03
	ld   b, [hl]                                     ; $45ed: $46
	db   $fc                                         ; $45ee: $fc
	sbc  h                                           ; $45ef: $9c
	db   $fc                                         ; $45f0: $fc
	add  b                                           ; $45f1: $80
	and  $01                                         ; $45f2: $e6 $01
	ld   l, $2c                                      ; $45f4: $2e $2c
	add  b                                           ; $45f6: $80
	inc  b                                           ; $45f7: $04
	add  b                                           ; $45f8: $80
	ldh  a, [rSB]                                    ; $45f9: $f0 $01
	ret  nz                                          ; $45fb: $c0

	jp   nz, $f280                                   ; $45fc: $c2 $80 $f2

	add  b                                           ; $45ff: $80
	jp   nz, $f81e                                   ; $4600: $c2 $1e $f8

	ld   a, c                                        ; $4603: $79
	dec  a                                           ; $4604: $3d
	cp   l                                           ; $4605: $bd
	or   c                                           ; $4606: $b1
	sub  c                                           ; $4607: $91
	ret  c                                           ; $4608: $d8

	ld   e, b                                        ; $4609: $58
	db   $e3                                         ; $460a: $e3
	ldh  [c], a                                      ; $460b: $e2
	ld   l, e                                        ; $460c: $6b
	db   $db                                         ; $460d: $db
	rlca                                             ; $460e: $07
	rst  $38                                         ; $460f: $ff
	ret  nc                                          ; $4610: $d0

	rst  $30                                         ; $4611: $f7
	jp   Jump_070_72ff                               ; $4612: $c3 $ff $72


	rst  $38                                         ; $4615: $ff
	ld   d, [hl]                                     ; $4616: $56
	ld   a, a                                        ; $4617: $7f
	dec  d                                           ; $4618: $15
	ld   a, a                                        ; $4619: $7f
	jp   $ec00                                       ; $461a: $c3 $00 $ec


	xor  $d2                                         ; $461d: $ee $d2
	ret  c                                           ; $461f: $d8

	or   a                                           ; $4620: $b7
	add  b                                           ; $4621: $80
	rst  $38                                         ; $4622: $ff
	ld   d, $ce                                      ; $4623: $16 $ce
	di                                               ; $4625: $f3
	db   $fd                                         ; $4626: $fd
	ld   l, h                                        ; $4627: $6c
	cp   $6d                                         ; $4628: $fe $6d
	ld   a, a                                        ; $462a: $7f
	rst  $38                                         ; $462b: $ff
	nop                                              ; $462c: $00
	ld   b, $86                                      ; $462d: $06 $86
	cp   d                                           ; $462f: $ba
	ld   a, [hl-]                                    ; $4630: $3a
	db   $ec                                         ; $4631: $ec
	cp   [hl]                                        ; $4632: $be
	adc  d                                           ; $4633: $8a
	db   $fc                                         ; $4634: $fc
	rst  $30                                         ; $4635: $f7
	jr   nz, jr_070_4654                             ; $4636: $20 $1c

	sub  b                                           ; $4638: $90
	ld   l, [hl]                                     ; $4639: $6e
	cp   $81                                         ; $463a: $fe $81
	call $dd00                                       ; $463c: $cd $00 $dd
	add  b                                           ; $463f: $80
	reti                                             ; $4640: $d9


	add  b                                           ; $4641: $80
	pop  de                                          ; $4642: $d1

jr_070_4643:
	add  b                                           ; $4643: $80
	sbc  b                                           ; $4644: $98
	add  b                                           ; $4645: $80
	add  b                                           ; $4646: $80
	add  b                                           ; $4647: $80
	ld   d, b                                        ; $4648: $50
	add  b                                           ; $4649: $80
	dec  bc                                          ; $464a: $0b
	nop                                              ; $464b: $00
	di                                               ; $464c: $f3
	add  b                                           ; $464d: $80
	sub  d                                           ; $464e: $92
	ld   [bc], a                                     ; $464f: $02
	or   d                                           ; $4650: $b2
	and  d                                           ; $4651: $a2
	ld   h, d                                        ; $4652: $62
	add  b                                           ; $4653: $80

jr_070_4654:
	ld   [hl], d                                     ; $4654: $72
	ld   bc, $c242                                   ; $4655: $01 $42 $c2
	add  b                                           ; $4658: $80
	ldh  [c], a                                      ; $4659: $e2
	ld   bc, $8180                                   ; $465a: $01 $80 $81
	add  b                                           ; $465d: $80
	jr   c, jr_070_4661                              ; $465e: $38 $01

	cp   a                                           ; $4660: $bf

jr_070_4661:
	ld   b, b                                        ; $4661: $40
	add  b                                           ; $4662: $80
	nop                                              ; $4663: $00
	add  b                                           ; $4664: $80
	ld   b, b                                        ; $4665: $40
	add  b                                           ; $4666: $80
	ld   a, b                                        ; $4667: $78
	ld   [$7c40], sp                                 ; $4668: $08 $40 $7c
	ld   [$08bc], sp                                 ; $466b: $08 $bc $08
	ld   a, a                                        ; $466e: $7f
	ld   c, $0f                                      ; $466f: $0e $0f
	db   $fd                                         ; $4671: $fd
	add  h                                           ; $4672: $84
	inc  b                                           ; $4673: $04
	ld   a, [bc]                                     ; $4674: $0a
	inc  c                                           ; $4675: $0c
	ld   [$1018], sp                                 ; $4676: $08 $18 $10
	ld   [hl], b                                     ; $4679: $70
	ld   a, e                                        ; $467a: $7b
	nop                                              ; $467b: $00
	inc  b                                           ; $467c: $04
	nop                                              ; $467d: $00
	add  b                                           ; $467e: $80
	nop                                              ; $467f: $00
	add  b                                           ; $4680: $80
	db   $10                                         ; $4681: $10
	ld   bc, $4505                                   ; $4682: $01 $05 $45
	add  b                                           ; $4685: $80
	rra                                              ; $4686: $1f
	rlca                                             ; $4687: $07
	dec  hl                                          ; $4688: $2b
	dec  de                                          ; $4689: $1b
	inc  b                                           ; $468a: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $468b: $cf
	db   $e4                                         ; $468c: $e4
	db   $fd                                         ; $468d: $fd
	dec  l                                           ; $468e: $2d
	rrca                                             ; $468f: $0f
	add  d                                           ; $4690: $82
	nop                                              ; $4691: $00
	add  b                                           ; $4692: $80
	adc  b                                           ; $4693: $88
	rlca                                             ; $4694: $07
	ld   a, [de]                                     ; $4695: $1a
	sbc  d                                           ; $4696: $9a
	ld   h, h                                        ; $4697: $64
	push hl                                          ; $4698: $e5
	sub  $d7                                         ; $4699: $d6 $d7
	db   $fc                                         ; $469b: $fc
	db   $fd                                         ; $469c: $fd
	add  b                                           ; $469d: $80
	cp   $01                                         ; $469e: $fe $01
	inc  b                                           ; $46a0: $04
	ld   a, [bc]                                     ; $46a1: $0a
	add  b                                           ; $46a2: $80
	inc  c                                           ; $46a3: $0c
	rlca                                             ; $46a4: $07
	nop                                              ; $46a5: $00
	db   $10                                         ; $46a6: $10
	ld   [de], a                                     ; $46a7: $12
	ld   [hl-], a                                    ; $46a8: $32
	jr   z, jr_070_4713                              ; $46a9: $28 $68

	ld   b, l                                        ; $46ab: $45
	push bc                                          ; $46ac: $c5
	add  b                                           ; $46ad: $80
	ld   b, e                                        ; $46ae: $43
	inc  bc                                          ; $46af: $03
	xor  a                                           ; $46b0: $af
	xor  [hl]                                        ; $46b1: $ae
	rst  JumpTable                                         ; $46b2: $df
	adc  $80                                         ; $46b3: $ce $80
	ret                                              ; $46b5: $c9


	ld   bc, $9cac                                   ; $46b6: $01 $ac $9c
	add  b                                           ; $46b9: $80
	sbc  b                                           ; $46ba: $98
	add  b                                           ; $46bb: $80
	sbc  l                                           ; $46bc: $9d
	add  b                                           ; $46bd: $80
	db   $10                                         ; $46be: $10
	dec  d                                           ; $46bf: $15
	ld   e, b                                        ; $46c0: $58
	jr   c, jr_070_4643                              ; $46c1: $38 $80

	ld   b, b                                        ; $46c3: $40
	cp   [hl]                                        ; $46c4: $be
	ld   l, $68                                      ; $46c5: $2e $68
	ld   e, b                                        ; $46c7: $58
	ld   e, h                                        ; $46c8: $5c
	inc  e                                           ; $46c9: $1c
	jr   jr_070_4704                                 ; $46ca: $18 $38

	jr   nc, jr_070_46de                             ; $46cc: $30 $10

	sub  l                                           ; $46ce: $95
	push de                                          ; $46cf: $d5
	sbc  b                                           ; $46d0: $98
	jr   z, jr_070_473b                              ; $46d1: $28 $68

	ld   a, b                                        ; $46d3: $78
	and  a                                           ; $46d4: $a7
	inc  h                                           ; $46d5: $24
	add  b                                           ; $46d6: $80
	inc  b                                           ; $46d7: $04
	inc  bc                                          ; $46d8: $03
	and  b                                           ; $46d9: $a0
	and  d                                           ; $46da: $a2
	add  d                                           ; $46db: $82
	add  e                                           ; $46dc: $83
	add  b                                           ; $46dd: $80

jr_070_46de:
	ldh  [c], a                                      ; $46de: $e2
	add  b                                           ; $46df: $80
	ld   h, c                                        ; $46e0: $61
	add  b                                           ; $46e1: $80
	ret  nc                                          ; $46e2: $d0

	add  b                                           ; $46e3: $80
	ld   e, h                                        ; $46e4: $5c
	ld   bc, $00f0                                   ; $46e5: $01 $f0 $00
	add  b                                           ; $46e8: $80
	rrca                                             ; $46e9: $0f
	inc  b                                           ; $46ea: $04
	dec  bc                                          ; $46eb: $0b
	rrca                                             ; $46ec: $0f
	inc  b                                           ; $46ed: $04
	rrca                                             ; $46ee: $0f
	ld   [$0f81], sp                                 ; $46ef: $08 $81 $0f
	ld   b, $05                                      ; $46f2: $06 $05
	rrca                                             ; $46f4: $0f
	dec  b                                           ; $46f5: $05
	rrca                                             ; $46f6: $0f
	or   l                                           ; $46f7: $b5
	ld   c, [hl]                                     ; $46f8: $4e
	db   $fc                                         ; $46f9: $fc
	add  b                                           ; $46fa: $80
	cp   $08                                         ; $46fb: $fe $08
	db   $fc                                         ; $46fd: $fc
	xor  h                                           ; $46fe: $ac
	db   $ec                                         ; $46ff: $ec
	cp   l                                           ; $4700: $bd
	pop  af                                          ; $4701: $f1
	ld   [hl], e                                     ; $4702: $73
	ld   h, h                                        ; $4703: $64

jr_070_4704:
	ret  c                                           ; $4704: $d8

	ret  nz                                          ; $4705: $c0

	add  b                                           ; $4706: $80
	rlca                                             ; $4707: $07
	dec  bc                                          ; $4708: $0b
	db   $fc                                         ; $4709: $fc
	ld   a, h                                        ; $470a: $7c
	ld   a, b                                        ; $470b: $78
	jr   c, jr_070_474a                              ; $470c: $38 $3c

	ld   e, h                                        ; $470e: $5c
	ld   e, b                                        ; $470f: $58
	ld   a, b                                        ; $4710: $78
	ld   [hl], d                                     ; $4711: $72
	or   d                                           ; $4712: $b2

jr_070_4713:
	cp   h                                           ; $4713: $bc
	db   $fc                                         ; $4714: $fc
	add  b                                           ; $4715: $80
	ld   [hl], d                                     ; $4716: $72
	add  b                                           ; $4717: $80
	inc  a                                           ; $4718: $3c
	add  b                                           ; $4719: $80
	ld   a, a                                        ; $471a: $7f
	inc  bc                                          ; $471b: $03
	ld   c, a                                        ; $471c: $4f
	ld   a, a                                        ; $471d: $7f
	ld   l, a                                        ; $471e: $6f

jr_070_471f:
	ld   e, a                                        ; $471f: $5f
	add  b                                           ; $4720: $80
	ccf                                              ; $4721: $3f
	inc  b                                           ; $4722: $04
	inc  bc                                          ; $4723: $03
	dec  sp                                          ; $4724: $3b
	jr   c, jr_070_4746                              ; $4725: $38 $1f

	ld   e, $80                                      ; $4727: $1e $80
	ld   bc, $2319                                   ; $4729: $01 $19 $23
	db   $e3                                         ; $472c: $e3
	db   $fd                                         ; $472d: $fd
	jr   nc, jr_070_471f                             ; $472e: $30 $ef

	rra                                              ; $4730: $1f
	rst  $38                                         ; $4731: $ff
	inc  a                                           ; $4732: $3c
	rst  $38                                         ; $4733: $ff
	ccf                                              ; $4734: $3f
	rst  $38                                         ; $4735: $ff
	ld   b, $ff                                      ; $4736: $06 $ff
	ldh  a, [$fe]                                    ; $4738: $f0 $fe
	dec  bc                                          ; $473a: $0b

jr_070_473b:
	rst  $38                                         ; $473b: $ff
	ld   a, e                                        ; $473c: $7b
	ld   a, [$fe80]                                  ; $473d: $fa $80 $fe
	xor  e                                           ; $4740: $ab
	rst  JumpTable                                         ; $4741: $df
	ld   h, h                                        ; $4742: $64
	db   $ec                                         ; $4743: $ec
	cp   $81                                         ; $4744: $fe $81

jr_070_4746:
	rst  $38                                         ; $4746: $ff
	inc  bc                                          ; $4747: $03
	or   $ff                                         ; $4748: $f6 $ff

jr_070_474a:
	rst  $10                                         ; $474a: $d7
	rst  JumpTable                                         ; $474b: $df
	add  b                                           ; $474c: $80
	jr   c, jr_070_4778                              ; $474d: $38 $29

	sub  l                                           ; $474f: $95
	push hl                                          ; $4750: $e5
	di                                               ; $4751: $f3
	and  d                                           ; $4752: $a2
	rra                                              ; $4753: $1f
	db   $fd                                         ; $4754: $fd
	ret  c                                           ; $4755: $d8

	add  hl, sp                                      ; $4756: $39
	push hl                                          ; $4757: $e5
	or   $d1                                         ; $4758: $f6 $d1
	rst  $38                                         ; $475a: $ff
	rst  $28                                         ; $475b: $ef
	rst  $38                                         ; $475c: $ff
	dec  c                                           ; $475d: $0d
	ld   b, e                                        ; $475e: $43
	and  d                                           ; $475f: $a2
	ld   [$7bb2], a                                  ; $4760: $ea $b2 $7b
	ld   hl, sp-$01                                  ; $4763: $f8 $ff
	inc  a                                           ; $4765: $3c
	ei                                               ; $4766: $fb
	rrca                                             ; $4767: $0f
	cp   a                                           ; $4768: $bf
	add  $f6                                         ; $4769: $c6 $f6
	ld   a, l                                        ; $476b: $7d
	db   $fd                                         ; $476c: $fd
	call z, Call_070_7c4f                            ; $476d: $cc $4f $7c
	ld   a, [hl]                                     ; $4770: $7e
	ret  nz                                          ; $4771: $c0

	ld   b, b                                        ; $4772: $40
	add  c                                           ; $4773: $81
	rst  $38                                         ; $4774: $ff
	add  b                                           ; $4775: $80
	db   $fc                                         ; $4776: $fc
	db   $e3                                         ; $4777: $e3

jr_070_4778:
	rst  $38                                         ; $4778: $ff
	add  b                                           ; $4779: $80
	db   $fd                                         ; $477a: $fd
	ld   bc, $d737                                   ; $477b: $01 $37 $d7
	add  b                                           ; $477e: $80
	ld   b, h                                        ; $477f: $44
	dec  b                                           ; $4780: $05
	ld   b, b                                        ; $4781: $40
	ld   b, c                                        ; $4782: $41
	ld   c, $00                                      ; $4783: $0e $00
	ldh  a, [rIE]                                    ; $4785: $f0 $ff
	add  b                                           ; $4787: $80
	inc  de                                          ; $4788: $13
	add  b                                           ; $4789: $80
	rst  $38                                         ; $478a: $ff
	add  hl, bc                                      ; $478b: $09
	ei                                               ; $478c: $fb
	dec  sp                                          ; $478d: $3b
	ld   c, [hl]                                     ; $478e: $4e
	adc  [hl]                                        ; $478f: $8e
	ld   a, [hl]                                     ; $4790: $7e
	ld   a, a                                        ; $4791: $7f
	ld   d, $ff                                      ; $4792: $16 $ff
	sub  a                                           ; $4794: $97
	ld   a, a                                        ; $4795: $7f
	add  b                                           ; $4796: $80
	rst  $38                                         ; $4797: $ff
	dec  [hl]                                        ; $4798: $35
	adc  c                                           ; $4799: $89
	rst  $30                                         ; $479a: $f7
	ld   a, c                                        ; $479b: $79
	rst  $38                                         ; $479c: $ff
	rlca                                             ; $479d: $07
	ei                                               ; $479e: $fb
	ld   a, e                                        ; $479f: $7b
	ld   c, a                                        ; $47a0: $4f
	inc  hl                                          ; $47a1: $23
	db   $fd                                         ; $47a2: $fd
	ld   [hl], e                                     ; $47a3: $73

jr_070_47a4:
	or   $75                                         ; $47a4: $f6 $75
	db   $e3                                         ; $47a6: $e3
	jr   nc, jr_070_47a4                             ; $47a7: $30 $fb

	add  hl, hl                                      ; $47a9: $29
	pop  hl                                          ; $47aa: $e1
	ld   a, $ff                                      ; $47ab: $3e $ff
	ret  nz                                          ; $47ad: $c0

	ld   hl, sp-$05                                  ; $47ae: $f8 $fb
	rst  $38                                         ; $47b0: $ff
	db   $ec                                         ; $47b1: $ec
	db   $10                                         ; $47b2: $10
	ld   c, h                                        ; $47b3: $4c
	ld   a, h                                        ; $47b4: $7c
	push bc                                          ; $47b5: $c5
	db   $fd                                         ; $47b6: $fd
	ld   l, a                                        ; $47b7: $6f
	rst  $30                                         ; $47b8: $f7
	sub  e                                           ; $47b9: $93
	inc  sp                                          ; $47ba: $33
	ei                                               ; $47bb: $fb
	res  7, [hl]                                     ; $47bc: $cb $be
	cp   a                                           ; $47be: $bf
	cp   d                                           ; $47bf: $ba
	cp   a                                           ; $47c0: $bf
	inc  b                                           ; $47c1: $04
	nop                                              ; $47c2: $00
	adc  l                                           ; $47c3: $8d
	adc  h                                           ; $47c4: $8c
	xor  [hl]                                        ; $47c5: $ae
	db   $ec                                         ; $47c6: $ec
	inc  l                                           ; $47c7: $2c
	ld   l, h                                        ; $47c8: $6c
	reti                                             ; $47c9: $d9


	ld   hl, sp-$04                                  ; $47ca: $f8 $fc
	ret  c                                           ; $47cc: $d8

	and  $e0                                         ; $47cd: $e6 $e0
	add  b                                           ; $47cf: $80
	add  sp, $00                                     ; $47d0: $e8 $00
	ldh  [$80], a                                    ; $47d2: $e0 $80
	jr   nz, jr_070_47d6                             ; $47d4: $20 $00

jr_070_47d6:
	ldh  [$80], a                                    ; $47d6: $e0 $80
	pop  de                                          ; $47d8: $d1
	add  b                                           ; $47d9: $80
	pop  bc                                          ; $47da: $c1
	add  b                                           ; $47db: $80
	di                                               ; $47dc: $f3
	add  b                                           ; $47dd: $80
	ldh  [c], a                                      ; $47de: $e2
	add  b                                           ; $47df: $80
	db   $f4                                         ; $47e0: $f4
	add  b                                           ; $47e1: $80
	sbc  l                                           ; $47e2: $9d
	add  b                                           ; $47e3: $80
	nop                                              ; $47e4: $00
	add  b                                           ; $47e5: $80
	ld   d, a                                        ; $47e6: $57
	rlca                                             ; $47e7: $07
	dec  hl                                          ; $47e8: $2b
	ld   l, e                                        ; $47e9: $6b
	ld   a, a                                        ; $47ea: $7f
	ccf                                              ; $47eb: $3f
	ld   l, $3f                                      ; $47ec: $2e $3f
	db   $ec                                         ; $47ee: $ec
	db   $fd                                         ; $47ef: $fd
	add  b                                           ; $47f0: $80
	ld   a, a                                        ; $47f1: $7f
	add  b                                           ; $47f2: $80
	ld   a, $f6                                      ; $47f3: $3e $f6
	nop                                              ; $47f5: $00
	add  [hl]                                        ; $47f6: $86
	nop                                              ; $47f7: $00
	ld   bc, $0708                                   ; $47f8: $01 $08 $07
	add  b                                           ; $47fb: $80
	inc  bc                                          ; $47fc: $03
	add  b                                           ; $47fd: $80
	rlca                                             ; $47fe: $07
	add  b                                           ; $47ff: $80
	dec  bc                                          ; $4800: $0b
	nop                                              ; $4801: $00
	rrca                                             ; $4802: $0f
	add  l                                           ; $4803: $85
	nop                                              ; $4804: $00
	ld   [$ff76], sp                                 ; $4805: $08 $76 $ff
	di                                               ; $4808: $f3
	rst  $38                                         ; $4809: $ff
	xor  b                                           ; $480a: $a8
	rst  $38                                         ; $480b: $ff
	add  b                                           ; $480c: $80
	rst  $38                                         ; $480d: $ff
	xor  l                                           ; $480e: $ad
	add  l                                           ; $480f: $85
	nop                                              ; $4810: $00
	ld   [$feff], sp                                 ; $4811: $08 $ff $fe
	db   $f4                                         ; $4814: $f4
	cp   $74                                         ; $4815: $fe $74
	ld   sp, hl                                      ; $4817: $f9
	cp   b                                           ; $4818: $b8
	rst  $30                                         ; $4819: $f7
	ret                                              ; $481a: $c9


	add  l                                           ; $481b: $85
	nop                                              ; $481c: $00
	ld   [$ff3e], sp                                 ; $481d: $08 $3e $ff
	ld   e, h                                        ; $4820: $5c
	rst  $38                                         ; $4821: $ff
	or   e                                           ; $4822: $b3
	rst  $38                                         ; $4823: $ff
	xor  b                                           ; $4824: $a8
	rst  $38                                         ; $4825: $ff
	ld   a, c                                        ; $4826: $79
	add  l                                           ; $4827: $85
	nop                                              ; $4828: $00
	ld   [$ff6e], sp                                 ; $4829: $08 $6e $ff
	db   $ed                                         ; $482c: $ed
	rst  $38                                         ; $482d: $ff
	push bc                                          ; $482e: $c5
	rst  $38                                         ; $482f: $ff
	add  a                                           ; $4830: $87
	rst  $38                                         ; $4831: $ff
	pop  bc                                          ; $4832: $c1
	add  l                                           ; $4833: $85
	nop                                              ; $4834: $00
	ld   [$efdf], sp                                 ; $4835: $08 $df $ef
	adc  $9f                                         ; $4838: $ce $9f
	rra                                              ; $483a: $1f
	cp   a                                           ; $483b: $bf
	dec  a                                           ; $483c: $3d
	ld   a, a                                        ; $483d: $7f
	add  e                                           ; $483e: $83
	add  l                                           ; $483f: $85
	nop                                              ; $4840: $00
	ld   [$ff5f], sp                                 ; $4841: $08 $5f $ff
	cp   [hl]                                        ; $4844: $be
	rst  $38                                         ; $4845: $ff
	db   $ec                                         ; $4846: $ec
	rst  $38                                         ; $4847: $ff
	call c, $d1ff                                    ; $4848: $dc $ff $d1
	add  l                                           ; $484b: $85
	nop                                              ; $484c: $00
	inc  b                                           ; $484d: $04
	jp   z, $2bff                                    ; $484e: $ca $ff $2b

	rst  $38                                         ; $4851: $ff
	sbc  $81                                         ; $4852: $de $81
	rst  $38                                         ; $4854: $ff
	nop                                              ; $4855: $00
	ret  nz                                          ; $4856: $c0

	add  l                                           ; $4857: $85
	nop                                              ; $4858: $00
	ld   [$ff1b], sp                                 ; $4859: $08 $1b $ff
	ld   [$31ff], a                                  ; $485c: $ea $ff $31
	rst  $38                                         ; $485f: $ff
	db   $db                                         ; $4860: $db
	rst  $38                                         ; $4861: $ff
	dec  de                                          ; $4862: $1b
	add  l                                           ; $4863: $85
	nop                                              ; $4864: $00
	ld   [$fc10], sp                                 ; $4865: $08 $10 $fc
	inc  a                                           ; $4868: $3c
	rst  $30                                         ; $4869: $f7
	dec  hl                                          ; $486a: $2b
	db   $dd                                         ; $486b: $dd
	inc  bc                                          ; $486c: $03
	or   $24                                         ; $486d: $f6 $24
	add  l                                           ; $486f: $85
	nop                                              ; $4870: $00
	ld   [$0d08], sp                                 ; $4871: $08 $08 $0d
	add  a                                           ; $4874: $87
	xor  d                                           ; $4875: $aa
	and  l                                           ; $4876: $a5
	cp   l                                           ; $4877: $bd
	ld   a, [hl-]                                    ; $4878: $3a
	sbc  e                                           ; $4879: $9b
	sub  c                                           ; $487a: $91
	add  l                                           ; $487b: $85
	nop                                              ; $487c: $00
	ld   [$ff8f], sp                                 ; $487d: $08 $8f $ff
	ret                                              ; $4880: $c9


	rst  $38                                         ; $4881: $ff
	ld   l, c                                        ; $4882: $69
	rst  $38                                         ; $4883: $ff
	ld   l, a                                        ; $4884: $6f
	rst  $38                                         ; $4885: $ff
	ld   b, b                                        ; $4886: $40
	add  l                                           ; $4887: $85
	nop                                              ; $4888: $00
	ld   [$fff4], sp                                 ; $4889: $08 $f4 $ff
	call c, $96ff                                    ; $488c: $dc $ff $96
	rst  $38                                         ; $488f: $ff
	cp   h                                           ; $4890: $bc
	rst  $38                                         ; $4891: $ff
	ld   [bc], a                                     ; $4892: $02
	add  l                                           ; $4893: $85
	nop                                              ; $4894: $00
	ld   [$eeef], sp                                 ; $4895: $08 $ef $ee
	db   $fc                                         ; $4898: $fc
	cp   $76                                         ; $4899: $fe $76
	sbc  $17                                         ; $489b: $de $17
	rst  $20                                         ; $489d: $e7
	ld   e, e                                        ; $489e: $5b
	add  l                                           ; $489f: $85
	nop                                              ; $48a0: $00
	ld   bc, $eeef                                   ; $48a1: $01 $ef $ee
	add  b                                           ; $48a4: $80
	cp   $04                                         ; $48a5: $fe $04
	ld   l, d                                        ; $48a7: $6a
	rst  $38                                         ; $48a8: $ff
	inc  b                                           ; $48a9: $04
	rst  $38                                         ; $48aa: $ff
	ld   l, a                                        ; $48ab: $6f
	add  l                                           ; $48ac: $85
	nop                                              ; $48ad: $00
	add  hl, bc                                      ; $48ae: $09
	rst  $30                                         ; $48af: $f7
	rst  $38                                         ; $48b0: $ff
	ldh  a, [c]                                      ; $48b1: $f2
	rst  $38                                         ; $48b2: $ff
	ld   a, d                                        ; $48b3: $7a
	rst  $38                                         ; $48b4: $ff
	jp   nc, $ebbf                                   ; $48b5: $d2 $bf $eb

	add  hl, bc                                      ; $48b8: $09
	add  b                                           ; $48b9: $80
	inc  c                                           ; $48ba: $0c
	add  b                                           ; $48bb: $80
	ld   c, $82                                      ; $48bc: $0e $82
	rrca                                             ; $48be: $0f
	add  b                                           ; $48bf: $80
	rlca                                             ; $48c0: $07
	add  b                                           ; $48c1: $80
	dec  bc                                          ; $48c2: $0b
	add  b                                           ; $48c3: $80
	add  hl, bc                                      ; $48c4: $09
	ld   bc, $fff0                                   ; $48c5: $01 $f0 $ff
	add  b                                           ; $48c8: $80
	ei                                               ; $48c9: $fb
	inc  l                                           ; $48ca: $2c
	rst  $38                                         ; $48cb: $ff
	ld   a, a                                        ; $48cc: $7f
	ld   c, a                                        ; $48cd: $4f
	ld   d, c                                        ; $48ce: $51
	ld   b, b                                        ; $48cf: $40
	ld   l, a                                        ; $48d0: $6f
	adc  $bf                                         ; $48d1: $ce $bf
	sbc  d                                           ; $48d3: $9a
	cp   a                                           ; $48d4: $bf
	xor  c                                           ; $48d5: $a9
	cp   a                                           ; $48d6: $bf
	ld   h, l                                        ; $48d7: $65
	rst  $38                                         ; $48d8: $ff
	sub  $f7                                         ; $48d9: $d6 $f7
	inc  sp                                          ; $48db: $33
	rst  $38                                         ; $48dc: $ff
	ld   l, e                                        ; $48dd: $6b
	rst  $28                                         ; $48de: $ef
	halt                                             ; $48df: $76
	rst  $38                                         ; $48e0: $ff
	and  l                                           ; $48e1: $a5
	rst  $38                                         ; $48e2: $ff
	add  c                                           ; $48e3: $81
	rst  $38                                         ; $48e4: $ff
	add  hl, hl                                      ; $48e5: $29
	rst  $38                                         ; $48e6: $ff
	and  b                                           ; $48e7: $a0
	rst  $38                                         ; $48e8: $ff
	ld   d, d                                        ; $48e9: $52
	rst  $38                                         ; $48ea: $ff
	ld   b, a                                        ; $48eb: $47
	rst  $38                                         ; $48ec: $ff
	add  [hl]                                        ; $48ed: $86
	db   $fd                                         ; $48ee: $fd
	push de                                          ; $48ef: $d5
	db   $fd                                         ; $48f0: $fd
	ld   c, h                                        ; $48f1: $4c
	db   $fd                                         ; $48f2: $fd
	ld   d, a                                        ; $48f3: $57
	rst  $38                                         ; $48f4: $ff
	ld   e, c                                        ; $48f5: $59
	rst  $38                                         ; $48f6: $ff
	ld   [hl+], a                                    ; $48f7: $22
	add  c                                           ; $48f8: $81
	rst  $38                                         ; $48f9: $ff
	add  hl, bc                                      ; $48fa: $09
	db   $fc                                         ; $48fb: $fc
	rst  $38                                         ; $48fc: $ff
	db   $f4                                         ; $48fd: $f4
	rst  $38                                         ; $48fe: $ff
	rst  ToBoot                                         ; $48ff: $c7
	rst  $30                                         ; $4900: $f7
	add  a                                           ; $4901: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4902: $cf
	rrca                                             ; $4903: $0f
	cp   a                                           ; $4904: $bf
	add  b                                           ; $4905: $80
	ccf                                              ; $4906: $3f
	db   $10                                         ; $4907: $10
	rst  $10                                         ; $4908: $d7
	rst  $38                                         ; $4909: $ff
	pop  hl                                          ; $490a: $e1
	rst  $38                                         ; $490b: $ff
	dec  de                                          ; $490c: $1b
	ccf                                              ; $490d: $3f
	db   $dd                                         ; $490e: $dd
	rst  $38                                         ; $490f: $ff
	ld   c, [hl]                                     ; $4910: $4e
	rst  $38                                         ; $4911: $ff
	db   $dd                                         ; $4912: $dd
	rst  $38                                         ; $4913: $ff
	ld   c, a                                        ; $4914: $4f
	rst  $38                                         ; $4915: $ff
	inc  bc                                          ; $4916: $03
	rst  $38                                         ; $4917: $ff
	or   c                                           ; $4918: $b1
	add  b                                           ; $4919: $80
	rst  $38                                         ; $491a: $ff
	ld   a, a                                        ; $491b: $7f
	cp   $ab                                         ; $491c: $fe $ab
	ei                                               ; $491e: $fb
	ld   h, a                                        ; $491f: $67
	rst  $38                                         ; $4920: $ff
	db   $ec                                         ; $4921: $ec
	rst  $38                                         ; $4922: $ff
	add  hl, bc                                      ; $4923: $09
	rst  $38                                         ; $4924: $ff
	dec  h                                           ; $4925: $25
	rst  $38                                         ; $4926: $ff
	inc  bc                                          ; $4927: $03
	sbc  a                                           ; $4928: $9f
	ld   d, d                                        ; $4929: $52
	rst  $38                                         ; $492a: $ff
	ld   b, l                                        ; $492b: $45
	rst  $38                                         ; $492c: $ff
	pop  bc                                          ; $492d: $c1
	rst  JumpTable                                         ; $492e: $df
	pop  af                                          ; $492f: $f1
	rst  $38                                         ; $4930: $ff
	ld   [hl], h                                     ; $4931: $74
	rst  $38                                         ; $4932: $ff
	inc  sp                                          ; $4933: $33
	rst  $38                                         ; $4934: $ff
	ld   e, [hl]                                     ; $4935: $5e
	rst  $38                                         ; $4936: $ff
	rst  $20                                         ; $4937: $e7
	rst  $38                                         ; $4938: $ff
	inc  de                                          ; $4939: $13
	rst  $38                                         ; $493a: $ff
	pop  hl                                          ; $493b: $e1
	rst  $38                                         ; $493c: $ff
	ld   a, a                                        ; $493d: $7f
	rst  $38                                         ; $493e: $ff
	ld   a, [hl]                                     ; $493f: $7e
	rst  $38                                         ; $4940: $ff
	ld   a, [hl]                                     ; $4941: $7e
	rst  $38                                         ; $4942: $ff
	cp   c                                           ; $4943: $b9
	ei                                               ; $4944: $fb
	add  hl, hl                                      ; $4945: $29
	rst  $28                                         ; $4946: $ef
	inc  [hl]                                        ; $4947: $34
	rst  $38                                         ; $4948: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4949: $cf
	rst  $38                                         ; $494a: $ff
	sbc  a                                           ; $494b: $9f
	ei                                               ; $494c: $fb
	db   $eb                                         ; $494d: $eb
	ld   a, [hl]                                     ; $494e: $7e
	ld   h, [hl]                                     ; $494f: $66
	rst  $38                                         ; $4950: $ff
	rst  $28                                         ; $4951: $ef
	rst  $38                                         ; $4952: $ff
	xor  e                                           ; $4953: $ab
	rst  $38                                         ; $4954: $ff
	add  l                                           ; $4955: $85
	rst  $38                                         ; $4956: $ff
	and  $ff                                         ; $4957: $e6 $ff
	sub  [hl]                                        ; $4959: $96
	rst  $38                                         ; $495a: $ff
	ld   hl, sp+$29                                  ; $495b: $f8 $29
	ld   e, c                                        ; $495d: $59
	rst  $38                                         ; $495e: $ff
	add  hl, bc                                      ; $495f: $09
	cp   a                                           ; $4960: $bf
	sub  d                                           ; $4961: $92
	rst  $38                                         ; $4962: $ff
	ld   c, c                                        ; $4963: $49
	ld   a, a                                        ; $4964: $7f
	db   $d3                                         ; $4965: $d3
	rst  $38                                         ; $4966: $ff
	inc  l                                           ; $4967: $2c
	rst  $38                                         ; $4968: $ff
	ld   e, b                                        ; $4969: $58
	rst  $38                                         ; $496a: $ff
	sub  [hl]                                        ; $496b: $96
	rst  $38                                         ; $496c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $496d: $cf
	rst  $38                                         ; $496e: $ff
	xor  d                                           ; $496f: $aa
	rst  $38                                         ; $4970: $ff
	add  hl, hl                                      ; $4971: $29
	rst  $38                                         ; $4972: $ff
	jp   $f0ff                                       ; $4973: $c3 $ff $f0


	rst  $38                                         ; $4976: $ff
	jp   z, $b9ff                                    ; $4977: $ca $ff $b9

	rst  $38                                         ; $497a: $ff
	ld   e, $9f                                      ; $497b: $1e $9f
	ld   a, d                                        ; $497d: $7a
	ld   a, a                                        ; $497e: $7f
	ei                                               ; $497f: $fb
	rst  $38                                         ; $4980: $ff
	ld   a, l                                        ; $4981: $7d
	rst  $38                                         ; $4982: $ff
	xor  b                                           ; $4983: $a8
	rst  $38                                         ; $4984: $ff
	rst  ToBoot                                         ; $4985: $c7
	rst  $38                                         ; $4986: $ff
	db   $ec                                         ; $4987: $ec
	rst  $38                                         ; $4988: $ff
	dec  b                                           ; $4989: $05
	rst  $38                                         ; $498a: $ff
	ld   hl, sp-$01                                  ; $498b: $f8 $ff
	call c, $bedf                                    ; $498d: $dc $df $be
	cp   a                                           ; $4990: $bf
	cp   $ff                                         ; $4991: $fe $ff
	push af                                          ; $4993: $f5
	rst  $38                                         ; $4994: $ff
	or   b                                           ; $4995: $b0
	db   $fc                                         ; $4996: $fc
	sbc  e                                           ; $4997: $9b
	db   $e3                                         ; $4998: $e3
	ret  nz                                          ; $4999: $c0

	rst  $38                                         ; $499a: $ff
	ld   a, a                                        ; $499b: $7f
	db   $10                                         ; $499c: $10
	rst  $38                                         ; $499d: $ff
	ccf                                              ; $499e: $3f
	rst  $38                                         ; $499f: $ff
	sbc  b                                           ; $49a0: $98
	ei                                               ; $49a1: $fb
	db   $e4                                         ; $49a2: $e4
	ret  c                                           ; $49a3: $d8

	nop                                              ; $49a4: $00
	and  a                                           ; $49a5: $a7
	rlca                                             ; $49a6: $07
	ld   a, a                                        ; $49a7: $7f
	ccf                                              ; $49a8: $3f
	rst  $38                                         ; $49a9: $ff
	cp   a                                           ; $49aa: $bf
	rst  JumpTable                                         ; $49ab: $df
	cp   a                                           ; $49ac: $bf
	rst  $28                                         ; $49ad: $ef
	add  b                                           ; $49ae: $80
	rst  JumpTable                                         ; $49af: $df
	ld   bc, $ef27                                   ; $49b0: $01 $27 $ef
	add  b                                           ; $49b3: $80
	rrca                                             ; $49b4: $0f
	inc  bc                                          ; $49b5: $03
	rlca                                             ; $49b6: $07
	add  a                                           ; $49b7: $87
	add  e                                           ; $49b8: $83
	rst  $20                                         ; $49b9: $e7
	add  b                                           ; $49ba: $80
	di                                               ; $49bb: $f3
	ld   bc, $0c1f                                   ; $49bc: $01 $1f $0c
	add  b                                           ; $49bf: $80
	ld   c, $82                                      ; $49c0: $0e $82
	rrca                                             ; $49c2: $0f
	add  b                                           ; $49c3: $80
	inc  bc                                          ; $49c4: $03
	add  b                                           ; $49c5: $80
	dec  c                                           ; $49c6: $0d
	add  d                                           ; $49c7: $82
	ld   c, $02                                      ; $49c8: $0e $02
	ldh  a, [$bf]                                    ; $49ca: $f0 $bf
	rra                                              ; $49cc: $1f
	add  c                                           ; $49cd: $81
	cp   a                                           ; $49ce: $bf
	ld   d, $df                                      ; $49cf: $16 $df
	ld   e, a                                        ; $49d1: $5f
	rst  $28                                         ; $49d2: $ef
	rst  $38                                         ; $49d3: $ff
	rst  $28                                         ; $49d4: $ef
	xor  a                                           ; $49d5: $af
	rst  $38                                         ; $49d6: $ff
	rst  $30                                         ; $49d7: $f7
	halt                                             ; $49d8: $76
	rst  $10                                         ; $49d9: $d7
	ld   h, [hl]                                     ; $49da: $66
	rst  $38                                         ; $49db: $ff
	ld   l, a                                        ; $49dc: $6f
	cp   a                                           ; $49dd: $bf
	cpl                                              ; $49de: $2f
	cp   a                                           ; $49df: $bf
	cp   l                                           ; $49e0: $bd
	ld   a, a                                        ; $49e1: $7f
	inc  a                                           ; $49e2: $3c
	ld   a, a                                        ; $49e3: $7f
	reti                                             ; $49e4: $d9


	rst  $38                                         ; $49e5: $ff
	ld   h, a                                        ; $49e6: $67
	add  b                                           ; $49e7: $80
	ld   a, a                                        ; $49e8: $7f
	ld   [bc], a                                     ; $49e9: $02
	rst  $38                                         ; $49ea: $ff
	add  e                                           ; $49eb: $83
	rst  $38                                         ; $49ec: $ff
	add  b                                           ; $49ed: $80
	cp   $00                                         ; $49ee: $fe $00
	cp   d                                           ; $49f0: $ba
	add  c                                           ; $49f1: $81
	cp   $48                                         ; $49f2: $fe $48
	db   $fc                                         ; $49f4: $fc
	db   $fd                                         ; $49f5: $fd
	or   c                                           ; $49f6: $b1
	ei                                               ; $49f7: $fb
	add  sp, -$05                                    ; $49f8: $e8 $fb
	or   b                                           ; $49fa: $b0
	rst  $30                                         ; $49fb: $f7
	and  a                                           ; $49fc: $a7
	ld   a, a                                        ; $49fd: $7f
	ccf                                              ; $49fe: $3f
	jp   $3f83                                       ; $49ff: $c3 $83 $3f


	ld   l, $ef                                      ; $4a02: $2e $ef
	sbc  $df                                         ; $4a04: $de $df
	ld   a, [$51ff]                                  ; $4a06: $fa $ff $51
	rst  $38                                         ; $4a09: $ff
	inc  hl                                          ; $4a0a: $23
	rst  $38                                         ; $4a0b: $ff
	ret                                              ; $4a0c: $c9


	cp   $b7                                         ; $4a0d: $fe $b7
	rst  $38                                         ; $4a0f: $ff
	dec  sp                                          ; $4a10: $3b
	rst  $28                                         ; $4a11: $ef
	dec  d                                           ; $4a12: $15
	rst  $30                                         ; $4a13: $f7
	ld   c, c                                        ; $4a14: $49
	ld   a, [$f5b3]                                  ; $4a15: $fa $b3 $f5
	ld   [hl+], a                                    ; $4a18: $22
	cp   $6b                                         ; $4a19: $fe $6b
	rst  $38                                         ; $4a1b: $ff
	ld   a, e                                        ; $4a1c: $7b
	rst  $38                                         ; $4a1d: $ff
	ei                                               ; $4a1e: $fb
	rst  $38                                         ; $4a1f: $ff
	ei                                               ; $4a20: $fb
	rst  $38                                         ; $4a21: $ff
	ld   e, d                                        ; $4a22: $5a
	rst  $38                                         ; $4a23: $ff
	sub  l                                           ; $4a24: $95
	rst  $38                                         ; $4a25: $ff
	ld   b, [hl]                                     ; $4a26: $46
	rst  $38                                         ; $4a27: $ff
	or   h                                           ; $4a28: $b4
	rst  $38                                         ; $4a29: $ff
	ld   e, b                                        ; $4a2a: $58
	rst  $38                                         ; $4a2b: $ff
	or   d                                           ; $4a2c: $b2
	rst  $38                                         ; $4a2d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a2e: $cf
	rst  $38                                         ; $4a2f: $ff
	jp   hl                                          ; $4a30: $e9


	rst  $38                                         ; $4a31: $ff
	ld   h, $ff                                      ; $4a32: $26 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a34: $cf
	rst  $38                                         ; $4a35: $ff
	ld   b, a                                        ; $4a36: $47
	rst  JumpTable                                         ; $4a37: $df
	ld   a, [hl]                                     ; $4a38: $7e
	rst  $38                                         ; $4a39: $ff
	ld   [hl-], a                                    ; $4a3a: $32
	rst  $38                                         ; $4a3b: $ff
	inc  b                                           ; $4a3c: $04
	add  c                                           ; $4a3d: $81
	rst  $38                                         ; $4a3e: $ff
	ld   a, [de]                                     ; $4a3f: $1a
	cp   e                                           ; $4a40: $bb
	rst  $38                                         ; $4a41: $ff
	ld   c, d                                        ; $4a42: $4a
	cp   $cb                                         ; $4a43: $fe $cb
	ei                                               ; $4a45: $fb
	xor  $ff                                         ; $4a46: $ee $ff
	ld   e, l                                        ; $4a48: $5d
	rst  $38                                         ; $4a49: $ff
	di                                               ; $4a4a: $f3
	rst  $38                                         ; $4a4b: $ff
	reti                                             ; $4a4c: $d9


	rst  $38                                         ; $4a4d: $ff
	dec  hl                                          ; $4a4e: $2b
	rst  $38                                         ; $4a4f: $ff
	ld   e, [hl]                                     ; $4a50: $5e
	rst  $38                                         ; $4a51: $ff
	ld   l, b                                        ; $4a52: $68
	rst  $38                                         ; $4a53: $ff
	and  c                                           ; $4a54: $a1
	rst  $38                                         ; $4a55: $ff
	add  [hl]                                        ; $4a56: $86
	rst  $38                                         ; $4a57: $ff
	adc  c                                           ; $4a58: $89
	rst  $38                                         ; $4a59: $ff
	jp   c, $ff83                                    ; $4a5a: $da $83 $ff

	inc  d                                           ; $4a5d: $14
	rst  $30                                         ; $4a5e: $f7
	rst  $38                                         ; $4a5f: $ff
	db   $d3                                         ; $4a60: $d3
	rst  $38                                         ; $4a61: $ff
	db   $db                                         ; $4a62: $db
	rst  $38                                         ; $4a63: $ff
	cp   e                                           ; $4a64: $bb
	rst  $38                                         ; $4a65: $ff
	cp   e                                           ; $4a66: $bb
	rst  $38                                         ; $4a67: $ff
	rst  JumpTable                                         ; $4a68: $df
	rst  $38                                         ; $4a69: $ff
	pop  de                                          ; $4a6a: $d1
	rst  $38                                         ; $4a6b: $ff
	push hl                                          ; $4a6c: $e5
	rst  $38                                         ; $4a6d: $ff
	rst  $30                                         ; $4a6e: $f7
	rst  $38                                         ; $4a6f: $ff
	db   $fc                                         ; $4a70: $fc
	rst  $38                                         ; $4a71: $ff
	rst  JumpTable                                         ; $4a72: $df
	add  c                                           ; $4a73: $81
	rst  $38                                         ; $4a74: $ff
	inc  c                                           ; $4a75: $0c
	push af                                          ; $4a76: $f5
	db   $fd                                         ; $4a77: $fd
	call nc, $03ff                                   ; $4a78: $d4 $ff $03
	rst  $38                                         ; $4a7b: $ff
	rst  $20                                         ; $4a7c: $e7
	rst  $38                                         ; $4a7d: $ff
	db   $eb                                         ; $4a7e: $eb
	rst  $38                                         ; $4a7f: $ff

Jump_070_4a80:
	ret                                              ; $4a80: $c9


	rst  $38                                         ; $4a81: $ff
	jp   c, $ff80                                    ; $4a82: $da $80 $ff

	dec  h                                           ; $4a85: $25
	cp   a                                           ; $4a86: $bf
	ccf                                              ; $4a87: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a88: $cf
	adc  a                                           ; $4a89: $8f
	rst  $30                                         ; $4a8a: $f7
	ld   [hl], h                                     ; $4a8b: $74
	rst  $38                                         ; $4a8c: $ff
	ld   bc, $ccff                                   ; $4a8d: $01 $ff $cc
	rst  $38                                         ; $4a90: $ff
	and  c                                           ; $4a91: $a1
	rst  $38                                         ; $4a92: $ff
	add  $f6                                         ; $4a93: $c6 $f6
	rst  JumpTable                                         ; $4a95: $df
	rst  $38                                         ; $4a96: $ff
	db   $dd                                         ; $4a97: $dd
	rst  $38                                         ; $4a98: $ff
	ld   a, [$dbff]                                  ; $4a99: $fa $ff $db
	rst  $38                                         ; $4a9c: $ff
	cp   [hl]                                        ; $4a9d: $be
	rst  $38                                         ; $4a9e: $ff
	ld   a, e                                        ; $4a9f: $7b
	rst  $38                                         ; $4aa0: $ff
	call c, $d9ff                                    ; $4aa1: $dc $ff $d9
	rst  $38                                         ; $4aa4: $ff
	ret  z                                           ; $4aa5: $c8

	rst  $38                                         ; $4aa6: $ff
	dec  a                                           ; $4aa7: $3d
	rst  $38                                         ; $4aa8: $ff
	rst  $30                                         ; $4aa9: $f7
	rst  $38                                         ; $4aaa: $ff
	add  hl, bc                                      ; $4aab: $09
	add  c                                           ; $4aac: $81
	ei                                               ; $4aad: $fb
	nop                                              ; $4aae: $00
	ld   sp, hl                                      ; $4aaf: $f9
	add  e                                           ; $4ab0: $83
	ei                                               ; $4ab1: $fb
	add  b                                           ; $4ab2: $80
	ld   sp, hl                                      ; $4ab3: $f9
	add  d                                           ; $4ab4: $82
	ei                                               ; $4ab5: $fb
	rla                                              ; $4ab6: $17
	inc  bc                                          ; $4ab7: $03
	rrca                                             ; $4ab8: $0f
	ld   a, [bc]                                     ; $4ab9: $0a
	rrca                                             ; $4aba: $0f
	inc  bc                                          ; $4abb: $03
	rrca                                             ; $4abc: $0f
	ld   [bc], a                                     ; $4abd: $02
	rrca                                             ; $4abe: $0f
	ld   [$060f], sp                                 ; $4abf: $08 $0f $06
	rrca                                             ; $4ac2: $0f
	ld   c, $0f                                      ; $4ac3: $0e $0f
	ld   [bc], a                                     ; $4ac5: $02
	rrca                                             ; $4ac6: $0f
	dec  bc                                          ; $4ac7: $0b
	di                                               ; $4ac8: $f3
	ld   [hl], e                                     ; $4ac9: $73
	di                                               ; $4aca: $f3
	cp   e                                           ; $4acb: $bb
	reti                                             ; $4acc: $d9


	db   $fd                                         ; $4acd: $fd
	db   $ec                                         ; $4ace: $ec
	add  b                                           ; $4acf: $80
	ld   hl, sp-$80                                  ; $4ad0: $f8 $80
	db   $fc                                         ; $4ad2: $fc
	nop                                              ; $4ad3: $00
	or   $80                                         ; $4ad4: $f6 $80
	cp   $1c                                         ; $4ad6: $fe $1c
	ld   a, [$3fc5]                                  ; $4ad8: $fa $c5 $3f
	and  [hl]                                        ; $4adb: $a6
	cp   a                                           ; $4adc: $bf
	sbc  a                                           ; $4add: $9f
	cp   a                                           ; $4ade: $bf
	cp   [hl]                                        ; $4adf: $be
	cp   a                                           ; $4ae0: $bf
	sbc  d                                           ; $4ae1: $9a

jr_070_4ae2:
	cp   e                                           ; $4ae2: $bb
	daa                                              ; $4ae3: $27
	ccf                                              ; $4ae4: $3f
	ld   e, $1f                                      ; $4ae5: $1e $1f
	add  hl, bc                                      ; $4ae7: $09
	rrca                                             ; $4ae8: $0f
	jr   nc, jr_070_4ae2                             ; $4ae9: $30 $f7

	rst  $20                                         ; $4aeb: $e7
	rst  $28                                         ; $4aec: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aed: $cf
	rst  $28                                         ; $4aee: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aef: $cf
	rst  $28                                         ; $4af0: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4af1: $cf
	rst  JumpTable                                         ; $4af2: $df
	cp   a                                           ; $4af3: $bf
	rst  $38                                         ; $4af4: $ff
	add  c                                           ; $4af5: $81
	rst  JumpTable                                         ; $4af6: $df
	ld   b, d                                        ; $4af7: $42
	rst  $38                                         ; $4af8: $ff
	inc  c                                           ; $4af9: $0c
	rst  $38                                         ; $4afa: $ff
	call $ddff                                       ; $4afb: $cd $ff $dd
	rst  $38                                         ; $4afe: $ff
	dec  d                                           ; $4aff: $15
	rst  $38                                         ; $4b00: $ff
	ld   e, $ff                                      ; $4b01: $1e $ff
	sub  [hl]                                        ; $4b03: $96
	rst  $38                                         ; $4b04: $ff
	ld   l, l                                        ; $4b05: $6d
	rst  $38                                         ; $4b06: $ff
	sub  e                                           ; $4b07: $93
	rst  $38                                         ; $4b08: $ff
	ld   l, h                                        ; $4b09: $6c
	rst  $38                                         ; $4b0a: $ff
	sub  c                                           ; $4b0b: $91
	rst  $38                                         ; $4b0c: $ff
	inc  [hl]                                        ; $4b0d: $34
	rst  $30                                         ; $4b0e: $f7
	sbc  $df                                         ; $4b0f: $de $df
	ld   e, l                                        ; $4b11: $5d
	rst  $38                                         ; $4b12: $ff
	inc  d                                           ; $4b13: $14
	rst  $38                                         ; $4b14: $ff
	ld   h, d                                        ; $4b15: $62
	rst  $38                                         ; $4b16: $ff
	call nc, $c0ff                                   ; $4b17: $d4 $ff $c0
	rst  $38                                         ; $4b1a: $ff
	ld   l, $ff                                      ; $4b1b: $2e $ff
	halt                                             ; $4b1d: $76
	rst  $38                                         ; $4b1e: $ff
	ld   c, c                                        ; $4b1f: $49
	rst  $38                                         ; $4b20: $ff
	db   $ec                                         ; $4b21: $ec
	rst  $38                                         ; $4b22: $ff
	ld   d, h                                        ; $4b23: $54
	rst  $38                                         ; $4b24: $ff
	add  d                                           ; $4b25: $82
	rst  $38                                         ; $4b26: $ff
	db   $e3                                         ; $4b27: $e3
	rst  $38                                         ; $4b28: $ff
	ld   a, [bc]                                     ; $4b29: $0a
	rst  $38                                         ; $4b2a: $ff
	call $8ebf                                       ; $4b2b: $cd $bf $8e
	cp   a                                           ; $4b2e: $bf
	cp   l                                           ; $4b2f: $bd
	cp   a                                           ; $4b30: $bf
	push af                                          ; $4b31: $f5
	rst  JumpTable                                         ; $4b32: $df
	sub  l                                           ; $4b33: $95
	db   $db                                         ; $4b34: $db
	add  a                                           ; $4b35: $87
	rst  JumpTable                                         ; $4b36: $df
	xor  a                                           ; $4b37: $af
	rst  $38                                         ; $4b38: $ff
	sub  b                                           ; $4b39: $90
	rst  $38                                         ; $4b3a: $ff
	add  b                                           ; $4b3b: $80
	cp   a                                           ; $4b3c: $bf
	nop                                              ; $4b3d: $00
	ccf                                              ; $4b3e: $3f
	add  e                                           ; $4b3f: $83
	cp   a                                           ; $4b40: $bf
	ld   h, b                                        ; $4b41: $60
	cp   [hl]                                        ; $4b42: $be
	cp   a                                           ; $4b43: $bf
	cp   h                                           ; $4b44: $bc
	cp   a                                           ; $4b45: $bf
	sbc  a                                           ; $4b46: $9f
	cp   a                                           ; $4b47: $bf
	ld   sp, hl                                      ; $4b48: $f9
	rst  $38                                         ; $4b49: $ff
	add  c                                           ; $4b4a: $81
	rst  $20                                         ; $4b4b: $e7
	ld   a, c                                        ; $4b4c: $79
	ei                                               ; $4b4d: $fb
	ld   a, a                                        ; $4b4e: $7f
	rst  $38                                         ; $4b4f: $ff
	dec  a                                           ; $4b50: $3d
	rst  $38                                         ; $4b51: $ff
	jr   @+$01                                       ; $4b52: $18 $ff

	xor  b                                           ; $4b54: $a8
	di                                               ; $4b55: $f3
	call z, $9dcf                                    ; $4b56: $cc $cf $9d
	rst  $38                                         ; $4b59: $ff
	cpl                                              ; $4b5a: $2f
	rst  $38                                         ; $4b5b: $ff
	ld   [hl], $ff                                   ; $4b5c: $36 $ff
	ld   e, d                                        ; $4b5e: $5a
	rst  JumpTable                                         ; $4b5f: $df
	ld   sp, hl                                      ; $4b60: $f9
	rst  $38                                         ; $4b61: $ff
	ld   [hl], h                                     ; $4b62: $74
	rst  $38                                         ; $4b63: $ff
	xor  $ff                                         ; $4b64: $ee $ff
	sbc  a                                           ; $4b66: $9f
	rst  $38                                         ; $4b67: $ff
	pop  af                                          ; $4b68: $f1
	rst  $38                                         ; $4b69: $ff
	dec  h                                           ; $4b6a: $25
	rst  $38                                         ; $4b6b: $ff
	ld   e, c                                        ; $4b6c: $59
	rst  $38                                         ; $4b6d: $ff
	ld   de, $16fd                                   ; $4b6e: $11 $fd $16
	rst  $38                                         ; $4b71: $ff
	db   $dd                                         ; $4b72: $dd
	push af                                          ; $4b73: $f5
	adc  $ff                                         ; $4b74: $ce $ff
	call nc, $30fd                                   ; $4b76: $d4 $fd $30
	rst  $38                                         ; $4b79: $ff
	ld   [hl], e                                     ; $4b7a: $73
	rst  $38                                         ; $4b7b: $ff
	db   $dd                                         ; $4b7c: $dd
	cpl                                              ; $4b7d: $2f
	sbc  $ff                                         ; $4b7e: $de $ff
	add  c                                           ; $4b80: $81
	xor  e                                           ; $4b81: $ab
	add  [hl]                                        ; $4b82: $86
	rst  JumpTable                                         ; $4b83: $df
	ld   [hl], $6f                                   ; $4b84: $36 $6f
	ld   a, [hl+]                                    ; $4b86: $2a
	rst  $28                                         ; $4b87: $ef
	ld   a, a                                        ; $4b88: $7f
	rst  $38                                         ; $4b89: $ff
	add  hl, bc                                      ; $4b8a: $09
	rst  $38                                         ; $4b8b: $ff
	call Call_070_70ff                               ; $4b8c: $cd $ff $70
	ei                                               ; $4b8f: $fb
	ld   h, d                                        ; $4b90: $62
	rst  $28                                         ; $4b91: $ef
	db   $db                                         ; $4b92: $db
	rst  $38                                         ; $4b93: $ff
	add  h                                           ; $4b94: $84
	rst  $38                                         ; $4b95: $ff
	ret  nz                                          ; $4b96: $c0

	rst  $38                                         ; $4b97: $ff
	ld   a, [de]                                     ; $4b98: $1a
	rst  $38                                         ; $4b99: $ff
	rst  JumpTable                                         ; $4b9a: $df
	rst  $38                                         ; $4b9b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b9c: $cf
	rst  $38                                         ; $4b9d: $ff
	add  a                                           ; $4b9e: $87
	rst  $38                                         ; $4b9f: $ff
	sub  e                                           ; $4ba0: $93
	rst  $38                                         ; $4ba1: $ff
	db   $fd                                         ; $4ba2: $fd
	add  c                                           ; $4ba3: $81
	rst  $38                                         ; $4ba4: $ff
	dec  b                                           ; $4ba5: $05
	ld   hl, sp-$03                                  ; $4ba6: $f8 $fd
	or   $fb                                         ; $4ba8: $f6 $fb
	db   $fc                                         ; $4baa: $fc
	db   $fd                                         ; $4bab: $fd
	add  d                                           ; $4bac: $82
	db   $fc                                         ; $4bad: $fc
	ld   bc, $fcbc                                   ; $4bae: $01 $bc $fc
	add  b                                           ; $4bb1: $80
	ld   hl, sp+$10                                  ; $4bb2: $f8 $10
	adc  c                                           ; $4bb4: $89
	ld   sp, hl                                      ; $4bb5: $f9
	add  sp, -$17                                    ; $4bb6: $e8 $e9
	inc  [hl]                                        ; $4bb8: $34
	rrca                                             ; $4bb9: $0f
	ld   [$040f], sp                                 ; $4bba: $08 $0f $04
	rrca                                             ; $4bbd: $0f
	ld   a, [bc]                                     ; $4bbe: $0a
	rrca                                             ; $4bbf: $0f
	ld   a, [bc]                                     ; $4bc0: $0a
	rrca                                             ; $4bc1: $0f
	add  hl, bc                                      ; $4bc2: $09
	dec  bc                                          ; $4bc3: $0b
	dec  b                                           ; $4bc4: $05
	add  c                                           ; $4bc5: $81
	rrca                                             ; $4bc6: $0f
	ld   de, $ff31                                   ; $4bc7: $11 $31 $ff
	or   [hl]                                        ; $4bca: $b6
	db   $fc                                         ; $4bcb: $fc
	ld   a, d                                        ; $4bcc: $7a
	db   $fc                                         ; $4bcd: $fc
	sub  $f6                                         ; $4bce: $d6 $f6
	call z, Call_070_7fee                            ; $4bd0: $cc $ee $7f
	rst  $38                                         ; $4bd3: $ff
	dec  l                                           ; $4bd4: $2d
	rst  $38                                         ; $4bd5: $ff
	ld   b, d                                        ; $4bd6: $42
	rst  $38                                         ; $4bd7: $ff
	sbc  c                                           ; $4bd8: $99
	adc  a                                           ; $4bd9: $8f
	add  b                                           ; $4bda: $80
	rst  ToBoot                                         ; $4bdb: $c7
	inc  bc                                          ; $4bdc: $03
	db   $e3                                         ; $4bdd: $e3
	rst  $20                                         ; $4bde: $e7
	add  $c7                                         ; $4bdf: $c6 $c7
	add  b                                           ; $4be1: $80
	di                                               ; $4be2: $f3
	add  hl, de                                      ; $4be3: $19
	pop  af                                          ; $4be4: $f1
	di                                               ; $4be5: $f3
	ldh  a, [$b0]                                    ; $4be6: $f0 $b0
	cp   b                                           ; $4be8: $b8
	ld   hl, sp+$38                                  ; $4be9: $f8 $38
	ccf                                              ; $4beb: $3f
	inc  h                                           ; $4bec: $24
	ccf                                              ; $4bed: $3f
	dec  d                                           ; $4bee: $15
	ccf                                              ; $4bef: $3f
	scf                                              ; $4bf0: $37
	ccf                                              ; $4bf1: $3f
	inc  [hl]                                        ; $4bf2: $34
	scf                                              ; $4bf3: $37
	ld   [hl], c                                     ; $4bf4: $71
	ld   a, a                                        ; $4bf5: $7f
	halt                                             ; $4bf6: $76
	ld   a, a                                        ; $4bf7: $7f
	ld   d, c                                        ; $4bf8: $51
	ld   a, a                                        ; $4bf9: $7f
	inc  d                                           ; $4bfa: $14
	rst  $38                                         ; $4bfb: $ff
	rst  $30                                         ; $4bfc: $f7
	cp   $80                                         ; $4bfd: $fe $80
	or   $06                                         ; $4bff: $f6 $06
	db   $eb                                         ; $4c01: $eb
	rst  JumpTable                                         ; $4c02: $df
	ld   b, e                                        ; $4c03: $43
	cp   c                                           ; $4c04: $b9
	dec  sp                                          ; $4c05: $3b
	rst  $38                                         ; $4c06: $ff
	db   $fd                                         ; $4c07: $fd
	add  c                                           ; $4c08: $81
	rst  $38                                         ; $4c09: $ff
	ld   b, $fe                                      ; $4c0a: $06 $fe
	rst  $28                                         ; $4c0c: $ef
	db   $eb                                         ; $4c0d: $eb
	rst  $30                                         ; $4c0e: $f7
	push af                                          ; $4c0f: $f5
	cp   $f9                                         ; $4c10: $fe $f9
	add  b                                           ; $4c12: $80
	rst  $38                                         ; $4c13: $ff
	inc  bc                                          ; $4c14: $03
	ld   a, l                                        ; $4c15: $7d
	ld   a, d                                        ; $4c16: $7a
	ld   [hl], a                                     ; $4c17: $77
	ld   a, c                                        ; $4c18: $79
	add  c                                           ; $4c19: $81
	ld   a, a                                        ; $4c1a: $7f
	dec  d                                           ; $4c1b: $15
	rst  $10                                         ; $4c1c: $d7
	rst  $38                                         ; $4c1d: $ff
	sbc  [hl]                                        ; $4c1e: $9e
	rst  $38                                         ; $4c1f: $ff
	ld   h, $67                                      ; $4c20: $26 $67
	ld   l, [hl]                                     ; $4c22: $6e
	ld   a, a                                        ; $4c23: $7f
	ld   l, d                                        ; $4c24: $6a
	dec  sp                                          ; $4c25: $3b
	dec  l                                           ; $4c26: $2d
	ccf                                              ; $4c27: $3f
	sbc  [hl]                                        ; $4c28: $9e
	cp   a                                           ; $4c29: $bf
	add  c                                           ; $4c2a: $81
	sbc  a                                           ; $4c2b: $9f
	ld   [hl-], a                                    ; $4c2c: $32
	cp   a                                           ; $4c2d: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c2e: $cf
	rst  JumpTable                                         ; $4c2f: $df
	ld   b, a                                        ; $4c30: $47
	ld   l, a                                        ; $4c31: $6f
	add  b                                           ; $4c32: $80
	daa                                              ; $4c33: $27
	dec  b                                           ; $4c34: $05
	ld   hl, $b0b5                                   ; $4c35: $21 $b5 $b0
	cp   d                                           ; $4c38: $ba
	cp   b                                           ; $4c39: $b8
	cp   l                                           ; $4c3a: $bd
	add  b                                           ; $4c3b: $80
	cp   a                                           ; $4c3c: $bf
	rlca                                             ; $4c3d: $07
	sbc  b                                           ; $4c3e: $98
	cp   a                                           ; $4c3f: $bf
	sub  a                                           ; $4c40: $97
	sbc  [hl]                                        ; $4c41: $9e
	jp   c, $cddd                                    ; $4c42: $da $dd $cd

	db   $db                                         ; $4c45: $db
	add  b                                           ; $4c46: $80
	rst  ToBoot                                         ; $4c47: $c7
	ld   bc, $c7c3                                   ; $4c48: $01 $c3 $c7
	add  b                                           ; $4c4b: $80
	adc  a                                           ; $4c4c: $8f
	ld   l, $97                                      ; $4c4d: $2e $97
	sbc  a                                           ; $4c4f: $9f
	ld   a, $3f                                      ; $4c50: $3e $3f
	rlca                                             ; $4c52: $07
	ld   a, a                                        ; $4c53: $7f
	inc  sp                                          ; $4c54: $33
	rst  $38                                         ; $4c55: $ff
	ei                                               ; $4c56: $fb
	rst  $38                                         ; $4c57: $ff
	ld   l, l                                        ; $4c58: $6d
	rst  $38                                         ; $4c59: $ff
	ld   c, $ff                                      ; $4c5a: $0e $ff
	jp   nc, Jump_070_4fff                           ; $4c5c: $d2 $ff $4f

	rst  $38                                         ; $4c5f: $ff
	cpl                                              ; $4c60: $2f
	rst  $38                                         ; $4c61: $ff
	ld   l, a                                        ; $4c62: $6f
	rst  $38                                         ; $4c63: $ff
	ei                                               ; $4c64: $fb
	rst  $38                                         ; $4c65: $ff
	ei                                               ; $4c66: $fb
	rst  $38                                         ; $4c67: $ff
	db   $db                                         ; $4c68: $db
	rst  $38                                         ; $4c69: $ff
	di                                               ; $4c6a: $f3
	rst  $38                                         ; $4c6b: $ff
	adc  c                                           ; $4c6c: $89
	rst  $38                                         ; $4c6d: $ff
	cp   h                                           ; $4c6e: $bc
	db   $fd                                         ; $4c6f: $fd
	adc  b                                           ; $4c70: $88
	rst  $38                                         ; $4c71: $ff
	or   e                                           ; $4c72: $b3
	rst  $38                                         ; $4c73: $ff
	cp   $ff                                         ; $4c74: $fe $ff
	ret  z                                           ; $4c76: $c8

	cp   $cb                                         ; $4c77: $fe $cb
	rst  $38                                         ; $4c79: $ff
	ret  c                                           ; $4c7a: $d8

	rst  $38                                         ; $4c7b: $ff
	cp   $81                                         ; $4c7c: $fe $81
	rst  $38                                         ; $4c7e: $ff
	db   $10                                         ; $4c7f: $10
	pop  hl                                          ; $4c80: $e1
	rst  JumpTable                                         ; $4c81: $df
	ld   a, [hl]                                     ; $4c82: $7e
	rst  $38                                         ; $4c83: $ff
	ei                                               ; $4c84: $fb
	rst  $38                                         ; $4c85: $ff
	sbc  c                                           ; $4c86: $99
	rst  $38                                         ; $4c87: $ff
	ld   b, e                                        ; $4c88: $43
	rst  $38                                         ; $4c89: $ff
	sbc  e                                           ; $4c8a: $9b
	rst  $38                                         ; $4c8b: $ff

jr_070_4c8c:
	db   $10                                         ; $4c8c: $10
	rst  $38                                         ; $4c8d: $ff
	add  a                                           ; $4c8e: $87
	rst  $38                                         ; $4c8f: $ff
	sub  e                                           ; $4c90: $93
	add  c                                           ; $4c91: $81
	rst  $38                                         ; $4c92: $ff
	jr   nz, jr_070_4c8c                             ; $4c93: $20 $f7

	rst  $38                                         ; $4c95: $ff
	di                                               ; $4c96: $f3
	rst  $38                                         ; $4c97: $ff
	and  a                                           ; $4c98: $a7
	db   $fd                                         ; $4c99: $fd
	dec  h                                           ; $4c9a: $25
	db   $fd                                         ; $4c9b: $fd
	ld   a, e                                        ; $4c9c: $7b
	cp   $fd                                         ; $4c9d: $fe $fd
	rst  $38                                         ; $4c9f: $ff
	and  h                                           ; $4ca0: $a4
	cp   $74                                         ; $4ca1: $fe $74
	cp   $6e                                         ; $4ca3: $fe $6e
	cp   $1a                                         ; $4ca5: $fe $1a
	cp   $52                                         ; $4ca7: $fe $52
	rst  $38                                         ; $4ca9: $ff
	ld   d, h                                        ; $4caa: $54
	rst  $30                                         ; $4cab: $f7
	sub  [hl]                                        ; $4cac: $96
	di                                               ; $4cad: $f3
	ld   d, e                                        ; $4cae: $53
	ld   [hl], e                                     ; $4caf: $73
	ld   sp, $e3e1                                   ; $4cb0: $31 $e1 $e3
	ld   h, e                                        ; $4cb3: $63
	ld   a, c                                        ; $4cb4: $79
	add  b                                           ; $4cb5: $80
	ld   e, e                                        ; $4cb6: $5b
	inc  b                                           ; $4cb7: $04
	ld   a, e                                        ; $4cb8: $7b
	dec  sp                                          ; $4cb9: $3b
	ld   a, c                                        ; $4cba: $79
	and  c                                           ; $4cbb: $a1
	and  b                                           ; $4cbc: $a0
	add  b                                           ; $4cbd: $80
	rst  $38                                         ; $4cbe: $ff
	add  b                                           ; $4cbf: $80
	nop                                              ; $4cc0: $00
	ld   bc, $0fff                                   ; $4cc1: $01 $ff $0f
	add  c                                           ; $4cc4: $81
	dec  c                                           ; $4cc5: $0d
	nop                                              ; $4cc6: $00
	dec  b                                           ; $4cc7: $05
	add  c                                           ; $4cc8: $81
	ld   b, $83                                      ; $4cc9: $06 $83
	nop                                              ; $4ccb: $00
	dec  e                                           ; $4ccc: $1d
	ld   c, $0f                                      ; $4ccd: $0e $0f
	cp   a                                           ; $4ccf: $bf
	rst  $38                                         ; $4cd0: $ff
	cp   l                                           ; $4cd1: $bd
	rst  $38                                         ; $4cd2: $ff
	ld   a, [$b8ef]                                  ; $4cd3: $fa $ef $b8
	rst  $30                                         ; $4cd6: $f7
	and  [hl]                                        ; $4cd7: $a6
	rst  $30                                         ; $4cd8: $f7
	db   $e4                                         ; $4cd9: $e4
	halt                                             ; $4cda: $76
	inc  c                                           ; $4cdb: $0c
	ld   a, d                                        ; $4cdc: $7a
	ld   h, d                                        ; $4cdd: $62
	ld   a, e                                        ; $4cde: $7b
	adc  e                                           ; $4cdf: $8b
	ldh  a, [$ec]                                    ; $4ce0: $f0 $ec
	ldh  [hScriptOpcodeParams], a                                    ; $4ce2: $e0 $a0
	db   $fc                                         ; $4ce4: $fc
	sbc  [hl]                                        ; $4ce5: $9e
	add  b                                           ; $4ce6: $80
	ld   a, [$c8c0]                                  ; $4ce7: $fa $c0 $c8
	ret  nz                                          ; $4cea: $c0

	add  b                                           ; $4ceb: $80
	ldh  [rIF], a                                    ; $4cec: $e0 $0f
	call z, $21c0                                    ; $4cee: $cc $c0 $21
	ld   a, a                                        ; $4cf1: $7f
	ld   e, [hl]                                     ; $4cf2: $5e
	ld   a, a                                        ; $4cf3: $7f
	ld   e, [hl]                                     ; $4cf4: $5e
	rst  $38                                         ; $4cf5: $ff
	push bc                                          ; $4cf6: $c5
	ld   a, a                                        ; $4cf7: $7f
	ld   c, b                                        ; $4cf8: $48
	ld   [hl], h                                     ; $4cf9: $74
	dec  h                                           ; $4cfa: $25
	ld   [hl], b                                     ; $4cfb: $70
	inc  sp                                          ; $4cfc: $33
	dec  sp                                          ; $4cfd: $3b
	add  b                                           ; $4cfe: $80
	ccf                                              ; $4cff: $3f
	dec  e                                           ; $4d00: $1d
	db   $e3                                         ; $4d01: $e3
	cp   $da                                         ; $4d02: $fe $da
	cp   $fc                                         ; $4d04: $fe $fc
	cp   $5c                                         ; $4d06: $fe $5c
	cp   $2a                                         ; $4d08: $fe $2a
	inc  a                                           ; $4d0a: $3c
	inc  d                                           ; $4d0b: $14
	ld   [$e02a], sp                                 ; $4d0c: $08 $2a $e0
	ld   b, b                                        ; $4d0f: $40
	pop  af                                          ; $4d10: $f1
	db   $eb                                         ; $4d11: $eb

Call_070_4d12:
	ld   [hl], a                                     ; $4d12: $77
	ld   h, l                                        ; $4d13: $65
	ld   [hl], a                                     ; $4d14: $77
	rlca                                             ; $4d15: $07
	ld   h, a                                        ; $4d16: $67
	ld   l, l                                        ; $4d17: $6d
	ld   l, a                                        ; $4d18: $6f
	ld   c, [hl]                                     ; $4d19: $4e
	inc  bc                                          ; $4d1a: $03
	dec  bc                                          ; $4d1b: $0b
	ld   a, c                                        ; $4d1c: $79
	ccf                                              ; $4d1d: $3f
	cp   $80                                         ; $4d1e: $fe $80
	rst  $30                                         ; $4d20: $f7
	rlca                                             ; $4d21: $07
	xor  a                                           ; $4d22: $af
	rst  JumpTable                                         ; $4d23: $df
	add  a                                           ; $4d24: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d25: $cf
	add  h                                           ; $4d26: $84
	rst  ToBoot                                         ; $4d27: $c7
	ld   h, c                                        ; $4d28: $61
	rst  $20                                         ; $4d29: $e7
	add  b                                           ; $4d2a: $80
	and  $03                                         ; $4d2b: $e6 $03
	db   $e4                                         ; $4d2d: $e4
	add  [hl]                                        ; $4d2e: $86
	jp   nz, $8062                                   ; $4d2f: $c2 $62 $80

	ldh  [c], a                                      ; $4d32: $e2
	inc  b                                           ; $4d33: $04
	jp   $373f                                       ; $4d34: $c3 $3f $37


	dec  sp                                          ; $4d37: $3b
	inc  hl                                          ; $4d38: $23
	add  c                                           ; $4d39: $81
	scf                                              ; $4d3a: $37
	nop                                              ; $4d3b: $00
	rlca                                             ; $4d3c: $07
	add  c                                           ; $4d3d: $81
	cpl                                              ; $4d3e: $2f
	ld   b, $0e                                      ; $4d3f: $06 $0e
	ld   e, $1a                                      ; $4d41: $1e $1a
	ld   e, $19                                      ; $4d43: $1e $19
	rrca                                             ; $4d45: $0f
	ld   c, $82                                      ; $4d46: $0e $82
	rra                                              ; $4d48: $1f
	dec  b                                           ; $4d49: $05
	rrca                                             ; $4d4a: $0f
	dec  c                                           ; $4d4b: $0d
	rlca                                             ; $4d4c: $07
	dec  d                                           ; $4d4d: $15
	ld   [de], a                                     ; $4d4e: $12
	dec  sp                                          ; $4d4f: $3b
	add  b                                           ; $4d50: $80
	add  hl, bc                                      ; $4d51: $09
	rrca                                             ; $4d52: $0f
	jr   nc, jr_070_4dcb                             ; $4d53: $30 $76

	rst  $38                                         ; $4d55: $ff
	ld   d, c                                        ; $4d56: $51
	rst  $38                                         ; $4d57: $ff
	jp   z, $3aff                                    ; $4d58: $ca $ff $3a

	rst  $38                                         ; $4d5b: $ff
	sbc  d                                           ; $4d5c: $9a
	ei                                               ; $4d5d: $fb
	ld   e, l                                        ; $4d5e: $5d
	rst  $38                                         ; $4d5f: $ff
	call z, Call_070_507d                            ; $4d60: $cc $7d $50
	add  b                                           ; $4d63: $80
	ld   e, $20                                      ; $4d64: $1e $20
	rst  $38                                         ; $4d66: $ff
	ld   l, [hl]                                     ; $4d67: $6e
	rst  $38                                         ; $4d68: $ff
	dec  c                                           ; $4d69: $0d
	rst  $38                                         ; $4d6a: $ff
	ld   [hl], a                                     ; $4d6b: $77
	rst  $28                                         ; $4d6c: $ef
	ld   a, c                                        ; $4d6d: $79
	rst  $38                                         ; $4d6e: $ff
	ld   a, $ff                                      ; $4d6f: $3e $ff
	or   [hl]                                        ; $4d71: $b6
	xor  a                                           ; $4d72: $af
	ld   [bc], a                                     ; $4d73: $02
	or   [hl]                                        ; $4d74: $b6
	reti                                             ; $4d75: $d9


	rst  $38                                         ; $4d76: $ff
	or   $ff                                         ; $4d77: $f6 $ff
	jr   c, @+$01                                    ; $4d79: $38 $ff

	ld   a, e                                        ; $4d7b: $7b
	rst  $38                                         ; $4d7c: $ff
	dec  a                                           ; $4d7d: $3d
	rst  $38                                         ; $4d7e: $ff
	rra                                              ; $4d7f: $1f
	rst  $38                                         ; $4d80: $ff
	inc  sp                                          ; $4d81: $33
	ld   a, a                                        ; $4d82: $7f
	rst  $28                                         ; $4d83: $ef
	sbc  c                                           ; $4d84: $99
	ld   h, a                                        ; $4d85: $67
	cp   $80                                         ; $4d86: $fe $80
	rst  $38                                         ; $4d88: $ff
	ld   e, $b7                                      ; $4d89: $1e $b7
	rst  $38                                         ; $4d8b: $ff
	xor  e                                           ; $4d8c: $ab
	rst  $38                                         ; $4d8d: $ff
	cp   l                                           ; $4d8e: $bd
	ei                                               ; $4d8f: $fb
	ld   a, [de]                                     ; $4d90: $1a
	rst  $28                                         ; $4d91: $ef
	or   a                                           ; $4d92: $b7
	ei                                               ; $4d93: $fb
	ld   l, a                                        ; $4d94: $6f
	cp   a                                           ; $4d95: $bf
	inc  l                                           ; $4d96: $2c
	ldh  [rAUD3LEVEL], a                             ; $4d97: $e0 $1c
	nop                                              ; $4d99: $00
	ldh  [rP1], a                                    ; $4d9a: $e0 $00
	ld   l, b                                        ; $4d9c: $68
	ld   bc, $0151                                   ; $4d9d: $01 $51 $01
	db   $10                                         ; $4da0: $10
	ld   bc, $800a                                   ; $4da1: $01 $0a $80
	or   b                                           ; $4da4: $b0
	add  b                                           ; $4da5: $80
	add  hl, de                                      ; $4da6: $19
	ld   [hl], a                                     ; $4da7: $77
	halt                                             ; $4da8: $76
	add  c                                           ; $4da9: $81
	ld   [hl], a                                     ; $4daa: $77
	ld   bc, $2625                                   ; $4dab: $01 $25 $26
	add  b                                           ; $4dae: $80
	ld   [hl+], a                                    ; $4daf: $22
	nop                                              ; $4db0: $00
	ld   [bc], a                                     ; $4db1: $02
	add  d                                           ; $4db2: $82
	inc  b                                           ; $4db3: $04
	ld   a, [bc]                                     ; $4db4: $0a
	nop                                              ; $4db5: $00
	ld   a, d                                        ; $4db6: $7a
	add  c                                           ; $4db7: $81
	and  d                                           ; $4db8: $a2
	ld   [hl+], a                                    ; $4db9: $22
	ld   d, a                                        ; $4dba: $57
	ld   d, c                                        ; $4dbb: $51
	ld   a, c                                        ; $4dbc: $79
	nop                                              ; $4dbd: $00
	ld   l, $14                                      ; $4dbe: $2e $14
	add  b                                           ; $4dc0: $80
	inc  l                                           ; $4dc1: $2c
	ld   [$003c], sp                                 ; $4dc2: $08 $3c $00
	inc  bc                                          ; $4dc5: $03
	ld   a, $c3                                      ; $4dc6: $3e $c3
	ld   b, $02                                      ; $4dc8: $06 $02
	rrca                                             ; $4dca: $0f

jr_070_4dcb:
	rlca                                             ; $4dcb: $07
	add  e                                           ; $4dcc: $83
	rrca                                             ; $4dcd: $0f
	add  hl, de                                      ; $4dce: $19
	dec  b                                           ; $4dcf: $05
	rrca                                             ; $4dd0: $0f
	nop                                              ; $4dd1: $00
	rrca                                             ; $4dd2: $0f
	dec  b                                           ; $4dd3: $05
	rrca                                             ; $4dd4: $0f
	ldh  a, [$7f]                                    ; $4dd5: $f0 $7f
	ld   [hl], l                                     ; $4dd7: $75
	ld   a, a                                        ; $4dd8: $7f
	ld   [hl], b                                     ; $4dd9: $70
	db   $fd                                         ; $4dda: $fd
	pop  hl                                          ; $4ddb: $e1
	rst  $38                                         ; $4ddc: $ff
	call $83ff                                       ; $4ddd: $cd $ff $83
	rst  $38                                         ; $4de0: $ff
	ld   d, [hl]                                     ; $4de1: $56
	cp   $cc                                         ; $4de2: $fe $cc
	call $c039                                       ; $4de4: $cd $39 $c0
	push bc                                          ; $4de7: $c5
	pop  bc                                          ; $4de8: $c1
	add  b                                           ; $4de9: $80
	ret  nz                                          ; $4dea: $c0

	inc  b                                           ; $4deb: $04
	pop  bc                                          ; $4dec: $c1
	ret  nz                                          ; $4ded: $c0

	add  e                                           ; $4dee: $83
	add  b                                           ; $4def: $80
	add  c                                           ; $4df0: $81
	add  c                                           ; $4df1: $81
	add  b                                           ; $4df2: $80
	inc  [hl]                                        ; $4df3: $34
	and  b                                           ; $4df4: $a0
	add  b                                           ; $4df5: $80
	db   $ec                                         ; $4df6: $ec
	ccf                                              ; $4df7: $3f
	dec  l                                           ; $4df8: $2d
	ccf                                              ; $4df9: $3f
	inc  [hl]                                        ; $4dfa: $34
	ccf                                              ; $4dfb: $3f
	dec  b                                           ; $4dfc: $05
	ccf                                              ; $4dfd: $3f
	cp   a                                           ; $4dfe: $bf
	ccf                                              ; $4dff: $3f
	xor  d                                           ; $4e00: $aa
	ccf                                              ; $4e01: $3f
	or   l                                           ; $4e02: $b5
	rra                                              ; $4e03: $1f
	dec  bc                                          ; $4e04: $0b
	dec  e                                           ; $4e05: $1d
	ld   b, [hl]                                     ; $4e06: $46
	ei                                               ; $4e07: $fb
	cp   a                                           ; $4e08: $bf
	rst  $38                                         ; $4e09: $ff
	di                                               ; $4e0a: $f3
	rst  $38                                         ; $4e0b: $ff
	ld   a, e                                        ; $4e0c: $7b
	rst  $38                                         ; $4e0d: $ff
	db   $ec                                         ; $4e0e: $ec
	rst  $38                                         ; $4e0f: $ff
	inc  e                                           ; $4e10: $1c
	db   $fc                                         ; $4e11: $fc
	pop  bc                                          ; $4e12: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e13: $cf
	adc  $7f                                         ; $4e14: $ce $7f
	or   $ff                                         ; $4e16: $f6 $ff
	or   a                                           ; $4e18: $b7
	rst  $38                                         ; $4e19: $ff
	ld   [hl], $bf                                   ; $4e1a: $36 $bf
	inc  sp                                          ; $4e1c: $33
	rst  $20                                         ; $4e1d: $e7
	ld   h, [hl]                                     ; $4e1e: $66
	rst  ToBoot                                         ; $4e1f: $c7
	ld   c, l                                        ; $4e20: $4d
	ld   b, [hl]                                     ; $4e21: $46
	ld   d, $c7                                      ; $4e22: $16 $c7
	reti                                             ; $4e24: $d9


	pop  bc                                          ; $4e25: $c1
	db   $d3                                         ; $4e26: $d3
	di                                               ; $4e27: $f3
	pop  af                                          ; $4e28: $f1
	add  e                                           ; $4e29: $83
	di                                               ; $4e2a: $f3
	ld   [$f3d0], sp                                 ; $4e2b: $08 $d0 $f3
	and  e                                           ; $4e2e: $a3
	ldh  [c], a                                      ; $4e2f: $e2
	ld   h, h                                        ; $4e30: $64
	db   $e4                                         ; $4e31: $e4
	add  hl, sp                                      ; $4e32: $39
	ld   hl, sp-$7a                                  ; $4e33: $f8 $86
	add  c                                           ; $4e35: $81
	ld   e, a                                        ; $4e36: $5f
	ld   bc, $1e16                                   ; $4e37: $01 $16 $1e
	add  b                                           ; $4e3a: $80
	ld   d, $00                                      ; $4e3b: $16 $00
	ld   e, $80                                      ; $4e3d: $1e $80
	ld   b, $04                                      ; $4e3f: $06 $04
	ld   c, $1c                                      ; $4e41: $0e $1c
	inc  c                                           ; $4e43: $0c
	ld   h, b                                        ; $4e44: $60
	ld   [hl], b                                     ; $4e45: $70
	add  b                                           ; $4e46: $80
	add  hl, sp                                      ; $4e47: $39
	inc  bc                                          ; $4e48: $03
	inc  sp                                          ; $4e49: $33
	ld   [hl-], a                                    ; $4e4a: $32
	nop                                              ; $4e4b: $00
	ld   [hl+], a                                    ; $4e4c: $22
	add  b                                           ; $4e4d: $80
	ld   h, $0a                                      ; $4e4e: $26 $0a
	inc  bc                                          ; $4e50: $03
	inc  sp                                          ; $4e51: $33
	ld   bc, $0c3f                                   ; $4e52: $01 $3f $0c
	ccf                                              ; $4e55: $3f
	ld   h, $3f                                      ; $4e56: $26 $3f
	rst  $10                                         ; $4e58: $d7
	and  $c9                                         ; $4e59: $e6 $c9
	add  b                                           ; $4e5b: $80
	ld   a, [hl]                                     ; $4e5c: $7e
	rra                                              ; $4e5d: $1f
	ccf                                              ; $4e5e: $3f
	ld   a, $00                                      ; $4e5f: $3e $00
	ld   b, h                                        ; $4e61: $44
	ld   b, [hl]                                     ; $4e62: $46
	adc  a                                           ; $4e63: $8f
	cp   $a3                                         ; $4e64: $fe $a3
	cp   $01                                         ; $4e66: $fe $01
	cp   $25                                         ; $4e68: $fe $25
	ld   a, [bc]                                     ; $4e6a: $0a
	add  hl, de                                      ; $4e6b: $19
	jr   jr_070_4ea6                                 ; $4e6c: $18 $38

	add  hl, sp                                      ; $4e6e: $39
	ld   l, c                                        ; $4e6f: $69
	add  hl, de                                      ; $4e70: $19
	ld   l, b                                        ; $4e71: $68
	ld   h, l                                        ; $4e72: $65
	ld   a, h                                        ; $4e73: $7c
	ld   a, c                                        ; $4e74: $79
	ld   bc, $8679                                   ; $4e75: $01 $79 $86
	ccf                                              ; $4e78: $3f
	xor  l                                           ; $4e79: $ad
	ldh  [c], a                                      ; $4e7a: $e2
	ld   c, c                                        ; $4e7b: $49
	ld   a, a                                        ; $4e7c: $7f
	ccf                                              ; $4e7d: $3f
	add  b                                           ; $4e7e: $80
	rst  $38                                         ; $4e7f: $ff
	nop                                              ; $4e80: $00
	nop                                              ; $4e81: $00
	add  b                                           ; $4e82: $80
	inc  bc                                          ; $4e83: $03
	inc  de                                          ; $4e84: $13
	ld   [hl], b                                     ; $4e85: $70
	rst  $38                                         ; $4e86: $ff
	add  b                                           ; $4e87: $80
	rst  $38                                         ; $4e88: $ff
	rrca                                             ; $4e89: $0f
	ldh  a, [$93]                                    ; $4e8a: $f0 $93
	ld   e, h                                        ; $4e8c: $5c
	rst  ToBoot                                         ; $4e8d: $c7
	cp   a                                           ; $4e8e: $bf
	cp   [hl]                                        ; $4e8f: $be
	rst  $20                                         ; $4e90: $e7
	ld   sp, hl                                      ; $4e91: $f9
	rra                                              ; $4e92: $1f
	adc  a                                           ; $4e93: $8f
	adc  e                                           ; $4e94: $8b
	di                                               ; $4e95: $f3
	rst  $38                                         ; $4e96: $ff
	sbc  a                                           ; $4e97: $9f
	ld   l, a                                        ; $4e98: $6f
	add  b                                           ; $4e99: $80
	rrca                                             ; $4e9a: $0f
	ld   de, $8042                                   ; $4e9b: $11 $42 $80
	xor  h                                           ; $4e9e: $ac
	add  b                                           ; $4e9f: $80
	adc  h                                           ; $4ea0: $8c
	add  b                                           ; $4ea1: $80
	ld   c, a                                        ; $4ea2: $4f
	ret  nz                                          ; $4ea3: $c0

	ld   e, d                                        ; $4ea4: $5a
	ret  nz                                          ; $4ea5: $c0

jr_070_4ea6:
	add  $c0                                         ; $4ea6: $c6 $c0
	adc  h                                           ; $4ea8: $8c
	ret  nz                                          ; $4ea9: $c0

	ld   a, [bc]                                     ; $4eaa: $0a
	add  b                                           ; $4eab: $80
	ld   d, e                                        ; $4eac: $53
	ld   h, h                                        ; $4ead: $64
	add  d                                           ; $4eae: $82
	call nz, Call_070_4400                           ; $4eaf: $c4 $00 $44
	add  e                                           ; $4eb2: $83
	ld   c, h                                        ; $4eb3: $4c
	nop                                              ; $4eb4: $00
	inc  c                                           ; $4eb5: $0c
	add  c                                           ; $4eb6: $81
	inc  b                                           ; $4eb7: $04
	ld   [bc], a                                     ; $4eb8: $02
	nop                                              ; $4eb9: $00
	ld   bc, $81b1                                   ; $4eba: $01 $b1 $81
	or   e                                           ; $4ebd: $b3
	add  b                                           ; $4ebe: $80
	add  e                                           ; $4ebf: $83
	add  b                                           ; $4ec0: $80
	or   e                                           ; $4ec1: $b3
	add  b                                           ; $4ec2: $80
	and  e                                           ; $4ec3: $a3
	ld   b, $92                                      ; $4ec4: $06 $92
	sub  e                                           ; $4ec6: $93
	add  e                                           ; $4ec7: $83
	add  c                                           ; $4ec8: $81
	pop  af                                          ; $4ec9: $f1
	rrca                                             ; $4eca: $0f
	ld   c, $81                                      ; $4ecb: $0e $81
	rrca                                             ; $4ecd: $0f
	nop                                              ; $4ece: $00
	ld   c, $83                                      ; $4ecf: $0e $83
	rrca                                             ; $4ed1: $0f
	add  b                                           ; $4ed2: $80
	ld   c, $1a                                      ; $4ed3: $0e $1a
	dec  c                                           ; $4ed5: $0d
	rrca                                             ; $4ed6: $0f
	db   $fd                                         ; $4ed7: $fd
	rst  $38                                         ; $4ed8: $ff
	db   $fd                                         ; $4ed9: $fd
	rst  $38                                         ; $4eda: $ff
	ld   a, e                                        ; $4edb: $7b
	rst  $38                                         ; $4edc: $ff
	ld   [hl], a                                     ; $4edd: $77
	rst  $38                                         ; $4ede: $ff
	ld   a, l                                        ; $4edf: $7d
	rst  $38                                         ; $4ee0: $ff
	inc  b                                           ; $4ee1: $04
	ld   a, [hl]                                     ; $4ee2: $7e
	jr   nc, jr_070_4f21                             ; $4ee3: $30 $3c

	ld   hl, sp-$03                                  ; $4ee5: $f8 $fd
	ld   e, [hl]                                     ; $4ee7: $5e
	add  b                                           ; $4ee8: $80
	or   b                                           ; $4ee9: $b0
	add  b                                           ; $4eea: $80
	add  c                                           ; $4eeb: $81
	add  b                                           ; $4eec: $80
	ld   e, $00                                      ; $4eed: $1e $00
	ld   c, $81                                      ; $4eef: $0e $81
	nop                                              ; $4ef1: $00
	dec  b                                           ; $4ef2: $05
	ld   [bc], a                                     ; $4ef3: $02
	nop                                              ; $4ef4: $00
	add  h                                           ; $4ef5: $84
	nop                                              ; $4ef6: $00
	ld   h, h                                        ; $4ef7: $64
	inc  e                                           ; $4ef8: $1c
	add  b                                           ; $4ef9: $80
	ld   e, $01                                      ; $4efa: $1e $01
	ccf                                              ; $4efc: $3f
	ld   e, $80                                      ; $4efd: $1e $80
	ld   b, $04                                      ; $4eff: $06 $04
	inc  d                                           ; $4f01: $14
	ld   [bc], a                                     ; $4f02: $02
	ccf                                              ; $4f03: $3f
	ld   b, $0e                                      ; $4f04: $06 $0e
	add  b                                           ; $4f06: $80
	inc  c                                           ; $4f07: $0c
	ld   bc, $1e01                                   ; $4f08: $01 $01 $1e
	add  b                                           ; $4f0b: $80
	rst  JumpTable                                         ; $4f0c: $df
	add  c                                           ; $4f0d: $81
	rra                                              ; $4f0e: $1f
	dec  c                                           ; $4f0f: $0d
	cp   [hl]                                        ; $4f10: $be
	ld   a, $be                                      ; $4f11: $3e $be
	ld   a, $4d                                      ; $4f13: $3e $4d
	inc  c                                           ; $4f15: $0c
	ld   [hl], a                                     ; $4f16: $77
	add  $f5                                         ; $4f17: $c6 $f5
	pop  af                                          ; $4f19: $f1
	ld   [hl], l                                     ; $4f1a: $75
	cp   l                                           ; $4f1b: $bd
	dec  a                                           ; $4f1c: $3d
	ld   a, l                                        ; $4f1d: $7d
	add  c                                           ; $4f1e: $81
	ld   a, h                                        ; $4f1f: $7c
	add  b                                           ; $4f20: $80

jr_070_4f21:
	sub  $04                                         ; $4f21: $d6 $04
	sbc  b                                           ; $4f23: $98
	sbc  [hl]                                        ; $4f24: $9e
	add  [hl]                                        ; $4f25: $86
	rst  JumpTable                                         ; $4f26: $df
	ld   e, a                                        ; $4f27: $5f
	add  b                                           ; $4f28: $80
	rst  JumpTable                                         ; $4f29: $df
	ld   [hl-], a                                    ; $4f2a: $32
	ld   hl, $cd60                                   ; $4f2b: $21 $60 $cd
	db   $fc                                         ; $4f2e: $fc
	halt                                             ; $4f2f: $76
	db   $fc                                         ; $4f30: $fc
	push af                                          ; $4f31: $f5
	ld   hl, sp-$16                                  ; $4f32: $f8 $ea
	ld   hl, sp+$18                                  ; $4f34: $f8 $18
	ldh  a, [rPCM12]                                 ; $4f36: $f0 $76
	ld   [hl], b                                     ; $4f38: $70
	sub  b                                           ; $4f39: $90
	nop                                              ; $4f3a: $00
	add  hl, de                                      ; $4f3b: $19
	ld   [bc], a                                     ; $4f3c: $02
	sub  [hl]                                        ; $4f3d: $96
	ld   d, $5f                                      ; $4f3e: $16 $5f
	rra                                              ; $4f40: $1f
	add  c                                           ; $4f41: $81
	rra                                              ; $4f42: $1f
	add  hl, de                                      ; $4f43: $19
	rra                                              ; $4f44: $1f
	ld   a, e                                        ; $4f45: $7b
	ccf                                              ; $4f46: $3f
	inc  e                                           ; $4f47: $1c
	ccf                                              ; $4f48: $3f
	ld   d, d                                        ; $4f49: $52
	rra                                              ; $4f4a: $1f
	and  [hl]                                        ; $4f4b: $a6
	ld   e, a                                        ; $4f4c: $5f
	ldh  a, [c]                                      ; $4f4d: $f2
	rst  $38                                         ; $4f4e: $ff
	and  c                                           ; $4f4f: $a1
	rst  $20                                         ; $4f50: $e7
	ld   b, b                                        ; $4f51: $40
	db   $fc                                         ; $4f52: $fc
	inc  a                                           ; $4f53: $3c
	rst  $38                                         ; $4f54: $ff
	jr   c, @+$01                                    ; $4f55: $38 $ff

	ret  nz                                          ; $4f57: $c0

	rst  $38                                         ; $4f58: $ff
	rlca                                             ; $4f59: $07
	rst  $38                                         ; $4f5a: $ff
	db   $fc                                         ; $4f5b: $fc
	call c, $819d                                    ; $4f5c: $dc $9d $81
	cp   h                                           ; $4f5f: $bc
	dec  c                                           ; $4f60: $0d
	ld   a, c                                        ; $4f61: $79
	db   $fc                                         ; $4f62: $fc
	add  sp, -$02                                    ; $4f63: $e8 $fe
	sub  h                                           ; $4f65: $94
	cp   $84                                         ; $4f66: $fe $84
	ld   a, [$d4bd]                                  ; $4f68: $fa $bd $d4
	ld   l, a                                        ; $4f6b: $6f
	nop                                              ; $4f6c: $00
	adc  a                                           ; $4f6d: $8f
	ld   c, $80                                      ; $4f6e: $0e $80
	ld   a, $2f                                      ; $4f70: $3e $2f
	cp   [hl]                                        ; $4f72: $be
	ccf                                              ; $4f73: $3f

jr_070_4f74:
	dec  sp                                          ; $4f74: $3b
	inc  b                                           ; $4f75: $04
	ld   [bc], a                                     ; $4f76: $02
	ld   [de], a                                     ; $4f77: $12
	dec  [hl]                                        ; $4f78: $35
	dec  l                                           ; $4f79: $2d
	xor  d                                           ; $4f7a: $aa
	ld   a, [hl]                                     ; $4f7b: $7e
	xor  h                                           ; $4f7c: $ac
	rrca                                             ; $4f7d: $0f
	ld   hl, sp+$1f                                  ; $4f7e: $f8 $1f
	rla                                              ; $4f80: $17
	ld   l, a                                        ; $4f81: $6f
	ld   h, b                                        ; $4f82: $60
	pop  hl                                          ; $4f83: $e1
	ldh  [c], a                                      ; $4f84: $e2
	inc  de                                          ; $4f85: $13
	jr   nc, jr_070_4f74                             ; $4f86: $30 $ec

	jr   nc, @+$01                                   ; $4f88: $30 $ff

	ld   a, $3d                                      ; $4f8a: $3e $3d
	ccf                                              ; $4f8c: $3f
	rst  $38                                         ; $4f8d: $ff
	cp   [hl]                                        ; $4f8e: $be
	cp   $9f                                         ; $4f8f: $fe $9f
	rst  $38                                         ; $4f91: $ff
	db   $ed                                         ; $4f92: $ed
	ld   a, a                                        ; $4f93: $7f
	ld   [hl-], a                                    ; $4f94: $32
	rst  $38                                         ; $4f95: $ff
	inc  a                                           ; $4f96: $3c
	rst  $38                                         ; $4f97: $ff
	ld   a, l                                        ; $4f98: $7d
	rst  $38                                         ; $4f99: $ff
	cp   $ff                                         ; $4f9a: $fe $ff
	ld   [$0ee0], sp                                 ; $4f9c: $08 $e0 $0e
	jr   nz, jr_070_4fc7                             ; $4f9f: $20 $26

	ldh  [$80], a                                    ; $4fa1: $e0 $80
	db   $e3                                         ; $4fa3: $e3
	ld   bc, $bfbe                                   ; $4fa4: $01 $be $bf
	add  b                                           ; $4fa7: $80
	rst  $28                                         ; $4fa8: $ef
	ld   [$fffd], sp                                 ; $4fa9: $08 $fd $ff
	dec  sp                                          ; $4fac: $3b
	rst  $38                                         ; $4fad: $ff
	jr   nz, jr_070_4fcc                             ; $4fae: $20 $1c

	cp   h                                           ; $4fb0: $bc
	inc  a                                           ; $4fb1: $3c
	dec  e                                           ; $4fb2: $1d
	add  b                                           ; $4fb3: $80
	inc  e                                           ; $4fb4: $1c
	add  hl, bc                                      ; $4fb5: $09
	add  h                                           ; $4fb6: $84
	sub  l                                           ; $4fb7: $95
	add  h                                           ; $4fb8: $84
	ld   a, [bc]                                     ; $4fb9: $0a
	nop                                              ; $4fba: $00
	or   l                                           ; $4fbb: $b5
	jr   nc, jr_070_5009                             ; $4fbc: $30 $4b

	ld   [$80c0], sp                                 ; $4fbe: $08 $c0 $80
	xor  d                                           ; $4fc1: $aa
	ld   [bc], a                                     ; $4fc2: $02
	add  b                                           ; $4fc3: $80
	cp   a                                           ; $4fc4: $bf
	add  b                                           ; $4fc5: $80
	add  b                                           ; $4fc6: $80

jr_070_4fc7:
	add  c                                           ; $4fc7: $81
	add  b                                           ; $4fc8: $80
	add  d                                           ; $4fc9: $82
	dec  b                                           ; $4fca: $05
	cp   a                                           ; $4fcb: $bf

jr_070_4fcc:
	add  b                                           ; $4fcc: $80
	ld   a, h                                        ; $4fcd: $7c
	inc  bc                                          ; $4fce: $03
	rst  $38                                         ; $4fcf: $ff
	nop                                              ; $4fd0: $00
	ld   a, [$8600]                                  ; $4fd1: $fa $00 $86
	nop                                              ; $4fd4: $00
	ld   bc, $0708                                   ; $4fd5: $01 $08 $07
	add  b                                           ; $4fd8: $80
	inc  bc                                          ; $4fd9: $03
	add  b                                           ; $4fda: $80
	rlca                                             ; $4fdb: $07
	add  b                                           ; $4fdc: $80
	dec  bc                                          ; $4fdd: $0b
	nop                                              ; $4fde: $00
	rrca                                             ; $4fdf: $0f
	add  l                                           ; $4fe0: $85
	nop                                              ; $4fe1: $00
	ld   [$ff76], sp                                 ; $4fe2: $08 $76 $ff
	di                                               ; $4fe5: $f3
	rst  $38                                         ; $4fe6: $ff
	xor  b                                           ; $4fe7: $a8
	rst  $38                                         ; $4fe8: $ff
	add  b                                           ; $4fe9: $80
	rst  $38                                         ; $4fea: $ff
	xor  l                                           ; $4feb: $ad
	add  l                                           ; $4fec: $85
	nop                                              ; $4fed: $00
	ld   [$feff], sp                                 ; $4fee: $08 $ff $fe
	db   $f4                                         ; $4ff1: $f4
	cp   $74                                         ; $4ff2: $fe $74
	ld   sp, hl                                      ; $4ff4: $f9
	cp   b                                           ; $4ff5: $b8
	rst  $30                                         ; $4ff6: $f7
	ret                                              ; $4ff7: $c9


	add  l                                           ; $4ff8: $85
	nop                                              ; $4ff9: $00
	ld   [$ff3e], sp                                 ; $4ffa: $08 $3e $ff
	ld   e, h                                        ; $4ffd: $5c
	rst  $38                                         ; $4ffe: $ff

Jump_070_4fff:
	or   e                                           ; $4fff: $b3
	rst  $38                                         ; $5000: $ff
	xor  b                                           ; $5001: $a8
	rst  $38                                         ; $5002: $ff
	ld   a, c                                        ; $5003: $79
	add  l                                           ; $5004: $85
	nop                                              ; $5005: $00
	ld   [$ff6e], sp                                 ; $5006: $08 $6e $ff

jr_070_5009:
	db   $ed                                         ; $5009: $ed
	rst  $38                                         ; $500a: $ff
	push bc                                          ; $500b: $c5
	rst  $38                                         ; $500c: $ff
	add  a                                           ; $500d: $87
	rst  $38                                         ; $500e: $ff
	pop  bc                                          ; $500f: $c1
	add  l                                           ; $5010: $85
	nop                                              ; $5011: $00
	ld   [$efdf], sp                                 ; $5012: $08 $df $ef
	adc  $9f                                         ; $5015: $ce $9f
	rra                                              ; $5017: $1f
	cp   a                                           ; $5018: $bf
	dec  a                                           ; $5019: $3d
	ld   a, a                                        ; $501a: $7f
	add  e                                           ; $501b: $83
	add  l                                           ; $501c: $85
	nop                                              ; $501d: $00
	ld   [$ff5f], sp                                 ; $501e: $08 $5f $ff
	cp   [hl]                                        ; $5021: $be
	rst  $38                                         ; $5022: $ff
	db   $ec                                         ; $5023: $ec
	rst  $38                                         ; $5024: $ff
	call c, $d1ff                                    ; $5025: $dc $ff $d1
	add  l                                           ; $5028: $85
	nop                                              ; $5029: $00
	inc  b                                           ; $502a: $04
	jp   z, $2bff                                    ; $502b: $ca $ff $2b

	rst  $38                                         ; $502e: $ff
	sbc  $81                                         ; $502f: $de $81
	rst  $38                                         ; $5031: $ff
	nop                                              ; $5032: $00
	ret  nz                                          ; $5033: $c0

	add  l                                           ; $5034: $85
	nop                                              ; $5035: $00
	ld   [$ff1b], sp                                 ; $5036: $08 $1b $ff
	ld   [$31ff], a                                  ; $5039: $ea $ff $31
	rst  $38                                         ; $503c: $ff
	db   $db                                         ; $503d: $db
	rst  $38                                         ; $503e: $ff
	dec  de                                          ; $503f: $1b
	add  l                                           ; $5040: $85
	nop                                              ; $5041: $00
	ld   [$fc10], sp                                 ; $5042: $08 $10 $fc
	inc  a                                           ; $5045: $3c
	rst  $30                                         ; $5046: $f7
	dec  hl                                          ; $5047: $2b
	db   $dd                                         ; $5048: $dd
	inc  bc                                          ; $5049: $03
	or   $24                                         ; $504a: $f6 $24
	add  l                                           ; $504c: $85
	nop                                              ; $504d: $00
	ld   [$0d08], sp                                 ; $504e: $08 $08 $0d
	add  a                                           ; $5051: $87
	xor  d                                           ; $5052: $aa
	and  l                                           ; $5053: $a5
	cp   l                                           ; $5054: $bd
	ld   a, [hl-]                                    ; $5055: $3a
	sbc  e                                           ; $5056: $9b
	sub  c                                           ; $5057: $91
	add  l                                           ; $5058: $85
	nop                                              ; $5059: $00
	ld   [$ff8f], sp                                 ; $505a: $08 $8f $ff
	ret                                              ; $505d: $c9


	rst  $38                                         ; $505e: $ff
	ld   l, c                                        ; $505f: $69
	rst  $38                                         ; $5060: $ff
	ld   l, a                                        ; $5061: $6f
	rst  $38                                         ; $5062: $ff
	ld   b, b                                        ; $5063: $40
	add  l                                           ; $5064: $85
	nop                                              ; $5065: $00
	ld   [$fff4], sp                                 ; $5066: $08 $f4 $ff
	call c, $96ff                                    ; $5069: $dc $ff $96
	rst  $38                                         ; $506c: $ff
	cp   h                                           ; $506d: $bc
	rst  $38                                         ; $506e: $ff
	ld   [bc], a                                     ; $506f: $02
	add  l                                           ; $5070: $85
	nop                                              ; $5071: $00
	ld   [$eeef], sp                                 ; $5072: $08 $ef $ee
	db   $fc                                         ; $5075: $fc
	cp   $76                                         ; $5076: $fe $76
	sbc  $17                                         ; $5078: $de $17
	rst  $20                                         ; $507a: $e7
	ld   e, e                                        ; $507b: $5b
	add  l                                           ; $507c: $85

Call_070_507d:
	nop                                              ; $507d: $00
	ld   bc, $eeef                                   ; $507e: $01 $ef $ee
	add  b                                           ; $5081: $80
	cp   $04                                         ; $5082: $fe $04
	ld   l, d                                        ; $5084: $6a
	rst  $38                                         ; $5085: $ff
	inc  b                                           ; $5086: $04
	rst  $38                                         ; $5087: $ff
	ld   l, a                                        ; $5088: $6f
	add  l                                           ; $5089: $85
	nop                                              ; $508a: $00
	add  hl, bc                                      ; $508b: $09
	rst  $30                                         ; $508c: $f7
	rst  $38                                         ; $508d: $ff
	ldh  a, [c]                                      ; $508e: $f2
	rst  $38                                         ; $508f: $ff
	ld   a, d                                        ; $5090: $7a
	rst  $38                                         ; $5091: $ff
	jp   nc, $ebbf                                   ; $5092: $d2 $bf $eb

	add  hl, bc                                      ; $5095: $09
	add  b                                           ; $5096: $80
	inc  c                                           ; $5097: $0c
	add  b                                           ; $5098: $80
	ld   c, $82                                      ; $5099: $0e $82
	rrca                                             ; $509b: $0f
	add  b                                           ; $509c: $80
	rlca                                             ; $509d: $07
	add  b                                           ; $509e: $80
	dec  bc                                          ; $509f: $0b
	add  b                                           ; $50a0: $80
	add  hl, bc                                      ; $50a1: $09
	ld   bc, $fff0                                   ; $50a2: $01 $f0 $ff
	add  b                                           ; $50a5: $80
	ei                                               ; $50a6: $fb
	inc  l                                           ; $50a7: $2c
	rst  $38                                         ; $50a8: $ff
	ld   a, a                                        ; $50a9: $7f
	ld   c, a                                        ; $50aa: $4f
	ld   d, c                                        ; $50ab: $51
	ld   b, b                                        ; $50ac: $40
	ld   l, a                                        ; $50ad: $6f
	adc  $bf                                         ; $50ae: $ce $bf
	sbc  d                                           ; $50b0: $9a
	cp   a                                           ; $50b1: $bf
	xor  c                                           ; $50b2: $a9
	cp   a                                           ; $50b3: $bf
	ld   h, l                                        ; $50b4: $65
	rst  $38                                         ; $50b5: $ff
	sub  $f7                                         ; $50b6: $d6 $f7
	inc  sp                                          ; $50b8: $33
	rst  $38                                         ; $50b9: $ff
	ld   l, e                                        ; $50ba: $6b
	rst  $28                                         ; $50bb: $ef
	halt                                             ; $50bc: $76
	rst  $38                                         ; $50bd: $ff
	and  l                                           ; $50be: $a5
	rst  $38                                         ; $50bf: $ff
	add  c                                           ; $50c0: $81
	rst  $38                                         ; $50c1: $ff
	add  hl, hl                                      ; $50c2: $29
	rst  $38                                         ; $50c3: $ff
	and  b                                           ; $50c4: $a0
	rst  $38                                         ; $50c5: $ff
	ld   d, d                                        ; $50c6: $52
	rst  $38                                         ; $50c7: $ff
	ld   b, a                                        ; $50c8: $47
	rst  $38                                         ; $50c9: $ff
	add  [hl]                                        ; $50ca: $86
	db   $fd                                         ; $50cb: $fd
	push de                                          ; $50cc: $d5
	db   $fd                                         ; $50cd: $fd
	ld   c, h                                        ; $50ce: $4c
	db   $fd                                         ; $50cf: $fd
	ld   d, a                                        ; $50d0: $57
	rst  $38                                         ; $50d1: $ff
	ld   e, c                                        ; $50d2: $59
	rst  $38                                         ; $50d3: $ff
	ld   [hl+], a                                    ; $50d4: $22
	add  c                                           ; $50d5: $81
	rst  $38                                         ; $50d6: $ff
	add  hl, bc                                      ; $50d7: $09
	db   $fc                                         ; $50d8: $fc
	rst  $38                                         ; $50d9: $ff
	db   $f4                                         ; $50da: $f4
	rst  $38                                         ; $50db: $ff
	rst  ToBoot                                         ; $50dc: $c7
	rst  $30                                         ; $50dd: $f7
	add  a                                           ; $50de: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50df: $cf
	rrca                                             ; $50e0: $0f
	cp   a                                           ; $50e1: $bf
	add  b                                           ; $50e2: $80
	ccf                                              ; $50e3: $3f
	db   $10                                         ; $50e4: $10
	rst  $10                                         ; $50e5: $d7
	rst  $38                                         ; $50e6: $ff
	pop  hl                                          ; $50e7: $e1
	rst  $38                                         ; $50e8: $ff
	dec  de                                          ; $50e9: $1b
	ccf                                              ; $50ea: $3f
	db   $dd                                         ; $50eb: $dd
	rst  $38                                         ; $50ec: $ff
	ld   c, [hl]                                     ; $50ed: $4e
	rst  $38                                         ; $50ee: $ff
	db   $dd                                         ; $50ef: $dd
	rst  $38                                         ; $50f0: $ff
	ld   c, a                                        ; $50f1: $4f
	rst  $38                                         ; $50f2: $ff
	inc  bc                                          ; $50f3: $03
	rst  $38                                         ; $50f4: $ff
	or   c                                           ; $50f5: $b1
	add  b                                           ; $50f6: $80
	rst  $38                                         ; $50f7: $ff
	ld   a, a                                        ; $50f8: $7f
	cp   $ab                                         ; $50f9: $fe $ab
	ei                                               ; $50fb: $fb
	ld   h, a                                        ; $50fc: $67
	rst  $38                                         ; $50fd: $ff
	db   $ec                                         ; $50fe: $ec
	rst  $38                                         ; $50ff: $ff
	add  hl, bc                                      ; $5100: $09
	rst  $38                                         ; $5101: $ff
	dec  h                                           ; $5102: $25
	rst  $38                                         ; $5103: $ff
	inc  bc                                          ; $5104: $03
	sbc  a                                           ; $5105: $9f
	ld   d, d                                        ; $5106: $52
	rst  $38                                         ; $5107: $ff
	ld   b, l                                        ; $5108: $45
	rst  $38                                         ; $5109: $ff
	pop  bc                                          ; $510a: $c1
	rst  JumpTable                                         ; $510b: $df
	pop  af                                          ; $510c: $f1
	rst  $38                                         ; $510d: $ff
	ld   [hl], h                                     ; $510e: $74
	rst  $38                                         ; $510f: $ff
	inc  sp                                          ; $5110: $33
	rst  $38                                         ; $5111: $ff
	ld   e, [hl]                                     ; $5112: $5e
	rst  $38                                         ; $5113: $ff
	rst  $20                                         ; $5114: $e7
	rst  $38                                         ; $5115: $ff
	inc  de                                          ; $5116: $13
	rst  $38                                         ; $5117: $ff
	pop  hl                                          ; $5118: $e1
	rst  $38                                         ; $5119: $ff
	ld   a, a                                        ; $511a: $7f
	rst  $38                                         ; $511b: $ff
	ld   a, [hl]                                     ; $511c: $7e
	rst  $38                                         ; $511d: $ff
	ld   a, [hl]                                     ; $511e: $7e
	rst  $38                                         ; $511f: $ff
	cp   c                                           ; $5120: $b9
	ei                                               ; $5121: $fb
	add  hl, hl                                      ; $5122: $29
	rst  $28                                         ; $5123: $ef
	inc  [hl]                                        ; $5124: $34
	rst  $38                                         ; $5125: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5126: $cf
	rst  $38                                         ; $5127: $ff
	sbc  a                                           ; $5128: $9f
	ei                                               ; $5129: $fb
	db   $eb                                         ; $512a: $eb
	ld   a, [hl]                                     ; $512b: $7e
	ld   h, [hl]                                     ; $512c: $66
	rst  $38                                         ; $512d: $ff
	rst  $28                                         ; $512e: $ef
	rst  $38                                         ; $512f: $ff
	xor  e                                           ; $5130: $ab
	rst  $38                                         ; $5131: $ff
	add  l                                           ; $5132: $85
	rst  $38                                         ; $5133: $ff
	and  $ff                                         ; $5134: $e6 $ff
	sub  [hl]                                        ; $5136: $96
	rst  $38                                         ; $5137: $ff
	ld   hl, sp+$29                                  ; $5138: $f8 $29
	ld   e, c                                        ; $513a: $59
	rst  $38                                         ; $513b: $ff
	add  hl, bc                                      ; $513c: $09
	cp   a                                           ; $513d: $bf
	sub  d                                           ; $513e: $92
	rst  $38                                         ; $513f: $ff
	ld   c, c                                        ; $5140: $49
	ld   a, a                                        ; $5141: $7f
	db   $d3                                         ; $5142: $d3
	rst  $38                                         ; $5143: $ff
	inc  l                                           ; $5144: $2c
	rst  $38                                         ; $5145: $ff
	ld   e, b                                        ; $5146: $58
	rst  $38                                         ; $5147: $ff
	sub  [hl]                                        ; $5148: $96
	rst  $38                                         ; $5149: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $514a: $cf
	rst  $38                                         ; $514b: $ff
	xor  d                                           ; $514c: $aa
	rst  $38                                         ; $514d: $ff
	add  hl, hl                                      ; $514e: $29
	rst  $38                                         ; $514f: $ff
	jp   $f0ff                                       ; $5150: $c3 $ff $f0


	rst  $38                                         ; $5153: $ff
	jp   z, $b9ff                                    ; $5154: $ca $ff $b9

	rst  $38                                         ; $5157: $ff
	ld   e, $9f                                      ; $5158: $1e $9f
	ld   a, d                                        ; $515a: $7a
	ld   a, a                                        ; $515b: $7f
	ei                                               ; $515c: $fb
	rst  $38                                         ; $515d: $ff
	ld   a, l                                        ; $515e: $7d
	rst  $38                                         ; $515f: $ff
	xor  b                                           ; $5160: $a8
	rst  $38                                         ; $5161: $ff
	rst  ToBoot                                         ; $5162: $c7
	rst  $38                                         ; $5163: $ff
	db   $ec                                         ; $5164: $ec
	rst  $38                                         ; $5165: $ff
	dec  b                                           ; $5166: $05
	rst  $38                                         ; $5167: $ff
	ld   hl, sp-$01                                  ; $5168: $f8 $ff
	call c, $bedf                                    ; $516a: $dc $df $be
	cp   a                                           ; $516d: $bf
	cp   $ff                                         ; $516e: $fe $ff
	push af                                          ; $5170: $f5
	rst  $38                                         ; $5171: $ff
	or   b                                           ; $5172: $b0
	db   $fc                                         ; $5173: $fc
	sbc  e                                           ; $5174: $9b
	db   $e3                                         ; $5175: $e3
	ret  nz                                          ; $5176: $c0

	rst  $38                                         ; $5177: $ff
	ld   a, a                                        ; $5178: $7f
	db   $10                                         ; $5179: $10
	rst  $38                                         ; $517a: $ff
	ccf                                              ; $517b: $3f
	rst  $38                                         ; $517c: $ff
	sbc  b                                           ; $517d: $98
	ei                                               ; $517e: $fb
	db   $e4                                         ; $517f: $e4
	ret  c                                           ; $5180: $d8

	nop                                              ; $5181: $00
	and  a                                           ; $5182: $a7
	rlca                                             ; $5183: $07
	ld   a, a                                        ; $5184: $7f
	ccf                                              ; $5185: $3f
	rst  $38                                         ; $5186: $ff
	cp   a                                           ; $5187: $bf
	rst  JumpTable                                         ; $5188: $df
	cp   a                                           ; $5189: $bf
	rst  $28                                         ; $518a: $ef
	add  b                                           ; $518b: $80
	rst  JumpTable                                         ; $518c: $df
	ld   bc, $ef27                                   ; $518d: $01 $27 $ef
	add  b                                           ; $5190: $80
	rrca                                             ; $5191: $0f
	inc  bc                                          ; $5192: $03
	rlca                                             ; $5193: $07
	add  a                                           ; $5194: $87
	add  e                                           ; $5195: $83
	rst  $20                                         ; $5196: $e7
	add  b                                           ; $5197: $80
	di                                               ; $5198: $f3
	ld   bc, $0c1f                                   ; $5199: $01 $1f $0c
	add  b                                           ; $519c: $80
	ld   c, $82                                      ; $519d: $0e $82
	rrca                                             ; $519f: $0f
	add  b                                           ; $51a0: $80
	inc  bc                                          ; $51a1: $03
	add  b                                           ; $51a2: $80
	dec  c                                           ; $51a3: $0d
	add  d                                           ; $51a4: $82
	ld   c, $02                                      ; $51a5: $0e $02
	ldh  a, [$bf]                                    ; $51a7: $f0 $bf
	rra                                              ; $51a9: $1f
	add  c                                           ; $51aa: $81
	cp   a                                           ; $51ab: $bf
	ld   d, $df                                      ; $51ac: $16 $df
	ld   e, a                                        ; $51ae: $5f
	rst  $28                                         ; $51af: $ef
	rst  $38                                         ; $51b0: $ff
	rst  $28                                         ; $51b1: $ef
	xor  a                                           ; $51b2: $af
	rst  $38                                         ; $51b3: $ff
	rst  $30                                         ; $51b4: $f7
	halt                                             ; $51b5: $76
	rst  $10                                         ; $51b6: $d7
	ld   h, [hl]                                     ; $51b7: $66
	rst  $38                                         ; $51b8: $ff
	ld   l, a                                        ; $51b9: $6f
	cp   a                                           ; $51ba: $bf
	cpl                                              ; $51bb: $2f
	cp   a                                           ; $51bc: $bf
	cp   l                                           ; $51bd: $bd
	ld   a, a                                        ; $51be: $7f
	inc  a                                           ; $51bf: $3c
	ld   a, a                                        ; $51c0: $7f
	reti                                             ; $51c1: $d9


	rst  $38                                         ; $51c2: $ff
	ld   h, a                                        ; $51c3: $67
	add  b                                           ; $51c4: $80
	ld   a, a                                        ; $51c5: $7f
	ld   [bc], a                                     ; $51c6: $02
	rst  $38                                         ; $51c7: $ff
	add  e                                           ; $51c8: $83
	rst  $38                                         ; $51c9: $ff
	add  b                                           ; $51ca: $80
	cp   $00                                         ; $51cb: $fe $00
	cp   d                                           ; $51cd: $ba
	add  c                                           ; $51ce: $81
	cp   $48                                         ; $51cf: $fe $48
	db   $fc                                         ; $51d1: $fc
	db   $fd                                         ; $51d2: $fd
	or   c                                           ; $51d3: $b1
	ei                                               ; $51d4: $fb
	add  sp, -$05                                    ; $51d5: $e8 $fb
	or   b                                           ; $51d7: $b0
	rst  $30                                         ; $51d8: $f7
	and  a                                           ; $51d9: $a7
	ld   a, a                                        ; $51da: $7f
	ccf                                              ; $51db: $3f
	jp   $3f83                                       ; $51dc: $c3 $83 $3f


	ld   l, $ef                                      ; $51df: $2e $ef
	sbc  $df                                         ; $51e1: $de $df
	ld   a, [$51ff]                                  ; $51e3: $fa $ff $51
	rst  $38                                         ; $51e6: $ff
	inc  hl                                          ; $51e7: $23
	rst  $38                                         ; $51e8: $ff
	ret                                              ; $51e9: $c9


	cp   $b7                                         ; $51ea: $fe $b7
	rst  $38                                         ; $51ec: $ff
	dec  sp                                          ; $51ed: $3b
	rst  $28                                         ; $51ee: $ef
	dec  d                                           ; $51ef: $15
	rst  $30                                         ; $51f0: $f7
	ld   c, c                                        ; $51f1: $49
	ld   a, [$f5b3]                                  ; $51f2: $fa $b3 $f5
	ld   [hl+], a                                    ; $51f5: $22
	cp   $6b                                         ; $51f6: $fe $6b
	rst  $38                                         ; $51f8: $ff
	ld   a, e                                        ; $51f9: $7b
	rst  $38                                         ; $51fa: $ff
	ei                                               ; $51fb: $fb
	rst  $38                                         ; $51fc: $ff
	ei                                               ; $51fd: $fb
	rst  $38                                         ; $51fe: $ff
	ld   e, d                                        ; $51ff: $5a
	rst  $38                                         ; $5200: $ff
	sub  l                                           ; $5201: $95
	rst  $38                                         ; $5202: $ff
	ld   b, [hl]                                     ; $5203: $46
	rst  $38                                         ; $5204: $ff
	or   h                                           ; $5205: $b4
	rst  $38                                         ; $5206: $ff
	ld   e, b                                        ; $5207: $58
	rst  $38                                         ; $5208: $ff
	or   d                                           ; $5209: $b2
	rst  $38                                         ; $520a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $520b: $cf
	rst  $38                                         ; $520c: $ff
	jp   hl                                          ; $520d: $e9


	rst  $38                                         ; $520e: $ff
	ld   h, $ff                                      ; $520f: $26 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5211: $cf
	rst  $38                                         ; $5212: $ff
	ld   b, a                                        ; $5213: $47
	rst  JumpTable                                         ; $5214: $df
	ld   a, [hl]                                     ; $5215: $7e
	rst  $38                                         ; $5216: $ff
	ld   [hl-], a                                    ; $5217: $32
	rst  $38                                         ; $5218: $ff
	inc  b                                           ; $5219: $04
	add  c                                           ; $521a: $81
	rst  $38                                         ; $521b: $ff
	ld   a, [de]                                     ; $521c: $1a
	cp   e                                           ; $521d: $bb
	rst  $38                                         ; $521e: $ff
	ld   c, d                                        ; $521f: $4a
	cp   $cb                                         ; $5220: $fe $cb
	ei                                               ; $5222: $fb
	xor  $ff                                         ; $5223: $ee $ff
	ld   e, l                                        ; $5225: $5d
	rst  $38                                         ; $5226: $ff
	di                                               ; $5227: $f3
	rst  $38                                         ; $5228: $ff
	reti                                             ; $5229: $d9


	rst  $38                                         ; $522a: $ff
	dec  hl                                          ; $522b: $2b
	rst  $38                                         ; $522c: $ff
	ld   e, [hl]                                     ; $522d: $5e
	rst  $38                                         ; $522e: $ff
	ld   l, b                                        ; $522f: $68
	rst  $38                                         ; $5230: $ff
	and  c                                           ; $5231: $a1
	rst  $38                                         ; $5232: $ff
	add  [hl]                                        ; $5233: $86
	rst  $38                                         ; $5234: $ff
	adc  c                                           ; $5235: $89
	rst  $38                                         ; $5236: $ff
	jp   c, $ff83                                    ; $5237: $da $83 $ff

	inc  d                                           ; $523a: $14
	rst  $30                                         ; $523b: $f7
	rst  $38                                         ; $523c: $ff
	db   $d3                                         ; $523d: $d3
	rst  $38                                         ; $523e: $ff
	db   $db                                         ; $523f: $db
	rst  $38                                         ; $5240: $ff
	cp   e                                           ; $5241: $bb
	rst  $38                                         ; $5242: $ff
	cp   e                                           ; $5243: $bb
	rst  $38                                         ; $5244: $ff
	rst  JumpTable                                         ; $5245: $df
	rst  $38                                         ; $5246: $ff
	pop  de                                          ; $5247: $d1
	rst  $38                                         ; $5248: $ff
	push hl                                          ; $5249: $e5
	rst  $38                                         ; $524a: $ff
	rst  $30                                         ; $524b: $f7
	rst  $38                                         ; $524c: $ff
	db   $fc                                         ; $524d: $fc
	rst  $38                                         ; $524e: $ff
	rst  JumpTable                                         ; $524f: $df
	add  c                                           ; $5250: $81
	rst  $38                                         ; $5251: $ff
	inc  c                                           ; $5252: $0c
	push af                                          ; $5253: $f5
	db   $fd                                         ; $5254: $fd
	call nc, $03ff                                   ; $5255: $d4 $ff $03
	rst  $38                                         ; $5258: $ff
	rst  $20                                         ; $5259: $e7
	rst  $38                                         ; $525a: $ff
	db   $eb                                         ; $525b: $eb
	rst  $38                                         ; $525c: $ff
	ret                                              ; $525d: $c9


	rst  $38                                         ; $525e: $ff
	jp   c, $ff80                                    ; $525f: $da $80 $ff

	dec  h                                           ; $5262: $25
	cp   a                                           ; $5263: $bf
	ccf                                              ; $5264: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5265: $cf
	adc  a                                           ; $5266: $8f
	rst  $30                                         ; $5267: $f7
	ld   [hl], h                                     ; $5268: $74
	rst  $38                                         ; $5269: $ff
	ld   bc, $ccff                                   ; $526a: $01 $ff $cc
	rst  $38                                         ; $526d: $ff
	and  c                                           ; $526e: $a1
	rst  $38                                         ; $526f: $ff
	add  $f6                                         ; $5270: $c6 $f6
	rst  JumpTable                                         ; $5272: $df
	rst  $38                                         ; $5273: $ff
	db   $dd                                         ; $5274: $dd
	rst  $38                                         ; $5275: $ff
	ld   a, [$dbff]                                  ; $5276: $fa $ff $db
	rst  $38                                         ; $5279: $ff
	cp   [hl]                                        ; $527a: $be
	rst  $38                                         ; $527b: $ff
	ld   a, e                                        ; $527c: $7b
	rst  $38                                         ; $527d: $ff
	call c, $d9ff                                    ; $527e: $dc $ff $d9
	rst  $38                                         ; $5281: $ff
	ret  z                                           ; $5282: $c8

	rst  $38                                         ; $5283: $ff
	dec  a                                           ; $5284: $3d
	rst  $38                                         ; $5285: $ff
	rst  $30                                         ; $5286: $f7
	rst  $38                                         ; $5287: $ff
	add  hl, bc                                      ; $5288: $09
	add  c                                           ; $5289: $81
	ei                                               ; $528a: $fb
	nop                                              ; $528b: $00
	ld   sp, hl                                      ; $528c: $f9
	add  e                                           ; $528d: $83
	ei                                               ; $528e: $fb
	add  b                                           ; $528f: $80
	ld   sp, hl                                      ; $5290: $f9
	add  d                                           ; $5291: $82
	ei                                               ; $5292: $fb
	rla                                              ; $5293: $17
	inc  bc                                          ; $5294: $03
	rrca                                             ; $5295: $0f
	ld   a, [bc]                                     ; $5296: $0a
	rrca                                             ; $5297: $0f
	inc  bc                                          ; $5298: $03
	rrca                                             ; $5299: $0f
	ld   [bc], a                                     ; $529a: $02
	rrca                                             ; $529b: $0f
	ld   [$060f], sp                                 ; $529c: $08 $0f $06
	rrca                                             ; $529f: $0f
	ld   c, $0f                                      ; $52a0: $0e $0f
	ld   [bc], a                                     ; $52a2: $02
	rrca                                             ; $52a3: $0f
	dec  bc                                          ; $52a4: $0b
	di                                               ; $52a5: $f3
	ld   [hl], e                                     ; $52a6: $73
	di                                               ; $52a7: $f3
	cp   e                                           ; $52a8: $bb
	reti                                             ; $52a9: $d9


	db   $fd                                         ; $52aa: $fd
	db   $ec                                         ; $52ab: $ec
	add  b                                           ; $52ac: $80
	ld   hl, sp-$80                                  ; $52ad: $f8 $80
	db   $fc                                         ; $52af: $fc
	nop                                              ; $52b0: $00
	or   $80                                         ; $52b1: $f6 $80
	cp   $1c                                         ; $52b3: $fe $1c
	ld   a, [$3fc5]                                  ; $52b5: $fa $c5 $3f
	and  [hl]                                        ; $52b8: $a6
	cp   a                                           ; $52b9: $bf
	sbc  a                                           ; $52ba: $9f
	cp   a                                           ; $52bb: $bf
	cp   [hl]                                        ; $52bc: $be
	cp   a                                           ; $52bd: $bf
	sbc  d                                           ; $52be: $9a

jr_070_52bf:
	cp   e                                           ; $52bf: $bb
	daa                                              ; $52c0: $27
	ccf                                              ; $52c1: $3f
	ld   e, $1f                                      ; $52c2: $1e $1f
	add  hl, bc                                      ; $52c4: $09
	rrca                                             ; $52c5: $0f
	jr   nc, jr_070_52bf                             ; $52c6: $30 $f7

	rst  $20                                         ; $52c8: $e7
	rst  $28                                         ; $52c9: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ca: $cf
	rst  $28                                         ; $52cb: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52cc: $cf
	rst  $28                                         ; $52cd: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ce: $cf
	rst  JumpTable                                         ; $52cf: $df
	cp   a                                           ; $52d0: $bf
	rst  $38                                         ; $52d1: $ff
	add  c                                           ; $52d2: $81
	rst  JumpTable                                         ; $52d3: $df
	ld   b, d                                        ; $52d4: $42
	rst  $38                                         ; $52d5: $ff
	inc  c                                           ; $52d6: $0c
	rst  $38                                         ; $52d7: $ff
	call $ddff                                       ; $52d8: $cd $ff $dd
	rst  $38                                         ; $52db: $ff
	dec  d                                           ; $52dc: $15
	rst  $38                                         ; $52dd: $ff
	ld   e, $ff                                      ; $52de: $1e $ff
	sub  [hl]                                        ; $52e0: $96
	rst  $38                                         ; $52e1: $ff
	ld   l, l                                        ; $52e2: $6d
	rst  $38                                         ; $52e3: $ff
	sub  e                                           ; $52e4: $93
	rst  $38                                         ; $52e5: $ff
	ld   l, h                                        ; $52e6: $6c
	rst  $38                                         ; $52e7: $ff
	sub  c                                           ; $52e8: $91
	rst  $38                                         ; $52e9: $ff
	inc  [hl]                                        ; $52ea: $34
	rst  $30                                         ; $52eb: $f7
	sbc  $df                                         ; $52ec: $de $df
	ld   e, l                                        ; $52ee: $5d
	rst  $38                                         ; $52ef: $ff
	inc  d                                           ; $52f0: $14
	rst  $38                                         ; $52f1: $ff
	ld   h, d                                        ; $52f2: $62
	rst  $38                                         ; $52f3: $ff
	call nc, $c0ff                                   ; $52f4: $d4 $ff $c0
	rst  $38                                         ; $52f7: $ff
	ld   l, $ff                                      ; $52f8: $2e $ff
	halt                                             ; $52fa: $76
	rst  $38                                         ; $52fb: $ff
	ld   c, c                                        ; $52fc: $49
	rst  $38                                         ; $52fd: $ff
	db   $ec                                         ; $52fe: $ec
	rst  $38                                         ; $52ff: $ff
	ld   d, h                                        ; $5300: $54
	rst  $38                                         ; $5301: $ff
	add  d                                           ; $5302: $82
	rst  $38                                         ; $5303: $ff
	db   $e3                                         ; $5304: $e3
	rst  $38                                         ; $5305: $ff
	ld   a, [bc]                                     ; $5306: $0a
	rst  $38                                         ; $5307: $ff
	call $8ebf                                       ; $5308: $cd $bf $8e
	cp   a                                           ; $530b: $bf
	cp   l                                           ; $530c: $bd
	cp   a                                           ; $530d: $bf
	push af                                          ; $530e: $f5
	rst  JumpTable                                         ; $530f: $df
	sub  l                                           ; $5310: $95
	db   $db                                         ; $5311: $db
	add  a                                           ; $5312: $87
	rst  JumpTable                                         ; $5313: $df
	xor  a                                           ; $5314: $af
	rst  $38                                         ; $5315: $ff
	sub  b                                           ; $5316: $90
	rst  $38                                         ; $5317: $ff
	add  b                                           ; $5318: $80
	cp   a                                           ; $5319: $bf
	nop                                              ; $531a: $00
	ccf                                              ; $531b: $3f
	add  e                                           ; $531c: $83
	cp   a                                           ; $531d: $bf
	ld   h, b                                        ; $531e: $60
	cp   [hl]                                        ; $531f: $be
	cp   a                                           ; $5320: $bf
	cp   h                                           ; $5321: $bc
	cp   a                                           ; $5322: $bf
	sbc  a                                           ; $5323: $9f
	cp   a                                           ; $5324: $bf
	ld   sp, hl                                      ; $5325: $f9
	rst  $38                                         ; $5326: $ff
	add  c                                           ; $5327: $81
	rst  $20                                         ; $5328: $e7
	ld   a, c                                        ; $5329: $79
	ei                                               ; $532a: $fb
	ld   a, a                                        ; $532b: $7f
	rst  $38                                         ; $532c: $ff
	dec  a                                           ; $532d: $3d
	rst  $38                                         ; $532e: $ff
	jr   @+$01                                       ; $532f: $18 $ff

	xor  b                                           ; $5331: $a8
	di                                               ; $5332: $f3
	call z, $9dcf                                    ; $5333: $cc $cf $9d
	rst  $38                                         ; $5336: $ff
	cpl                                              ; $5337: $2f
	rst  $38                                         ; $5338: $ff
	ld   [hl], $ff                                   ; $5339: $36 $ff
	ld   e, d                                        ; $533b: $5a
	rst  JumpTable                                         ; $533c: $df
	ld   sp, hl                                      ; $533d: $f9
	rst  $38                                         ; $533e: $ff
	ld   [hl], h                                     ; $533f: $74
	rst  $38                                         ; $5340: $ff
	xor  $ff                                         ; $5341: $ee $ff
	sbc  a                                           ; $5343: $9f
	rst  $38                                         ; $5344: $ff
	pop  af                                          ; $5345: $f1
	rst  $38                                         ; $5346: $ff
	dec  h                                           ; $5347: $25
	rst  $38                                         ; $5348: $ff
	ld   e, c                                        ; $5349: $59
	rst  $38                                         ; $534a: $ff
	ld   de, $16fd                                   ; $534b: $11 $fd $16
	rst  $38                                         ; $534e: $ff
	db   $dd                                         ; $534f: $dd
	push af                                          ; $5350: $f5
	adc  $ff                                         ; $5351: $ce $ff
	call nc, $30fd                                   ; $5353: $d4 $fd $30
	rst  $38                                         ; $5356: $ff
	ld   [hl], e                                     ; $5357: $73
	rst  $38                                         ; $5358: $ff
	db   $dd                                         ; $5359: $dd
	cpl                                              ; $535a: $2f
	sbc  $ff                                         ; $535b: $de $ff
	add  c                                           ; $535d: $81
	xor  e                                           ; $535e: $ab
	add  [hl]                                        ; $535f: $86
	rst  JumpTable                                         ; $5360: $df
	ld   [hl], $6f                                   ; $5361: $36 $6f
	ld   a, [hl+]                                    ; $5363: $2a
	rst  $28                                         ; $5364: $ef
	ld   a, a                                        ; $5365: $7f
	rst  $38                                         ; $5366: $ff
	add  hl, bc                                      ; $5367: $09
	rst  $38                                         ; $5368: $ff
	call Call_070_70ff                               ; $5369: $cd $ff $70
	ei                                               ; $536c: $fb
	ld   h, d                                        ; $536d: $62
	rst  $28                                         ; $536e: $ef
	db   $db                                         ; $536f: $db
	rst  $38                                         ; $5370: $ff
	add  h                                           ; $5371: $84
	rst  $38                                         ; $5372: $ff
	ret  nz                                          ; $5373: $c0

	rst  $38                                         ; $5374: $ff
	ld   a, [de]                                     ; $5375: $1a
	rst  $38                                         ; $5376: $ff
	rst  JumpTable                                         ; $5377: $df
	rst  $38                                         ; $5378: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5379: $cf
	rst  $38                                         ; $537a: $ff
	add  a                                           ; $537b: $87
	rst  $38                                         ; $537c: $ff
	sub  e                                           ; $537d: $93
	rst  $38                                         ; $537e: $ff
	db   $fd                                         ; $537f: $fd
	add  c                                           ; $5380: $81
	rst  $38                                         ; $5381: $ff
	dec  b                                           ; $5382: $05
	ld   hl, sp-$03                                  ; $5383: $f8 $fd
	or   $fb                                         ; $5385: $f6 $fb
	db   $fc                                         ; $5387: $fc
	db   $fd                                         ; $5388: $fd
	add  d                                           ; $5389: $82
	db   $fc                                         ; $538a: $fc
	ld   bc, $fcbc                                   ; $538b: $01 $bc $fc
	add  b                                           ; $538e: $80
	ld   hl, sp+$10                                  ; $538f: $f8 $10
	adc  c                                           ; $5391: $89
	ld   sp, hl                                      ; $5392: $f9
	add  sp, -$17                                    ; $5393: $e8 $e9
	inc  [hl]                                        ; $5395: $34
	rrca                                             ; $5396: $0f
	ld   [$040f], sp                                 ; $5397: $08 $0f $04
	rrca                                             ; $539a: $0f
	ld   a, [bc]                                     ; $539b: $0a
	rrca                                             ; $539c: $0f
	ld   a, [bc]                                     ; $539d: $0a
	rrca                                             ; $539e: $0f
	add  hl, bc                                      ; $539f: $09
	dec  bc                                          ; $53a0: $0b
	dec  b                                           ; $53a1: $05
	add  c                                           ; $53a2: $81
	rrca                                             ; $53a3: $0f
	ld   de, $ff31                                   ; $53a4: $11 $31 $ff
	or   [hl]                                        ; $53a7: $b6
	db   $fc                                         ; $53a8: $fc
	ld   a, d                                        ; $53a9: $7a
	db   $fc                                         ; $53aa: $fc
	sub  $f6                                         ; $53ab: $d6 $f6
	call z, Call_070_7fee                            ; $53ad: $cc $ee $7f
	rst  $38                                         ; $53b0: $ff
	dec  l                                           ; $53b1: $2d
	rst  $38                                         ; $53b2: $ff
	ld   b, d                                        ; $53b3: $42
	rst  $38                                         ; $53b4: $ff
	sbc  c                                           ; $53b5: $99
	adc  a                                           ; $53b6: $8f
	add  b                                           ; $53b7: $80
	rst  ToBoot                                         ; $53b8: $c7
	inc  bc                                          ; $53b9: $03
	db   $e3                                         ; $53ba: $e3
	rst  $20                                         ; $53bb: $e7
	add  $c7                                         ; $53bc: $c6 $c7
	add  b                                           ; $53be: $80
	di                                               ; $53bf: $f3
	add  hl, de                                      ; $53c0: $19
	pop  af                                          ; $53c1: $f1
	di                                               ; $53c2: $f3
	ldh  a, [$b0]                                    ; $53c3: $f0 $b0
	cp   b                                           ; $53c5: $b8
	ld   hl, sp+$38                                  ; $53c6: $f8 $38
	ccf                                              ; $53c8: $3f
	inc  h                                           ; $53c9: $24
	ccf                                              ; $53ca: $3f
	dec  d                                           ; $53cb: $15
	ccf                                              ; $53cc: $3f
	scf                                              ; $53cd: $37
	ccf                                              ; $53ce: $3f
	inc  [hl]                                        ; $53cf: $34
	scf                                              ; $53d0: $37
	ld   [hl], c                                     ; $53d1: $71
	ld   a, a                                        ; $53d2: $7f
	halt                                             ; $53d3: $76
	ld   a, a                                        ; $53d4: $7f
	ld   d, c                                        ; $53d5: $51
	ld   a, a                                        ; $53d6: $7f
	inc  d                                           ; $53d7: $14
	rst  $38                                         ; $53d8: $ff
	rst  $30                                         ; $53d9: $f7
	cp   $80                                         ; $53da: $fe $80
	or   $06                                         ; $53dc: $f6 $06
	db   $eb                                         ; $53de: $eb
	rst  JumpTable                                         ; $53df: $df
	ld   b, e                                        ; $53e0: $43
	cp   c                                           ; $53e1: $b9
	dec  sp                                          ; $53e2: $3b
	rst  $38                                         ; $53e3: $ff
	db   $fd                                         ; $53e4: $fd
	add  c                                           ; $53e5: $81
	rst  $38                                         ; $53e6: $ff
	ld   b, $fe                                      ; $53e7: $06 $fe
	rst  $28                                         ; $53e9: $ef
	db   $eb                                         ; $53ea: $eb
	rst  $30                                         ; $53eb: $f7
	push af                                          ; $53ec: $f5
	cp   $f9                                         ; $53ed: $fe $f9
	add  b                                           ; $53ef: $80
	rst  $38                                         ; $53f0: $ff
	inc  bc                                          ; $53f1: $03
	ld   a, l                                        ; $53f2: $7d
	ld   a, d                                        ; $53f3: $7a
	ld   [hl], a                                     ; $53f4: $77
	ld   a, c                                        ; $53f5: $79
	add  c                                           ; $53f6: $81
	ld   a, a                                        ; $53f7: $7f
	dec  d                                           ; $53f8: $15
	rst  $10                                         ; $53f9: $d7
	rst  $38                                         ; $53fa: $ff
	sbc  [hl]                                        ; $53fb: $9e
	rst  $38                                         ; $53fc: $ff
	ld   h, $67                                      ; $53fd: $26 $67
	ld   l, [hl]                                     ; $53ff: $6e
	ld   a, a                                        ; $5400: $7f
	ld   l, d                                        ; $5401: $6a
	dec  sp                                          ; $5402: $3b
	dec  l                                           ; $5403: $2d
	ccf                                              ; $5404: $3f
	sbc  [hl]                                        ; $5405: $9e
	cp   a                                           ; $5406: $bf
	add  c                                           ; $5407: $81
	sbc  a                                           ; $5408: $9f
	ld   [hl-], a                                    ; $5409: $32
	cp   a                                           ; $540a: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $540b: $cf
	rst  JumpTable                                         ; $540c: $df
	ld   b, a                                        ; $540d: $47
	ld   l, a                                        ; $540e: $6f
	add  b                                           ; $540f: $80
	daa                                              ; $5410: $27
	dec  b                                           ; $5411: $05
	ld   hl, $b0b5                                   ; $5412: $21 $b5 $b0
	cp   d                                           ; $5415: $ba
	cp   b                                           ; $5416: $b8
	cp   l                                           ; $5417: $bd
	add  b                                           ; $5418: $80
	cp   a                                           ; $5419: $bf
	rlca                                             ; $541a: $07
	sbc  b                                           ; $541b: $98
	cp   a                                           ; $541c: $bf
	sub  a                                           ; $541d: $97
	sbc  [hl]                                        ; $541e: $9e
	jp   c, $cddd                                    ; $541f: $da $dd $cd

	db   $db                                         ; $5422: $db
	add  b                                           ; $5423: $80
	rst  ToBoot                                         ; $5424: $c7
	ld   bc, $c7c3                                   ; $5425: $01 $c3 $c7
	add  b                                           ; $5428: $80
	adc  a                                           ; $5429: $8f
	ld   l, $97                                      ; $542a: $2e $97
	sbc  a                                           ; $542c: $9f
	ld   a, $3f                                      ; $542d: $3e $3f
	rlca                                             ; $542f: $07
	ld   a, a                                        ; $5430: $7f
	inc  sp                                          ; $5431: $33
	rst  $38                                         ; $5432: $ff
	ei                                               ; $5433: $fb
	rst  $38                                         ; $5434: $ff
	ld   l, l                                        ; $5435: $6d
	rst  $38                                         ; $5436: $ff
	ld   c, $ff                                      ; $5437: $0e $ff
	jp   nc, Jump_070_4fff                           ; $5439: $d2 $ff $4f

	rst  $38                                         ; $543c: $ff
	cpl                                              ; $543d: $2f
	rst  $38                                         ; $543e: $ff
	ld   l, a                                        ; $543f: $6f
	rst  $38                                         ; $5440: $ff
	ei                                               ; $5441: $fb
	rst  $38                                         ; $5442: $ff
	ei                                               ; $5443: $fb
	rst  $38                                         ; $5444: $ff
	db   $db                                         ; $5445: $db
	rst  $38                                         ; $5446: $ff
	di                                               ; $5447: $f3
	rst  $38                                         ; $5448: $ff
	adc  c                                           ; $5449: $89
	rst  $38                                         ; $544a: $ff
	cp   h                                           ; $544b: $bc
	db   $fd                                         ; $544c: $fd
	adc  b                                           ; $544d: $88
	rst  $38                                         ; $544e: $ff
	or   e                                           ; $544f: $b3
	rst  $38                                         ; $5450: $ff
	cp   $ff                                         ; $5451: $fe $ff
	ret  z                                           ; $5453: $c8

	cp   $cb                                         ; $5454: $fe $cb
	rst  $38                                         ; $5456: $ff
	ret  c                                           ; $5457: $d8

	rst  $38                                         ; $5458: $ff
	cp   $81                                         ; $5459: $fe $81
	rst  $38                                         ; $545b: $ff
	db   $10                                         ; $545c: $10
	pop  hl                                          ; $545d: $e1
	rst  JumpTable                                         ; $545e: $df
	ld   a, [hl]                                     ; $545f: $7e
	rst  $38                                         ; $5460: $ff
	ei                                               ; $5461: $fb
	rst  $38                                         ; $5462: $ff
	sbc  c                                           ; $5463: $99
	rst  $38                                         ; $5464: $ff
	ld   b, e                                        ; $5465: $43
	rst  $38                                         ; $5466: $ff
	sbc  e                                           ; $5467: $9b
	rst  $38                                         ; $5468: $ff

jr_070_5469:
	db   $10                                         ; $5469: $10
	rst  $38                                         ; $546a: $ff
	add  a                                           ; $546b: $87
	rst  $38                                         ; $546c: $ff
	sub  e                                           ; $546d: $93
	add  c                                           ; $546e: $81
	rst  $38                                         ; $546f: $ff
	jr   nz, jr_070_5469                             ; $5470: $20 $f7

	rst  $38                                         ; $5472: $ff
	di                                               ; $5473: $f3
	rst  $38                                         ; $5474: $ff
	and  a                                           ; $5475: $a7
	db   $fd                                         ; $5476: $fd
	dec  h                                           ; $5477: $25
	db   $fd                                         ; $5478: $fd
	ld   a, e                                        ; $5479: $7b
	cp   $fd                                         ; $547a: $fe $fd
	rst  $38                                         ; $547c: $ff
	and  h                                           ; $547d: $a4
	cp   $74                                         ; $547e: $fe $74
	cp   $6e                                         ; $5480: $fe $6e
	cp   $1a                                         ; $5482: $fe $1a
	cp   $52                                         ; $5484: $fe $52
	rst  $38                                         ; $5486: $ff
	ld   d, h                                        ; $5487: $54
	rst  $30                                         ; $5488: $f7
	sub  a                                           ; $5489: $97
	di                                               ; $548a: $f3
	ld   b, d                                        ; $548b: $42
	ld   [hl], e                                     ; $548c: $73
	ld   hl, $e3e1                                   ; $548d: $21 $e1 $e3
	ld   h, e                                        ; $5490: $63
	ld   a, c                                        ; $5491: $79
	add  b                                           ; $5492: $80
	ld   e, e                                        ; $5493: $5b
	ld   b, $7b                                      ; $5494: $06 $7b
	dec  sp                                          ; $5496: $3b
	ld   a, c                                        ; $5497: $79
	cp   e                                           ; $5498: $bb
	cp   d                                           ; $5499: $ba
	sub  c                                           ; $549a: $91
	sub  e                                           ; $549b: $93
	add  b                                           ; $549c: $80
	add  e                                           ; $549d: $83
	ld   bc, $0ffd                                   ; $549e: $01 $fd $0f
	add  c                                           ; $54a1: $81
	dec  c                                           ; $54a2: $0d
	nop                                              ; $54a3: $00
	dec  b                                           ; $54a4: $05
	add  c                                           ; $54a5: $81
	ld   b, $83                                      ; $54a6: $06 $83
	nop                                              ; $54a8: $00
	db   $10                                         ; $54a9: $10
	ld   c, $0f                                      ; $54aa: $0e $0f
	cp   a                                           ; $54ac: $bf
	rst  $38                                         ; $54ad: $ff
	cp   l                                           ; $54ae: $bd
	rst  $38                                         ; $54af: $ff
	ld   a, [$b8ef]                                  ; $54b0: $fa $ef $b8
	rst  $30                                         ; $54b3: $f7
	and  [hl]                                        ; $54b4: $a6
	rst  $30                                         ; $54b5: $f7
	db   $e4                                         ; $54b6: $e4
	halt                                             ; $54b7: $76
	inc  c                                           ; $54b8: $0c
	ld   a, d                                        ; $54b9: $7a
	ld   h, d                                        ; $54ba: $62
	add  b                                           ; $54bb: $80
	ld   a, e                                        ; $54bc: $7b
	ld   a, [bc]                                     ; $54bd: $0a
	ldh  a, [$f8]                                    ; $54be: $f0 $f8
	ret  c                                           ; $54c0: $d8

	sbc  h                                           ; $54c1: $9c
	call z, $f8c8                                    ; $54c2: $cc $c8 $f8
	db   $fc                                         ; $54c5: $fc
	db   $ec                                         ; $54c6: $ec
	jp   z, $80fa                                    ; $54c7: $ca $fa $80

	cp   $0f                                         ; $54ca: $fe $0f
	rst  $38                                         ; $54cc: $ff
	rst  $28                                         ; $54cd: $ef
	pop  de                                          ; $54ce: $d1
	ld   a, a                                        ; $54cf: $7f
	ld   e, [hl]                                     ; $54d0: $5e
	ld   a, a                                        ; $54d1: $7f
	ld   e, [hl]                                     ; $54d2: $5e
	rst  $38                                         ; $54d3: $ff
	push bc                                          ; $54d4: $c5
	ld   a, a                                        ; $54d5: $7f
	ld   c, b                                        ; $54d6: $48
	ld   [hl], h                                     ; $54d7: $74
	dec  h                                           ; $54d8: $25
	ld   [hl], b                                     ; $54d9: $70
	inc  sp                                          ; $54da: $33
	dec  sp                                          ; $54db: $3b
	add  b                                           ; $54dc: $80
	ccf                                              ; $54dd: $3f
	dec  e                                           ; $54de: $1d
	db   $e3                                         ; $54df: $e3
	cp   $da                                         ; $54e0: $fe $da
	cp   $fc                                         ; $54e2: $fe $fc
	cp   $5c                                         ; $54e4: $fe $5c
	cp   $2a                                         ; $54e6: $fe $2a
	inc  a                                           ; $54e8: $3c
	inc  d                                           ; $54e9: $14
	ld   [$e02a], sp                                 ; $54ea: $08 $2a $e0
	ld   b, b                                        ; $54ed: $40
	pop  af                                          ; $54ee: $f1
	db   $eb                                         ; $54ef: $eb
	ld   [hl], a                                     ; $54f0: $77
	ld   h, l                                        ; $54f1: $65
	ld   [hl], a                                     ; $54f2: $77
	rlca                                             ; $54f3: $07
	ld   h, a                                        ; $54f4: $67
	ld   l, l                                        ; $54f5: $6d
	ld   l, a                                        ; $54f6: $6f
	ld   c, [hl]                                     ; $54f7: $4e
	inc  bc                                          ; $54f8: $03
	dec  bc                                          ; $54f9: $0b
	ld   a, c                                        ; $54fa: $79
	ccf                                              ; $54fb: $3f
	cp   $80                                         ; $54fc: $fe $80
	rst  $30                                         ; $54fe: $f7
	rlca                                             ; $54ff: $07
	xor  a                                           ; $5500: $af
	rst  JumpTable                                         ; $5501: $df
	add  a                                           ; $5502: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5503: $cf
	add  h                                           ; $5504: $84
	rst  ToBoot                                         ; $5505: $c7
	ld   h, c                                        ; $5506: $61
	rst  $20                                         ; $5507: $e7
	add  b                                           ; $5508: $80
	and  $03                                         ; $5509: $e6 $03
	db   $e4                                         ; $550b: $e4
	add  [hl]                                        ; $550c: $86
	jp   nz, $8062                                   ; $550d: $c2 $62 $80

	ldh  [c], a                                      ; $5510: $e2
	inc  b                                           ; $5511: $04
	jp   $353d                                       ; $5512: $c3 $3d $35


	add  hl, sp                                      ; $5515: $39
	ld   hl, $3781                                   ; $5516: $21 $81 $37
	nop                                              ; $5519: $00
	rlca                                             ; $551a: $07
	add  c                                           ; $551b: $81
	cpl                                              ; $551c: $2f
	ld   b, $0e                                      ; $551d: $06 $0e
	ld   e, $1a                                      ; $551f: $1e $1a
	ld   e, $19                                      ; $5521: $1e $19
	rrca                                             ; $5523: $0f
	ld   c, $82                                      ; $5524: $0e $82
	rra                                              ; $5526: $1f
	dec  b                                           ; $5527: $05
	rrca                                             ; $5528: $0f
	dec  c                                           ; $5529: $0d
	rlca                                             ; $552a: $07
	dec  d                                           ; $552b: $15
	ld   [de], a                                     ; $552c: $12
	dec  sp                                          ; $552d: $3b
	add  b                                           ; $552e: $80
	add  hl, bc                                      ; $552f: $09
	rrca                                             ; $5530: $0f
	jr   nc, @+$78                                   ; $5531: $30 $76

	rst  $38                                         ; $5533: $ff
	ld   d, c                                        ; $5534: $51
	rst  $38                                         ; $5535: $ff
	jp   z, $3aff                                    ; $5536: $ca $ff $3a

	rst  $38                                         ; $5539: $ff
	sbc  d                                           ; $553a: $9a
	ei                                               ; $553b: $fb
	ld   e, l                                        ; $553c: $5d
	rst  $38                                         ; $553d: $ff
	call z, Call_070_507d                            ; $553e: $cc $7d $50
	add  b                                           ; $5541: $80
	ld   e, $20                                      ; $5542: $1e $20
	rst  $38                                         ; $5544: $ff
	ld   l, [hl]                                     ; $5545: $6e
	rst  $38                                         ; $5546: $ff
	dec  c                                           ; $5547: $0d
	rst  $38                                         ; $5548: $ff
	ld   [hl], a                                     ; $5549: $77
	rst  $28                                         ; $554a: $ef
	ld   a, c                                        ; $554b: $79
	rst  $38                                         ; $554c: $ff
	ld   a, $ff                                      ; $554d: $3e $ff
	or   [hl]                                        ; $554f: $b6
	xor  a                                           ; $5550: $af
	ld   [bc], a                                     ; $5551: $02
	or   [hl]                                        ; $5552: $b6
	reti                                             ; $5553: $d9


	rst  $38                                         ; $5554: $ff
	or   $ff                                         ; $5555: $f6 $ff
	jr   c, @+$01                                    ; $5557: $38 $ff

	ld   a, e                                        ; $5559: $7b
	rst  $38                                         ; $555a: $ff
	dec  a                                           ; $555b: $3d
	rst  $38                                         ; $555c: $ff
	rra                                              ; $555d: $1f
	rst  $38                                         ; $555e: $ff
	inc  sp                                          ; $555f: $33
	ld   a, a                                        ; $5560: $7f
	rst  $28                                         ; $5561: $ef
	sbc  c                                           ; $5562: $99
	ld   h, a                                        ; $5563: $67
	cp   $80                                         ; $5564: $fe $80
	rst  $38                                         ; $5566: $ff
	dec  e                                           ; $5567: $1d
	or   a                                           ; $5568: $b7
	rst  $38                                         ; $5569: $ff
	xor  e                                           ; $556a: $ab
	rst  $38                                         ; $556b: $ff
	cp   l                                           ; $556c: $bd
	ei                                               ; $556d: $fb
	ld   a, [de]                                     ; $556e: $1a
	rst  $28                                         ; $556f: $ef
	or   a                                           ; $5570: $b7
	ei                                               ; $5571: $fb
	ld   l, a                                        ; $5572: $6f
	cp   a                                           ; $5573: $bf
	ld   l, $fe                                      ; $5574: $2e $fe
	ld   e, h                                        ; $5576: $5c
	cp   $be                                         ; $5577: $fe $be
	cp   $fa                                         ; $5579: $fe $fa
	rst  $38                                         ; $557b: $ff
	db   $e3                                         ; $557c: $e3
	rst  $38                                         ; $557d: $ff
	ld   e, b                                        ; $557e: $58
	rst  $38                                         ; $557f: $ff
	xor  d                                           ; $5580: $aa
	rst  $38                                         ; $5581: $ff
	sub  h                                           ; $5582: $94
	rst  $38                                         ; $5583: $ff
	cp   $f7                                         ; $5584: $fe $f7
	add  b                                           ; $5586: $80
	ld   [hl], a                                     ; $5587: $77
	inc  bc                                          ; $5588: $03
	ld   [hl], l                                     ; $5589: $75
	ld   [hl], a                                     ; $558a: $77
	ld   [hl], h                                     ; $558b: $74
	ld   h, $80                                      ; $558c: $26 $80
	inc  hl                                          ; $558e: $23
	add  hl, bc                                      ; $558f: $09
	ld   hl, $0507                                   ; $5590: $21 $07 $05
	rlca                                             ; $5593: $07
	inc  bc                                          ; $5594: $03
	rlca                                             ; $5595: $07
	sub  a                                           ; $5596: $97
	sub  e                                           ; $5597: $93
	ld   d, e                                        ; $5598: $53
	db   $d3                                         ; $5599: $d3
	add  b                                           ; $559a: $80
	db   $e3                                         ; $559b: $e3
	add  b                                           ; $559c: $80
	ldh  a, [$80]                                    ; $559d: $f0 $80
	pop  hl                                          ; $559f: $e1
	ld   bc, $d353                                   ; $55a0: $01 $53 $d3
	add  c                                           ; $55a3: $81
	db   $e3                                         ; $55a4: $e3
	dec  b                                           ; $55a5: $05
	ld   h, e                                        ; $55a6: $63
	ld   a, a                                        ; $55a7: $7f
	ld   b, $02                                      ; $55a8: $06 $02
	rrca                                             ; $55aa: $0f
	rlca                                             ; $55ab: $07
	add  e                                           ; $55ac: $83
	rrca                                             ; $55ad: $0f
	add  hl, de                                      ; $55ae: $19
	dec  b                                           ; $55af: $05
	rrca                                             ; $55b0: $0f
	nop                                              ; $55b1: $00
	rrca                                             ; $55b2: $0f
	dec  b                                           ; $55b3: $05
	rrca                                             ; $55b4: $0f
	ldh  a, [$7f]                                    ; $55b5: $f0 $7f
	ld   [hl], l                                     ; $55b7: $75
	ld   a, a                                        ; $55b8: $7f
	ld   [hl], b                                     ; $55b9: $70
	db   $fd                                         ; $55ba: $fd
	pop  hl                                          ; $55bb: $e1
	rst  $38                                         ; $55bc: $ff
	call $83ff                                       ; $55bd: $cd $ff $83
	rst  $38                                         ; $55c0: $ff
	ld   d, [hl]                                     ; $55c1: $56
	cp   $cc                                         ; $55c2: $fe $cc
	call $ec1d                                       ; $55c4: $cd $1d $ec
	rst  $28                                         ; $55c7: $ef
	rst  $30                                         ; $55c8: $f7
	add  b                                           ; $55c9: $80
	db   $f4                                         ; $55ca: $f4
	dec  b                                           ; $55cb: $05
	rst  $30                                         ; $55cc: $f7
	rst  $28                                         ; $55cd: $ef
	xor  $e6                                         ; $55ce: $ee $e6
	pop  hl                                          ; $55d0: $e1
	jp   hl                                          ; $55d1: $e9


	add  b                                           ; $55d2: $80
	db   $ec                                         ; $55d3: $ec
	ld   [$dfcf], sp                                 ; $55d4: $08 $cf $df
	db   $d3                                         ; $55d7: $d3
	ccf                                              ; $55d8: $3f
	dec  l                                           ; $55d9: $2d
	ccf                                              ; $55da: $3f
	inc  [hl]                                        ; $55db: $34
	ccf                                              ; $55dc: $3f
	dec  b                                           ; $55dd: $05
	add  c                                           ; $55de: $81
	ccf                                              ; $55df: $3f
	jr   z, jr_070_560c                              ; $55e0: $28 $2a

	ccf                                              ; $55e2: $3f
	dec  [hl]                                        ; $55e3: $35
	rra                                              ; $55e4: $1f
	dec  bc                                          ; $55e5: $0b
	rra                                              ; $55e6: $1f
	call nz, $bffb                                   ; $55e7: $c4 $fb $bf
	rst  $38                                         ; $55ea: $ff
	di                                               ; $55eb: $f3
	rst  $38                                         ; $55ec: $ff
	ld   a, e                                        ; $55ed: $7b
	rst  $38                                         ; $55ee: $ff
	db   $ec                                         ; $55ef: $ec
	rst  $38                                         ; $55f0: $ff
	inc  e                                           ; $55f1: $1c
	db   $fc                                         ; $55f2: $fc
	pop  bc                                          ; $55f3: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55f4: $cf
	ld   c, $7f                                      ; $55f5: $0e $7f
	ld   [hl], $ff                                   ; $55f7: $36 $ff
	or   a                                           ; $55f9: $b7
	rst  $38                                         ; $55fa: $ff
	ld   [hl], $bf                                   ; $55fb: $36 $bf
	dec  sp                                          ; $55fd: $3b
	rst  $38                                         ; $55fe: $ff
	ld   c, d                                        ; $55ff: $4a
	rst  $38                                         ; $5600: $ff
	ld   e, c                                        ; $5601: $59
	ld   e, [hl]                                     ; $5602: $5e
	ld   b, $f7                                      ; $5603: $06 $f7
	pop  hl                                          ; $5605: $e1
	db   $fd                                         ; $5606: $fd
	rst  $38                                         ; $5607: $ff
	di                                               ; $5608: $f3
	pop  af                                          ; $5609: $f1
	add  e                                           ; $560a: $83
	di                                               ; $560b: $f3

jr_070_560c:
	ld   [$f3d0], sp                                 ; $560c: $08 $d0 $f3
	and  e                                           ; $560f: $a3
	ldh  [c], a                                      ; $5610: $e2
	ld   h, h                                        ; $5611: $64
	db   $e4                                         ; $5612: $e4
	jr   c, @-$05                                    ; $5613: $38 $f9

	add  [hl]                                        ; $5615: $86
	add  c                                           ; $5616: $81
	ld   e, a                                        ; $5617: $5f
	ld   bc, $1e16                                   ; $5618: $01 $16 $1e
	add  b                                           ; $561b: $80
	ld   d, $00                                      ; $561c: $16 $00
	ld   e, $80                                      ; $561e: $1e $80
	ld   b, $04                                      ; $5620: $06 $04
	ld   c, $1c                                      ; $5622: $0e $1c
	inc  c                                           ; $5624: $0c
	ld   h, b                                        ; $5625: $60
	ld   [hl], b                                     ; $5626: $70
	add  b                                           ; $5627: $80
	add  hl, sp                                      ; $5628: $39
	inc  bc                                          ; $5629: $03
	inc  sp                                          ; $562a: $33
	ld   [hl-], a                                    ; $562b: $32
	nop                                              ; $562c: $00
	ld   [hl+], a                                    ; $562d: $22
	add  b                                           ; $562e: $80
	ld   h, $0a                                      ; $562f: $26 $0a
	inc  bc                                          ; $5631: $03
	inc  sp                                          ; $5632: $33
	ld   bc, $0c3f                                   ; $5633: $01 $3f $0c
	ccf                                              ; $5636: $3f
	ld   h, $3f                                      ; $5637: $26 $3f
	rst  $10                                         ; $5639: $d7
	and  $c9                                         ; $563a: $e6 $c9
	add  b                                           ; $563c: $80
	ld   a, [hl]                                     ; $563d: $7e
	add  b                                           ; $563e: $80
	ccf                                              ; $563f: $3f
	nop                                              ; $5640: $00
	nop                                              ; $5641: $00
	add  b                                           ; $5642: $80
	ld   b, [hl]                                     ; $5643: $46
	ld   a, [de]                                     ; $5644: $1a
	adc  h                                           ; $5645: $8c
	rst  $38                                         ; $5646: $ff
	and  e                                           ; $5647: $a3
	rst  $38                                         ; $5648: $ff
	ld   bc, $24ff                                   ; $5649: $01 $ff $24
	ld   a, [bc]                                     ; $564c: $0a
	add  hl, de                                      ; $564d: $19
	jr   jr_070_5688                                 ; $564e: $18 $38

	add  hl, sp                                      ; $5650: $39
	ld   l, c                                        ; $5651: $69
	add  hl, de                                      ; $5652: $19
	ld   l, b                                        ; $5653: $68
	dec  h                                           ; $5654: $25
	inc  a                                           ; $5655: $3c
	add  hl, sp                                      ; $5656: $39
	ld   bc, $c639                                   ; $5657: $01 $39 $c6
	rst  $38                                         ; $565a: $ff
	dec  l                                           ; $565b: $2d
	ldh  [c], a                                      ; $565c: $e2
	ld   c, c                                        ; $565d: $49
	ld   a, a                                        ; $565e: $7f
	ccf                                              ; $565f: $3f
	add  b                                           ; $5660: $80
	rst  $38                                         ; $5661: $ff
	nop                                              ; $5662: $00
	nop                                              ; $5663: $00
	add  b                                           ; $5664: $80
	inc  bc                                          ; $5665: $03
	inc  de                                          ; $5666: $13
	ld   [hl], b                                     ; $5667: $70
	rst  $38                                         ; $5668: $ff
	add  b                                           ; $5669: $80
	rst  $38                                         ; $566a: $ff
	rrca                                             ; $566b: $0f
	ldh  a, [$93]                                    ; $566c: $f0 $93
	ld   e, h                                        ; $566e: $5c
	rst  ToBoot                                         ; $566f: $c7
	cp   a                                           ; $5670: $bf
	cp   [hl]                                        ; $5671: $be
	rst  $20                                         ; $5672: $e7
	ld   sp, hl                                      ; $5673: $f9
	rra                                              ; $5674: $1f
	adc  a                                           ; $5675: $8f
	adc  e                                           ; $5676: $8b
	di                                               ; $5677: $f3
	rst  $38                                         ; $5678: $ff
	sbc  a                                           ; $5679: $9f
	ld   l, a                                        ; $567a: $6f
	add  b                                           ; $567b: $80
	rrca                                             ; $567c: $0f
	ld   [de], a                                     ; $567d: $12
	add  hl, de                                      ; $567e: $19
	rst  $38                                         ; $567f: $ff
	ldh  [c], a                                      ; $5680: $e2
	cp   $d8                                         ; $5681: $fe $d8
	sbc  $5a                                         ; $5683: $de $5a
	cp   $47                                         ; $5685: $fe $47
	rst  $38                                         ; $5687: $ff

jr_070_5688:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5688: $cf
	cp   $ad                                         ; $5689: $fe $ad
	db   $fc                                         ; $568b: $fc
	inc  [hl]                                        ; $568c: $34
	or   b                                           ; $568d: $b0
	ld   h, l                                        ; $568e: $65
	ld   h, a                                        ; $568f: $67
	rst  ToBoot                                         ; $5690: $c7
	add  d                                           ; $5691: $82
	add  $00                                         ; $5692: $c6 $00
	ld   c, a                                        ; $5694: $4f
	add  c                                           ; $5695: $81
	ld   c, l                                        ; $5696: $4d
	ld   b, $cd                                      ; $5697: $06 $cd
	adc  c                                           ; $5699: $89
	add  l                                           ; $569a: $85
	add  [hl]                                        ; $569b: $86
	add  b                                           ; $569c: $80
	db   $e4                                         ; $569d: $e4
	db   $e3                                         ; $569e: $e3
	add  b                                           ; $569f: $80
	db   $d3                                         ; $56a0: $d3
	add  b                                           ; $56a1: $80
	or   e                                           ; $56a2: $b3
	add  b                                           ; $56a3: $80
	and  e                                           ; $56a4: $a3
	add  b                                           ; $56a5: $80
	di                                               ; $56a6: $f3
	add  b                                           ; $56a7: $80
	db   $e3                                         ; $56a8: $e3
	ld   b, $e2                                      ; $56a9: $06 $e2
	ld   h, e                                        ; $56ab: $63
	ld   b, e                                        ; $56ac: $43
	ld   b, c                                        ; $56ad: $41
	ld   [hl], c                                     ; $56ae: $71
	rrca                                             ; $56af: $0f
	ld   c, $81                                      ; $56b0: $0e $81
	rrca                                             ; $56b2: $0f
	nop                                              ; $56b3: $00
	ld   c, $83                                      ; $56b4: $0e $83
	rrca                                             ; $56b6: $0f
	add  b                                           ; $56b7: $80
	ld   c, $1a                                      ; $56b8: $0e $1a
	dec  c                                           ; $56ba: $0d
	rrca                                             ; $56bb: $0f
	db   $fd                                         ; $56bc: $fd
	rst  $38                                         ; $56bd: $ff
	db   $fd                                         ; $56be: $fd
	rst  $38                                         ; $56bf: $ff
	ld   a, e                                        ; $56c0: $7b
	rst  $38                                         ; $56c1: $ff
	ld   [hl], a                                     ; $56c2: $77
	rst  $38                                         ; $56c3: $ff
	ld   a, l                                        ; $56c4: $7d
	rst  $38                                         ; $56c5: $ff
	inc  b                                           ; $56c6: $04
	ld   a, [hl]                                     ; $56c7: $7e
	jr   nc, jr_070_5706                             ; $56c8: $30 $3c

	ld   hl, sp-$03                                  ; $56ca: $f8 $fd
	cpl                                              ; $56cc: $2f
	adc  $88                                         ; $56cd: $ce $88
	and  b                                           ; $56cf: $a0
	sub  [hl]                                        ; $56d0: $96
	sbc  $58                                         ; $56d1: $de $58
	ld   c, b                                        ; $56d3: $48
	ld   c, $81                                      ; $56d4: $0e $81
	adc  [hl]                                        ; $56d6: $8e
	rlca                                             ; $56d7: $07
	inc  l                                           ; $56d8: $2c
	inc  e                                           ; $56d9: $1c
	ld   e, b                                        ; $56da: $58
	jr   c, jr_070_573c                              ; $56db: $38 $5f

	rra                                              ; $56dd: $1f
	dec  d                                           ; $56de: $15
	dec  e                                           ; $56df: $1d
	add  b                                           ; $56e0: $80
	rra                                              ; $56e1: $1f
	ld   bc, $1e16                                   ; $56e2: $01 $16 $1e
	add  b                                           ; $56e5: $80
	dec  de                                          ; $56e6: $1b
	inc  bc                                          ; $56e7: $03
	inc  b                                           ; $56e8: $04
	ld   c, $04                                      ; $56e9: $0e $04
	ld   c, $80                                      ; $56eb: $0e $80
	rlca                                             ; $56ed: $07
	ld   [bc], a                                     ; $56ee: $02
	nop                                              ; $56ef: $00
	rst  $38                                         ; $56f0: $ff
	ld   a, a                                        ; $56f1: $7f
	add  c                                           ; $56f2: $81
	rst  $38                                         ; $56f3: $ff
	ld   b, $bf                                      ; $56f4: $06 $bf
	rst  $38                                         ; $56f6: $ff
	ld   c, a                                        ; $56f7: $4f
	ld   a, a                                        ; $56f8: $7f
	ld   d, a                                        ; $56f9: $57
	ld   a, a                                        ; $56fa: $7f
	add  a                                           ; $56fb: $87
	add  c                                           ; $56fc: $81
	cp   a                                           ; $56fd: $bf
	inc  b                                           ; $56fe: $04
	jr   @+$01                                       ; $56ff: $18 $ff

	ei                                               ; $5701: $fb
	rst  $38                                         ; $5702: $ff
	db   $fc                                         ; $5703: $fc
	add  a                                           ; $5704: $87
	rst  $38                                         ; $5705: $ff

jr_070_5706:
	ld   a, [bc]                                     ; $5706: $0a
	ldh  a, [rIE]                                    ; $5707: $f0 $ff
	pop  de                                          ; $5709: $d1
	ld   h, c                                        ; $570a: $61
	jp   z, Jump_070_70fa                            ; $570b: $ca $fa $70

	rst  $38                                         ; $570e: $ff
	ld   sp, hl                                      ; $570f: $f9
	rst  $38                                         ; $5710: $ff
	ld   sp, hl                                      ; $5711: $f9
	add  e                                           ; $5712: $83
	rst  $38                                         ; $5713: $ff
	inc  bc                                          ; $5714: $03
	rra                                              ; $5715: $1f
	rst  $38                                         ; $5716: $ff
	dec  e                                           ; $5717: $1d
	ld   [bc], a                                     ; $5718: $02
	add  b                                           ; $5719: $80
	ld   d, [hl]                                     ; $571a: $56
	rra                                              ; $571b: $1f
	ld   a, a                                        ; $571c: $7f
	rst  $38                                         ; $571d: $ff
	add  c                                           ; $571e: $81
	rst  $38                                         ; $571f: $ff
	ld   sp, hl                                      ; $5720: $f9
	rst  $38                                         ; $5721: $ff
	db   $db                                         ; $5722: $db
	rst  $38                                         ; $5723: $ff
	call c, $c2ff                                    ; $5724: $dc $ff $c2
	rst  $38                                         ; $5727: $ff
	sub  [hl]                                        ; $5728: $96
	ld   e, a                                        ; $5729: $5f
	ldh  a, [c]                                      ; $572a: $f2
	rst  $38                                         ; $572b: $ff
	and  c                                           ; $572c: $a1
	rst  $20                                         ; $572d: $e7
	ld   b, b                                        ; $572e: $40
	db   $fc                                         ; $572f: $fc
	inc  a                                           ; $5730: $3c
	rst  $38                                         ; $5731: $ff
	jr   c, @+$01                                    ; $5732: $38 $ff

	ret  nz                                          ; $5734: $c0

	rst  $38                                         ; $5735: $ff
	rlca                                             ; $5736: $07
	rst  $38                                         ; $5737: $ff
	db   $fc                                         ; $5738: $fc
	call c, $be9e                                    ; $5739: $dc $9e $be

jr_070_573c:
	add  b                                           ; $573c: $80
	cp   a                                           ; $573d: $bf
	dec  c                                           ; $573e: $0d
	ld   a, d                                        ; $573f: $7a
	rst  $38                                         ; $5740: $ff
	jp   hl                                          ; $5741: $e9


	rst  $38                                         ; $5742: $ff
	sub  l                                           ; $5743: $95
	rst  $38                                         ; $5744: $ff
	add  h                                           ; $5745: $84
	ld   a, [$d5bc]                                  ; $5746: $fa $bc $d5
	ld   l, $00                                      ; $5749: $2e $00
	rrca                                             ; $574b: $0f
	ld   c, $81                                      ; $574c: $0e $81
	cp   $34                                         ; $574e: $fe $34
	ccf                                              ; $5750: $3f

jr_070_5751:
	dec  sp                                          ; $5751: $3b
	inc  b                                           ; $5752: $04
	ld   b, d                                        ; $5753: $42
	ld   d, d                                        ; $5754: $52
	dec  [hl]                                        ; $5755: $35
	dec  l                                           ; $5756: $2d
	ld   a, [hl+]                                    ; $5757: $2a
	cp   $2c                                         ; $5758: $fe $2c
	rrca                                             ; $575a: $0f
	ld   hl, sp+$1f                                  ; $575b: $f8 $1f
	rla                                              ; $575d: $17
	ld   l, a                                        ; $575e: $6f
	ld   h, b                                        ; $575f: $60
	pop  hl                                          ; $5760: $e1
	ldh  [c], a                                      ; $5761: $e2
	inc  de                                          ; $5762: $13
	jr   nc, jr_070_5751                             ; $5763: $30 $ec

	jr   nc, @+$01                                   ; $5765: $30 $ff

	ld   a, $3d                                      ; $5767: $3e $3d
	ccf                                              ; $5769: $3f
	rst  $38                                         ; $576a: $ff
	cp   [hl]                                        ; $576b: $be
	cp   $9f                                         ; $576c: $fe $9f
	rst  $38                                         ; $576e: $ff
	db   $ed                                         ; $576f: $ed
	ld   a, a                                        ; $5770: $7f
	ld   [hl-], a                                    ; $5771: $32
	rst  $38                                         ; $5772: $ff
	inc  a                                           ; $5773: $3c
	rst  $38                                         ; $5774: $ff
	ld   a, l                                        ; $5775: $7d
	rst  $38                                         ; $5776: $ff
	cp   $ff                                         ; $5777: $fe $ff
	rlca                                             ; $5779: $07
	ld   hl, sp+$04                                  ; $577a: $f8 $04
	inc  a                                           ; $577c: $3c
	ld   a, [hl-]                                    ; $577d: $3a
	cp   $fc                                         ; $577e: $fe $fc
	db   $fd                                         ; $5780: $fd
	cp   h                                           ; $5781: $bc
	cp   a                                           ; $5782: $bf
	xor  $ef                                         ; $5783: $ee $ef
	add  b                                           ; $5785: $80
	rst  $38                                         ; $5786: $ff
	inc  de                                          ; $5787: $13
	ccf                                              ; $5788: $3f
	rst  $38                                         ; $5789: $ff
	and  a                                           ; $578a: $a7
	sbc  b                                           ; $578b: $98
	ld   sp, hl                                      ; $578c: $f9
	ldh  a, [$99]                                    ; $578d: $f0 $99
	ret  nc                                          ; $578f: $d0

	ret  nz                                          ; $5790: $c0

	ldh  [$29], a                                    ; $5791: $e0 $29
	reti                                             ; $5793: $d9


	add  h                                           ; $5794: $84
	rst  $38                                         ; $5795: $ff
	db   $eb                                         ; $5796: $eb
	rst  $38                                         ; $5797: $ff
	ld   a, a                                        ; $5798: $7f
	rst  $38                                         ; $5799: $ff
	cp   a                                           ; $579a: $bf
	ret  nz                                          ; $579b: $c0

	add  b                                           ; $579c: $80
	add  e                                           ; $579d: $83
	ld   [$8380], sp                                 ; $579e: $08 $80 $83
	inc  bc                                          ; $57a1: $03
	nop                                              ; $57a2: $00
	add  b                                           ; $57a3: $80
	db   $e3                                         ; $57a4: $e3
	ld   h, d                                        ; $57a5: $62
	rst  $38                                         ; $57a6: $ff
	cp   $80                                         ; $57a7: $fe $80
	db   $fc                                         ; $57a9: $fc
	nop                                              ; $57aa: $00
	ei                                               ; $57ab: $fb
	ld   l, l                                        ; $57ac: $6d
	ld   [bc], a                                     ; $57ad: $02
	add  [hl]                                        ; $57ae: $86
	nop                                              ; $57af: $00
	inc  b                                           ; $57b0: $04
	inc  b                                           ; $57b1: $04
	nop                                              ; $57b2: $00
	ld   b, $08                                      ; $57b3: $06 $08
	dec  bc                                          ; $57b5: $0b
	add  b                                           ; $57b6: $80
	inc  b                                           ; $57b7: $04
	ld   bc, $0b0a                                   ; $57b8: $01 $0a $0b
	add  l                                           ; $57bb: $85
	nop                                              ; $57bc: $00
	ld   [$60f2], sp                                 ; $57bd: $08 $f2 $60
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57c0: $cf
	db   $10                                         ; $57c1: $10
	ld   d, e                                        ; $57c2: $53
	ld   e, h                                        ; $57c3: $5c
	ld   b, c                                        ; $57c4: $41
	ld   e, [hl]                                     ; $57c5: $5e
	ld   e, l                                        ; $57c6: $5d
	add  l                                           ; $57c7: $85
	nop                                              ; $57c8: $00
	ld   [$6f2c], sp                                 ; $57c9: $08 $2c $6f
	jp   z, $f63e                                    ; $57cc: $ca $3e $f6

	ld   c, $fc                                      ; $57cf: $0e $fc
	inc  b                                           ; $57d1: $04
	or   a                                           ; $57d2: $b7
	add  l                                           ; $57d3: $85
	nop                                              ; $57d4: $00
	ld   [$02f0], sp                                 ; $57d5: $08 $f0 $02
	inc  de                                          ; $57d8: $13
	inc  b                                           ; $57d9: $04
	ld   h, $09                                      ; $57da: $26 $09
	ld   [$c80a], sp                                 ; $57dc: $08 $0a $c8
	add  l                                           ; $57df: $85
	nop                                              ; $57e0: $00
	ld   [$449c], sp                                 ; $57e1: $08 $9c $44
	db   $e3                                         ; $57e4: $e3
	add  sp, $66                                     ; $57e5: $e8 $66
	sub  $f1                                         ; $57e7: $d6 $f1
	ld   [hl], h                                     ; $57e9: $74
	and  $85                                         ; $57ea: $e6 $85
	nop                                              ; $57ec: $00
	ld   [$88f6], sp                                 ; $57ed: $08 $f6 $88
	adc  [hl]                                        ; $57f0: $8e
	xor  l                                           ; $57f1: $ad
	inc  l                                           ; $57f2: $2c
	dec  hl                                          ; $57f3: $2b
	ld   hl, sp+$56                                  ; $57f4: $f8 $56
	db   $f4                                         ; $57f6: $f4
	add  l                                           ; $57f7: $85
	nop                                              ; $57f8: $00
	ld   [$3150], sp                                 ; $57f9: $08 $50 $31
	ld   l, d                                        ; $57fc: $6a
	call z, $f169                                    ; $57fd: $cc $69 $f1
	ld   h, [hl]                                     ; $5800: $66
	ld   b, [hl]                                     ; $5801: $46
	ld   a, a                                        ; $5802: $7f
	add  l                                           ; $5803: $85
	nop                                              ; $5804: $00
	ld   [$c0bf], sp                                 ; $5805: $08 $bf $c0
	sbc  e                                           ; $5808: $9b
	dec  de                                          ; $5809: $1b
	inc  hl                                          ; $580a: $23
	daa                                              ; $580b: $27
	add  c                                           ; $580c: $81
	sbc  $a4                                         ; $580d: $de $a4
	add  l                                           ; $580f: $85
	nop                                              ; $5810: $00
	ld   [$927f], sp                                 ; $5811: $08 $7f $92
	nop                                              ; $5814: $00
	ld   a, a                                        ; $5815: $7f
	ld   [de], a                                     ; $5816: $12
	db   $ed                                         ; $5817: $ed
	ld   l, h                                        ; $5818: $6c
	sub  e                                           ; $5819: $93
	sub  d                                           ; $581a: $92
	add  l                                           ; $581b: $85
	nop                                              ; $581c: $00
	ld   [$5fe9], sp                                 ; $581d: $08 $e9 $5f
	nop                                              ; $5820: $00
	db   $fd                                         ; $5821: $fd
	ld   bc, $00f9                                   ; $5822: $01 $f9 $00
	db   $f4                                         ; $5825: $f4
	ld   b, a                                        ; $5826: $47
	add  l                                           ; $5827: $85
	nop                                              ; $5828: $00
	ld   [rAUDVOL], sp                                 ; $5829: $08 $24 $ff
	ret  nz                                          ; $582c: $c0

	cp   a                                           ; $582d: $bf
	add  b                                           ; $582e: $80
	sbc  a                                           ; $582f: $9f
	ld   l, b                                        ; $5830: $68
	ld   l, a                                        ; $5831: $6f
	cp   h                                           ; $5832: $bc
	add  l                                           ; $5833: $85
	nop                                              ; $5834: $00
	ld   [$ff92], sp                                 ; $5835: $08 $92 $ff
	nop                                              ; $5838: $00
	rst  $38                                         ; $5839: $ff
	nop                                              ; $583a: $00
	rst  $38                                         ; $583b: $ff
	nop                                              ; $583c: $00
	rst  $38                                         ; $583d: $ff
	sub  d                                           ; $583e: $92
	add  l                                           ; $583f: $85
	nop                                              ; $5840: $00
	ld   [$837f], sp                                 ; $5841: $08 $7f $83
	ld   c, a                                        ; $5844: $4f
	db   $fc                                         ; $5845: $fc
	rlca                                             ; $5846: $07
	rst  $38                                         ; $5847: $ff
	nop                                              ; $5848: $00
	cp   $49                                         ; $5849: $fe $49
	add  l                                           ; $584b: $85
	nop                                              ; $584c: $00
	ld   [$b836], sp                                 ; $584d: $08 $36 $b8
	ld   b, c                                        ; $5850: $41
	inc  c                                           ; $5851: $0c
	jr   nc, @+$03                                   ; $5852: $30 $01

	adc  $c2                                         ; $5854: $ce $c2
	cp   $85                                         ; $5856: $fe $85
	nop                                              ; $5858: $00
	add  hl, bc                                      ; $5859: $09
	ld   l, a                                        ; $585a: $6f
	ld   de, $35f1                                   ; $585b: $11 $f1 $35
	db   $f4                                         ; $585e: $f4
	sub  h                                           ; $585f: $94
	ld   a, a                                        ; $5860: $7f
	jp   z, $20b0                                    ; $5861: $ca $b0 $20

	add  b                                           ; $5864: $80
	nop                                              ; $5865: $00
	ld   [bc], a                                     ; $5866: $02
	ld   e, a                                        ; $5867: $5f
	rst  $38                                         ; $5868: $ff
	and  b                                           ; $5869: $a0
	add  e                                           ; $586a: $83
	nop                                              ; $586b: $00
	ld   [$e7e0], sp                                 ; $586c: $08 $e0 $e7
	daa                                              ; $586f: $27

jr_070_5870:
	jr   nz, jr_070_5870                             ; $5870: $20 $fe

	inc  b                                           ; $5872: $04
	nop                                              ; $5873: $00
	ld   b, $04                                      ; $5874: $06 $04
	add  e                                           ; $5876: $83
	ld   b, $80                                      ; $5877: $06 $80
	inc  c                                           ; $5879: $0c
	add  b                                           ; $587a: $80
	ld   [$0080], sp                                 ; $587b: $08 $80 $00
	ld   [$5f1e], sp                                 ; $587e: $08 $1e $5f
	ld   e, d                                        ; $5881: $5a
	ld   e, a                                        ; $5882: $5f
	ld   c, d                                        ; $5883: $4a
	ld   c, a                                        ; $5884: $4f
	ld   e, [hl]                                     ; $5885: $5e
	ld   e, a                                        ; $5886: $5f
	ld   e, [hl]                                     ; $5887: $5e
	add  c                                           ; $5888: $81
	ld   e, a                                        ; $5889: $5f
	add  b                                           ; $588a: $80
	ld   c, l                                        ; $588b: $4d
	add  b                                           ; $588c: $80
	ld   e, a                                        ; $588d: $5f
	inc  a                                           ; $588e: $3c
	adc  c                                           ; $588f: $89
	add  d                                           ; $5890: $82
	ld   a, h                                        ; $5891: $7c
	ret  nz                                          ; $5892: $c0

	ld   c, [hl]                                     ; $5893: $4e
	ldh  a, [c]                                      ; $5894: $f2
	sub  $fa                                         ; $5895: $d6 $fa
	adc  h                                           ; $5897: $8c
	db   $fc                                         ; $5898: $fc
	or   h                                           ; $5899: $b4
	db   $fc                                         ; $589a: $fc
	and  h                                           ; $589b: $a4
	db   $fc                                         ; $589c: $fc
	db   $e4                                         ; $589d: $e4
	db   $fc                                         ; $589e: $fc
	sbc  c                                           ; $589f: $99
	ld   [de], a                                     ; $58a0: $12
	inc  de                                          ; $58a1: $13
	ld   de, $1475                                   ; $58a2: $11 $75 $14
	rst  $30                                         ; $58a5: $f7
	add  hl, bc                                      ; $58a6: $09
	rst  $38                                         ; $58a7: $ff
	ld   a, [bc]                                     ; $58a8: $0a
	rst  $28                                         ; $58a9: $ef
	ld   d, b                                        ; $58aa: $50
	ld   c, e                                        ; $58ab: $4b
	ld   d, b                                        ; $58ac: $50
	ld   e, a                                        ; $58ad: $5f
	ld   e, b                                        ; $58ae: $58
	jp   nc, Jump_070_6e7c                           ; $58af: $d2 $7c $6e

	or   b                                           ; $58b2: $b0
	db   $f4                                         ; $58b3: $f4
	ld   [hl], l                                     ; $58b4: $75
	ld   [hl], c                                     ; $58b5: $71
	ld   a, [hl-]                                    ; $58b6: $3a
	ei                                               ; $58b7: $fb
	ld   l, h                                        ; $58b8: $6c
	db   $ec                                         ; $58b9: $ec
	nop                                              ; $58ba: $00
	cp   $02                                         ; $58bb: $fe $02
	rst  JumpTable                                         ; $58bd: $df
	and  c                                           ; $58be: $a1
	sub  h                                           ; $58bf: $94
	pop  hl                                          ; $58c0: $e1
	xor  h                                           ; $58c1: $ac
	ld   [de], a                                     ; $58c2: $12
	ld   e, h                                        ; $58c3: $5c
	inc  l                                           ; $58c4: $2c
	or   c                                           ; $58c5: $b1
	ld   e, c                                        ; $58c6: $59
	jp   nc, Jump_070_4062                           ; $58c7: $d2 $62 $40

	ld   l, a                                        ; $58ca: $6f
	ret  z                                           ; $58cb: $c8

	add  b                                           ; $58cc: $80
	adc  a                                           ; $58cd: $8f
	dec  c                                           ; $58ce: $0d
	adc  b                                           ; $58cf: $88
	ld   h, a                                        ; $58d0: $67
	add  hl, bc                                      ; $58d1: $09
	dec  [hl]                                        ; $58d2: $35
	ld   [hl], $4a                                   ; $58d3: $36 $4a
	ld   c, c                                        ; $58d5: $49
	or   b                                           ; $58d6: $b0
	or   a                                           ; $58d7: $b7
	ld   c, [hl]                                     ; $58d8: $4e
	ld   c, c                                        ; $58d9: $49
	ld   bc, $00ff                                   ; $58da: $01 $ff $00
	add  b                                           ; $58dd: $80
	rst  $38                                         ; $58de: $ff
	dec  c                                           ; $58df: $0d
	nop                                              ; $58e0: $00
	ldh  [$3b], a                                    ; $58e1: $e0 $3b
	inc  bc                                          ; $58e3: $03
	db   $fc                                         ; $58e4: $fc
	inc  b                                           ; $58e5: $04
	ei                                               ; $58e6: $fb
	dec  de                                          ; $58e7: $1b
	db   $e4                                         ; $58e8: $e4
	inc  b                                           ; $58e9: $04
	ei                                               ; $58ea: $fb
	inc  h                                           ; $58eb: $24
	rst  $38                                         ; $58ec: $ff
	nop                                              ; $58ed: $00
	add  b                                           ; $58ee: $80
	rst  $38                                         ; $58ef: $ff
	add  b                                           ; $58f0: $80
	nop                                              ; $58f1: $00
	dec  bc                                          ; $58f2: $0b
	ld   l, l                                        ; $58f3: $6d
	ld   l, h                                        ; $58f4: $6c
	sub  e                                           ; $58f5: $93
	sub  b                                           ; $58f6: $90
	ld   l, a                                        ; $58f7: $6f
	ld   h, b                                        ; $58f8: $60
	sbc  a                                           ; $58f9: $9f
	sbc  h                                           ; $58fa: $9c
	ld   h, e                                        ; $58fb: $63
	sub  d                                           ; $58fc: $92
	db   $fc                                         ; $58fd: $fc
	inc  bc                                          ; $58fe: $03

Jump_070_58ff:
	add  b                                           ; $58ff: $80
	rst  $38                                         ; $5900: $ff
	ld   a, [bc]                                     ; $5901: $0a
	nop                                              ; $5902: $00
	ld   c, e                                        ; $5903: $4b
	db   $ec                                         ; $5904: $ec
	ld   a, c                                        ; $5905: $79
	inc  h                                           ; $5906: $24
	adc  l                                           ; $5907: $8d
	reti                                             ; $5908: $d9


	ld   sp, $aaa8                                   ; $5909: $31 $a8 $aa
	ld   h, a                                        ; $590c: $67
	add  b                                           ; $590d: $80
	rrca                                             ; $590e: $0f
	dec  c                                           ; $590f: $0d
	rst  $38                                         ; $5910: $ff
	ldh  [c], a                                      ; $5911: $e2
	pop  hl                                          ; $5912: $e1
	dec  bc                                          ; $5913: $0b
	pop  hl                                          ; $5914: $e1
	ld   [hl], a                                     ; $5915: $77
	ld   h, b                                        ; $5916: $60
	and  h                                           ; $5917: $a4
	or   e                                           ; $5918: $b3
	sbc  e                                           ; $5919: $9b
	adc  a                                           ; $591a: $8f
	inc  de                                          ; $591b: $13
	ld   d, d                                        ; $591c: $52
	and  $80                                         ; $591d: $e6 $80
	ldh  a, [rAUD1SWEEP]                             ; $591f: $f0 $10
	rst  $38                                         ; $5921: $ff
	ld   b, a                                        ; $5922: $47
	add  a                                           ; $5923: $87
	ret  nc                                          ; $5924: $d0

	ld   [hl+], a                                    ; $5925: $22
	rst  $38                                         ; $5926: $ff
	nop                                              ; $5927: $00
	rst  $38                                         ; $5928: $ff
	nop                                              ; $5929: $00
	rst  $38                                         ; $592a: $ff
	nop                                              ; $592b: $00
	rst  $38                                         ; $592c: $ff
	ld   h, b                                        ; $592d: $60
	sbc  a                                           ; $592e: $9f
	sub  d                                           ; $592f: $92
	ld   a, a                                        ; $5930: $7f
	add  b                                           ; $5931: $80
	add  b                                           ; $5932: $80
	rst  $38                                         ; $5933: $ff
	dec  c                                           ; $5934: $0d
	nop                                              ; $5935: $00
	ld   c, c                                        ; $5936: $49
	rst  $38                                         ; $5937: $ff
	nop                                              ; $5938: $00
	rst  $38                                         ; $5939: $ff
	nop                                              ; $593a: $00
	rst  $38                                         ; $593b: $ff
	nop                                              ; $593c: $00
	rst  $38                                         ; $593d: $ff
	nop                                              ; $593e: $00
	rst  $38                                         ; $593f: $ff
	ld   c, c                                        ; $5940: $49
	rst  $38                                         ; $5941: $ff
	nop                                              ; $5942: $00
	add  b                                           ; $5943: $80
	rst  $38                                         ; $5944: $ff
	dec  c                                           ; $5945: $0d
	nop                                              ; $5946: $00
	ld   e, a                                        ; $5947: $5f
	and  b                                           ; $5948: $a0
	ld   a, [de]                                     ; $5949: $1a
	jp   c, $a444                                    ; $594a: $da $44 $a4

	dec  sp                                          ; $594d: $3b
	db   $db                                         ; $594e: $db
	ld   b, h                                        ; $594f: $44
	and  h                                           ; $5950: $a4
	jr   nz, @+$01                                   ; $5951: $20 $ff

	nop                                              ; $5953: $00
	add  b                                           ; $5954: $80
	rst  $38                                         ; $5955: $ff
	dec  c                                           ; $5956: $0d
	nop                                              ; $5957: $00
	ld   d, c                                        ; $5958: $51
	ld   h, a                                        ; $5959: $67
	sbc  l                                           ; $595a: $9d
	db   $10                                         ; $595b: $10
	ld   l, [hl]                                     ; $595c: $6e
	jr   jr_070_5986                                 ; $595d: $18 $27

	inc  c                                           ; $595f: $0c
	sub  c                                           ; $5960: $91
	adc  b                                           ; $5961: $88
	ld   b, $f2                                      ; $5962: $06 $f2
	ld   [de], a                                     ; $5964: $12
	add  b                                           ; $5965: $80
	ldh  a, [c]                                      ; $5966: $f2
	ld   [bc], a                                     ; $5967: $02
	ld   [de], a                                     ; $5968: $12
	call nc, $8020                                   ; $5969: $d4 $20 $80
	nop                                              ; $596c: $00
	ld   [bc], a                                     ; $596d: $02
	ld   e, a                                        ; $596e: $5f

jr_070_596f:
	rst  $38                                         ; $596f: $ff
	and  b                                           ; $5970: $a0
	add  e                                           ; $5971: $83
	nop                                              ; $5972: $00
	dec  b                                           ; $5973: $05
	ldh  [$e7], a                                    ; $5974: $e0 $e7
	daa                                              ; $5976: $27
	jr   nz, jr_070_596f                             ; $5977: $20 $f6

	ld   [$0c80], sp                                 ; $5979: $08 $80 $0c
	add  b                                           ; $597c: $80
	ld   b, $81                                      ; $597d: $06 $81
	ld   [bc], a                                     ; $597f: $02
	ld   [bc], a                                     ; $5980: $02
	ld   b, $02                                      ; $5981: $06 $02
	ld   b, $80                                      ; $5983: $06 $80
	ld   [bc], a                                     ; $5985: $02

jr_070_5986:
	inc  bc                                          ; $5986: $03
	nop                                              ; $5987: $00
	inc  b                                           ; $5988: $04
	inc  d                                           ; $5989: $14
	ld   d, c                                        ; $598a: $51
	add  b                                           ; $598b: $80
	ld   e, a                                        ; $598c: $5f
	add  b                                           ; $598d: $80
	ld   b, [hl]                                     ; $598e: $46
	add  b                                           ; $598f: $80
	ld   e, a                                        ; $5990: $5f
	add  b                                           ; $5991: $80
	ld   d, c                                        ; $5992: $51
	add  b                                           ; $5993: $80
	ld   e, a                                        ; $5994: $5f
	add  b                                           ; $5995: $80
	ld   b, h                                        ; $5996: $44
	add  b                                           ; $5997: $80
	ld   e, a                                        ; $5998: $5f
	dec  b                                           ; $5999: $05
	dec  sp                                          ; $599a: $3b
	ld   a, h                                        ; $599b: $7c
	db   $f4                                         ; $599c: $f4
	db   $fc                                         ; $599d: $fc
	ld   [hl], h                                     ; $599e: $74
	ld   a, h                                        ; $599f: $7c
	add  b                                           ; $59a0: $80
	db   $fc                                         ; $59a1: $fc
	add  b                                           ; $59a2: $80
	ld   e, h                                        ; $59a3: $5c
	add  b                                           ; $59a4: $80
	db   $fc                                         ; $59a5: $fc
	add  b                                           ; $59a6: $80
	ld   c, h                                        ; $59a7: $4c
	add  b                                           ; $59a8: $80
	db   $fc                                         ; $59a9: $fc
	jr   z, jr_070_59c4                              ; $59aa: $28 $18

	ld   e, a                                        ; $59ac: $5f

jr_070_59ad:
	ld   b, b                                        ; $59ad: $40
	ld   e, a                                        ; $59ae: $5f
	ld   d, c                                        ; $59af: $51
	ld   e, a                                        ; $59b0: $5f
	ld   d, c                                        ; $59b1: $51
	ld   e, a                                        ; $59b2: $5f
	ld   b, h                                        ; $59b3: $44
	ld   e, a                                        ; $59b4: $5f
	ld   c, l                                        ; $59b5: $4d
	ld   e, a                                        ; $59b6: $5f
	ld   c, b                                        ; $59b7: $48
	ld   e, a                                        ; $59b8: $5f
	ld   e, h                                        ; $59b9: $5c
	ld   e, a                                        ; $59ba: $5f
	cp   l                                           ; $59bb: $bd
	inc  e                                           ; $59bc: $1c
	call c, $23e3                                    ; $59bd: $dc $e3 $23
	db   $fc                                         ; $59c0: $fc
	inc  bc                                          ; $59c1: $03
	rst  $38                                         ; $59c2: $ff
	ld   b, h                                        ; $59c3: $44

jr_070_59c4:
	rst  $38                                         ; $59c4: $ff
	ld   b, h                                        ; $59c5: $44
	rst  $38                                         ; $59c6: $ff
	ld   de, $03ff                                   ; $59c7: $11 $ff $03
	rst  $38                                         ; $59ca: $ff
	db   $ed                                         ; $59cb: $ed
	rst  JumpTable                                         ; $59cc: $df
	jr   nz, jr_070_59cf                             ; $59cd: $20 $00

jr_070_59cf:
	ld   h, b                                        ; $59cf: $60
	ld   [bc], a                                     ; $59d0: $02
	ld   h, d                                        ; $59d1: $62
	dec  b                                           ; $59d2: $05
	ld   b, l                                        ; $59d3: $45
	add  l                                           ; $59d4: $85
	rrca                                             ; $59d5: $0f
	ld   bc, $ffb0                                   ; $59d6: $01 $b0 $ff
	add  c                                           ; $59d9: $81
	nop                                              ; $59da: $00
	add  b                                           ; $59db: $80
	adc  b                                           ; $59dc: $88
	add  b                                           ; $59dd: $80
	ld   d, h                                        ; $59de: $54
	add  l                                           ; $59df: $85
	call c, $2301                                    ; $59e0: $dc $01 $23
	rst  $38                                         ; $59e3: $ff
	add  c                                           ; $59e4: $81
	nop                                              ; $59e5: $00
	add  b                                           ; $59e6: $80
	add  b                                           ; $59e7: $80
	add  b                                           ; $59e8: $80
	ld   d, l                                        ; $59e9: $55
	add  b                                           ; $59ea: $80
	ld   l, e                                        ; $59eb: $6b
	add  b                                           ; $59ec: $80
	ld   a, $80                                      ; $59ed: $3e $80
	sbc  h                                           ; $59ef: $9c
	ld   [bc], a                                     ; $59f0: $02
	ld   b, b                                        ; $59f1: $40
	cp   a                                           ; $59f2: $bf
	rst  $38                                         ; $59f3: $ff
	add  c                                           ; $59f4: $81
	nop                                              ; $59f5: $00
	add  b                                           ; $59f6: $80
	add  b                                           ; $59f7: $80
	add  b                                           ; $59f8: $80
	add  h                                           ; $59f9: $84
	add  b                                           ; $59fa: $80
	ld   [bc], a                                     ; $59fb: $02
	add  b                                           ; $59fc: $80
	ld   d, c                                        ; $59fd: $51
	add  b                                           ; $59fe: $80

Call_070_59ff:
	ret  nc                                          ; $59ff: $d0

	inc  bc                                          ; $5a00: $03
	sub  h                                           ; $5a01: $94
	ld   l, e                                        ; $5a02: $6b
	rst  $30                                         ; $5a03: $f7
	ld   [$0080], sp                                 ; $5a04: $08 $80 $00
	add  b                                           ; $5a07: $80
	ld   h, b                                        ; $5a08: $60
	add  b                                           ; $5a09: $80
	dec  [hl]                                        ; $5a0a: $35
	add  b                                           ; $5a0b: $80
	rra                                              ; $5a0c: $1f
	add  b                                           ; $5a0d: $80
	add  a                                           ; $5a0e: $87
	add  b                                           ; $5a0f: $80
	ldh  [$03], a                                    ; $5a10: $e0 $03
	ld   a, b                                        ; $5a12: $78
	add  a                                           ; $5a13: $87
	rst  $28                                         ; $5a14: $ef
	db   $10                                         ; $5a15: $10
	add  b                                           ; $5a16: $80
	nop                                              ; $5a17: $00
	add  b                                           ; $5a18: $80
	inc  bc                                          ; $5a19: $03
	add  b                                           ; $5a1a: $80
	ld   d, [hl]                                     ; $5a1b: $56
	add  b                                           ; $5a1c: $80
	db   $fc                                         ; $5a1d: $fc
	add  b                                           ; $5a1e: $80
	ldh  a, [$80]                                    ; $5a1f: $f0 $80
	inc  bc                                          ; $5a21: $03
	ld   [bc], a                                     ; $5a22: $02
	ld   c, $f1                                      ; $5a23: $0e $f1
	rst  $38                                         ; $5a25: $ff
	add  c                                           ; $5a26: $81
	nop                                              ; $5a27: $00
	add  b                                           ; $5a28: $80
	db   $10                                         ; $5a29: $10
	add  b                                           ; $5a2a: $80
	jr   nz, jr_070_59ad                             ; $5a2b: $20 $80

	ld   b, d                                        ; $5a2d: $42
	add  b                                           ; $5a2e: $80
	add  d                                           ; $5a2f: $82
	add  b                                           ; $5a30: $80

jr_070_5a31:
	sub  c                                           ; $5a31: $91
	ld   [bc], a                                     ; $5a32: $02
	dec  h                                           ; $5a33: $25
	jp   c, $81ff                                    ; $5a34: $da $ff $81

	nop                                              ; $5a37: $00
	add  b                                           ; $5a38: $80
	add  b                                           ; $5a39: $80
	add  b                                           ; $5a3a: $80
	push de                                          ; $5a3b: $d5
	add  b                                           ; $5a3c: $80
	ld   [$7f82], a                                  ; $5a3d: $ea $82 $7f
	ld   [bc], a                                     ; $5a40: $02
	cp   [hl]                                        ; $5a41: $be
	ld   b, c                                        ; $5a42: $41
	rst  $38                                         ; $5a43: $ff
	add  c                                           ; $5a44: $81
	nop                                              ; $5a45: $00
	add  b                                           ; $5a46: $80
	ld   b, l                                        ; $5a47: $45
	add  b                                           ; $5a48: $80
	ld   c, b                                        ; $5a49: $48

jr_070_5a4a:
	add  b                                           ; $5a4a: $80
	call $8d80                                       ; $5a4b: $cd $80 $8d
	add  b                                           ; $5a4e: $80
	dec  c                                           ; $5a4f: $0d
	ld   [bc], a                                     ; $5a50: $02
	ld   c, l                                        ; $5a51: $4d
	or   e                                           ; $5a52: $b3
	cp   $80                                         ; $5a53: $fe $80
	nop                                              ; $5a55: $00
	nop                                              ; $5a56: $00
	ld   b, $80                                      ; $5a57: $06 $80
	ld   b, b                                        ; $5a59: $40
	ld   bc, $a2a6                                   ; $5a5a: $01 $a6 $a2
	add  b                                           ; $5a5d: $80
	ldh  [$84], a                                    ; $5a5e: $e0 $84
	ldh  a, [rP1]                                    ; $5a60: $f0 $00
	ld   [bc], a                                     ; $5a62: $02
	add  b                                           ; $5a63: $80
	nop                                              ; $5a64: $00
	ld   [bc], a                                     ; $5a65: $02
	pop  bc                                          ; $5a66: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a67: $cf
	ld   c, [hl]                                     ; $5a68: $4e
	add  c                                           ; $5a69: $81
	ld   b, b                                        ; $5a6a: $40
	add  b                                           ; $5a6b: $80
	nop                                              ; $5a6c: $00
	ld   b, $5f                                      ; $5a6d: $06 $5f
	rst  $38                                         ; $5a6f: $ff
	and  b                                           ; $5a70: $a0
	nop                                              ; $5a71: $00
	cp   $02                                         ; $5a72: $fe $02
	nop                                              ; $5a74: $00
	add  b                                           ; $5a75: $80
	ld   b, $00                                      ; $5a76: $06 $00
	ld   a, [bc]                                     ; $5a78: $0a
	add  b                                           ; $5a79: $80
	ld   [$0a80], sp                                 ; $5a7a: $08 $80 $0a
	ld   bc, $060e                                   ; $5a7d: $01 $0e $06
	add  c                                           ; $5a80: $81
	ld   [bc], a                                     ; $5a81: $02
	ld   [bc], a                                     ; $5a82: $02
	ld   b, $14                                      ; $5a83: $06 $14
	ld   d, c                                        ; $5a85: $51
	add  b                                           ; $5a86: $80
	ld   e, a                                        ; $5a87: $5f
	add  b                                           ; $5a88: $80
	ld   b, h                                        ; $5a89: $44
	add  b                                           ; $5a8a: $80
	ld   e, a                                        ; $5a8b: $5f
	add  b                                           ; $5a8c: $80
	ld   d, c                                        ; $5a8d: $51
	add  b                                           ; $5a8e: $80
	ld   e, a                                        ; $5a8f: $5f
	add  b                                           ; $5a90: $80
	ld   b, h                                        ; $5a91: $44
	add  b                                           ; $5a92: $80
	ld   e, a                                        ; $5a93: $5f
	ld   bc, $1453                                   ; $5a94: $01 $53 $14
	add  b                                           ; $5a97: $80
	db   $fc                                         ; $5a98: $fc
	add  b                                           ; $5a99: $80
	ld   b, h                                        ; $5a9a: $44
	add  b                                           ; $5a9b: $80
	db   $fc                                         ; $5a9c: $fc
	add  b                                           ; $5a9d: $80
	inc  d                                           ; $5a9e: $14
	add  b                                           ; $5a9f: $80
	db   $fc                                         ; $5aa0: $fc
	add  b                                           ; $5aa1: $80
	ld   b, h                                        ; $5aa2: $44
	add  b                                           ; $5aa3: $80
	db   $fc                                         ; $5aa4: $fc
	nop                                              ; $5aa5: $00
	jr   jr_070_5a31                                 ; $5aa6: $18 $89

	ld   e, a                                        ; $5aa8: $5f
	add  b                                           ; $5aa9: $80
	ld   d, e                                        ; $5aaa: $53
	add  b                                           ; $5aab: $80
	ld   e, a                                        ; $5aac: $5f
	add  b                                           ; $5aad: $80
	rst  $38                                         ; $5aae: $ff
	ld   b, $a9                                      ; $5aaf: $06 $a9
	rst  $38                                         ; $5ab1: $ff
	jp   hl                                          ; $5ab2: $e9


	rst  $38                                         ; $5ab3: $ff
	cp   $ff                                         ; $5ab4: $fe $ff
	cp   $85                                         ; $5ab6: $fe $85
	rst  $38                                         ; $5ab8: $ff
	nop                                              ; $5ab9: $00
	cp   a                                           ; $5aba: $bf
	adc  l                                           ; $5abb: $8d
	rrca                                             ; $5abc: $0f
	nop                                              ; $5abd: $00
	ld   c, a                                        ; $5abe: $4f
	add  [hl]                                        ; $5abf: $86
	sbc  h                                           ; $5ac0: $9c
	add  b                                           ; $5ac1: $80
	sbc  l                                           ; $5ac2: $9d
	add  b                                           ; $5ac3: $80
	sbc  c                                           ; $5ac4: $99
	add  b                                           ; $5ac5: $80
	cp   c                                           ; $5ac6: $b9
	add  b                                           ; $5ac7: $80
	jr   c, jr_070_5a4a                              ; $5ac8: $38 $80

	ld   hl, $bf80                                   ; $5aca: $21 $80 $bf
	add  b                                           ; $5acd: $80
	sbc  [hl]                                        ; $5ace: $9e
	add  b                                           ; $5acf: $80
	ret  nz                                          ; $5ad0: $c0

	add  b                                           ; $5ad1: $80
	ld   h, c                                        ; $5ad2: $61
	add  b                                           ; $5ad3: $80

Call_070_5ad4:
	ld   a, a                                        ; $5ad4: $7f
	inc  bc                                          ; $5ad5: $03
	ccf                                              ; $5ad6: $3f
	ld   a, a                                        ; $5ad7: $7f
	ld   e, $5e                                      ; $5ad8: $1e $5e
	add  b                                           ; $5ada: $80
	ld   [hl-], a                                    ; $5adb: $32
	add  b                                           ; $5adc: $80
	ld   hl, $6401                                   ; $5add: $21 $01 $64
	ld   h, l                                        ; $5ae0: $65
	add  b                                           ; $5ae1: $80
	ld   d, h                                        ; $5ae2: $54
	add  b                                           ; $5ae3: $80
	ret  nc                                          ; $5ae4: $d0

	ld   bc, $9190                                   ; $5ae5: $01 $90 $91
	add  b                                           ; $5ae8: $80
	ld   d, b                                        ; $5ae9: $50
	add  b                                           ; $5aea: $80
	ld   b, b                                        ; $5aeb: $40
	add  b                                           ; $5aec: $80
	ccf                                              ; $5aed: $3f
	add  b                                           ; $5aee: $80
	adc  a                                           ; $5aef: $8f
	add  b                                           ; $5af0: $80
	ldh  a, [$80]                                    ; $5af1: $f0 $80
	ld   a, a                                        ; $5af3: $7f
	rlca                                             ; $5af4: $07
	ccf                                              ; $5af5: $3f
	ld   a, a                                        ; $5af6: $7f
	rrca                                             ; $5af7: $0f
	rra                                              ; $5af8: $1f
	nop                                              ; $5af9: $00
	dec  b                                           ; $5afa: $05
	nop                                              ; $5afb: $00
	ld   d, l                                        ; $5afc: $55
	add  b                                           ; $5afd: $80
	db   $fc                                         ; $5afe: $fc
	add  b                                           ; $5aff: $80
	di                                               ; $5b00: $f3
	add  b                                           ; $5b01: $80
	rrca                                             ; $5b02: $0f
	add  b                                           ; $5b03: $80
	rst  $38                                         ; $5b04: $ff
	add  b                                           ; $5b05: $80
	db   $fc                                         ; $5b06: $fc
	add  b                                           ; $5b07: $80
	pop  af                                          ; $5b08: $f1
	inc  bc                                          ; $5b09: $03
	dec  b                                           ; $5b0a: $05
	ld   d, c                                        ; $5b0b: $51
	nop                                              ; $5b0c: $00
	ld   d, h                                        ; $5b0d: $54
	add  b                                           ; $5b0e: $80
	db   $e4                                         ; $5b0f: $e4
	add  b                                           ; $5b10: $80
	sub  $80                                         ; $5b11: $d6 $80
	sub  e                                           ; $5b13: $93
	add  b                                           ; $5b14: $80
	ld   d, c                                        ; $5b15: $51
	add  b                                           ; $5b16: $80
	ld   d, l                                        ; $5b17: $55
	add  b                                           ; $5b18: $80
	ld   d, h                                        ; $5b19: $54
	inc  bc                                          ; $5b1a: $03
	db   $10                                         ; $5b1b: $10
	ld   de, $0100                                   ; $5b1c: $11 $00 $01
	add  b                                           ; $5b1f: $80
	ret  nz                                          ; $5b20: $c0

	add  b                                           ; $5b21: $80
	ld   h, c                                        ; $5b22: $61
	add  b                                           ; $5b23: $80
	ccf                                              ; $5b24: $3f
	add  b                                           ; $5b25: $80
	ld   e, $80                                      ; $5b26: $1e $80
	add  b                                           ; $5b28: $80
	add  b                                           ; $5b29: $80
	ldh  [$80], a                                    ; $5b2a: $e0 $80
	ld   a, a                                        ; $5b2c: $7f
	add  b                                           ; $5b2d: $80
	ccf                                              ; $5b2e: $3f
	add  b                                           ; $5b2f: $80
	adc  h                                           ; $5b30: $8c
	add  b                                           ; $5b31: $80
	xor  h                                           ; $5b32: $ac
	add  b                                           ; $5b33: $80
	inc  h                                           ; $5b34: $24
	add  b                                           ; $5b35: $80
	ld   h, h                                        ; $5b36: $64
	add  b                                           ; $5b37: $80
	ld   b, [hl]                                     ; $5b38: $46
	add  b                                           ; $5b39: $80
	sub  $80                                         ; $5b3a: $d6 $80
	sub  [hl]                                        ; $5b3c: $96
	ld   bc, $1416                                   ; $5b3d: $01 $16 $14
	adc  b                                           ; $5b40: $88
	ldh  a, [$83]                                    ; $5b41: $f0 $83
	ld   [hl], b                                     ; $5b43: $70
	nop                                              ; $5b44: $00
	ld   [hl], d                                     ; $5b45: $72
	add  c                                           ; $5b46: $81
	nop                                              ; $5b47: $00
	ld   [bc], a                                     ; $5b48: $02
	ld   a, [hl]                                     ; $5b49: $7e
	cp   $82                                         ; $5b4a: $fe $82
	add  c                                           ; $5b4c: $81
	ld   [bc], a                                     ; $5b4d: $02
	add  b                                           ; $5b4e: $80
	nop                                              ; $5b4f: $00
	dec  b                                           ; $5b50: $05
	ret  nz                                          ; $5b51: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b52: $cf
	ld   c, a                                        ; $5b53: $4f
	ld   b, b                                        ; $5b54: $40
	ld   hl, sp+$06                                  ; $5b55: $f8 $06
	add  c                                           ; $5b57: $81
	ld   [bc], a                                     ; $5b58: $02
	ld   [bc], a                                     ; $5b59: $02
	ld   b, $08                                      ; $5b5a: $06 $08
	inc  c                                           ; $5b5c: $0c
	add  b                                           ; $5b5d: $80
	ld   [$0084], sp                                 ; $5b5e: $08 $84 $00
	ld   bc, $5110                                   ; $5b61: $01 $10 $51
	add  b                                           ; $5b64: $80
	ld   e, a                                        ; $5b65: $5f
	add  b                                           ; $5b66: $80
	ld   b, h                                        ; $5b67: $44
	add  b                                           ; $5b68: $80
	ld   e, e                                        ; $5b69: $5b
	add  b                                           ; $5b6a: $80

jr_070_5b6b:
	ld   d, c                                        ; $5b6b: $51
	add  b                                           ; $5b6c: $80
	ld   e, [hl]                                     ; $5b6d: $5e
	add  b                                           ; $5b6e: $80
	ld   b, h                                        ; $5b6f: $44
	add  b                                           ; $5b70: $80
	ld   e, e                                        ; $5b71: $5b
	ld   bc, $1453                                   ; $5b72: $01 $53 $14
	add  b                                           ; $5b75: $80
	db   $fc                                         ; $5b76: $fc
	add  b                                           ; $5b77: $80
	ld   b, h                                        ; $5b78: $44
	add  b                                           ; $5b79: $80
	cp   h                                           ; $5b7a: $bc
	add  b                                           ; $5b7b: $80
	inc  d                                           ; $5b7c: $14
	add  b                                           ; $5b7d: $80
	db   $ec                                         ; $5b7e: $ec
	add  b                                           ; $5b7f: $80
	ld   b, h                                        ; $5b80: $44
	add  b                                           ; $5b81: $80
	cp   h                                           ; $5b82: $bc
	ld   bc, $4502                                   ; $5b83: $01 $02 $45
	add  b                                           ; $5b86: $80
	ld   e, a                                        ; $5b87: $5f
	add  b                                           ; $5b88: $80
	ld   d, l                                        ; $5b89: $55
	add  b                                           ; $5b8a: $80
	ld   e, a                                        ; $5b8b: $5f
	add  b                                           ; $5b8c: $80
	ld   b, h                                        ; $5b8d: $44

jr_070_5b8e:
	add  b                                           ; $5b8e: $80
	ld   e, a                                        ; $5b8f: $5f
	add  b                                           ; $5b90: $80
	ld   d, c                                        ; $5b91: $51

jr_070_5b92:
	add  b                                           ; $5b92: $80
	ld   e, a                                        ; $5b93: $5f
	ld   bc, $5f1f                                   ; $5b94: $01 $1f $5f
	add  b                                           ; $5b97: $80
	rst  $38                                         ; $5b98: $ff
	add  b                                           ; $5b99: $80
	ld   d, l                                        ; $5b9a: $55
	add  b                                           ; $5b9b: $80
	rst  $38                                         ; $5b9c: $ff
	add  b                                           ; $5b9d: $80
	ld   b, h                                        ; $5b9e: $44
	add  b                                           ; $5b9f: $80
	rst  $38                                         ; $5ba0: $ff
	add  b                                           ; $5ba1: $80
	ld   de, $ff80                                   ; $5ba2: $11 $80 $ff
	nop                                              ; $5ba5: $00
	cp   a                                           ; $5ba6: $bf
	add  d                                           ; $5ba7: $82
	rrca                                             ; $5ba8: $0f
	add  d                                           ; $5ba9: $82
	ld   c, $82                                      ; $5baa: $0e $82
	inc  c                                           ; $5bac: $0c
	add  b                                           ; $5bad: $80
	ld   [$0901], sp                                 ; $5bae: $08 $01 $09
	ld   c, c                                        ; $5bb1: $49
	add  c                                           ; $5bb2: $81
	ld   [hl-], a                                    ; $5bb3: $32
	nop                                              ; $5bb4: $00
	ld   [hl], $80                                   ; $5bb5: $36 $80
	ld   [hl], b                                     ; $5bb7: $70
	inc  bc                                          ; $5bb8: $03
	ld   h, b                                        ; $5bb9: $60
	ld   h, h                                        ; $5bba: $64
	ld   h, b                                        ; $5bbb: $60
	ld   [hl], b                                     ; $5bbc: $70
	add  b                                           ; $5bbd: $80

jr_070_5bbe:
	ret  nz                                          ; $5bbe: $c0

	ld   a, [bc]                                     ; $5bbf: $0a
	add  b                                           ; $5bc0: $80
	jp   nc, $8182                                   ; $5bc1: $d2 $82 $81

	nop                                              ; $5bc4: $00
	ld   d, h                                        ; $5bc5: $54
	nop                                              ; $5bc6: $00
	ld   bc, $1400                                   ; $5bc7: $01 $00 $14
	nop                                              ; $5bca: $00
	add  b                                           ; $5bcb: $80
	ld   b, b                                        ; $5bcc: $40
	add  b                                           ; $5bcd: $80
	ld   d, h                                        ; $5bce: $54
	add  b                                           ; $5bcf: $80
	ld   [hl], h                                     ; $5bd0: $74
	add  b                                           ; $5bd1: $80
	halt                                             ; $5bd2: $76
	add  b                                           ; $5bd3: $80
	nop                                              ; $5bd4: $00
	add  b                                           ; $5bd5: $80
	inc  b                                           ; $5bd6: $04
	add  b                                           ; $5bd7: $80
	rlca                                             ; $5bd8: $07
	add  b                                           ; $5bd9: $80
	ld   b, $80                                      ; $5bda: $06 $80
	add  a                                           ; $5bdc: $87
	add  b                                           ; $5bdd: $80
	add  $80                                         ; $5bde: $c6 $80
	add  a                                           ; $5be0: $87
	add  b                                           ; $5be1: $80
	add  $03                                         ; $5be2: $c6 $03
	dec  b                                           ; $5be4: $05
	nop                                              ; $5be5: $00
	dec  b                                           ; $5be6: $05
	nop                                              ; $5be7: $00
	add  b                                           ; $5be8: $80
	jr   nz, jr_070_5b6b                             ; $5be9: $20 $80

	inc  h                                           ; $5beb: $24
	add  b                                           ; $5bec: $80
	ld   h, $80                                      ; $5bed: $26 $80
	inc  [hl]                                        ; $5bef: $34
	add  b                                           ; $5bf0: $80
	ld   [hl], $80                                   ; $5bf1: $36 $80
	dec  [hl]                                        ; $5bf3: $35
	ld   [bc], a                                     ; $5bf4: $02
	ld   d, b                                        ; $5bf5: $50
	nop                                              ; $5bf6: $00
	ld   d, b                                        ; $5bf7: $50
	add  c                                           ; $5bf8: $81
	nop                                              ; $5bf9: $00
	add  b                                           ; $5bfa: $80
	ld   c, b                                        ; $5bfb: $48
	add  b                                           ; $5bfc: $80
	ld   c, d                                        ; $5bfd: $4a
	add  b                                           ; $5bfe: $80
	ld   c, h                                        ; $5bff: $4c
	add  b                                           ; $5c00: $80
	ld   c, d                                        ; $5c01: $4a
	add  b                                           ; $5c02: $80
	ld   c, h                                        ; $5c03: $4c
	inc  bc                                          ; $5c04: $03
	ld   bc, $0100                                   ; $5c05: $01 $00 $01
	nop                                              ; $5c08: $00
	add  b                                           ; $5c09: $80
	db   $10                                         ; $5c0a: $10
	add  b                                           ; $5c0b: $80
	jr   jr_070_5b8e                                 ; $5c0c: $18 $80

	inc  d                                           ; $5c0e: $14
	add  b                                           ; $5c0f: $80
	jr   jr_070_5b92                                 ; $5c10: $18 $80

	inc  d                                           ; $5c12: $14
	add  b                                           ; $5c13: $80
	jr   @-$7e                                       ; $5c14: $18 $80

	nop                                              ; $5c16: $00
	nop                                              ; $5c17: $00
	ld   d, h                                        ; $5c18: $54
	add  c                                           ; $5c19: $81
	ld   bc, $5500                                   ; $5c1a: $01 $00 $55
	add  c                                           ; $5c1d: $81
	nop                                              ; $5c1e: $00
	add  b                                           ; $5c1f: $80
	inc  b                                           ; $5c20: $04
	add  d                                           ; $5c21: $82
	inc  h                                           ; $5c22: $24
	ld   [bc], a                                     ; $5c23: $02
	nop                                              ; $5c24: $00
	ld   b, a                                        ; $5c25: $47
	ld   c, a                                        ; $5c26: $4f
	add  b                                           ; $5c27: $80
	ld   b, e                                        ; $5c28: $43
	inc  b                                           ; $5c29: $04
	inc  bc                                          ; $5c2a: $03
	dec  bc                                          ; $5c2b: $0b
	inc  bc                                          ; $5c2c: $03
	rlca                                             ; $5c2d: $07
	ld   bc, $8180                                   ; $5c2e: $01 $80 $81
	inc  b                                           ; $5c31: $04
	ld   b, l                                        ; $5c32: $45
	ld   b, c                                        ; $5c33: $41
	add  e                                           ; $5c34: $83
	add  b                                           ; $5c35: $80
	nop                                              ; $5c36: $00
	add  b                                           ; $5c37: $80
	ld   [hl], b                                     ; $5c38: $70
	add  h                                           ; $5c39: $84
	jr   nc, jr_070_5bbe                             ; $5c3a: $30 $82

	sub  b                                           ; $5c3c: $90
	add  c                                           ; $5c3d: $81
	ret  nc                                          ; $5c3e: $d0

	nop                                              ; $5c3f: $00
	sub  $80                                         ; $5c40: $d6 $80
	inc  b                                           ; $5c42: $04
	nop                                              ; $5c43: $00
	ld   b, $80                                      ; $5c44: $06 $80
	ldh  [c], a                                      ; $5c46: $e2
	ld   bc, $2022                                   ; $5c47: $01 $22 $20
	add  b                                           ; $5c4a: $80
	ld   hl, $1007                                   ; $5c4b: $21 $07 $10
	add  hl, de                                      ; $5c4e: $19
	jr   jr_070_5c6c                                 ; $5c4f: $18 $1b

	ld   a, [bc]                                     ; $5c51: $0a
	inc  de                                          ; $5c52: $13
	pop  hl                                          ; $5c53: $e1
	inc  c                                           ; $5c54: $0c
	add  [hl]                                        ; $5c55: $86
	ld   b, $80                                      ; $5c56: $06 $80
	inc  b                                           ; $5c58: $04
	dec  b                                           ; $5c59: $05
	ld   [$020a], sp                                 ; $5c5a: $08 $0a $02
	inc  b                                           ; $5c5d: $04
	inc  d                                           ; $5c5e: $14
	ld   d, c                                        ; $5c5f: $51
	add  b                                           ; $5c60: $80
	ld   c, [hl]                                     ; $5c61: $4e
	add  b                                           ; $5c62: $80
	ld   b, h                                        ; $5c63: $44
	add  b                                           ; $5c64: $80
	ld   e, e                                        ; $5c65: $5b
	add  b                                           ; $5c66: $80
	ld   d, c                                        ; $5c67: $51
	add  b                                           ; $5c68: $80
	ld   c, [hl]                                     ; $5c69: $4e
	add  b                                           ; $5c6a: $80
	ld   b, h                                        ; $5c6b: $44

jr_070_5c6c:
	inc  bc                                          ; $5c6c: $03
	ld   e, b                                        ; $5c6d: $58
	ld   d, a                                        ; $5c6e: $57
	ld   e, h                                        ; $5c6f: $5c
	inc  d                                           ; $5c70: $14
	add  b                                           ; $5c71: $80
	db   $ec                                         ; $5c72: $ec
	add  b                                           ; $5c73: $80
	ld   b, h                                        ; $5c74: $44
	add  b                                           ; $5c75: $80
	cp   h                                           ; $5c76: $bc
	add  b                                           ; $5c77: $80
	inc  d                                           ; $5c78: $14
	add  b                                           ; $5c79: $80
	db   $ec                                         ; $5c7a: $ec
	add  b                                           ; $5c7b: $80
	ld   b, h                                        ; $5c7c: $44
	inc  bc                                          ; $5c7d: $03
	inc  a                                           ; $5c7e: $3c
	cp   h                                           ; $5c7f: $bc
	add  e                                           ; $5c80: $83
	ld   b, h                                        ; $5c81: $44
	add  b                                           ; $5c82: $80
	ld   e, a                                        ; $5c83: $5f
	add  b                                           ; $5c84: $80
	ld   d, c                                        ; $5c85: $51
	add  b                                           ; $5c86: $80
	ld   e, [hl]                                     ; $5c87: $5e
	add  b                                           ; $5c88: $80

jr_070_5c89:
	ld   b, h                                        ; $5c89: $44
	add  b                                           ; $5c8a: $80
	ld   e, e                                        ; $5c8b: $5b
	add  b                                           ; $5c8c: $80

jr_070_5c8d:
	ld   d, c                                        ; $5c8d: $51
	add  b                                           ; $5c8e: $80
	ld   e, [hl]                                     ; $5c8f: $5e
	ld   bc, $4404                                   ; $5c90: $01 $04 $44
	add  b                                           ; $5c93: $80
	cp   a                                           ; $5c94: $bf

jr_070_5c95:
	add  b                                           ; $5c95: $80
	ld   de, $ef80                                   ; $5c96: $11 $80 $ef
	add  b                                           ; $5c99: $80
	ld   b, h                                        ; $5c9a: $44
	add  b                                           ; $5c9b: $80
	cp   e                                           ; $5c9c: $bb
	add  b                                           ; $5c9d: $80
	ld   de, $ef80                                   ; $5c9e: $11 $80 $ef
	nop                                              ; $5ca1: $00
	cp   a                                           ; $5ca2: $bf
	add  b                                           ; $5ca3: $80
	ld   bc, $0009                                   ; $5ca4: $01 $09 $00
	ld   bc, $0400                                   ; $5ca7: $01 $00 $04
	db   $10                                         ; $5caa: $10
	ld   de, $1410                                   ; $5cab: $11 $10 $14
	nop                                              ; $5cae: $00
	ld   bc, $0980                                   ; $5caf: $01 $80 $09
	inc  b                                           ; $5cb2: $04
	dec  c                                           ; $5cb3: $0d
	ld   c, $02                                      ; $5cb4: $0e $02
	ld   b, d                                        ; $5cb6: $42
	ld   [bc], a                                     ; $5cb7: $02
	add  b                                           ; $5cb8: $80
	ld   a, [de]                                     ; $5cb9: $1a
	add  b                                           ; $5cba: $80
	dec  de                                          ; $5cbb: $1b
	add  b                                           ; $5cbc: $80
	ld   a, [hl-]                                    ; $5cbd: $3a

jr_070_5cbe:
	add  b                                           ; $5cbe: $80
	ld   a, e                                        ; $5cbf: $7b
	add  b                                           ; $5cc0: $80
	ld   a, d                                        ; $5cc1: $7a
	add  b                                           ; $5cc2: $80
	ld   a, a                                        ; $5cc3: $7f
	add  b                                           ; $5cc4: $80
	ld   [hl], h                                     ; $5cc5: $74
	add  b                                           ; $5cc6: $80
	halt                                             ; $5cc7: $76
	add  b                                           ; $5cc8: $80
	ld   [hl], h                                     ; $5cc9: $74
	add  b                                           ; $5cca: $80
	halt                                             ; $5ccb: $76
	add  b                                           ; $5ccc: $80
	or   $80                                         ; $5ccd: $f6 $80
	halt                                             ; $5ccf: $76
	add  b                                           ; $5cd0: $80
	cp   $80                                         ; $5cd1: $fe $80
	ld   a, [hl]                                     ; $5cd3: $7e
	add  b                                           ; $5cd4: $80
	and  a                                           ; $5cd5: $a7
	add  b                                           ; $5cd6: $80
	rst  ToBoot                                         ; $5cd7: $c7
	add  b                                           ; $5cd8: $80
	and  a                                           ; $5cd9: $a7
	add  b                                           ; $5cda: $80
	rst  ToBoot                                         ; $5cdb: $c7
	add  b                                           ; $5cdc: $80
	and  a                                           ; $5cdd: $a7
	add  b                                           ; $5cde: $80
	rst  ToBoot                                         ; $5cdf: $c7
	add  b                                           ; $5ce0: $80
	and  a                                           ; $5ce1: $a7
	add  b                                           ; $5ce2: $80
	rst  ToBoot                                         ; $5ce3: $c7
	add  b                                           ; $5ce4: $80
	ld   [hl], $80                                   ; $5ce5: $36 $80
	dec  [hl]                                        ; $5ce7: $35
	add  b                                           ; $5ce8: $80
	ld   [hl], $80                                   ; $5ce9: $36 $80
	dec  [hl]                                        ; $5ceb: $35
	add  b                                           ; $5cec: $80
	ld   [hl], $80                                   ; $5ced: $36 $80
	dec  [hl]                                        ; $5cef: $35
	add  b                                           ; $5cf0: $80
	ld   a, $80                                      ; $5cf1: $3e $80
	dec  a                                           ; $5cf3: $3d
	add  b                                           ; $5cf4: $80
	ld   c, [hl]                                     ; $5cf5: $4e
	add  b                                           ; $5cf6: $80
	ld   c, h                                        ; $5cf7: $4c
	add  b                                           ; $5cf8: $80
	ld   c, [hl]                                     ; $5cf9: $4e
	add  b                                           ; $5cfa: $80
	ld   c, h                                        ; $5cfb: $4c
	add  b                                           ; $5cfc: $80
	ld   c, [hl]                                     ; $5cfd: $4e
	add  b                                           ; $5cfe: $80
	ld   c, h                                        ; $5cff: $4c
	add  b                                           ; $5d00: $80
	ld   c, [hl]                                     ; $5d01: $4e
	add  b                                           ; $5d02: $80
	ld   c, h                                        ; $5d03: $4c
	add  b                                           ; $5d04: $80
	inc  d                                           ; $5d05: $14
	add  b                                           ; $5d06: $80
	jr   jr_070_5c89                                 ; $5d07: $18 $80

	inc  d                                           ; $5d09: $14
	add  b                                           ; $5d0a: $80
	jr   jr_070_5c8d                                 ; $5d0b: $18 $80

	inc  d                                           ; $5d0d: $14
	add  b                                           ; $5d0e: $80
	jr   @-$7e                                       ; $5d0f: $18 $80

	inc  d                                           ; $5d11: $14
	add  b                                           ; $5d12: $80
	jr   jr_070_5c95                                 ; $5d13: $18 $80

	ld   [hl], h                                     ; $5d15: $74
	add  b                                           ; $5d16: $80
	ld   h, $80                                      ; $5d17: $26 $80
	halt                                             ; $5d19: $76
	add  b                                           ; $5d1a: $80
	ld   h, $80                                      ; $5d1b: $26 $80
	halt                                             ; $5d1d: $76
	add  b                                           ; $5d1e: $80
	ld   h, $80                                      ; $5d1f: $26 $80
	halt                                             ; $5d21: $76
	add  b                                           ; $5d22: $80
	ld   h, $03                                      ; $5d23: $26 $03
	ld   b, d                                        ; $5d25: $42
	ld   b, b                                        ; $5d26: $40
	add  d                                           ; $5d27: $82
	add  b                                           ; $5d28: $80
	add  b                                           ; $5d29: $80
	ld   b, b                                        ; $5d2a: $40
	add  b                                           ; $5d2b: $80
	add  h                                           ; $5d2c: $84
	add  b                                           ; $5d2d: $80
	ld   b, h                                        ; $5d2e: $44
	add  b                                           ; $5d2f: $80
	add  h                                           ; $5d30: $84
	add  b                                           ; $5d31: $80
	ld   b, h                                        ; $5d32: $44
	add  b                                           ; $5d33: $80
	add  h                                           ; $5d34: $84
	nop                                              ; $5d35: $00
	ld   [bc], a                                     ; $5d36: $02
	add  b                                           ; $5d37: $80
	ld   d, b                                        ; $5d38: $50
	add  d                                           ; $5d39: $82
	add  b                                           ; $5d3a: $80
	add  d                                           ; $5d3b: $82
	jr   z, jr_070_5cbe                              ; $5d3c: $28 $80

	nop                                              ; $5d3e: $00
	add  b                                           ; $5d3f: $80
	db   $10                                         ; $5d40: $10
	dec  de                                          ; $5d41: $1b
	jr   nc, jr_070_5dab                             ; $5d42: $30 $67

	ld   a, a                                        ; $5d44: $7f
	nop                                              ; $5d45: $00
	ld   a, a                                        ; $5d46: $7f
	nop                                              ; $5d47: $00
	rst  $38                                         ; $5d48: $ff
	nop                                              ; $5d49: $00
	rst  $38                                         ; $5d4a: $ff
	ld   b, h                                        ; $5d4b: $44
	rst  $38                                         ; $5d4c: $ff
	xor  d                                           ; $5d4d: $aa
	rst  $38                                         ; $5d4e: $ff
	xor  d                                           ; $5d4f: $aa
	rst  $38                                         ; $5d50: $ff
	xor  $ff                                         ; $5d51: $ee $ff
	ld   bc, $0002                                   ; $5d53: $01 $02 $00
	ld   b, $02                                      ; $5d56: $06 $02
	ld   b, $01                                      ; $5d58: $06 $01
	nop                                              ; $5d5a: $00
	rrca                                             ; $5d5b: $0f
	nop                                              ; $5d5c: $00
	inc  c                                           ; $5d5d: $0c
	add  c                                           ; $5d5e: $81
	dec  c                                           ; $5d5f: $0d
	rlca                                             ; $5d60: $07
	ld   c, $0f                                      ; $5d61: $0e $0f
	rla                                              ; $5d63: $17
	ld   d, b                                        ; $5d64: $50
	ld   d, e                                        ; $5d65: $53
	ld   d, b                                        ; $5d66: $50
	ld   b, b                                        ; $5d67: $40
	ld   b, d                                        ; $5d68: $42
	add  b                                           ; $5d69: $80

jr_070_5d6a:
	ld   d, d                                        ; $5d6a: $52
	inc  bc                                          ; $5d6b: $03
	jp   nz, $e242                                   ; $5d6c: $c2 $42 $e2

	jp   nz, $f280                                   ; $5d6f: $c2 $80 $f2

	inc  bc                                          ; $5d72: $03
	ldh  [c], a                                      ; $5d73: $e2
	ldh  a, [c]                                      ; $5d74: $f2
	ld   [$8094], a                                  ; $5d75: $ea $94 $80
	db   $ec                                         ; $5d78: $ec
	add  b                                           ; $5d79: $80
	call nz, $fc80                                   ; $5d7a: $c4 $80 $fc
	inc  bc                                          ; $5d7d: $03
	add  b                                           ; $5d7e: $80
	add  h                                           ; $5d7f: $84
	or   b                                           ; $5d80: $b0
	add  h                                           ; $5d81: $84
	add  b                                           ; $5d82: $80
	db   $ec                                         ; $5d83: $ec
	inc  bc                                          ; $5d84: $03
	or   h                                           ; $5d85: $b4
	db   $fc                                         ; $5d86: $fc
	ei                                               ; $5d87: $fb
	ld   b, h                                        ; $5d88: $44
	add  b                                           ; $5d89: $80
	ld   e, e                                        ; $5d8a: $5b
	add  b                                           ; $5d8b: $80
	ld   d, c                                        ; $5d8c: $51
	add  b                                           ; $5d8d: $80
	ld   e, a                                        ; $5d8e: $5f
	add  b                                           ; $5d8f: $80

jr_070_5d90:
	ld   b, b                                        ; $5d90: $40
	ld   bc, $405b                                   ; $5d91: $01 $5b $40

jr_070_5d94:
	add  b                                           ; $5d94: $80
	ld   d, [hl]                                     ; $5d95: $56
	inc  bc                                          ; $5d96: $03
	and  h                                           ; $5d97: $a4
	nop                                              ; $5d98: $00
	cp   e                                           ; $5d99: $bb
	ld   b, h                                        ; $5d9a: $44
	add  b                                           ; $5d9b: $80
	cp   e                                           ; $5d9c: $bb
	add  b                                           ; $5d9d: $80
	ld   de, $ff80                                   ; $5d9e: $11 $80 $ff
	add  b                                           ; $5da1: $80
	nop                                              ; $5da2: $00
	ld   bc, $016c                                   ; $5da3: $01 $6c $01
	add  b                                           ; $5da6: $80
	db   $db                                         ; $5da7: $db
	ld   [bc], a                                     ; $5da8: $02
	sub  d                                           ; $5da9: $92
	nop                                              ; $5daa: $00

jr_070_5dab:
	ld   b, c                                        ; $5dab: $41
	add  b                                           ; $5dac: $80
	ld   bc, $0501                                   ; $5dad: $01 $01 $05
	inc  b                                           ; $5db0: $04
	add  b                                           ; $5db1: $80
	ld   b, $82                                      ; $5db2: $06 $82
	ld   c, $02                                      ; $5db4: $0e $02
	nop                                              ; $5db6: $00
	ret  nz                                          ; $5db7: $c0

	add  b                                           ; $5db8: $80
	add  b                                           ; $5db9: $80
	nop                                              ; $5dba: $00
	add  b                                           ; $5dbb: $80
	ld   a, [hl]                                     ; $5dbc: $7e
	add  b                                           ; $5dbd: $80
	ld   a, a                                        ; $5dbe: $7f
	add  b                                           ; $5dbf: $80
	ld   a, [hl]                                     ; $5dc0: $7e
	add  b                                           ; $5dc1: $80

jr_070_5dc2:
	ld   a, a                                        ; $5dc2: $7f
	add  b                                           ; $5dc3: $80
	rst  $38                                         ; $5dc4: $ff
	add  b                                           ; $5dc5: $80
	nop                                              ; $5dc6: $00
	add  b                                           ; $5dc7: $80
	ldh  a, [$80]                                    ; $5dc8: $f0 $80
	nop                                              ; $5dca: $00
	add  b                                           ; $5dcb: $80
	cp   $80                                         ; $5dcc: $fe $80
	ld   a, [hl]                                     ; $5dce: $7e
	add  b                                           ; $5dcf: $80
	cp   $80                                         ; $5dd0: $fe $80
	ld   a, a                                        ; $5dd2: $7f
	add  b                                           ; $5dd3: $80
	rst  $38                                         ; $5dd4: $ff
	add  b                                           ; $5dd5: $80
	nop                                              ; $5dd6: $00
	add  b                                           ; $5dd7: $80
	ldh  a, [$80]                                    ; $5dd8: $f0 $80
	nop                                              ; $5dda: $00
	add  b                                           ; $5ddb: $80
	and  a                                           ; $5ddc: $a7
	add  b                                           ; $5ddd: $80
	rst  ToBoot                                         ; $5dde: $c7
	add  b                                           ; $5ddf: $80
	and  a                                           ; $5de0: $a7
	add  b                                           ; $5de1: $80
	rst  ToBoot                                         ; $5de2: $c7
	add  b                                           ; $5de3: $80
	rst  $38                                         ; $5de4: $ff
	add  b                                           ; $5de5: $80
	nop                                              ; $5de6: $00
	add  b                                           ; $5de7: $80
	jr   c, jr_070_5d6a                              ; $5de8: $38 $80

	nop                                              ; $5dea: $00
	add  b                                           ; $5deb: $80
	ld   a, $80                                      ; $5dec: $3e $80
	dec  a                                           ; $5dee: $3d
	add  b                                           ; $5def: $80
	ld   a, $80                                      ; $5df0: $3e $80
	dec  a                                           ; $5df2: $3d
	add  b                                           ; $5df3: $80
	rst  $38                                         ; $5df4: $ff
	add  b                                           ; $5df5: $80
	nop                                              ; $5df6: $00
	add  b                                           ; $5df7: $80
	ld   [hl], b                                     ; $5df8: $70
	add  b                                           ; $5df9: $80
	dec  de                                          ; $5dfa: $1b
	add  b                                           ; $5dfb: $80
	ld   c, [hl]                                     ; $5dfc: $4e
	add  b                                           ; $5dfd: $80
	ld   c, h                                        ; $5dfe: $4c
	add  b                                           ; $5dff: $80
	ld   c, [hl]                                     ; $5e00: $4e
	add  b                                           ; $5e01: $80
	ld   c, h                                        ; $5e02: $4c
	add  b                                           ; $5e03: $80
	rst  $38                                         ; $5e04: $ff
	add  b                                           ; $5e05: $80
	nop                                              ; $5e06: $00
	add  b                                           ; $5e07: $80
	ld   c, $80                                      ; $5e08: $0e $80
	ret  c                                           ; $5e0a: $d8

	add  b                                           ; $5e0b: $80
	inc  d                                           ; $5e0c: $14
	add  b                                           ; $5e0d: $80
	jr   jr_070_5d90                                 ; $5e0e: $18 $80

	inc  d                                           ; $5e10: $14
	add  b                                           ; $5e11: $80
	jr   jr_070_5d94                                 ; $5e12: $18 $80

	rst  $38                                         ; $5e14: $ff
	add  b                                           ; $5e15: $80
	nop                                              ; $5e16: $00
	add  b                                           ; $5e17: $80
	inc  e                                           ; $5e18: $1c
	add  b                                           ; $5e19: $80
	nop                                              ; $5e1a: $00
	add  b                                           ; $5e1b: $80
	ld   a, [hl]                                     ; $5e1c: $7e
	add  b                                           ; $5e1d: $80
	ld   l, $80                                      ; $5e1e: $2e $80
	ld   a, [hl]                                     ; $5e20: $7e
	add  b                                           ; $5e21: $80
	ld   l, $80                                      ; $5e22: $2e $80
	rst  $38                                         ; $5e24: $ff
	add  b                                           ; $5e25: $80
	nop                                              ; $5e26: $00
	add  b                                           ; $5e27: $80
	rrca                                             ; $5e28: $0f
	add  b                                           ; $5e29: $80
	nop                                              ; $5e2a: $00
	add  b                                           ; $5e2b: $80
	ld   b, h                                        ; $5e2c: $44
	add  b                                           ; $5e2d: $80
	add  h                                           ; $5e2e: $84
	add  b                                           ; $5e2f: $80
	ld   b, h                                        ; $5e30: $44
	add  b                                           ; $5e31: $80
	add  h                                           ; $5e32: $84
	add  b                                           ; $5e33: $80
	rst  $38                                         ; $5e34: $ff
	add  b                                           ; $5e35: $80
	nop                                              ; $5e36: $00
	add  b                                           ; $5e37: $80
	rrca                                             ; $5e38: $0f
	add  b                                           ; $5e39: $80
	nop                                              ; $5e3a: $00
	nop                                              ; $5e3b: $00
	ld   [bc], a                                     ; $5e3c: $02
	add  b                                           ; $5e3d: $80
	nop                                              ; $5e3e: $00
	add  b                                           ; $5e3f: $80
	jr   nz, jr_070_5dc2                             ; $5e40: $20 $80

	ld   h, b                                        ; $5e42: $60
	add  d                                           ; $5e43: $82
	ld   [hl], b                                     ; $5e44: $70
	ld   [bc], a                                     ; $5e45: $02
	nop                                              ; $5e46: $00
	inc  bc                                          ; $5e47: $03
	ld   bc, $0080                                   ; $5e48: $01 $80 $00
	db   $10                                         ; $5e4b: $10
	ld   d, h                                        ; $5e4c: $54
	cp   $00                                         ; $5e4d: $fe $00
	cp   $01                                         ; $5e4f: $fe $01
	rst  $38                                         ; $5e51: $ff
	nop                                              ; $5e52: $00
	rst  $38                                         ; $5e53: $ff
	ld   b, h                                        ; $5e54: $44
	rst  $38                                         ; $5e55: $ff
	xor  d                                           ; $5e56: $aa
	rst  $38                                         ; $5e57: $ff
	xor  d                                           ; $5e58: $aa
	rst  $38                                         ; $5e59: $ff
	xor  $ff                                         ; $5e5a: $ee $ff
	rrca                                             ; $5e5c: $0f
	add  b                                           ; $5e5d: $80
	ld   c, $07                                      ; $5e5e: $0e $07
	nop                                              ; $5e60: $00
	ld   bc, $0607                                   ; $5e61: $01 $07 $06
	nop                                              ; $5e64: $00
	inc  bc                                          ; $5e65: $03
	rrca                                             ; $5e66: $0f
	inc  c                                           ; $5e67: $0c
	add  c                                           ; $5e68: $81
	nop                                              ; $5e69: $00
	ld   [bc], a                                     ; $5e6a: $02
	rlca                                             ; $5e6b: $07
	rrca                                             ; $5e6c: $0f
	ld   hl, sp-$80                                  ; $5e6d: $f8 $80
	jr   c, jr_070_5e78                              ; $5e6f: $38 $07

	nop                                              ; $5e71: $00
	add  e                                           ; $5e72: $83
	adc  a                                           ; $5e73: $8f
	inc  c                                           ; $5e74: $0c
	nop                                              ; $5e75: $00
	add  b                                           ; $5e76: $80
	sbc  a                                           ; $5e77: $9f

jr_070_5e78:
	rra                                              ; $5e78: $1f
	add  c                                           ; $5e79: $81
	nop                                              ; $5e7a: $00
	inc  c                                           ; $5e7b: $0c
	add  b                                           ; $5e7c: $80
	adc  a                                           ; $5e7d: $8f
	cpl                                              ; $5e7e: $2f
	db   $e3                                         ; $5e7f: $e3
	jp   Boot                                        ; $5e80: $c3 $00 $01


	rra                                              ; $5e83: $1f
	ld   e, $00                                      ; $5e84: $1e $00
	ldh  [$e3], a                                    ; $5e86: $e0 $e3
	inc  bc                                          ; $5e88: $03
	add  c                                           ; $5e89: $81
	nop                                              ; $5e8a: $00
	inc  c                                           ; $5e8b: $0c
	ld   a, h                                        ; $5e8c: $7c
	db   $fc                                         ; $5e8d: $fc
	ld   bc, $0e8f                                   ; $5e8e: $01 $8f $0e
	nop                                              ; $5e91: $00
	add  b                                           ; $5e92: $80
	adc  a                                           ; $5e93: $8f
	rrca                                             ; $5e94: $0f
	nop                                              ; $5e95: $00
	inc  a                                           ; $5e96: $3c
	db   $fc                                         ; $5e97: $fc
	ret  nz                                          ; $5e98: $c0

	add  c                                           ; $5e99: $81
	nop                                              ; $5e9a: $00
	inc  c                                           ; $5e9b: $0c
	dec  bc                                          ; $5e9c: $0b
	rst  $38                                         ; $5e9d: $ff
	rst  $30                                         ; $5e9e: $f7
	rra                                              ; $5e9f: $1f
	inc  e                                           ; $5ea0: $1c
	nop                                              ; $5ea1: $00
	ldh  [$e3], a                                    ; $5ea2: $e0 $e3
	inc  bc                                          ; $5ea4: $03
	nop                                              ; $5ea5: $00
	rrca                                             ; $5ea6: $0f
	rst  $38                                         ; $5ea7: $ff
	ldh  a, [$81]                                    ; $5ea8: $f0 $81
	nop                                              ; $5eaa: $00
	inc  c                                           ; $5eab: $0c
	ldh  [$e7], a                                    ; $5eac: $e0 $e7
	inc  b                                           ; $5eae: $04
	rra                                              ; $5eaf: $1f
	inc  e                                           ; $5eb0: $1c
	nop                                              ; $5eb1: $00
	ld   a, b                                        ; $5eb2: $78
	ld   hl, sp-$80                                  ; $5eb3: $f8 $80
	nop                                              ; $5eb5: $00
	add  c                                           ; $5eb6: $81
	sbc  a                                           ; $5eb7: $9f
	ld   e, $81                                      ; $5eb8: $1e $81
	nop                                              ; $5eba: $00
	inc  c                                           ; $5ebb: $0c
	cp   [hl]                                        ; $5ebc: $be
	cp   $c1                                         ; $5ebd: $fe $c1

jr_070_5ebf:
	adc  a                                           ; $5ebf: $8f
	ld   c, $00                                      ; $5ec0: $0e $00
	ld   c, $fe                                      ; $5ec2: $0e $fe
	ldh  a, [rP1]                                    ; $5ec4: $f0 $00
	ld   hl, sp-$07                                  ; $5ec6: $f8 $f9
	ld   bc, $0081                                   ; $5ec8: $01 $81 $00
	dec  c                                           ; $5ecb: $0d
	dec  bc                                          ; $5ecc: $0b
	ld   a, a                                        ; $5ecd: $7f
	or   h                                           ; $5ece: $b4
	jp   $0003                                       ; $5ecf: $c3 $03 $00


	inc  bc                                          ; $5ed2: $03
	rra                                              ; $5ed3: $1f
	inc  e                                           ; $5ed4: $1c
	nop                                              ; $5ed5: $00
	ld   l, $fe                                      ; $5ed6: $2e $fe
	jp   nc, $8002                                   ; $5ed8: $d2 $02 $80

	nop                                              ; $5edb: $00
	nop                                              ; $5edc: $00
	ldh  [$80], a                                    ; $5edd: $e0 $80
	rst  $20                                         ; $5edf: $e7
	add  hl, bc                                      ; $5ee0: $09
	db   $e3                                         ; $5ee1: $e3
	inc  bc                                          ; $5ee2: $03
	nop                                              ; $5ee3: $00
	add  e                                           ; $5ee4: $83
	adc  a                                           ; $5ee5: $8f
	inc  c                                           ; $5ee6: $0c
	nop                                              ; $5ee7: $00
	ld   e, $7e                                      ; $5ee8: $1e $7e
	ld   h, d                                        ; $5eea: $62
	add  b                                           ; $5eeb: $80
	ld   [bc], a                                     ; $5eec: $02
	nop                                              ; $5eed: $00
	inc  bc                                          ; $5eee: $03
	add  b                                           ; $5eef: $80
	db   $fd                                         ; $5ef0: $fd
	inc  bc                                          ; $5ef1: $03
	jp   Jump_070_42c7                               ; $5ef2: $c3 $c7 $42


	ld   h, a                                        ; $5ef5: $67
	add  c                                           ; $5ef6: $81
	xor  a                                           ; $5ef7: $af
	inc  c                                           ; $5ef8: $0c
	adc  a                                           ; $5ef9: $8f
	sbc  a                                           ; $5efa: $9f
	rst  JumpTable                                         ; $5efb: $df
	ld   c, [hl]                                     ; $5efc: $4e
	rra                                              ; $5efd: $1f
	inc  b                                           ; $5efe: $04
	ccf                                              ; $5eff: $3f
	nop                                              ; $5f00: $00
	ccf                                              ; $5f01: $3f
	or   [hl]                                        ; $5f02: $b6
	db   $e3                                         ; $5f03: $e3
	and  d                                           ; $5f04: $a2
	and  $81                                         ; $5f05: $e6 $81
	push af                                          ; $5f07: $f5
	add  hl, bc                                      ; $5f08: $09
	pop  af                                          ; $5f09: $f1
	ld   sp, hl                                      ; $5f0a: $f9
	ei                                               ; $5f0b: $fb
	ld   [$44f8], a                                  ; $5f0c: $ea $f8 $44
	db   $fc                                         ; $5f0f: $fc
	nop                                              ; $5f10: $00
	db   $fc                                         ; $5f11: $fc
	and  h                                           ; $5f12: $a4
	add  c                                           ; $5f13: $81
	nop                                              ; $5f14: $00
	ld   [bc], a                                     ; $5f15: $02
	ld   bc, $0e0f                                   ; $5f16: $01 $0f $0e
	add  h                                           ; $5f19: $84
	nop                                              ; $5f1a: $00
	add  b                                           ; $5f1b: $80
	rlca                                             ; $5f1c: $07
	ld   bc, $f000                                   ; $5f1d: $01 $00 $f0
	add  c                                           ; $5f20: $81
	nop                                              ; $5f21: $00
	add  b                                           ; $5f22: $80
	db   $fc                                         ; $5f23: $fc
	add  d                                           ; $5f24: $82
	inc  b                                           ; $5f25: $04
	add  b                                           ; $5f26: $80
	nop                                              ; $5f27: $00
	inc  bc                                          ; $5f28: $03
	cpl                                              ; $5f29: $2f
	rst  $38                                         ; $5f2a: $ff
	ret  nc                                          ; $5f2b: $d0

	nop                                              ; $5f2c: $00
	add  b                                           ; $5f2d: $80
	inc  b                                           ; $5f2e: $04
	add  b                                           ; $5f2f: $80
	nop                                              ; $5f30: $00
	ld   [bc], a                                     ; $5f31: $02
	dec  d                                           ; $5f32: $15
	rst  $38                                         ; $5f33: $ff
	ld   [$0083], a                                  ; $5f34: $ea $83 $00
	inc  bc                                          ; $5f37: $03
	ldh  [$e7], a                                    ; $5f38: $e0 $e7
	daa                                              ; $5f3a: $27
	jr   nz, jr_070_5ebf                             ; $5f3b: $20 $82

	nop                                              ; $5f3d: $00
	ld   [bc], a                                     ; $5f3e: $02
	ldh  a, [$f3]                                    ; $5f3f: $f0 $f3
	inc  de                                          ; $5f41: $13
	add  c                                           ; $5f42: $81
	db   $10                                         ; $5f43: $10
	add  b                                           ; $5f44: $80
	nop                                              ; $5f45: $00
	inc  bc                                          ; $5f46: $03
	ld   e, a                                        ; $5f47: $5f
	rst  $38                                         ; $5f48: $ff
	and  b                                           ; $5f49: $a0
	nop                                              ; $5f4a: $00
	add  c                                           ; $5f4b: $81
	jr   nz, jr_070_5f4e                             ; $5f4c: $20 $00

jr_070_5f4e:
	ld   h, b                                        ; $5f4e: $60
	add  b                                           ; $5f4f: $80
	ld   b, a                                        ; $5f50: $47
	nop                                              ; $5f51: $00
	ld   b, h                                        ; $5f52: $44
	add  b                                           ; $5f53: $80
	inc  b                                           ; $5f54: $04
	ld   b, $84                                      ; $5f55: $06 $84
	ld   [$1898], sp                                 ; $5f57: $08 $98 $18
	ret  c                                           ; $5f5a: $d8

	ret  nc                                          ; $5f5b: $d0

	ret  z                                           ; $5f5c: $c8

	ld   h, b                                        ; $5f5d: $60
	ld   [bc], a                                     ; $5f5e: $02
	add  [hl]                                        ; $5f5f: $86
	nop                                              ; $5f60: $00
	ld   [bc], a                                     ; $5f61: $02
	rrca                                             ; $5f62: $0f
	nop                                              ; $5f63: $00
	ld   bc, $0083                                   ; $5f64: $01 $83 $00
	nop                                              ; $5f67: $00
	ld   c, $85                                      ; $5f68: $0e $85

jr_070_5f6a:
	nop                                              ; $5f6a: $00
	inc  b                                           ; $5f6b: $04
	rst  $38                                         ; $5f6c: $ff
	nop                                              ; $5f6d: $00
	ldh  a, [rP1]                                    ; $5f6e: $f0 $00
	and  b                                           ; $5f70: $a0
	add  c                                           ; $5f71: $81
	nop                                              ; $5f72: $00
	nop                                              ; $5f73: $00
	xor  a                                           ; $5f74: $af
	add  l                                           ; $5f75: $85
	nop                                              ; $5f76: $00
	ld   [$1ef1], sp                                 ; $5f77: $08 $f1 $1e
	inc  e                                           ; $5f7a: $1c
	ld   l, $26                                      ; $5f7b: $2e $26
	ld   d, l                                        ; $5f7d: $55
	ld   d, c                                        ; $5f7e: $51
	dec  sp                                          ; $5f7f: $3b
	call nz, $0085                                   ; $5f80: $c4 $85 $00
	ld   [$ee11], sp                                 ; $5f83: $08 $11 $ee
	adc  $ee                                         ; $5f86: $ce $ee
	ld   h, h                                        ; $5f88: $64
	ld   d, h                                        ; $5f89: $54
	db   $10                                         ; $5f8a: $10
	cp   b                                           ; $5f8b: $b8
	ld   b, a                                        ; $5f8c: $47
	add  l                                           ; $5f8d: $85
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	rst  $38                                         ; $5f90: $ff
	add  d                                           ; $5f91: $82
	db   $10                                         ; $5f92: $10
	add  b                                           ; $5f93: $80
	ld   de, $1301                                   ; $5f94: $11 $01 $13
	db   $ec                                         ; $5f97: $ec
	add  l                                           ; $5f98: $85
	nop                                              ; $5f99: $00
	ld   [$02df], sp                                 ; $5f9a: $08 $df $02
	add  d                                           ; $5f9d: $82
	add  b                                           ; $5f9e: $80
	and  b                                           ; $5f9f: $a0
	add  b                                           ; $5fa0: $80
	nop                                              ; $5fa1: $00
	ld   hl, sp+$07                                  ; $5fa2: $f8 $07
	add  l                                           ; $5fa4: $85
	nop                                              ; $5fa5: $00
	nop                                              ; $5fa6: $00
	rst  $38                                         ; $5fa7: $ff
	add  d                                           ; $5fa8: $82
	ccf                                              ; $5fa9: $3f
	inc  bc                                          ; $5faa: $03
	nop                                              ; $5fab: $00
	add  b                                           ; $5fac: $80
	cp   a                                           ; $5fad: $bf
	ret  nz                                          ; $5fae: $c0

	add  l                                           ; $5faf: $85
	nop                                              ; $5fb0: $00
	nop                                              ; $5fb1: $00
	rst  $38                                         ; $5fb2: $ff
	add  b                                           ; $5fb3: $80
	ld   hl, sp-$80                                  ; $5fb4: $f8 $80
	ldh  a, [$80]                                    ; $5fb6: $f0 $80
	nop                                              ; $5fb8: $00
	ld   bc, $07f8                                   ; $5fb9: $01 $f8 $07
	add  l                                           ; $5fbc: $85
	nop                                              ; $5fbd: $00
	ld   bc, $00ff                                   ; $5fbe: $01 $ff $00
	add  b                                           ; $5fc1: $80
	inc  b                                           ; $5fc2: $04
	add  d                                           ; $5fc3: $82
	nop                                              ; $5fc4: $00
	nop                                              ; $5fc5: $00
	rst  $38                                         ; $5fc6: $ff
	add  l                                           ; $5fc7: $85
	nop                                              ; $5fc8: $00
	rlca                                             ; $5fc9: $07
	sub  l                                           ; $5fca: $95
	dec  d                                           ; $5fcb: $15
	xor  e                                           ; $5fcc: $ab
	dec  hl                                          ; $5fcd: $2b
	xor  e                                           ; $5fce: $ab
	dec  hl                                          ; $5fcf: $2b
	rst  $10                                         ; $5fd0: $d7
	ld   d, a                                        ; $5fd1: $57
	add  [hl]                                        ; $5fd2: $86
	nop                                              ; $5fd3: $00
	ld   bc, $b8c7                                   ; $5fd4: $01 $c7 $b8
	add  b                                           ; $5fd7: $80
	cp   h                                           ; $5fd8: $bc
	ld   bc, $7cfc                                   ; $5fd9: $01 $fc $7c
	add  b                                           ; $5fdc: $80
	ld   a, b                                        ; $5fdd: $78
	nop                                              ; $5fde: $00
	rst  $38                                         ; $5fdf: $ff
	add  l                                           ; $5fe0: $85
	nop                                              ; $5fe1: $00
	ld   [bc], a                                     ; $5fe2: $02
	pop  af                                          ; $5fe3: $f1
	db   $10                                         ; $5fe4: $10
	jr   jr_070_5f6a                                 ; $5fe5: $18 $83

	ld   e, $00                                      ; $5fe7: $1e $00
	rst  $20                                         ; $5fe9: $e7
	add  l                                           ; $5fea: $85
	nop                                              ; $5feb: $00
	add  b                                           ; $5fec: $80
	ld   [bc], a                                     ; $5fed: $02
	ld   bc, $02fe                                   ; $5fee: $01 $fe $02
	add  b                                           ; $5ff1: $80
	cp   $02                                         ; $5ff2: $fe $02
	ld   b, $fe                                      ; $5ff4: $06 $fe
	inc  b                                           ; $5ff6: $04
	add  l                                           ; $5ff7: $85
	nop                                              ; $5ff8: $00
	ld   [bc], a                                     ; $5ff9: $02
	and  e                                           ; $5ffa: $a3
	pop  bc                                          ; $5ffb: $c1
	db   $dd                                         ; $5ffc: $dd
	add  b                                           ; $5ffd: $80
	pop  bc                                          ; $5ffe: $c1
	nop                                              ; $5fff: $00
	ret  nz                                          ; $6000: $c0

	add  b                                           ; $6001: $80
	rst  JumpTable                                         ; $6002: $df
	nop                                              ; $6003: $00
	ld   a, a                                        ; $6004: $7f
	add  l                                           ; $6005: $85
	nop                                              ; $6006: $00
	ld   [$a440], sp                                 ; $6007: $08 $40 $a4
	add  h                                           ; $600a: $84
	or   h                                           ; $600b: $b4
	inc  [hl]                                        ; $600c: $34
	ld   d, e                                        ; $600d: $53
	ld   b, e                                        ; $600e: $43
	ld   e, b                                        ; $600f: $58
	xor  b                                           ; $6010: $a8
	add  [hl]                                        ; $6011: $86
	nop                                              ; $6012: $00
	add  b                                           ; $6013: $80
	ld   bc, $0080                                   ; $6014: $01 $80 $00
	add  b                                           ; $6017: $80
	rst  $38                                         ; $6018: $ff
	add  b                                           ; $6019: $80
	nop                                              ; $601a: $00
	nop                                              ; $601b: $00
	rrca                                             ; $601c: $0f
	add  b                                           ; $601d: $80
	nop                                              ; $601e: $00
	add  h                                           ; $601f: $84
	rrca                                             ; $6020: $0f
	add  c                                           ; $6021: $81
	nop                                              ; $6022: $00
	add  d                                           ; $6023: $82
	rrca                                             ; $6024: $0f
	nop                                              ; $6025: $00
	ldh  a, [$80]                                    ; $6026: $f0 $80
	nop                                              ; $6028: $00
	add  b                                           ; $6029: $80
	ret  nz                                          ; $602a: $c0

	add  b                                           ; $602b: $80
	add  b                                           ; $602c: $80
	add  b                                           ; $602d: $80
	add  e                                           ; $602e: $83
	add  d                                           ; $602f: $82
	inc  bc                                          ; $6030: $03
	inc  b                                           ; $6031: $04
	rlca                                             ; $6032: $07
	inc  bc                                          ; $6033: $03
	inc  b                                           ; $6034: $04
	ld   l, [hl]                                     ; $6035: $6e
	sub  c                                           ; $6036: $91
	add  c                                           ; $6037: $81
	rst  $38                                         ; $6038: $ff
	ld   b, $fc                                      ; $6039: $06 $fc
	inc  bc                                          ; $603b: $03
	ld   e, c                                        ; $603c: $59
	ld   h, a                                        ; $603d: $67
	ld   b, c                                        ; $603e: $41
	ld   a, a                                        ; $603f: $7f
	nop                                              ; $6040: $00

jr_070_6041:
	add  c                                           ; $6041: $81
	rst  $38                                         ; $6042: $ff
	ld   b, $00                                      ; $6043: $06 $00
	db   $ec                                         ; $6045: $ec
	inc  l                                           ; $6046: $2c
	call c, $8c9c                                    ; $6047: $dc $9c $8c
	inc  c                                           ; $604a: $0c
	add  b                                           ; $604b: $80
	adc  h                                           ; $604c: $8c
	add  b                                           ; $604d: $80
	add  h                                           ; $604e: $84
	ld   [bc], a                                     ; $604f: $02
	add  b                                           ; $6050: $80
	ld   bc, $8081                                   ; $6051: $01 $81 $80
	ld   [bc], a                                     ; $6054: $02
	dec  b                                           ; $6055: $05
	inc  b                                           ; $6056: $04
	dec  e                                           ; $6057: $1d
	dec  d                                           ; $6058: $15
	inc  e                                           ; $6059: $1c
	stop                                             ; $605a: $10 $00
	add  b                                           ; $605c: $80
	ld   a, [hl]                                     ; $605d: $7e
	add  c                                           ; $605e: $81
	cp   $05                                         ; $605f: $fe $05
	db   $fd                                         ; $6061: $fd
	rlca                                             ; $6062: $07
	ld   [bc], a                                     ; $6063: $02
	ld   [hl], $06                                   ; $6064: $36 $06
	ld   [hl], $80                                   ; $6066: $36 $80
	db   $fc                                         ; $6068: $fc
	dec  b                                           ; $6069: $05
	nop                                              ; $606a: $00
	ret  c                                           ; $606b: $d8

	ld   b, b                                        ; $606c: $40
	ld   h, b                                        ; $606d: $60
	ld   bc, $80f9                                   ; $606e: $01 $f9 $80
	nop                                              ; $6071: $00
	add  b                                           ; $6072: $80
	ld   [hl], h                                     ; $6073: $74
	inc  b                                           ; $6074: $04
	sbc  d                                           ; $6075: $9a
	ld   a, [$259a]                                  ; $6076: $fa $9a $25
	rst  $38                                         ; $6079: $ff
	add  b                                           ; $607a: $80
	ld   [hl], a                                     ; $607b: $77
	ld   [$1f3f], sp                                 ; $607c: $08 $3f $1f
	ld   c, $0f                                      ; $607f: $0e $0f
	add  l                                           ; $6081: $85
	add  a                                           ; $6082: $87
	ld   b, d                                        ; $6083: $42
	ld   d, a                                        ; $6084: $57
	ld   d, $80                                      ; $6085: $16 $80
	dec  d                                           ; $6087: $15
	ld   [bc], a                                     ; $6088: $02
	jr   nz, @-$2e                                   ; $6089: $20 $d0

	ld   hl, sp-$80                                  ; $608b: $f8 $80
	ld   a, b                                        ; $608d: $78
	dec  b                                           ; $608e: $05
	ld   [$b8c8], sp                                 ; $608f: $08 $c8 $b8
	ldh  a, [rSVBK]                                  ; $6092: $f0 $70
	ldh  a, [$80]                                    ; $6094: $f0 $80
	ldh  [$80], a                                    ; $6096: $e0 $80
	ret  nz                                          ; $6098: $c0

	dec  b                                           ; $6099: $05
	ld   b, b                                        ; $609a: $40
	ret  nz                                          ; $609b: $c0

	sub  b                                           ; $609c: $90
	db   $10                                         ; $609d: $10
	ld   de, $8010                                   ; $609e: $11 $10 $80
	nop                                              ; $60a1: $00
	ld   bc, $0107                                   ; $60a2: $01 $07 $01
	add  b                                           ; $60a5: $80
	ld   b, c                                        ; $60a6: $41
	ld   [bc], a                                     ; $60a7: $02
	ld   c, b                                        ; $60a8: $48
	ld   b, e                                        ; $60a9: $43
	ld   [de], a                                     ; $60aa: $12
	add  c                                           ; $60ab: $81
	dec  c                                           ; $60ac: $0d
	dec  bc                                          ; $60ad: $0b
	cp   d                                           ; $60ae: $ba
	ld   d, a                                        ; $60af: $57
	xor  [hl]                                        ; $60b0: $ae
	xor  b                                           ; $60b1: $a8
	xor  d                                           ; $60b2: $aa
	and  d                                           ; $60b3: $a2
	adc  $5e                                         ; $60b4: $ce $5e
	ld   e, l                                        ; $60b6: $5d
	ld   a, l                                        ; $60b7: $7d
	dec  e                                           ; $60b8: $1d
	ld   e, l                                        ; $60b9: $5d
	add  b                                           ; $60ba: $80
	dec  hl                                          ; $60bb: $2b
	add  b                                           ; $60bc: $80
	inc  de                                          ; $60bd: $13
	add  b                                           ; $60be: $80
	jr   c, jr_070_6041                              ; $60bf: $38 $80

	db   $10                                         ; $60c1: $10
	add  b                                           ; $60c2: $80
	sub  b                                           ; $60c3: $90
	add  c                                           ; $60c4: $81
	pop  bc                                          ; $60c5: $c1
	ld   [bc], a                                     ; $60c6: $02

Call_070_60c7:
	ret  nz                                          ; $60c7: $c0

	pop  bc                                          ; $60c8: $c1
	jp   $8382                                       ; $60c9: $c3 $82 $83


	inc  bc                                          ; $60cc: $03
	dec  b                                           ; $60cd: $05
	ld   e, $18                                      ; $60ce: $1e $18
	nop                                              ; $60d0: $00
	add  d                                           ; $60d1: $82
	cp   $04                                         ; $60d2: $fe $04
	db   $fd                                         ; $60d4: $fd
	nop                                              ; $60d5: $00
	cp   $fc                                         ; $60d6: $fe $fc
	db   $fd                                         ; $60d8: $fd
	add  b                                           ; $60d9: $80
	db   $fc                                         ; $60da: $fc
	rlca                                             ; $60db: $07
	ld   hl, sp-$19                                  ; $60dc: $f8 $e7
	cp   $ea                                         ; $60de: $fe $ea
	ld   a, [de]                                     ; $60e0: $1a
	ld   e, $3c                                      ; $60e1: $1e $3c
	ccf                                              ; $60e3: $3f
	add  c                                           ; $60e4: $81
	ld   a, [hl]                                     ; $60e5: $7e
	ld   b, $76                                      ; $60e6: $06 $76
	ld   h, [hl]                                     ; $60e8: $66
	ld   a, [hl]                                     ; $60e9: $7e
	ld   b, [hl]                                     ; $60ea: $46
	ld   h, h                                        ; $60eb: $64
	jr   jr_070_6169                                 ; $60ec: $18 $7b

	add  d                                           ; $60ee: $82
	rst  JumpTable                                         ; $60ef: $df
	ld   bc, $dfc0                                   ; $60f0: $01 $c0 $df
	add  b                                           ; $60f3: $80
	ret  nz                                          ; $60f4: $c0

	nop                                              ; $60f5: $00
	ld   b, b                                        ; $60f6: $40
	add  b                                           ; $60f7: $80
	rrca                                             ; $60f8: $0f
	add  b                                           ; $60f9: $80
	rra                                              ; $60fa: $1f
	add  b                                           ; $60fb: $80
	ccf                                              ; $60fc: $3f
	dec  bc                                          ; $60fd: $0b
	and  h                                           ; $60fe: $a4
	db   $ec                                         ; $60ff: $ec
	db   $eb                                         ; $6100: $eb
	rst  $28                                         ; $6101: $ef
	ld   c, a                                        ; $6102: $4f
	scf                                              ; $6103: $37
	inc  a                                           ; $6104: $3c
	jr   jr_070_6121                                 ; $6105: $18 $1a

	ld   e, $d6                                      ; $6107: $1e $d6
	adc  $80                                         ; $6109: $ce $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $610b: $cf
	inc  bc                                          ; $610c: $03
	adc  $c6                                         ; $610d: $ce $c6
	inc  b                                           ; $610f: $04
	nop                                              ; $6110: $00
	add  d                                           ; $6111: $82
	rst  $38                                         ; $6112: $ff
	add  b                                           ; $6113: $80
	nop                                              ; $6114: $00
	add  d                                           ; $6115: $82
	xor  d                                           ; $6116: $aa
	add  b                                           ; $6117: $80
	rst  $38                                         ; $6118: $ff
	add  b                                           ; $6119: $80
	xor  d                                           ; $611a: $aa
	ld   bc, $00f0                                   ; $611b: $01 $f0 $00
	add  b                                           ; $611e: $80
	rrca                                             ; $611f: $0f
	add  b                                           ; $6120: $80

jr_070_6121:
	inc  c                                           ; $6121: $0c
	ld   bc, $0807                                   ; $6122: $01 $07 $08
	add  c                                           ; $6125: $81
	nop                                              ; $6126: $00
	ld   bc, $000f                                   ; $6127: $01 $0f $00
	add  b                                           ; $612a: $80
	dec  b                                           ; $612b: $05
	dec  c                                           ; $612c: $0d
	nop                                              ; $612d: $00
	db   $f4                                         ; $612e: $f4
	nop                                              ; $612f: $00
	ld   h, b                                        ; $6130: $60
	inc  bc                                          ; $6131: $03
	rlca                                             ; $6132: $07
	ld   h, c                                        ; $6133: $61
	adc  [hl]                                        ; $6134: $8e
	ldh  [$90], a                                    ; $6135: $e0 $90
	nop                                              ; $6137: $00
	ld   bc, $00fe                                   ; $6138: $01 $fe $00
	add  b                                           ; $613b: $80
	ld   d, [hl]                                     ; $613c: $56
	add  d                                           ; $613d: $82
	nop                                              ; $613e: $00
	add  c                                           ; $613f: $81
	rst  $38                                         ; $6140: $ff
	inc  c                                           ; $6141: $0c
	ld   a, a                                        ; $6142: $7f
	ccf                                              ; $6143: $3f
	add  a                                           ; $6144: $87
	ccf                                              ; $6145: $3f
	ld   a, e                                        ; $6146: $7b
	ld   a, h                                        ; $6147: $7c
	ld   hl, sp-$07                                  ; $6148: $f8 $f9
	ldh  a, [$f2]                                    ; $614a: $f0 $f2
	rlca                                             ; $614c: $07
	inc  b                                           ; $614d: $04
	nop                                              ; $614e: $00
	add  b                                           ; $614f: $80
	inc  bc                                          ; $6150: $03
	ld   de, $1206                                   ; $6151: $11 $06 $12
	jr   jr_070_6168                                 ; $6154: $18 $12

	nop                                              ; $6156: $00
	add  hl, de                                      ; $6157: $19
	nop                                              ; $6158: $00
	rst  ToBoot                                         ; $6159: $c7
	ld   b, b                                        ; $615a: $40
	ld   h, b                                        ; $615b: $60
	ldh  [rAUD1SWEEP], a                             ; $615c: $e0 $10
	ld   d, $19                                      ; $615e: $16 $19
	db   $10                                         ; $6160: $10
	rrca                                             ; $6161: $0f
	nop                                              ; $6162: $00
	ld   [bc], a                                     ; $6163: $02
	add  c                                           ; $6164: $81
	add  hl, bc                                      ; $6165: $09
	ld   c, $19                                      ; $6166: $0e $19

jr_070_6168:
	add  hl, bc                                      ; $6168: $09

jr_070_6169:
	dec  bc                                          ; $6169: $0b
	jr   z, jr_070_6173                              ; $616a: $28 $07

	nop                                              ; $616c: $00
	ccf                                              ; $616d: $3f
	ld   a, [$0005]                                  ; $616e: $fa $05 $00
	rst  $38                                         ; $6171: $ff
	nop                                              ; $6172: $00

jr_070_6173:
	ld   [$b715], sp                                 ; $6173: $08 $15 $b7
	add  b                                           ; $6176: $80
	ld   d, l                                        ; $6177: $55
	ld   a, [bc]                                     ; $6178: $0a
	ld   d, h                                        ; $6179: $54
	rst  $38                                         ; $617a: $ff
	ld   bc, $01fd                                   ; $617b: $01 $fd $01
	inc  a                                           ; $617e: $3c

jr_070_617f:
	add  b                                           ; $617f: $80
	ret  nz                                          ; $6180: $c0

	nop                                              ; $6181: $00
	add  d                                           ; $6182: $82
	ld   [bc], a                                     ; $6183: $02
	add  b                                           ; $6184: $80
	nop                                              ; $6185: $00
	add  b                                           ; $6186: $80
	dec  b                                           ; $6187: $05
	add  b                                           ; $6188: $80
	jp   hl                                          ; $6189: $e9


	inc  b                                           ; $618a: $04
	pop  af                                          ; $618b: $f1
	ld   [hl], c                                     ; $618c: $71
	ld   [hl], b                                     ; $618d: $70
	ldh  a, [rSB]                                    ; $618e: $f0 $01
	add  b                                           ; $6190: $80
	ld   b, c                                        ; $6191: $41
	nop                                              ; $6192: $00
	ld   bc, $0082                                   ; $6193: $01 $82 $00
	add  d                                           ; $6196: $82
	inc  b                                           ; $6197: $04
	add  d                                           ; $6198: $82
	ld   [$3901], sp                                 ; $6199: $08 $01 $39
	add  hl, bc                                      ; $619c: $09
	add  b                                           ; $619d: $80
	ld   a, [bc]                                     ; $619e: $0a
	add  hl, bc                                      ; $619f: $09
	ld   e, e                                        ; $61a0: $5b
	dec  de                                          ; $61a1: $1b
	ld   a, l                                        ; $61a2: $7d
	add  hl, bc                                      ; $61a3: $09
	ld   [bc], a                                     ; $61a4: $02
	inc  b                                           ; $61a5: $04
	ld   bc, $1802                                   ; $61a6: $01 $02 $18
	ld   de, $1080                                   ; $61a9: $11 $80 $10
	ld   bc, $e7ef                                   ; $61ac: $01 $ef $e7
	add  b                                           ; $61af: $80
	rlca                                             ; $61b0: $07
	add  b                                           ; $61b1: $80
	ld   b, $80                                      ; $61b2: $06 $80
	add  d                                           ; $61b4: $82
	add  b                                           ; $61b5: $80
	add  b                                           ; $61b6: $80
	add  b                                           ; $61b7: $80
	nop                                              ; $61b8: $00
	add  b                                           ; $61b9: $80
	add  c                                           ; $61ba: $81
	add  b                                           ; $61bb: $80
	add  e                                           ; $61bc: $83
	nop                                              ; $61bd: $00
	nop                                              ; $61be: $00
	add  b                                           ; $61bf: $80
	inc  bc                                          ; $61c0: $03
	add  e                                           ; $61c1: $83
	nop                                              ; $61c2: $00
	add  b                                           ; $61c3: $80
	ld   a, a                                        ; $61c4: $7f
	inc  bc                                          ; $61c5: $03
	db   $db                                         ; $61c6: $db
	sub  d                                           ; $61c7: $92
	db   $db                                         ; $61c8: $db
	sub  d                                           ; $61c9: $92
	add  b                                           ; $61ca: $80
	rst  $38                                         ; $61cb: $ff
	nop                                              ; $61cc: $00
	nop                                              ; $61cd: $00
	add  b                                           ; $61ce: $80
	ld   hl, sp-$7d                                  ; $61cf: $f8 $83
	nop                                              ; $61d1: $00
	add  b                                           ; $61d2: $80
	ldh  a, [$03]                                    ; $61d3: $f0 $03
	ld   l, b                                        ; $61d5: $68
	ld   c, b                                        ; $61d6: $48
	ld   l, h                                        ; $61d7: $6c
	ld   c, h                                        ; $61d8: $4c
	add  b                                           ; $61d9: $80
	cp   $01                                         ; $61da: $fe $01
	ld   h, [hl]                                     ; $61dc: $66
	jr   @-$7e                                       ; $61dd: $18 $80

	nop                                              ; $61df: $00
	add  c                                           ; $61e0: $81
	ld   a, [hl]                                     ; $61e1: $7e
	add  b                                           ; $61e2: $80
	nop                                              ; $61e3: $00
	add  b                                           ; $61e4: $80
	ld   a, [hl]                                     ; $61e5: $7e
	add  c                                           ; $61e6: $81
	nop                                              ; $61e7: $00
	inc  b                                           ; $61e8: $04

Jump_070_61e9:
	ld   b, b                                        ; $61e9: $40
	ccf                                              ; $61ea: $3f
	jr   c, jr_070_61ed                              ; $61eb: $38 $00

jr_070_61ed:
	db   $10                                         ; $61ed: $10
	add  c                                           ; $61ee: $81
	nop                                              ; $61ef: $00
	nop                                              ; $61f0: $00
	rlca                                             ; $61f1: $07
	add  c                                           ; $61f2: $81
	nop                                              ; $61f3: $00
	nop                                              ; $61f4: $00
	ld   d, a                                        ; $61f5: $57
	add  d                                           ; $61f6: $82
	rlca                                             ; $61f7: $07
	ld   [bc], a                                     ; $61f8: $02
	rst  $30                                         ; $61f9: $f7
	ld   [hl], d                                     ; $61fa: $72
	ld   a, [de]                                     ; $61fb: $1a
	add  b                                           ; $61fc: $80
	jr   jr_070_617f                                 ; $61fd: $18 $80

	dec  de                                          ; $61ff: $1b

Jump_070_6200:
	nop                                              ; $6200: $00
	sbc  b                                           ; $6201: $98
	add  c                                           ; $6202: $81
	nop                                              ; $6203: $00
	add  b                                           ; $6204: $80
	rst  $38                                         ; $6205: $ff
	rlca                                             ; $6206: $07
	rst  $20                                         ; $6207: $e7
	rst  ToBoot                                         ; $6208: $c7
	add  e                                           ; $6209: $83
	jp   $aaca                                       ; $620a: $c3 $ca $aa


jr_070_620d:
	jr   nz, jr_070_620f                             ; $620d: $20 $00

jr_070_620f:
	add  b                                           ; $620f: $80
	adc  e                                           ; $6210: $8b
	add  d                                           ; $6211: $82
	rlca                                             ; $6212: $07
	add  b                                           ; $6213: $80
	add  a                                           ; $6214: $87
	add  d                                           ; $6215: $82
	add  e                                           ; $6216: $83
	nop                                              ; $6217: $00
	ret  nc                                          ; $6218: $d0

	add  c                                           ; $6219: $81
	nop                                              ; $621a: $00
	add  b                                           ; $621b: $80
	rrca                                             ; $621c: $0f
	add  b                                           ; $621d: $80
	ld   c, $81                                      ; $621e: $0e $81
	nop                                              ; $6220: $00
	add  c                                           ; $6221: $81
	ld   c, $02                                      ; $6222: $0e $02
	nop                                              ; $6224: $00
	ld   c, $f0                                      ; $6225: $0e $f0
	add  c                                           ; $6227: $81
	nop                                              ; $6228: $00
	add  b                                           ; $6229: $80
	ld   a, a                                        ; $622a: $7f
	add  b                                           ; $622b: $80
	cp   $81                                         ; $622c: $fe $81
	nop                                              ; $622e: $00
	add  b                                           ; $622f: $80
	jp   $ff0b                                       ; $6230: $c3 $0b $ff


	nop                                              ; $6233: $00
	rst  $38                                         ; $6234: $ff
	push hl                                          ; $6235: $e5
	db   $e3                                         ; $6236: $e3
	adc  c                                           ; $6237: $89
	rlca                                             ; $6238: $07
	rla                                              ; $6239: $17
	rrca                                             ; $623a: $0f
	stop                                             ; $623b: $10 $00
	dec  c                                           ; $623d: $0d
	add  c                                           ; $623e: $81
	nop                                              ; $623f: $00
	dec  b                                           ; $6240: $05
	ld   [de], a                                     ; $6241: $12
	rra                                              ; $6242: $1f
	dec  e                                           ; $6243: $1d
	ld   e, $73                                      ; $6244: $1e $73
	ldh  a, [$80]                                    ; $6246: $f0 $80
	ld   hl, sp-$80                                  ; $6248: $f8 $80
	db   $fc                                         ; $624a: $fc
	add  b                                           ; $624b: $80
	nop                                              ; $624c: $00
	ld   bc, $00d8                                   ; $624d: $01 $d8 $00
	add  b                                           ; $6250: $80
	ld   bc, $2501                                   ; $6251: $01 $01 $25
	db   $fd                                         ; $6254: $fd
	add  b                                           ; $6255: $80
	db   $fc                                         ; $6256: $fc
	nop                                              ; $6257: $00
	nop                                              ; $6258: $00
	add  b                                           ; $6259: $80
	ld   a, a                                        ; $625a: $7f
	inc  bc                                          ; $625b: $03
	nop                                              ; $625c: $00
	ld   b, b                                        ; $625d: $40
	ccf                                              ; $625e: $3f
	cp   a                                           ; $625f: $bf
	add  b                                           ; $6260: $80
	sub  l                                           ; $6261: $95
	add  b                                           ; $6262: $80
	sbc  a                                           ; $6263: $9f
	dec  b                                           ; $6264: $05
	or   l                                           ; $6265: $b5
	add  e                                           ; $6266: $83
	cp   a                                           ; $6267: $bf
	ccf                                              ; $6268: $3f
	ld   [hl], $40                                   ; $6269: $36 $40
	add  b                                           ; $626b: $80
	db   $fc                                         ; $626c: $fc
	ld   bc, $0400                                   ; $626d: $01 $00 $04
	add  b                                           ; $6270: $80

jr_070_6271:
	ld   sp, hl                                      ; $6271: $f9
	add  b                                           ; $6272: $80

jr_070_6273:
	ld   d, c                                        ; $6273: $51
	add  b                                           ; $6274: $80
	ld   sp, hl                                      ; $6275: $f9
	inc  b                                           ; $6276: $04
	ld   d, c                                        ; $6277: $51
	ld   d, b                                        ; $6278: $50
	ld   sp, hl                                      ; $6279: $f9
	rst  $38                                         ; $627a: $ff
	inc  bc                                          ; $627b: $03
	add  c                                           ; $627c: $81
	nop                                              ; $627d: $00
	inc  bc                                          ; $627e: $03
	jr   nc, jr_070_6271                             ; $627f: $30 $f0

	jr   nc, jr_070_6273                             ; $6281: $30 $f0

	add  c                                           ; $6283: $81
	db   $10                                         ; $6284: $10
	ld   bc, $1000                                   ; $6285: $01 $00 $10
	add  d                                           ; $6288: $82
	jr   nc, jr_070_620d                             ; $6289: $30 $82

	db   $10                                         ; $628b: $10
	ld   de, $2120                                   ; $628c: $11 $20 $21
	jr   nz, jr_070_62b3                             ; $628f: $20 $22

	ld   b, [hl]                                     ; $6291: $46
	ld   b, d                                        ; $6292: $42
	ld   c, h                                        ; $6293: $4c
	ld   b, a                                        ; $6294: $47
	sub  [hl]                                        ; $6295: $96
	add  [hl]                                        ; $6296: $86
	xor  d                                           ; $6297: $aa
	adc  [hl]                                        ; $6298: $8e
	ld   [hl+], a                                    ; $6299: $22
	ld   [hl-], a                                    ; $629a: $32
	inc  de                                          ; $629b: $13
	ld   d, d                                        ; $629c: $52
	jp   nc, $8052                                   ; $629d: $d2 $52 $80

	sub  b                                           ; $62a0: $90
	add  b                                           ; $62a1: $80
	sub  d                                           ; $62a2: $92
	add  b                                           ; $62a3: $80
	ld   [de], a                                     ; $62a4: $12
	add  d                                           ; $62a5: $82
	jr   nc, jr_070_62a9                             ; $62a6: $30 $01

	jp   hl                                          ; $62a8: $e9


jr_070_62a9:
	nop                                              ; $62a9: $00
	add  b                                           ; $62aa: $80
	ccf                                              ; $62ab: $3f
	add  b                                           ; $62ac: $80
	ld   [hl-], a                                    ; $62ad: $32
	nop                                              ; $62ae: $00
	ld   d, $81                                      ; $62af: $16 $81
	ld   [de], a                                     ; $62b1: $12
	inc  bc                                          ; $62b2: $03

jr_070_62b3:
	dec  de                                          ; $62b3: $1b
	rra                                              ; $62b4: $1f
	rrca                                             ; $62b5: $0f
	inc  bc                                          ; $62b6: $03
	add  b                                           ; $62b7: $80
	inc  b                                           ; $62b8: $04
	ld   bc, $000c                                   ; $62b9: $01 $0c $00
	add  b                                           ; $62bc: $80
	rst  $38                                         ; $62bd: $ff
	add  b                                           ; $62be: $80
	ld   c, c                                        ; $62bf: $49
	nop                                              ; $62c0: $00
	db   $db                                         ; $62c1: $db
	add  c                                           ; $62c2: $81
	ld   c, c                                        ; $62c3: $49
	nop                                              ; $62c4: $00
	ld   l, l                                        ; $62c5: $6d
	add  b                                           ; $62c6: $80
	rst  $38                                         ; $62c7: $ff
	nop                                              ; $62c8: $00
	call z, $1280                                    ; $62c9: $cc $80 $12
	ld   bc, $0033                                   ; $62cc: $01 $33 $00
	add  b                                           ; $62cf: $80
	cp   $80                                         ; $62d0: $fe $80
	ld   h, $00                                      ; $62d2: $26 $00
	ld   l, [hl]                                     ; $62d4: $6e
	add  c                                           ; $62d5: $81
	ld   h, $00                                      ; $62d6: $26 $00
	or   [hl]                                        ; $62d8: $b6
	add  c                                           ; $62d9: $81
	cp   $80                                         ; $62da: $fe $80
	nop                                              ; $62dc: $00
	nop                                              ; $62dd: $00
	ld   d, l                                        ; $62de: $55
	add  l                                           ; $62df: $85
	ld   a, a                                        ; $62e0: $7f
	inc  b                                           ; $62e1: $04
	ld   a, [hl+]                                    ; $62e2: $2a
	nop                                              ; $62e3: $00
	ld   [hl], b                                     ; $62e4: $70
	nop                                              ; $62e5: $00
	dec  h                                           ; $62e6: $25
	add  c                                           ; $62e7: $81
	ld   a, a                                        ; $62e8: $7f
	nop                                              ; $62e9: $00
	ld   a, d                                        ; $62ea: $7a
	add  b                                           ; $62eb: $80
	ldh  a, [$0c]                                    ; $62ec: $f0 $0c
	pop  af                                          ; $62ee: $f1
	ldh  a, [$f3]                                    ; $62ef: $f0 $f3
	pop  af                                          ; $62f1: $f1
	di                                               ; $62f2: $f3
	and  e                                           ; $62f3: $a3
	inc  bc                                          ; $62f4: $03
	ld   [hl], e                                     ; $62f5: $73
	inc  bc                                          ; $62f6: $03
	inc  hl                                          ; $62f7: $23
	ldh  a, [c]                                      ; $62f8: $f2
	pop  af                                          ; $62f9: $f1
	ldh  a, [$80]                                    ; $62fa: $f0 $80
	ret  nz                                          ; $62fc: $c0

	nop                                              ; $62fd: $00
	ld   b, b                                        ; $62fe: $40
	add  e                                           ; $62ff: $83
	ret  nz                                          ; $6300: $c0

	dec  b                                           ; $6301: $05
	ldh  [$80], a                                    ; $6302: $e0 $80
	ldh  a, [rP1]                                    ; $6304: $f0 $00
	ret  z                                           ; $6306: $c8

	ld   a, b                                        ; $6307: $78
	add  b                                           ; $6308: $80
	db   $fc                                         ; $6309: $fc
	add  b                                           ; $630a: $80
	ld   [bc], a                                     ; $630b: $02
	inc  bc                                          ; $630c: $03
	nop                                              ; $630d: $00
	ld   bc, $0100                                   ; $630e: $01 $00 $01
	add  b                                           ; $6311: $80
	nop                                              ; $6312: $00
	add  d                                           ; $6313: $82
	ld   a, a                                        ; $6314: $7f
	nop                                              ; $6315: $00
	nop                                              ; $6316: $00
	add  c                                           ; $6317: $81
	ld   a, a                                        ; $6318: $7f
	nop                                              ; $6319: $00
	adc  a                                           ; $631a: $8f
	add  b                                           ; $631b: $80
	nop                                              ; $631c: $00
	add  c                                           ; $631d: $81
	ld   b, $00                                      ; $631e: $06 $00
	add  hl, bc                                      ; $6320: $09
	add  d                                           ; $6321: $82
	nop                                              ; $6322: $00
	add  b                                           ; $6323: $80
	rrca                                             ; $6324: $0f
	nop                                              ; $6325: $00
	nop                                              ; $6326: $00
	add  b                                           ; $6327: $80
	rrca                                             ; $6328: $0f
	ld   b, $ff                                      ; $6329: $06 $ff
	nop                                              ; $632b: $00
	ld   a, [bc]                                     ; $632c: $0a
	pop  bc                                          ; $632d: $c1
	set  0, c                                        ; $632e: $cb $c1
	ld   a, [hl-]                                    ; $6330: $3a
	add  c                                           ; $6331: $81
	nop                                              ; $6332: $00
	inc  bc                                          ; $6333: $03
	ld   [bc], a                                     ; $6334: $02
	ld   sp, hl                                      ; $6335: $f9
	rst  $38                                         ; $6336: $ff
	rlca                                             ; $6337: $07
	add  b                                           ; $6338: $80
	ld   hl, sp+$00                                  ; $6339: $f8 $00
	ld   [hl], e                                     ; $633b: $73
	add  e                                           ; $633c: $83
	ld   [bc], a                                     ; $633d: $02
	db   $10                                         ; $633e: $10
	or   [hl]                                        ; $633f: $b6
	inc  bc                                          ; $6340: $03
	jp   $2202                                       ; $6341: $c3 $02 $22


	rst  JumpTable                                         ; $6344: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6345: $cf
	ret  nz                                          ; $6346: $c0

	dec  c                                           ; $6347: $0d
	inc  c                                           ; $6348: $0c
	ld   [bc], a                                     ; $6349: $02
	add  hl, bc                                      ; $634a: $09
	xor  c                                           ; $634b: $a9
	add  hl, bc                                      ; $634c: $09
	xor  c                                           ; $634d: $a9
	add  hl, bc                                      ; $634e: $09
	cp   d                                           ; $634f: $ba
	add  b                                           ; $6350: $80
	inc  c                                           ; $6351: $0c
	ld   bc, $4808                                   ; $6352: $01 $08 $48
	add  b                                           ; $6355: $80
	rst  $38                                         ; $6356: $ff
	add  c                                           ; $6357: $81
	nop                                              ; $6358: $00
	nop                                              ; $6359: $00
	ret                                              ; $635a: $c9


	add  e                                           ; $635b: $83
	halt                                             ; $635c: $76
	nop                                              ; $635d: $00
	cp   a                                           ; $635e: $bf
	add  b                                           ; $635f: $80
	ld   [hl], $80                                   ; $6360: $36 $80
	ld   [hl+], a                                    ; $6362: $22
	add  b                                           ; $6363: $80
	rst  $38                                         ; $6364: $ff
	add  c                                           ; $6365: $81
	nop                                              ; $6366: $00
	ld   b, $fc                                      ; $6367: $06 $fc
	rlca                                             ; $6369: $07
	ld   d, a                                        ; $636a: $57
	rlca                                             ; $636b: $07
	ld   d, a                                        ; $636c: $57
	rlca                                             ; $636d: $07
	db   $db                                         ; $636e: $db
	add  c                                           ; $636f: $81
	ld   bc, $2106                                   ; $6370: $01 $06 $21
	rst  $38                                         ; $6373: $ff
	sbc  a                                           ; $6374: $9f
	nop                                              ; $6375: $00
	ld   d, e                                        ; $6376: $53
	add  a                                           ; $6377: $87
	ld   [hl], h                                     ; $6378: $74
	add  b                                           ; $6379: $80
	ccf                                              ; $637a: $3f
	inc  bc                                          ; $637b: $03
	ld   sp, $3271                                   ; $637c: $31 $71 $32
	or   d                                           ; $637f: $b2
	add  b                                           ; $6380: $80
	ld   [de], a                                     ; $6381: $12
	add  b                                           ; $6382: $80
	inc  d                                           ; $6383: $14
	add  b                                           ; $6384: $80
	ld   hl, sp+$08                                  ; $6385: $f8 $08
	ret  nz                                          ; $6387: $c0

	nop                                              ; $6388: $00
	jr   nc, jr_070_6405                             ; $6389: $30 $7a

	inc  c                                           ; $638b: $0c
	sub  h                                           ; $638c: $94
	inc  d                                           ; $638d: $14
	ld   [de], a                                     ; $638e: $12
	inc  d                                           ; $638f: $14
	add  b                                           ; $6390: $80
	inc  h                                           ; $6391: $24

jr_070_6392:
	add  b                                           ; $6392: $80
	add  hl, hl                                      ; $6393: $29
	add  b                                           ; $6394: $80
	ld   l, c                                        ; $6395: $69
	add  d                                           ; $6396: $82
	ld   d, b                                        ; $6397: $50
	nop                                              ; $6398: $00
	ld   b, [hl]                                     ; $6399: $46
	add  b                                           ; $639a: $80
	ld   d, b                                        ; $639b: $50
	dec  b                                           ; $639c: $05
	ld   c, b                                        ; $639d: $48
	adc  b                                           ; $639e: $88
	add  b                                           ; $639f: $80
	and  h                                           ; $63a0: $a4
	add  b                                           ; $63a1: $80
	ld   [bc], a                                     ; $63a2: $02
	add  c                                           ; $63a3: $81
	nop                                              ; $63a4: $00
	ld   bc, $df8f                                   ; $63a5: $01 $8f $df
	add  b                                           ; $63a8: $80
	ld   [hl], b                                     ; $63a9: $70
	inc  c                                           ; $63aa: $0c
	add  a                                           ; $63ab: $87
	inc  b                                           ; $63ac: $04
	ld   b, $04                                      ; $63ad: $06 $04
	ld   b, $04                                      ; $63af: $06 $04
	ld   a, $0c                                      ; $63b1: $3e $0c
	ld   b, h                                        ; $63b3: $44
	inc  b                                           ; $63b4: $04
	add  b                                           ; $63b5: $80
	nop                                              ; $63b6: $00
	ld   bc, $ff80                                   ; $63b7: $01 $80 $ff
	ld   [$de00], sp                                 ; $63ba: $08 $00 $de
	ld   [de], a                                     ; $63bd: $12
	sub  d                                           ; $63be: $92
	ld   [de], a                                     ; $63bf: $12
	sub  d                                           ; $63c0: $92
	ld   [de], a                                     ; $63c1: $12
	rst  $38                                         ; $63c2: $ff
	inc  sp                                          ; $63c3: $33
	add  b                                           ; $63c4: $80
	ld   [de], a                                     ; $63c5: $12
	add  c                                           ; $63c6: $81
	nop                                              ; $63c7: $00
	add  b                                           ; $63c8: $80
	rst  $38                                         ; $63c9: $ff
	rlca                                             ; $63ca: $07
	nop                                              ; $63cb: $00
	db   $fd                                         ; $63cc: $fd
	ld   [bc], a                                     ; $63cd: $02
	ld   a, [hl+]                                    ; $63ce: $2a
	ld   [bc], a                                     ; $63cf: $02
	ld   a, [hl+]                                    ; $63d0: $2a
	ld   [bc], a                                     ; $63d1: $02
	rst  $28                                         ; $63d2: $ef
	add  e                                           ; $63d3: $83
	nop                                              ; $63d4: $00
	nop                                              ; $63d5: $00
	db   $10                                         ; $63d6: $10
	add  b                                           ; $63d7: $80
	rst  $38                                         ; $63d8: $ff
	rlca                                             ; $63d9: $07
	nop                                              ; $63da: $00
	rst  $38                                         ; $63db: $ff
	nop                                              ; $63dc: $00
	ld   b, d                                        ; $63dd: $42
	nop                                              ; $63de: $00
	ld   [bc], a                                     ; $63df: $02
	nop                                              ; $63e0: $00
	cp   [hl]                                        ; $63e1: $be
	add  e                                           ; $63e2: $83
	nop                                              ; $63e3: $00
	nop                                              ; $63e4: $00
	ld   bc, $ff80                                   ; $63e5: $01 $80 $ff
	rlca                                             ; $63e8: $07
	nop                                              ; $63e9: $00
	rst  $38                                         ; $63ea: $ff
	ld   bc, $0191                                   ; $63eb: $01 $91 $01
	add  c                                           ; $63ee: $81
	ld   bc, $84ee                                   ; $63ef: $01 $ee $84
	nop                                              ; $63f2: $00
	add  b                                           ; $63f3: $80
	rst  $38                                         ; $63f4: $ff
	inc  b                                           ; $63f5: $04
	nop                                              ; $63f6: $00
	rst  $38                                         ; $63f7: $ff
	ld   [bc], a                                     ; $63f8: $02
	ld   a, [hl+]                                    ; $63f9: $2a
	add  $80                                         ; $63fa: $c6 $80
	xor  $00                                         ; $63fc: $ee $00
	ld   bc, $0083                                   ; $63fe: $01 $83 $00
	nop                                              ; $6401: $00
	db   $10                                         ; $6402: $10
	add  b                                           ; $6403: $80
	rst  $38                                         ; $6404: $ff

jr_070_6405:
	rlca                                             ; $6405: $07
	nop                                              ; $6406: $00
	rst  $38                                         ; $6407: $ff
	nop                                              ; $6408: $00
	ld   a, [de]                                     ; $6409: $1a
	ld   a, h                                        ; $640a: $7c
	cp   $7e                                         ; $640b: $fe $7e
	jr   jr_070_6392                                 ; $640d: $18 $83

	nop                                              ; $640f: $00
	nop                                              ; $6410: $00
	ld   bc, $ff80                                   ; $6411: $01 $80 $ff
	add  c                                           ; $6414: $81
	nop                                              ; $6415: $00
	ld   bc, $0e01                                   ; $6416: $01 $01 $0e
	add  b                                           ; $6419: $80
	nop                                              ; $641a: $00
	inc  bc                                          ; $641b: $03
	ld   bc, FarGetAddrBank                                   ; $641c: $01 $09 $0b
	inc  bc                                          ; $641f: $03
	add  e                                           ; $6420: $83
	nop                                              ; $6421: $00
	inc  b                                           ; $6422: $04
	inc  bc                                          ; $6423: $03
	inc  c                                           ; $6424: $0c
	nop                                              ; $6425: $00
	add  b                                           ; $6426: $80
	ld   a, a                                        ; $6427: $7f
	add  b                                           ; $6428: $80
	nop                                              ; $6429: $00
	add  b                                           ; $642a: $80
	rst  $38                                         ; $642b: $ff
	ld   bc, $e7f7                                   ; $642c: $01 $f7 $e7
	add  e                                           ; $642f: $83
	nop                                              ; $6430: $00
	inc  b                                           ; $6431: $04
	rst  $20                                         ; $6432: $e7
	add  hl, bc                                      ; $6433: $09
	nop                                              ; $6434: $00
	inc  b                                           ; $6435: $04
	ld   hl, sp-$80                                  ; $6436: $f8 $80
	nop                                              ; $6438: $00
	add  b                                           ; $6439: $80
	ld   hl, sp-$80                                  ; $643a: $f8 $80
	ldh  a, [$80]                                    ; $643c: $f0 $80
	nop                                              ; $643e: $00
	nop                                              ; $643f: $00
	ld   [bc], a                                     ; $6440: $02
	add  b                                           ; $6441: $80
	nop                                              ; $6442: $00
	ld   bc, $0ff0                                   ; $6443: $01 $f0 $0f
	add  b                                           ; $6446: $80
	ld   a, a                                        ; $6447: $7f
	add  e                                           ; $6448: $83
	rst  $38                                         ; $6449: $ff
	add  b                                           ; $644a: $80
	nop                                              ; $644b: $00
	inc  bc                                          ; $644c: $03
	ld   h, [hl]                                     ; $644d: $66
	nop                                              ; $644e: $00
	add  [hl]                                        ; $644f: $86
	ldh  [$80], a                                    ; $6450: $e0 $80
	ret  nz                                          ; $6452: $c0

	add  b                                           ; $6453: $80
	db   $fc                                         ; $6454: $fc
	add  b                                           ; $6455: $80
	or   $80                                         ; $6456: $f6 $80
	db   $ed                                         ; $6458: $ed
	add  b                                           ; $6459: $80
	res  0, b                                        ; $645a: $cb $80
	dec  de                                          ; $645c: $1b
	inc  bc                                          ; $645d: $03
	or   a                                           ; $645e: $b7
	scf                                              ; $645f: $37
	rst  $28                                         ; $6460: $ef
	ld   l, a                                        ; $6461: $6f
	add  b                                           ; $6462: $80
	sbc  $03                                         ; $6463: $de $03
	ld   b, b                                        ; $6465: $40
	ld   c, b                                        ; $6466: $48
	add  a                                           ; $6467: $87
	add  b                                           ; $6468: $80
	add  b                                           ; $6469: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $646a: $cf
	add  b                                           ; $646b: $80
	ret  nc                                          ; $646c: $d0

	ld   bc, $909f                                   ; $646d: $01 $9f $90
	add  b                                           ; $6470: $80
	dec  d                                           ; $6471: $15
	add  d                                           ; $6472: $82
	db   $10                                         ; $6473: $10
	ld   [$0f00], sp                                 ; $6474: $08 $00 $0f
	ldh  a, [rP1]                                    ; $6477: $f0 $00
	rst  $38                                         ; $6479: $ff
	ld   sp, hl                                      ; $647a: $f9
	add  hl, bc                                      ; $647b: $09
	ld   bc, $81f0                                   ; $647c: $01 $f0 $81
	ld   [bc], a                                     ; $647f: $02
	dec  b                                           ; $6480: $05
	add  c                                           ; $6481: $81
	add  l                                           ; $6482: $85
	dec  c                                           ; $6483: $0d
	dec  b                                           ; $6484: $05
	rrca                                             ; $6485: $0f
	rst  $38                                         ; $6486: $ff
	add  b                                           ; $6487: $80
	and  b                                           ; $6488: $a0
	add  b                                           ; $6489: $80
	db   $fd                                         ; $648a: $fd
	ld   bc, $4342                                   ; $648b: $01 $42 $43
	add  b                                           ; $648e: $80
	add  a                                           ; $648f: $87
	ld   bc, $9e99                                   ; $6490: $01 $99 $9e
	add  b                                           ; $6493: $80
	inc  hl                                          ; $6494: $23
	inc  c                                           ; $6495: $0c
	ld   h, c                                        ; $6496: $61
	ld   hl, $af99                                   ; $6497: $21 $99 $af
	nop                                              ; $649a: $00
	ld   h, b                                        ; $649b: $60
	cp   a                                           ; $649c: $bf
	inc  de                                          ; $649d: $13
	sbc  d                                           ; $649e: $9a
	jr   jr_070_64ba                                 ; $649f: $18 $19

	ld   e, b                                        ; $64a1: $58
	ld   e, h                                        ; $64a2: $5c
	add  d                                           ; $64a3: $82
	call c, $dd02                                    ; $64a4: $dc $02 $dd
	ld   bc, $80ff                                   ; $64a7: $01 $ff $80
	nop                                              ; $64aa: $00
	add  b                                           ; $64ab: $80
	rst  $38                                         ; $64ac: $ff
	add  b                                           ; $64ad: $80
	nop                                              ; $64ae: $00
	inc  bc                                          ; $64af: $03
	stop                                             ; $64b0: $10 $00
	xor  $01                                         ; $64b2: $ee $01
	add  b                                           ; $64b4: $80
	rrca                                             ; $64b5: $0f
	add  b                                           ; $64b6: $80
	ld   [bc], a                                     ; $64b7: $02
	ld   a, [bc]                                     ; $64b8: $0a
	inc  e                                           ; $64b9: $1c

jr_070_64ba:
	db   $fd                                         ; $64ba: $fd
	rra                                              ; $64bb: $1f
	ld   [hl], $c8                                   ; $64bc: $36 $c8
	ldh  [$1f], a                                    ; $64be: $e0 $1f
	nop                                              ; $64c0: $00
	ld   b, c                                        ; $64c1: $41
	nop                                              ; $64c2: $00
	ld   b, c                                        ; $64c3: $41
	add  c                                           ; $64c4: $81
	rst  $38                                         ; $64c5: $ff
	add  b                                           ; $64c6: $80
	ld   a, c                                        ; $64c7: $79
	ld   bc, $ff00                                   ; $64c8: $01 $00 $ff
	add  b                                           ; $64cb: $80
	nop                                              ; $64cc: $00
	ld   bc, $fefd                                   ; $64cd: $01 $fd $fe
	add  b                                           ; $64d0: $80
	ld   [bc], a                                     ; $64d1: $02
	add  b                                           ; $64d2: $80
	nop                                              ; $64d3: $00
	nop                                              ; $64d4: $00
	inc  bc                                          ; $64d5: $03
	add  c                                           ; $64d6: $81
	rst  $38                                         ; $64d7: $ff
	add  b                                           ; $64d8: $80
	rst  $20                                         ; $64d9: $e7
	ld   bc, $ff00                                   ; $64da: $01 $00 $ff
	add  b                                           ; $64dd: $80
	nop                                              ; $64de: $00
	add  b                                           ; $64df: $80
	rst  $38                                         ; $64e0: $ff
	add  d                                           ; $64e1: $82
	nop                                              ; $64e2: $00
	ld   bc, $fe01                                   ; $64e3: $01 $01 $fe
	add  b                                           ; $64e6: $80
	db   $fc                                         ; $64e7: $fc
	add  b                                           ; $64e8: $80
	di                                               ; $64e9: $f3
	dec  e                                           ; $64ea: $1d

jr_070_64eb:
	rrca                                             ; $64eb: $0f
	rst  $38                                         ; $64ec: $ff
	rrca                                             ; $64ed: $0f
	rra                                              ; $64ee: $1f
	ldh  a, [$fd]                                    ; $64ef: $f0 $fd
	dec  c                                           ; $64f1: $0d
	nop                                              ; $64f2: $00
	db   $ec                                         ; $64f3: $ec
	rst  $38                                         ; $64f4: $ff
	adc  h                                           ; $64f5: $8c
	ld   b, b                                        ; $64f6: $40
	rst  JumpTable                                         ; $64f7: $df
	ret  nz                                          ; $64f8: $c0

	and  b                                           ; $64f9: $a0
	add  b                                           ; $64fa: $80
	ret  nz                                          ; $64fb: $c0

	rst  $38                                         ; $64fc: $ff
	ret  nz                                          ; $64fd: $c0

	ldh  [$2f], a                                    ; $64fe: $e0 $2f
	rst  $30                                         ; $6500: $f7
	ret  z                                           ; $6501: $c8

	ld   [$df57], sp                                 ; $6502: $08 $57 $df
	ld   [hl], b                                     ; $6505: $70
	nop                                              ; $6506: $00
	add  b                                           ; $6507: $80
	ld   a, a                                        ; $6508: $7f
	add  c                                           ; $6509: $81
	nop                                              ; $650a: $00
	nop                                              ; $650b: $00
	rst  $38                                         ; $650c: $ff
	add  b                                           ; $650d: $80
	nop                                              ; $650e: $00
	add  b                                           ; $650f: $80
	rst  $38                                         ; $6510: $ff
	ld   bc, $080c                                   ; $6511: $01 $0c $08
	add  b                                           ; $6514: $80
	ei                                               ; $6515: $fb
	add  hl, bc                                      ; $6516: $09
	ld   [$2909], sp                                 ; $6517: $08 $09 $29
	push bc                                          ; $651a: $c5
	ld   b, l                                        ; $651b: $45
	ld   c, l                                        ; $651c: $4d
	xor  $03                                         ; $651d: $ee $03
	ld   [bc], a                                     ; $651f: $02
	ld   bc, $0080                                   ; $6520: $01 $80 $00
	add  b                                           ; $6523: $80
	dec  bc                                          ; $6524: $0b
	add  b                                           ; $6525: $80
	rlca                                             ; $6526: $07
	add  d                                           ; $6527: $82
	rrca                                             ; $6528: $0f
	add  b                                           ; $6529: $80
	ld   c, $03                                      ; $652a: $0e $03
	ldh  [$e7], a                                    ; $652c: $e0 $e7
	nop                                              ; $652e: $00
	rst  $20                                         ; $652f: $e7
	add  b                                           ; $6530: $80
	ld   h, a                                        ; $6531: $67
	inc  bc                                          ; $6532: $03
	nop                                              ; $6533: $00
	daa                                              ; $6534: $27
	db   $eb                                         ; $6535: $eb
	call c, $b880                                    ; $6536: $dc $80 $b8
	add  b                                           ; $6539: $80
	ld   [hl], b                                     ; $653a: $70
	add  b                                           ; $653b: $80
	nop                                              ; $653c: $00
	db   $10                                         ; $653d: $10
	ld   [bc], a                                     ; $653e: $02
	di                                               ; $653f: $f3
	rla                                              ; $6540: $17
	push hl                                          ; $6541: $e5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6542: $cf
	rrc  l                                           ; $6543: $cb $0d
	add  $d3                                         ; $6545: $c6 $d3
	call z, Call_070_78e7                            ; $6547: $cc $e7 $78
	ld   sp, $1d60                                   ; $654a: $31 $60 $1d
	nop                                              ; $654d: $00
	ld   bc, $8181                                   ; $654e: $01 $81 $81
	dec  c                                           ; $6551: $0d
	add  e                                           ; $6552: $83
	ld   [bc], a                                     ; $6553: $02
	inc  bc                                          ; $6554: $03
	nop                                              ; $6555: $00
	add  [hl]                                        ; $6556: $86
	ld   bc, $01c1                                   ; $6557: $01 $c1 $01
	inc  a                                           ; $655a: $3c
	dec  c                                           ; $655b: $0d
	ld   c, h                                        ; $655c: $4c
	dec  l                                           ; $655d: $2d
	xor  c                                           ; $655e: $a9
	cp   h                                           ; $655f: $bc
	add  b                                           ; $6560: $80
	inc  a                                           ; $6561: $3c
	ld   [bc], a                                     ; $6562: $02
	sbc  b                                           ; $6563: $98
	ld   e, b                                        ; $6564: $58
	ret  nz                                          ; $6565: $c0

	add  b                                           ; $6566: $80
	jr   nz, jr_070_64eb                             ; $6567: $20 $82

	ret  nc                                          ; $6569: $d0

	add  b                                           ; $656a: $80
	ld   de, $d102                                   ; $656b: $11 $02 $d1
	ret  nc                                          ; $656e: $d0

	ld   bc, $0280                                   ; $656f: $01 $80 $02
	add  b                                           ; $6572: $80
	ld   b, d                                        ; $6573: $42
	add  b                                           ; $6574: $80
	ld   b, h                                        ; $6575: $44
	add  b                                           ; $6576: $80
	add  h                                           ; $6577: $84
	add  b                                           ; $6578: $80
	adc  b                                           ; $6579: $88
	add  b                                           ; $657a: $80
	ld   [$1080], sp                                 ; $657b: $08 $80 $10
	nop                                              ; $657e: $00
	dec  d                                           ; $657f: $15
	add  c                                           ; $6580: $81
	ld   a, [bc]                                     ; $6581: $0a
	ld   bc, $1332                                   ; $6582: $01 $32 $13
	add  b                                           ; $6585: $80
	inc  d                                           ; $6586: $14
	ld   bc, $2565                                   ; $6587: $01 $65 $25
	add  b                                           ; $658a: $80
	ld   a, [hl+]                                    ; $658b: $2a
	ld   bc, $49cb                                   ; $658c: $01 $cb $49
	add  b                                           ; $658f: $80
	ld   d, b                                        ; $6590: $50
	db   $10                                         ; $6591: $10
	ld   h, [hl]                                     ; $6592: $66
	jr   nz, jr_070_6596                             ; $6593: $20 $01

	and  b                                           ; $6595: $a0

jr_070_6596:
	ldh  a, [$60]                                    ; $6596: $f0 $60
	ld   b, e                                        ; $6598: $43
	ret  nz                                          ; $6599: $c0

	dec  bc                                          ; $659a: $0b
	inc  bc                                          ; $659b: $03
	rlca                                             ; $659c: $07
	rst  ToBoot                                         ; $659d: $c7
	ret  nc                                          ; $659e: $d0

	db   $10                                         ; $659f: $10
	ldh  [$66], a                                    ; $65a0: $e0 $66
	add  [hl]                                        ; $65a2: $86
	add  b                                           ; $65a3: $80
	ld   [bc], a                                     ; $65a4: $02
	add  b                                           ; $65a5: $80
	db   $fd                                         ; $65a6: $fd
	ld   [bc], a                                     ; $65a7: $02
	ld   a, [bc]                                     ; $65a8: $0a
	ld   a, [$80b0]                                  ; $65a9: $fa $b0 $80
	cp   b                                           ; $65ac: $b8
	ld   bc, $7cbc                                   ; $65ad: $01 $bc $7c
	add  b                                           ; $65b0: $80
	ld   a, [hl]                                     ; $65b1: $7e
	ld   bc, $fc7c                                   ; $65b2: $01 $7c $fc
	add  b                                           ; $65b5: $80
	nop                                              ; $65b6: $00
	add  b                                           ; $65b7: $80
	ld   a, a                                        ; $65b8: $7f
	inc  bc                                          ; $65b9: $03
	ei                                               ; $65ba: $fb
	di                                               ; $65bb: $f3
	ei                                               ; $65bc: $fb
	di                                               ; $65bd: $f3
	add  d                                           ; $65be: $82
	rst  $38                                         ; $65bf: $ff
	ld   bc, $efce                                   ; $65c0: $01 $ce $ef

jr_070_65c3:
	add  c                                           ; $65c3: $81
	ld   hl, $0000                                   ; $65c4: $21 $00 $00
	add  b                                           ; $65c7: $80
	rst  $38                                         ; $65c8: $ff
	inc  bc                                          ; $65c9: $03
	rst  $28                                         ; $65ca: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65cb: $cf
	rst  $28                                         ; $65cc: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65cd: $cf
	add  d                                           ; $65ce: $82
	rst  $38                                         ; $65cf: $ff
	ld   bc, $7d79                                   ; $65d0: $01 $79 $7d
	add  c                                           ; $65d3: $81
	inc  b                                           ; $65d4: $04
	nop                                              ; $65d5: $00
	nop                                              ; $65d6: $00
	add  b                                           ; $65d7: $80
	rst  $38                                         ; $65d8: $ff
	inc  bc                                          ; $65d9: $03
	cp   a                                           ; $65da: $bf
	ccf                                              ; $65db: $3f
	cp   [hl]                                        ; $65dc: $be
	ld   a, $80                                      ; $65dd: $3e $80
	db   $fd                                         ; $65df: $fd
	add  b                                           ; $65e0: $80
	ei                                               ; $65e1: $fb
	add  b                                           ; $65e2: $80
	push af                                          ; $65e3: $f5
	nop                                              ; $65e4: $00
	rrca                                             ; $65e5: $0f
	add  b                                           ; $65e6: $80
	dec  c                                           ; $65e7: $0d
	nop                                              ; $65e8: $00
	rrca                                             ; $65e9: $0f
	add  b                                           ; $65ea: $80
	sbc  a                                           ; $65eb: $9f
	add  b                                           ; $65ec: $80
	ld   d, e                                        ; $65ed: $53
	ld   [bc], a                                     ; $65ee: $02
	or   e                                           ; $65ef: $b3
	cp   e                                           ; $65f0: $bb
	or   a                                           ; $65f1: $b7
	add  c                                           ; $65f2: $81
	cp   a                                           ; $65f3: $bf
	add  b                                           ; $65f4: $80
	ld   a, [hl]                                     ; $65f5: $7e
	add  b                                           ; $65f6: $80
	ld   h, [hl]                                     ; $65f7: $66
	add  d                                           ; $65f8: $82
	add  b                                           ; $65f9: $80
	adc  d                                           ; $65fa: $8a
	nop                                              ; $65fb: $00
	ld   b, $e0                                      ; $65fc: $06 $e0
	rst  $38                                         ; $65fe: $ff
	ldh  a, [rIE]                                    ; $65ff: $f0 $ff
	xor  $f0                                         ; $6601: $ee $f0
	pop  af                                          ; $6603: $f1
	add  c                                           ; $6604: $81
	rst  $38                                         ; $6605: $ff
	add  b                                           ; $6606: $80
	nop                                              ; $6607: $00
	nop                                              ; $6608: $00
	ccf                                              ; $6609: $3f
	add  c                                           ; $660a: $81
	nop                                              ; $660b: $00
	nop                                              ; $660c: $00
	ld   e, h                                        ; $660d: $5c
	add  c                                           ; $660e: $81
	ld   l, l                                        ; $660f: $6d
	add  b                                           ; $6610: $80
	db   $ed                                         ; $6611: $ed
	add  b                                           ; $6612: $80
	db   $ec                                         ; $6613: $ec
	add  hl, bc                                      ; $6614: $09
	ld   [$04e8], a                                  ; $6615: $ea $e8 $04
	nop                                              ; $6618: $00
	add  sp, $27                                     ; $6619: $e8 $27
	rlca                                             ; $661b: $07
	inc  c                                           ; $661c: $0c
	ld   sp, $800d                                   ; $661d: $31 $0d $80
	add  hl, bc                                      ; $6620: $09
	nop                                              ; $6621: $00
	dec  bc                                          ; $6622: $0b
	add  c                                           ; $6623: $81
	inc  bc                                          ; $6624: $03
	add  c                                           ; $6625: $81
	nop                                              ; $6626: $00
	ld   bc, $0001                                   ; $6627: $01 $01 $00
	add  c                                           ; $662a: $81
	ld   bc, $0700                                   ; $662b: $01 $00 $07
	add  l                                           ; $662e: $85
	rst  $38                                         ; $662f: $ff
	add  b                                           ; $6630: $80
	nop                                              ; $6631: $00
	ld   [bc], a                                     ; $6632: $02
	cp   $01                                         ; $6633: $fe $01
	nop                                              ; $6635: $00
	add  c                                           ; $6636: $81
	rst  $38                                         ; $6637: $ff
	add  d                                           ; $6638: $82
	ldh  a, [$80]                                    ; $6639: $f0 $80
	ldh  [rSB], a                                    ; $663b: $e0 $01
	and  b                                           ; $663d: $a0
	jr   nz, jr_070_65c3                             ; $663e: $20 $83

	nop                                              ; $6640: $00
	add  b                                           ; $6641: $80
	ld   bc, $0303                                   ; $6642: $01 $03 $03
	sbc  d                                           ; $6645: $9a
	dec  c                                           ; $6646: $0d
	inc  d                                           ; $6647: $14
	add  b                                           ; $6648: $80
	ld   bc, $1a80                                   ; $6649: $01 $80 $1a
	add  b                                           ; $664c: $80
	scf                                              ; $664d: $37
	add  b                                           ; $664e: $80
	ld   l, a                                        ; $664f: $6f
	add  b                                           ; $6650: $80
	rst  $28                                         ; $6651: $ef
	add  b                                           ; $6652: $80
	rst  JumpTable                                         ; $6653: $df
	add  b                                           ; $6654: $80
	cp   [hl]                                        ; $6655: $be
	add  b                                           ; $6656: $80
	ld   [de], a                                     ; $6657: $12
	add  b                                           ; $6658: $80
	jp   nc, $d480                                   ; $6659: $d2 $80 $d4

	add  b                                           ; $665c: $80
	ld   d, h                                        ; $665d: $54
	add  b                                           ; $665e: $80
	sub  b                                           ; $665f: $90
	add  e                                           ; $6660: $83
	nop                                              ; $6661: $00
	ld   bc, $1011                                   ; $6662: $01 $11 $10
	add  b                                           ; $6665: $80
	jr   nz, jr_070_668c                             ; $6666: $20 $24

	inc  hl                                          ; $6668: $23
	ld   hl, $435f                                   ; $6669: $21 $5f $43
	ld   h, e                                        ; $666c: $63
	ld   b, e                                        ; $666d: $43
	cp   e                                           ; $666e: $bb
	add  e                                           ; $666f: $83
	adc  a                                           ; $6670: $8f
	add  h                                           ; $6671: $84
	ld   b, $05                                      ; $6672: $06 $05
	ld   h, d                                        ; $6674: $62
	sub  h                                           ; $6675: $94
	and  h                                           ; $6676: $a4
	xor  b                                           ; $6677: $a8
	db   $eb                                         ; $6678: $eb
	xor  b                                           ; $6679: $a8
	adc  c                                           ; $667a: $89
	sub  b                                           ; $667b: $90
	sbc  a                                           ; $667c: $9f
	ld   d, b                                        ; $667d: $50
	db   $10                                         ; $667e: $10
	jr   @+$15                                       ; $667f: $18 $13

	sub  d                                           ; $6681: $92
	ld   [hl-], a                                    ; $6682: $32
	ld   sp, $04ea                                   ; $6683: $31 $ea $04
	add  h                                           ; $6686: $84
	ld   h, h                                        ; $6687: $64
	db   $e4                                         ; $6688: $e4
	ld   [$38c8], sp                                 ; $6689: $08 $c8 $38

jr_070_668c:
	ld   hl, sp-$80                                  ; $668c: $f8 $80
	nop                                              ; $668e: $00
	ld   b, $08                                      ; $668f: $06 $08
	ldh  [$b0], a                                    ; $6691: $e0 $b0
	jr   nc, jr_070_66e5                             ; $6693: $30 $50

	call nz, $82fc                                   ; $6695: $c4 $fc $82
	ld   hl, sp+$00                                  ; $6698: $f8 $00
	ret  nc                                          ; $669a: $d0

	add  c                                           ; $669b: $81
	sub  b                                           ; $669c: $90
	add  b                                           ; $669d: $80
	nop                                              ; $669e: $00
	add  b                                           ; $669f: $80
	sub  b                                           ; $66a0: $90
	ld   [bc], a                                     ; $66a1: $02
	res  1, e                                        ; $66a2: $cb $8b
	nop                                              ; $66a4: $00
	add  b                                           ; $66a5: $80
	ld   h, l                                        ; $66a6: $65
	add  b                                           ; $66a7: $80
	dec  b                                           ; $66a8: $05
	inc  bc                                          ; $66a9: $03
	rrca                                             ; $66aa: $0f
	dec  c                                           ; $66ab: $0d
	inc  bc                                          ; $66ac: $03
	ld   bc, $0083                                   ; $66ad: $01 $83 $00
	add  b                                           ; $66b0: $80
	ldh  [rP1], a                                    ; $66b1: $e0 $00
	nop                                              ; $66b3: $00
	add  d                                           ; $66b4: $82
	ld   d, l                                        ; $66b5: $55
	ld   [bc], a                                     ; $66b6: $02
	ld   a, l                                        ; $66b7: $7d
	inc  b                                           ; $66b8: $04
	ld   a, l                                        ; $66b9: $7d
	add  c                                           ; $66ba: $81
	inc  b                                           ; $66bb: $04
	add  b                                           ; $66bc: $80
	ld   d, l                                        ; $66bd: $55
	add  b                                           ; $66be: $80
	dec  d                                           ; $66bf: $15
	inc  de                                          ; $66c0: $13
	dec  e                                           ; $66c1: $1d
	ld   [de], a                                     ; $66c2: $12
	ld   e, a                                        ; $66c3: $5f
	ld   c, [hl]                                     ; $66c4: $4e
	ld   e, [hl]                                     ; $66c5: $5e
	ld   e, d                                        ; $66c6: $5a
	ld   a, [$fa3e]                                  ; $66c7: $fa $3e $fa
	add  hl, de                                      ; $66ca: $19
	dec  a                                           ; $66cb: $3d
	dec  l                                           ; $66cc: $2d
	ld   l, l                                        ; $66cd: $6d
	ld   a, l                                        ; $66ce: $7d
	ld   l, l                                        ; $66cf: $6d
	dec  hl                                          ; $66d0: $2b
	ei                                               ; $66d1: $fb
	and  $76                                         ; $66d2: $e6 $76
	xor  $81                                         ; $66d4: $ee $81
	cp   $81                                         ; $66d6: $fe $81
	call z, $ec01                                    ; $66d8: $cc $01 $ec
	call c, $fc81                                    ; $66db: $dc $81 $fc
	add  b                                           ; $66de: $80
	sbc  b                                           ; $66df: $98
	add  h                                           ; $66e0: $84
	inc  bc                                          ; $66e1: $03
	add  d                                           ; $66e2: $82
	nop                                              ; $66e3: $00
	add  b                                           ; $66e4: $80

jr_070_66e5:
	ld   c, $80                                      ; $66e5: $0e $80
	ld   bc, $0080                                   ; $66e7: $01 $80 $00
	add  h                                           ; $66ea: $84
	rst  $38                                         ; $66eb: $ff
	nop                                              ; $66ec: $00
	ld   [$0080], sp                                 ; $66ed: $08 $80 $00
	add  c                                           ; $66f0: $81
	ld   [de], a                                     ; $66f1: $12
	nop                                              ; $66f2: $00
	ld   hl, $3381                                   ; $66f3: $21 $81 $33
	inc  bc                                          ; $66f6: $03
	adc  b                                           ; $66f7: $88
	adc  h                                           ; $66f8: $8c
	or   b                                           ; $66f9: $b0
	cp   l                                           ; $66fa: $bd
	add  b                                           ; $66fb: $80
	add  c                                           ; $66fc: $81
	add  c                                           ; $66fd: $81
	ld   bc, $0080                                   ; $66fe: $01 $80 $00
	ld   bc, $c301                                   ; $6701: $01 $01 $c3
	add  c                                           ; $6704: $81
	rst  JumpTable                                         ; $6705: $df
	ret  z                                           ; $6706: $c8

	ld   bc, $0087                                   ; $6707: $01 $87 $00
	add  [hl]                                        ; $670a: $86
	inc  b                                           ; $670b: $04
	add  [hl]                                        ; $670c: $86
	nop                                              ; $670d: $00
	add  e                                           ; $670e: $83
	jr   z, @+$04                                    ; $670f: $28 $02

	add  hl, hl                                      ; $6711: $29
	jr   z, @+$2b                                    ; $6712: $28 $29

	add  l                                           ; $6714: $85
	nop                                              ; $6715: $00
	ld   [bc], a                                     ; $6716: $02
	adc  l                                           ; $6717: $8d
	ld   h, h                                        ; $6718: $64
	ld   h, [hl]                                     ; $6719: $66
	add  b                                           ; $671a: $80
	ld   h, h                                        ; $671b: $64
	inc  bc                                          ; $671c: $03
	ld   h, a                                        ; $671d: $67
	rla                                              ; $671e: $17
	nop                                              ; $671f: $00
	rst  $38                                         ; $6720: $ff
	add  l                                           ; $6721: $85
	nop                                              ; $6722: $00
	ld   [bc], a                                     ; $6723: $02
	add  $b2                                         ; $6724: $c6 $b2
	or   e                                           ; $6726: $b3
	add  b                                           ; $6727: $80
	or   d                                           ; $6728: $b2
	inc  bc                                          ; $6729: $03
	or   e                                           ; $672a: $b3
	adc  e                                           ; $672b: $8b
	nop                                              ; $672c: $00
	rst  $38                                         ; $672d: $ff
	add  l                                           ; $672e: $85
	nop                                              ; $672f: $00
	nop                                              ; $6730: $00
	ldh  [$82], a                                    ; $6731: $e0 $82
	ld   e, b                                        ; $6733: $58
	inc  bc                                          ; $6734: $03
	ret  c                                           ; $6735: $d8

	call nz, $fc00                                   ; $6736: $c4 $00 $fc
	add  l                                           ; $6739: $85
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	ld   bc, $f081                                   ; $673c: $01 $81 $f0
	ld   bc, $f0fe                                   ; $673f: $01 $fe $f0
	add  c                                           ; $6742: $81
	rst  $38                                         ; $6743: $ff
	add  l                                           ; $6744: $85
	nop                                              ; $6745: $00
	ld   [$c304], sp                                 ; $6746: $08 $04 $c3
	ldh  a, [$c6]                                    ; $6749: $f0 $c6
	adc  d                                           ; $674b: $8a
	cp   e                                           ; $674c: $bb
	or   l                                           ; $674d: $b5
	sub  l                                           ; $674e: $95
	ldh  [$85], a                                    ; $674f: $e0 $85
	nop                                              ; $6751: $00
	ld   [$0e10], sp                                 ; $6752: $08 $10 $0e
	ld   h, $36                                      ; $6755: $26 $36
	di                                               ; $6757: $f3
	ld   a, [hl+]                                    ; $6758: $2a
	jr   z, jr_070_67cf                              ; $6759: $28 $74

	adc  e                                           ; $675b: $8b
	add  l                                           ; $675c: $85
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00
	ld   c, b                                        ; $675f: $48
	add  c                                           ; $6760: $81
	nop                                              ; $6761: $00
	inc  b                                           ; $6762: $04
	or   a                                           ; $6763: $b7
	nop                                              ; $6764: $00
	rra                                              ; $6765: $1f
	sbc  a                                           ; $6766: $9f
	ld   a, a                                        ; $6767: $7f
	add  l                                           ; $6768: $85
	nop                                              ; $6769: $00
	dec  b                                           ; $676a: $05
	ld   l, e                                        ; $676b: $6b
	nop                                              ; $676c: $00
	inc  bc                                          ; $676d: $03
	nop                                              ; $676e: $00
	sub  h                                           ; $676f: $94
	nop                                              ; $6770: $00
	add  b                                           ; $6771: $80
	ld   hl, sp+$00                                  ; $6772: $f8 $00
	db   $fc                                         ; $6774: $fc
	add  l                                           ; $6775: $85
	nop                                              ; $6776: $00
	ld   [$18a4], sp                                 ; $6777: $08 $a4 $18

jr_070_677a:
	ld   hl, sp+$38                                  ; $677a: $f8 $38
	jr   nc, jr_070_67b2                             ; $677c: $30 $34

	or   $74                                         ; $677e: $f6 $74
	ld   a, [$0085]                                  ; $6780: $fa $85 $00
	nop                                              ; $6783: $00
	ld   [$2880], sp                                 ; $6784: $08 $80 $28
	add  b                                           ; $6787: $80
	ld   [$8800], sp                                 ; $6788: $08 $00 $88
	add  b                                           ; $678b: $80
	call nz, $8000                                   ; $678c: $c4 $00 $80
	add  l                                           ; $678f: $85
	nop                                              ; $6790: $00
	ld   bc, $900f                                   ; $6791: $01 $0f $90
	add  d                                           ; $6794: $82
	sbc  b                                           ; $6795: $98
	ld   [bc], a                                     ; $6796: $02
	ld   hl, sp-$68                                  ; $6797: $f8 $98
	rst  $38                                         ; $6799: $ff
	add  l                                           ; $679a: $85
	nop                                              ; $679b: $00
	inc  b                                           ; $679c: $04
	db   $e4                                         ; $679d: $e4
	ret  nz                                          ; $679e: $c0

	db   $d3                                         ; $679f: $d3
	ldh  [$e2], a                                    ; $67a0: $e0 $e2
	add  b                                           ; $67a2: $80
	ldh  [rSB], a                                    ; $67a3: $e0 $01
	ld   h, b                                        ; $67a5: $60
	sub  l                                           ; $67a6: $95
	add  l                                           ; $67a7: $85
	nop                                              ; $67a8: $00
	nop                                              ; $67a9: $00
	add  b                                           ; $67aa: $80
	add  c                                           ; $67ab: $81
	ld   d, b                                        ; $67ac: $50
	inc  b                                           ; $67ad: $04
	cpl                                              ; $67ae: $2f
	nop                                              ; $67af: $00
	xor  a                                           ; $67b0: $af
	rrca                                             ; $67b1: $0f

jr_070_67b2:
	ld   e, a                                        ; $67b2: $5f
	add  l                                           ; $67b3: $85
	nop                                              ; $67b4: $00
	inc  c                                           ; $67b5: $0c
	and  l                                           ; $67b6: $a5
	ld   e, b                                        ; $67b7: $58
	ld   e, c                                        ; $67b8: $59
	ld   e, b                                        ; $67b9: $58
	ld   c, e                                        ; $67ba: $4b
	ld   c, b                                        ; $67bb: $48
	pop  de                                          ; $67bc: $d1
	ret  nz                                          ; $67bd: $c0

	and  $04                                         ; $67be: $e6 $04
	ld   bc, $0a08                                   ; $67c0: $01 $08 $0a
	add  b                                           ; $67c3: $80
	inc  b                                           ; $67c4: $04
	add  b                                           ; $67c5: $80
	ld   bc, $0c80                                   ; $67c6: $01 $80 $0c
	add  b                                           ; $67c9: $80
	ld   a, [bc]                                     ; $67ca: $0a
	add  b                                           ; $67cb: $80
	inc  c                                           ; $67cc: $0c
	dec  b                                           ; $67cd: $05
	ld   a, [bc]                                     ; $67ce: $0a

jr_070_67cf:
	inc  b                                           ; $67cf: $04
	jr   z, jr_070_677a                              ; $67d0: $28 $a8

	jr   z, @+$4a                                    ; $67d2: $28 $48

	add  b                                           ; $67d4: $80
	adc  b                                           ; $67d5: $88
	inc  c                                           ; $67d6: $0c
	ret  z                                           ; $67d7: $c8

	add  sp, -$58                                    ; $67d8: $e8 $a8
	adc  b                                           ; $67da: $88
	ld   c, b                                        ; $67db: $48
	ld   [$d088], sp                                 ; $67dc: $08 $88 $d0
	and  b                                           ; $67df: $a0
	ld   e, c                                        ; $67e0: $59
	nop                                              ; $67e1: $00
	ld   a, a                                        ; $67e2: $7f
	nop                                              ; $67e3: $00
	add  b                                           ; $67e4: $80
	ld   [de], a                                     ; $67e5: $12
	add  b                                           ; $67e6: $80
	ld   a, [de]                                     ; $67e7: $1a
	add  b                                           ; $67e8: $80
	ld   d, $80                                      ; $67e9: $16 $80
	ld   [de], a                                     ; $67eb: $12
	ld   bc, $ff7f                                   ; $67ec: $01 $7f $ff
	add  b                                           ; $67ef: $80
	nop                                              ; $67f0: $00
	inc  bc                                          ; $67f1: $03
	rst  $38                                         ; $67f2: $ff
	nop                                              ; $67f3: $00
	rst  $38                                         ; $67f4: $ff
	nop                                              ; $67f5: $00
	add  b                                           ; $67f6: $80
	ld   [$5d80], sp                                 ; $67f7: $08 $80 $5d
	add  b                                           ; $67fa: $80
	ld   c, c                                        ; $67fb: $49
	add  b                                           ; $67fc: $80
	jp   hl                                          ; $67fd: $e9


	add  b                                           ; $67fe: $80
	rst  $38                                         ; $67ff: $ff
	add  b                                           ; $6800: $80
	nop                                              ; $6801: $00
	ld   [bc], a                                     ; $6802: $02
	rst  $38                                         ; $6803: $ff
	nop                                              ; $6804: $00
	ld   hl, sp-$7f                                  ; $6805: $f8 $81
	inc  b                                           ; $6807: $04
	add  h                                           ; $6808: $84
	or   h                                           ; $6809: $b4
	add  b                                           ; $680a: $80
	db   $fc                                         ; $680b: $fc
	add  b                                           ; $680c: $80
	nop                                              ; $680d: $00
	ld   bc, $fffc                                   ; $680e: $01 $fc $ff
	add  d                                           ; $6811: $82
	cp   $82                                         ; $6812: $fe $82
	rst  $38                                         ; $6814: $ff
	add  b                                           ; $6815: $80
	db   $fc                                         ; $6816: $fc
	dec  b                                           ; $6817: $05
	ldh  a, [$f7]                                    ; $6818: $f0 $f7
	rst  $20                                         ; $681a: $e7
	ld   [$df2a], a                                  ; $681b: $ea $2a $df
	add  b                                           ; $681e: $80
	cp   a                                           ; $681f: $bf
	ld   [$7fff], sp                                 ; $6820: $08 $ff $7f
	dec  hl                                          ; $6823: $2b
	xor  e                                           ; $6824: $ab
	rst  JumpTable                                         ; $6825: $df
	ld   e, a                                        ; $6826: $5f
	ccf                                              ; $6827: $3f
	cp   a                                           ; $6828: $bf
	rst  $38                                         ; $6829: $ff
	add  b                                           ; $682a: $80
	ld   e, a                                        ; $682b: $5f
	inc  bc                                          ; $682c: $03
	adc  a                                           ; $682d: $8f
	sbc  a                                           ; $682e: $9f
	pop  hl                                          ; $682f: $e1
	pop  af                                          ; $6830: $f1
	add  b                                           ; $6831: $80
	db   $fc                                         ; $6832: $fc
	add  b                                           ; $6833: $80
	cp   $80                                         ; $6834: $fe $80
	db   $f4                                         ; $6836: $f4
	inc  bc                                          ; $6837: $03
	ld   [$d4ca], a                                  ; $6838: $ea $ca $d4
	db   $f4                                         ; $683b: $f4
	add  b                                           ; $683c: $80
	ldh  [rTIMA], a                                  ; $683d: $e0 $05
	pop  af                                          ; $683f: $f1
	xor  $cb                                         ; $6840: $ee $cb
	db   $eb                                         ; $6842: $eb
	adc  d                                           ; $6843: $8a
	xor  d                                           ; $6844: $aa
	add  b                                           ; $6845: $80
	ld   c, e                                        ; $6846: $4b
	dec  bc                                          ; $6847: $0b
	rst  JumpTable                                         ; $6848: $df
	ret  nz                                          ; $6849: $c0

	add  b                                           ; $684a: $80
	sub  e                                           ; $684b: $93
	nop                                              ; $684c: $00
	ld   [de], a                                     ; $684d: $12
	ld   e, h                                        ; $684e: $5c
	dec  c                                           ; $684f: $0d
	xor  b                                           ; $6850: $a8
	inc  bc                                          ; $6851: $03
	ld   l, b                                        ; $6852: $68
	ld   l, c                                        ; $6853: $69
	add  c                                           ; $6854: $81
	ld   l, b                                        ; $6855: $68
	rrca                                             ; $6856: $0f
	ld   l, d                                        ; $6857: $6a
	ld   hl, sp+$01                                  ; $6858: $f8 $01
	nop                                              ; $685a: $00
	db   $fc                                         ; $685b: $fc
	nop                                              ; $685c: $00
	inc  bc                                          ; $685d: $03
	nop                                              ; $685e: $00
	cp   $00                                         ; $685f: $fe $00
	ld   h, l                                        ; $6861: $65
	ld   l, b                                        ; $6862: $68
	jp   hl                                          ; $6863: $e9


	db   $ed                                         ; $6864: $ed
	sbc  $c8                                         ; $6865: $de $c8
	add  b                                           ; $6867: $80
	push de                                          ; $6868: $d5
	dec  bc                                          ; $6869: $0b
	ld   a, [hl-]                                    ; $686a: $3a
	ld   a, [de]                                     ; $686b: $1a
	sub  a                                           ; $686c: $97
	inc  d                                           ; $686d: $14
	ld   e, l                                        ; $686e: $5d
	inc  a                                           ; $686f: $3c
	dec  e                                           ; $6870: $1d
	jr   c, jr_070_68a6                              ; $6871: $38 $33

	and  h                                           ; $6873: $a4
	call nz, $8044                                   ; $6874: $c4 $44 $80
	add  d                                           ; $6877: $82
	inc  bc                                          ; $6878: $03
	inc  d                                           ; $6879: $14
	ld   b, $a0                                      ; $687a: $06 $a0
	and  e                                           ; $687c: $a3
	add  b                                           ; $687d: $80
	ld   d, l                                        ; $687e: $55
	ld   bc, $8bba                                   ; $687f: $01 $ba $8b
	add  b                                           ; $6882: $80
	push bc                                          ; $6883: $c5
	ld   a, [bc]                                     ; $6884: $0a
	scf                                              ; $6885: $37
	jr   @+$04                                       ; $6886: $18 $02

	nop                                              ; $6888: $00
	ld   [$0100], sp                                 ; $6889: $08 $00 $01
	nop                                              ; $688c: $00
	stop                                             ; $688d: $10 $00
	inc  b                                           ; $688f: $04
	add  b                                           ; $6890: $80
	jr   @-$7e                                       ; $6891: $18 $80

	add  [hl]                                        ; $6893: $86
	dec  de                                          ; $6894: $1b
	add  c                                           ; $6895: $81
	ld   a, h                                        ; $6896: $7c
	ld   [hl], b                                     ; $6897: $70
	halt                                             ; $6898: $76
	ld   [hl], b                                     ; $6899: $70

jr_070_689a:
	ld   [hl], d                                     ; $689a: $72
	jr   nc, jr_070_68d3                             ; $689b: $30 $36

	jr   c, jr_070_68d9                              ; $689d: $38 $3a

	jr   c, @-$46                                    ; $689f: $38 $b8

	jr   jr_070_68e1                                 ; $68a1: $18 $3e

	jr   jr_070_68e5                                 ; $68a3: $18 $40

	add  b                                           ; $68a5: $80

jr_070_68a6:
	call c, $2f00                                    ; $68a6: $dc $00 $2f
	rrca                                             ; $68a9: $0f
	xor  a                                           ; $68aa: $af
	nop                                              ; $68ab: $00
	add  b                                           ; $68ac: $80
	nop                                              ; $68ad: $00
	and  b                                           ; $68ae: $a0
	rrca                                             ; $68af: $0f
	nop                                              ; $68b0: $00
	add  b                                           ; $68b1: $80
	and  b                                           ; $68b2: $a0
	add  b                                           ; $68b3: $80
	sbc  a                                           ; $68b4: $9f
	ld   de, $9580                                   ; $68b5: $11 $80 $95
	nop                                              ; $68b8: $00
	pop  de                                          ; $68b9: $d1
	ret  nz                                          ; $68ba: $c0

	push de                                          ; $68bb: $d5
	nop                                              ; $68bc: $00
	dec  b                                           ; $68bd: $05
	nop                                              ; $68be: $00
	dec  d                                           ; $68bf: $15
	ret  nz                                          ; $68c0: $c0

	ld   bc, $1504                                   ; $68c1: $01 $04 $15
	sub  h                                           ; $68c4: $94
	call nc, $b514                                   ; $68c5: $d4 $14 $b5
	add  b                                           ; $68c8: $80
	rrca                                             ; $68c9: $0f
	add  b                                           ; $68ca: $80
	rlca                                             ; $68cb: $07
	add  b                                           ; $68cc: $80
	inc  bc                                          ; $68cd: $03
	add  b                                           ; $68ce: $80
	rlca                                             ; $68cf: $07
	add  b                                           ; $68d0: $80
	inc  bc                                          ; $68d1: $03
	add  b                                           ; $68d2: $80

jr_070_68d3:
	dec  b                                           ; $68d3: $05
	add  b                                           ; $68d4: $80
	dec  bc                                          ; $68d5: $0b
	ld   bc, $f102                                   ; $68d6: $01 $02 $f1

jr_070_68d9:
	add  b                                           ; $68d9: $80
	ret  nc                                          ; $68da: $d0

	ld   bc, $a4a0                                   ; $68db: $01 $a0 $a4
	add  b                                           ; $68de: $80
	ret  nc                                          ; $68df: $d0

	inc  bc                                          ; $68e0: $03

jr_070_68e1:
	ret  nz                                          ; $68e1: $c0

	ret  nc                                          ; $68e2: $d0

	xor  b                                           ; $68e3: $a8
	cp   [hl]                                        ; $68e4: $be

jr_070_68e5:
	add  b                                           ; $68e5: $80
	db   $fc                                         ; $68e6: $fc
	ld   b, $dc                                      ; $68e7: $06 $dc
	sbc  $80                                         ; $68e9: $de $80

jr_070_68eb:
	adc  a                                           ; $68eb: $8f
	nop                                              ; $68ec: $00
	inc  c                                           ; $68ed: $0c
	nop                                              ; $68ee: $00
	add  b                                           ; $68ef: $80
	ld   a, $80                                      ; $68f0: $3e $80
	ld   e, [hl]                                     ; $68f2: $5e
	add  b                                           ; $68f3: $80
	ld   a, $80                                      ; $68f4: $3e $80
	ld   e, [hl]                                     ; $68f6: $5e
	add  b                                           ; $68f7: $80
	ld   c, $05                                      ; $68f8: $0e $05
	ld   l, [hl]                                     ; $68fa: $6e
	ld   c, [hl]                                     ; $68fb: $4e
	stop                                             ; $68fc: $10 $00
	jr   nc, jr_070_6900                             ; $68fe: $30 $00

jr_070_6900:
	add  c                                           ; $6900: $81
	ld   [hl], c                                     ; $6901: $71
	add  d                                           ; $6902: $82
	ld   de, $7100                                   ; $6903: $11 $00 $71
	add  b                                           ; $6906: $80
	ld   sp, $7180                                   ; $6907: $31 $80 $71
	inc  b                                           ; $690a: $04
	jp   $c000                                       ; $690b: $c3 $00 $c0


	nop                                              ; $690e: $00
	ld   hl, sp-$7f                                  ; $690f: $f8 $81
	ld   [$3804], sp                                 ; $6911: $08 $04 $38
	ld   [$0828], sp                                 ; $6914: $08 $28 $08
	jr   z, jr_070_689a                              ; $6917: $28 $81

	ret  z                                           ; $6919: $c8

	ld   [bc], a                                     ; $691a: $02
	ld   [bc], a                                     ; $691b: $02
	nop                                              ; $691c: $00
	rrca                                             ; $691d: $0f
	add  c                                           ; $691e: $81
	ld   c, $80                                      ; $691f: $0e $80
	inc  c                                           ; $6921: $0c
	inc  b                                           ; $6922: $04
	ld   [bc], a                                     ; $6923: $02
	ld   bc, $170b                                   ; $6924: $01 $0b $17
	rra                                              ; $6927: $1f
	add  b                                           ; $6928: $80
	ld   a, [bc]                                     ; $6929: $0a
	add  b                                           ; $692a: $80
	nop                                              ; $692b: $00
	add  b                                           ; $692c: $80
	ld   e, a                                        ; $692d: $5f
	inc  bc                                          ; $692e: $03
	dec  sp                                          ; $692f: $3b
	ld   a, e                                        ; $6930: $7b
	or   a                                           ; $6931: $b7
	rst  $30                                         ; $6932: $f7
	add  b                                           ; $6933: $80
	ei                                               ; $6934: $fb
	inc  bc                                          ; $6935: $03
	sub  $f6                                         ; $6936: $d6 $f6
	inc  de                                          ; $6938: $13
	inc  sp                                          ; $6939: $33
	add  b                                           ; $693a: $80
	or   d                                           ; $693b: $b2
	add  b                                           ; $693c: $80
	ld   l, b                                        ; $693d: $68
	add  b                                           ; $693e: $80
	db   $eb                                         ; $693f: $eb
	add  b                                           ; $6940: $80
	ld   [hl], a                                     ; $6941: $77
	add  b                                           ; $6942: $80
	and  l                                           ; $6943: $a5
	add  b                                           ; $6944: $80
	ld   e, e                                        ; $6945: $5b
	add  b                                           ; $6946: $80
	dec  c                                           ; $6947: $0d
	add  b                                           ; $6948: $80
	ld   d, $07                                      ; $6949: $16 $07
	inc  b                                           ; $694b: $04
	ld   d, h                                        ; $694c: $54
	ld   [bc], a                                     ; $694d: $02
	ld   d, [hl]                                     ; $694e: $56
	ld   a, [$dcfc]                                  ; $694f: $fa $fc $dc
	sbc  $80                                         ; $6952: $de $80
	xor  b                                           ; $6954: $a8
	add  b                                           ; $6955: $80
	ld   b, b                                        ; $6956: $40
	inc  bc                                          ; $6957: $03
	add  sp, -$17                                    ; $6958: $e8 $e9
	ret  nz                                          ; $695a: $c0

	adc  $80                                         ; $695b: $ce $80
	ld   b, b                                        ; $695d: $40
	ld   bc, $9880                                   ; $695e: $01 $80 $98
	add  b                                           ; $6961: $80
	nop                                              ; $6962: $00
	add  c                                           ; $6963: $81
	ld   b, b                                        ; $6964: $40
	ld   [bc], a                                     ; $6965: $02
	ld   d, b                                        ; $6966: $50
	nop                                              ; $6967: $00
	jr   jr_070_68eb                                 ; $6968: $18 $81

	ld   b, c                                        ; $696a: $41
	ld   b, $42                                      ; $696b: $06 $42
	ld   bc, $03ec                                   ; $696d: $01 $ec $03
	ld   [hl-], a                                    ; $6970: $32
	ld   a, b                                        ; $6971: $78
	inc  a                                           ; $6972: $3c
	add  b                                           ; $6973: $80
	ld   [hl], b                                     ; $6974: $70
	inc  a                                           ; $6975: $3c
	ldh  a, [rSVBK]                                  ; $6976: $f0 $70
	db   $f4                                         ; $6978: $f4
	call nc, $1333                                   ; $6979: $d4 $33 $13
	inc  sp                                          ; $697c: $33
	push de                                          ; $697d: $d5
	inc  de                                          ; $697e: $13
	call nz, $6b1f                                   ; $697f: $c4 $1f $6b
	xor  a                                           ; $6982: $af
	db   $ec                                         ; $6983: $ec
	rst  $28                                         ; $6984: $ef
	ret  z                                           ; $6985: $c8

	rst  $28                                         ; $6986: $ef
	adc  b                                           ; $6987: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6988: $cf
	and  d                                           ; $6989: $a2
	rst  $38                                         ; $698a: $ff
	call z, Call_070_59ff                            ; $698b: $cc $ff $59
	rst  $38                                         ; $698e: $ff
	ld   sp, $f4ff                                   ; $698f: $31 $ff $f4
	ldh  [$60], a                                    ; $6992: $e0 $60
	ld   hl, sp+$50                                  ; $6994: $f8 $50
	cp   $06                                         ; $6996: $fe $06
	rst  $38                                         ; $6998: $ff
	ld   b, a                                        ; $6999: $47
	rst  $38                                         ; $699a: $ff
	jp   nc, $d2ff                                   ; $699b: $d2 $ff $d2

	db   $fd                                         ; $699e: $fd
	ld   c, h                                        ; $699f: $4c
	ld   b, c                                        ; $69a0: $41
	ld   a, e                                        ; $69a1: $7b
	nop                                              ; $69a2: $00
	ld   a, d                                        ; $69a3: $7a
	nop                                              ; $69a4: $00
	ld   e, $00                                      ; $69a5: $1e $00
	ld   b, $80                                      ; $69a7: $06 $80
	add  c                                           ; $69a9: $81
	ldh  [hScriptOpcodeParams], a                                    ; $69aa: $e0 $a0
	ld   hl, sp+$18                                  ; $69ac: $f8 $18
	cp   $1b                                         ; $69ae: $fe $1b
	ld   a, [hl]                                     ; $69b0: $7e
	call nz, $8180                                   ; $69b1: $c4 $80 $81
	and  b                                           ; $69b4: $a0
	add  e                                           ; $69b5: $83
	cp   b                                           ; $69b6: $b8
	ld   c, $60                                      ; $69b7: $0e $60
	jr   jr_070_69da                                 ; $69b9: $18 $1f

	nop                                              ; $69bb: $00
	add  b                                           ; $69bc: $80
	nop                                              ; $69bd: $00
	ld   l, [hl]                                     ; $69be: $6e
	inc  d                                           ; $69bf: $14
	ld   d, l                                        ; $69c0: $55
	inc  d                                           ; $69c1: $14
	sub  h                                           ; $69c2: $94
	inc  d                                           ; $69c3: $14
	ld   d, h                                        ; $69c4: $54
	inc  d                                           ; $69c5: $14
	ld   d, h                                        ; $69c6: $54
	add  c                                           ; $69c7: $81
	inc  d                                           ; $69c8: $14
	inc  b                                           ; $69c9: $04
	dec  de                                          ; $69ca: $1b
	nop                                              ; $69cb: $00
	ret  nz                                          ; $69cc: $c0

	nop                                              ; $69cd: $00
	rst  $28                                         ; $69ce: $ef
	add  b                                           ; $69cf: $80
	inc  b                                           ; $69d0: $04
	add  b                                           ; $69d1: $80
	ld   [$0180], sp                                 ; $69d2: $08 $80 $01
	add  b                                           ; $69d5: $80
	dec  bc                                          ; $69d6: $0b
	add  d                                           ; $69d7: $82
	rlca                                             ; $69d8: $07
	add  b                                           ; $69d9: $80

jr_070_69da:
	dec  bc                                          ; $69da: $0b
	dec  bc                                          ; $69db: $0b
	rrca                                             ; $69dc: $0f
	db   $ec                                         ; $69dd: $ec
	nop                                              ; $69de: $00
	ld   [de], a                                     ; $69df: $12
	ld   e, h                                        ; $69e0: $5c
	inc  c                                           ; $69e1: $0c
	xor  b                                           ; $69e2: $a8
	db   $fd                                         ; $69e3: $fd
	ld   a, [$dcfc]                                  ; $69e4: $fa $fc $dc
	rst  JumpTable                                         ; $69e7: $df
	add  b                                           ; $69e8: $80
	xor  b                                           ; $69e9: $a8
	inc  b                                           ; $69ea: $04
	ld   b, b                                        ; $69eb: $40
	ld   b, d                                        ; $69ec: $42
	add  sp, -$1b                                    ; $69ed: $e8 $e5
	ld   a, $80                                      ; $69ef: $3e $80
	inc  [hl]                                        ; $69f1: $34
	add  b                                           ; $69f2: $80
	ld   [$0702], sp                                 ; $69f3: $08 $02 $07
	nop                                              ; $69f6: $00
	ld   hl, sp-$7d                                  ; $69f7: $f8 $83
	jr   nc, jr_070_69fd                             ; $69f9: $30 $02

	rra                                              ; $69fb: $1f
	nop                                              ; $69fc: $00

jr_070_69fd:
	sub  c                                           ; $69fd: $91
	add  c                                           ; $69fe: $81
	ld   [hl], c                                     ; $69ff: $71
	ld   [bc], a                                     ; $6a00: $02
	ld   [hl], e                                     ; $6a01: $73
	ld   [hl], b                                     ; $6a02: $70
	db   $fc                                         ; $6a03: $fc
	add  e                                           ; $6a04: $83
	nop                                              ; $6a05: $00
	inc  b                                           ; $6a06: $04
	rlca                                             ; $6a07: $07
	nop                                              ; $6a08: $00
	rst  $38                                         ; $6a09: $ff
	nop                                              ; $6a0a: $00
	call z, $c881                                    ; $6a0b: $cc $81 $c8
	nop                                              ; $6a0e: $00
	call z, $0081                                    ; $6a0f: $cc $81 $00
	inc  c                                           ; $6a12: $0c
	jr   nc, jr_070_6a15                             ; $6a13: $30 $00

jr_070_6a15:
	ld   bc, $ff00                                   ; $6a15: $01 $00 $ff
	nop                                              ; $6a18: $00
	ld   e, $00                                      ; $6a19: $1e $00
	ld   [de], a                                     ; $6a1b: $12
	inc  c                                           ; $6a1c: $0c
	rra                                              ; $6a1d: $1f
	ld   c, $df                                      ; $6a1e: $0e $df
	add  c                                           ; $6a20: $81
	jr   nc, @+$06                                   ; $6a21: $30 $04

	ld   sp, $ce00                                   ; $6a23: $31 $00 $ce
	jr   nc, @+$01                                   ; $6a26: $30 $ff

	add  c                                           ; $6a28: $81
	jr   nc, jr_070_6a30                             ; $6a29: $30 $05

	db   $ec                                         ; $6a2b: $ec
	nop                                              ; $6a2c: $00
	ld   l, h                                        ; $6a2d: $6c
	nop                                              ; $6a2e: $00
	add  b                                           ; $6a2f: $80

jr_070_6a30:
	ld   bc, $0080                                   ; $6a30: $01 $80 $00
	nop                                              ; $6a33: $00
	cp   $81                                         ; $6a34: $fe $81
	nop                                              ; $6a36: $00
	ld   b, $02                                      ; $6a37: $06 $02
	nop                                              ; $6a39: $00
	sbc  $00                                         ; $6a3a: $de $00
	add  b                                           ; $6a3c: $80
	ld   b, b                                        ; $6a3d: $40
	ld   b, e                                        ; $6a3e: $43
	add  c                                           ; $6a3f: $81
	ld   b, b                                        ; $6a40: $40
	inc  bc                                          ; $6a41: $03
	and  e                                           ; $6a42: $a3
	add  b                                           ; $6a43: $80
	cp   h                                           ; $6a44: $bc
	add  b                                           ; $6a45: $80
	add  c                                           ; $6a46: $81
	nop                                              ; $6a47: $00
	add  b                                           ; $6a48: $80
	ld   bc, $0007                                   ; $6a49: $01 $07 $00
	ccf                                              ; $6a4c: $3f
	nop                                              ; $6a4d: $00
	pop  bc                                          ; $6a4e: $c1
	nop                                              ; $6a4f: $00
	ld   e, $01                                      ; $6a50: $1e $01
	pop  hl                                          ; $6a52: $e1
	add  b                                           ; $6a53: $80
	inc  bc                                          ; $6a54: $03
	add  b                                           ; $6a55: $80
	rlca                                             ; $6a56: $07
	dec  e                                           ; $6a57: $1d
	dec  bc                                          ; $6a58: $0b
	ld   a, [bc]                                     ; $6a59: $0a
	ld   b, [hl]                                     ; $6a5a: $46
	ld   b, l                                        ; $6a5b: $45
	db   $fd                                         ; $6a5c: $fd
	dec  a                                           ; $6a5d: $3d
	rrca                                             ; $6a5e: $0f
	ret  z                                           ; $6a5f: $c8

	ccf                                              ; $6a60: $3f
	ld   [hl-], a                                    ; $6a61: $32
	rst  $38                                         ; $6a62: $ff
	or   $ff                                         ; $6a63: $f6 $ff
	db   $f4                                         ; $6a65: $f4
	rst  $38                                         ; $6a66: $ff
	add  sp, -$01                                    ; $6a67: $e8 $ff
	db   $dd                                         ; $6a69: $dd
	cp   $3e                                         ; $6a6a: $fe $3e
	ld   e, [hl]                                     ; $6a6c: $5e
	adc  e                                           ; $6a6d: $8b
	rra                                              ; $6a6e: $1f
	ldh  [c], a                                      ; $6a6f: $e2
	rra                                              ; $6a70: $1f
	rla                                              ; $6a71: $17
	rra                                              ; $6a72: $1f
	rst  JumpTable                                         ; $6a73: $df
	rra                                              ; $6a74: $1f
	rst  $38                                         ; $6a75: $ff
	add  b                                           ; $6a76: $80
	jp   $0080                                       ; $6a77: $c3 $80 $00


	add  b                                           ; $6a7a: $80
	inc  [hl]                                        ; $6a7b: $34
	inc  de                                          ; $6a7c: $13
	and  e                                           ; $6a7d: $a3
	or   h                                           ; $6a7e: $b4
	rst  $38                                         ; $6a7f: $ff
	ldh  [c], a                                      ; $6a80: $e2
	cp   $f1                                         ; $6a81: $fe $f1
	db   $fd                                         ; $6a83: $fd
	ldh  a, [c]                                      ; $6a84: $f2
	cp   $f1                                         ; $6a85: $fe $f1
	rst  $38                                         ; $6a87: $ff
	ldh  a, [$fe]                                    ; $6a88: $f0 $fe
	push hl                                          ; $6a8a: $e5
	ld   a, a                                        ; $6a8b: $7f
	ld   l, h                                        ; $6a8c: $6c

jr_070_6a8d:
	ld   a, [hl]                                     ; $6a8d: $7e
	ld   [hl], h                                     ; $6a8e: $74
	nop                                              ; $6a8f: $00
	db   $10                                         ; $6a90: $10
	add  a                                           ; $6a91: $87
	nop                                              ; $6a92: $00
	ld   bc, $0018                                   ; $6a93: $01 $18 $00
	add  b                                           ; $6a96: $80
	rlca                                             ; $6a97: $07
	dec  c                                           ; $6a98: $0d
	xor  b                                           ; $6a99: $a8
	rst  $38                                         ; $6a9a: $ff
	rlca                                             ; $6a9b: $07
	ld   a, a                                        ; $6a9c: $7f
	push de                                          ; $6a9d: $d5
	rst  $38                                         ; $6a9e: $ff
	ld   d, d                                        ; $6a9f: $52
	ld   a, a                                        ; $6aa0: $7f
	xor  [hl]                                        ; $6aa1: $ae
	sub  a                                           ; $6aa2: $97
	ld   a, [de]                                     ; $6aa3: $1a
	dec  hl                                          ; $6aa4: $2b
	ld   hl, $8001                                   ; $6aa5: $21 $01 $80
	ld   [bc], a                                     ; $6aa8: $02
	dec  c                                           ; $6aa9: $0d
	ld   a, h                                        ; $6aaa: $7c
	add  b                                           ; $6aab: $80
	rst  $38                                         ; $6aac: $ff
	db   $fc                                         ; $6aad: $fc
	ld   a, a                                        ; $6aae: $7f
	rst  $38                                         ; $6aaf: $ff
	ld   l, [hl]                                     ; $6ab0: $6e
	rst  $38                                         ; $6ab1: $ff
	push bc                                          ; $6ab2: $c5
	rst  $38                                         ; $6ab3: $ff
	adc  e                                           ; $6ab4: $8b
	rst  $38                                         ; $6ab5: $ff
	ld   d, l                                        ; $6ab6: $55
	push af                                          ; $6ab7: $f5
	add  b                                           ; $6ab8: $80
	xor  b                                           ; $6ab9: $a8
	add  b                                           ; $6aba: $80
	nop                                              ; $6abb: $00
	ld   c, $ff                                      ; $6abc: $0e $ff
	nop                                              ; $6abe: $00
	ld   a, l                                        ; $6abf: $7d
	rst  $38                                         ; $6ac0: $ff
	inc  a                                           ; $6ac1: $3c
	rst  $38                                         ; $6ac2: $ff
	inc  d                                           ; $6ac3: $14
	cp   $b3                                         ; $6ac4: $fe $b3
	rst  $28                                         ; $6ac6: $ef
	ld   b, d                                        ; $6ac7: $42
	ld   e, d                                        ; $6ac8: $5a
	stop                                             ; $6ac9: $10 $00
	rrca                                             ; $6acb: $0f
	add  b                                           ; $6acc: $80
	ld   b, $80                                      ; $6acd: $06 $80
	inc  b                                           ; $6acf: $04
	inc  bc                                          ; $6ad0: $03
	ld   [bc], a                                     ; $6ad1: $02
	ld   c, $00                                      ; $6ad2: $0e $00
	inc  bc                                          ; $6ad4: $03
	add  c                                           ; $6ad5: $81
	nop                                              ; $6ad6: $00
	ld   b, $0e                                      ; $6ad7: $06 $0e
	nop                                              ; $6ad9: $00
	ld   bc, $f000                                   ; $6ada: $01 $00 $f0
	ret  nc                                          ; $6add: $d0

	rst  JumpTable                                         ; $6ade: $df
	add  b                                           ; $6adf: $80
	ld   b, b                                        ; $6ae0: $40
	dec  c                                           ; $6ae1: $0d
	add  b                                           ; $6ae2: $80
	or   b                                           ; $6ae3: $b0

jr_070_6ae4:
	nop                                              ; $6ae4: $00
	ret  nz                                          ; $6ae5: $c0

	nop                                              ; $6ae6: $00
	ld   bc, $2100                                   ; $6ae7: $01 $00 $21
	nop                                              ; $6aea: $00
	db   $dd                                         ; $6aeb: $dd
	nop                                              ; $6aec: $00
	dec  e                                           ; $6aed: $1d
	nop                                              ; $6aee: $00
	ldh  [$83], a                                    ; $6aef: $e0 $83
	nop                                              ; $6af1: $00
	nop                                              ; $6af2: $00
	ret  nz                                          ; $6af3: $c0

	add  c                                           ; $6af4: $81
	nop                                              ; $6af5: $00
	inc  b                                           ; $6af6: $04

jr_070_6af7:
	ld   b, b                                        ; $6af7: $40
	nop                                              ; $6af8: $00
	sub  b                                           ; $6af9: $90
	nop                                              ; $6afa: $00
	db   $10                                         ; $6afb: $10
	adc  l                                           ; $6afc: $8d
	nop                                              ; $6afd: $00
	nop                                              ; $6afe: $00
	and  b                                           ; $6aff: $a0
	add  b                                           ; $6b00: $80
	nop                                              ; $6b01: $00
	nop                                              ; $6b02: $00
	ld   b, b                                        ; $6b03: $40
	add  b                                           ; $6b04: $80
	ld   h, b                                        ; $6b05: $60
	add  b                                           ; $6b06: $80
	jr   nz, jr_070_6a8d                             ; $6b07: $20 $84

	ld   h, b                                        ; $6b09: $60
	add  b                                           ; $6b0a: $80
	nop                                              ; $6b0b: $00
	ld   bc, $30d0                                   ; $6b0c: $01 $d0 $30
	adc  b                                           ; $6b0f: $88
	nop                                              ; $6b10: $00
	inc  b                                           ; $6b11: $04
	dec  a                                           ; $6b12: $3d
	jr   nc, jr_070_6af7                             ; $6b13: $30 $e2

	and  h                                           ; $6b15: $a4
	ld   c, e                                        ; $6b16: $4b
	add  c                                           ; $6b17: $81
	nop                                              ; $6b18: $00
	ld   c, $03                                      ; $6b19: $0e $03
	nop                                              ; $6b1b: $00
	halt                                             ; $6b1c: $76
	ld   sp, $22ab                                   ; $6b1d: $31 $ab $22
	inc  sp                                          ; $6b20: $33
	ld   e, b                                        ; $6b21: $58
	ld   e, [hl]                                     ; $6b22: $5e
	jr   nz, jr_070_6b5d                             ; $6b23: $20 $38

jr_070_6b25:
	add  b                                           ; $6b25: $80
	ld   e, e                                        ; $6b26: $5b
	ld   sp, $80f5                                   ; $6b27: $31 $f5 $80
	add  hl, de                                      ; $6b2a: $19
	add  b                                           ; $6b2b: $80
	ld   e, [hl]                                     ; $6b2c: $5e
	dec  bc                                          ; $6b2d: $0b
	adc  e                                           ; $6b2e: $8b
	db   $eb                                         ; $6b2f: $eb
	dec  b                                           ; $6b30: $05
	add  l                                           ; $6b31: $85
	ld   [bc], a                                     ; $6b32: $02
	inc  bc                                          ; $6b33: $03
	nop                                              ; $6b34: $00
	ld   b, $00                                      ; $6b35: $06 $00
	xor  b                                           ; $6b37: $a8
	nop                                              ; $6b38: $00
	ld   c, b                                        ; $6b39: $48
	add  c                                           ; $6b3a: $81
	ldh  a, [$0c]                                    ; $6b3b: $f0 $0c
	ei                                               ; $6b3d: $fb
	ret  nz                                          ; $6b3e: $c0

	jp   nz, Jump_070_6200                           ; $6b3f: $c2 $00 $62

	nop                                              ; $6b42: $00
	adc  a                                           ; $6b43: $8f
	nop                                              ; $6b44: $00
	ld   a, a                                        ; $6b45: $7f
	nop                                              ; $6b46: $00
	jp   $0dad                                       ; $6b47: $c3 $ad $0d


	add  b                                           ; $6b4a: $80
	ld   e, d                                        ; $6b4b: $5a
	add  b                                           ; $6b4c: $80
	cp   e                                           ; $6b4d: $bb
	add  b                                           ; $6b4e: $80
	halt                                             ; $6b4f: $76
	add  b                                           ; $6b50: $80
	push af                                          ; $6b51: $f5
	inc  bc                                          ; $6b52: $03
	halt                                             ; $6b53: $76
	sub  [hl]                                        ; $6b54: $96
	inc  c                                           ; $6b55: $0c
	db   $ec                                         ; $6b56: $ec
	add  b                                           ; $6b57: $80
	nop                                              ; $6b58: $00
	add  b                                           ; $6b59: $80
	ld   [$1882], sp                                 ; $6b5a: $08 $82 $18

jr_070_6b5d:
	add  b                                           ; $6b5d: $80
	inc  e                                           ; $6b5e: $1c
	add  b                                           ; $6b5f: $80
	inc  a                                           ; $6b60: $3c
	add  b                                           ; $6b61: $80
	jr   c, jr_070_6ae4                              ; $6b62: $38 $80

	jr   jr_070_6b6d                                 ; $6b64: $18 $07

	inc  e                                           ; $6b66: $1c
	jr   jr_070_6b25                                 ; $6b67: $18 $bc

	or   b                                           ; $6b69: $b0
	call c, Call_070_5ad4                            ; $6b6a: $dc $d4 $5a

jr_070_6b6d:
	ld   e, e                                        ; $6b6d: $5b
	add  b                                           ; $6b6e: $80
	db   $ec                                         ; $6b6f: $ec
	add  b                                           ; $6b70: $80
	ld   l, [hl]                                     ; $6b71: $6e
	dec  bc                                          ; $6b72: $0b
	xor  h                                           ; $6b73: $ac
	xor  d                                           ; $6b74: $aa
	ld   [hl], b                                     ; $6b75: $70
	halt                                             ; $6b76: $76
	nop                                              ; $6b77: $00
	adc  $02                                         ; $6b78: $ce $02
	db   $10                                         ; $6b7a: $10
	dec  c                                           ; $6b7b: $0d
	adc  a                                           ; $6b7c: $8f
	rrca                                             ; $6b7d: $0f
	ld   a, a                                        ; $6b7e: $7f
	add  b                                           ; $6b7f: $80
	inc  bc                                          ; $6b80: $03
	add  hl, bc                                      ; $6b81: $09
	nop                                              ; $6b82: $00
	ld   b, $00                                      ; $6b83: $06 $00
	pop  de                                          ; $6b85: $d1
	ret  nz                                          ; $6b86: $c0

	ld   e, $00                                      ; $6b87: $1e $00
	ld   a, [$af8c]                                  ; $6b89: $fa $8c $af
	add  b                                           ; $6b8c: $80
	adc  h                                           ; $6b8d: $8c
	add  b                                           ; $6b8e: $80
	ld   a, d                                        ; $6b8f: $7a
	add  hl, bc                                      ; $6b90: $09
	ret  nc                                          ; $6b91: $d0

	call nc, $a3a0                                   ; $6b92: $d4 $a0 $a3
	ld   b, b                                        ; $6b95: $40
	pop  bc                                          ; $6b96: $c1
	nop                                              ; $6b97: $00
	ld   h, d                                        ; $6b98: $62
	nop                                              ; $6b99: $00
	dec  de                                          ; $6b9a: $1b
	add  c                                           ; $6b9b: $81
	nop                                              ; $6b9c: $00
	inc  c                                           ; $6b9d: $0c
	ret  nz                                          ; $6b9e: $c0

	nop                                              ; $6b9f: $00
	ld   l, [hl]                                     ; $6ba0: $6e
	inc  c                                           ; $6ba1: $0c
	ld   d, l                                        ; $6ba2: $55
	ld   b, h                                        ; $6ba3: $44
	ld   c, h                                        ; $6ba4: $4c
	ld   a, [de]                                     ; $6ba5: $1a
	ld   a, [$9c04]                                  ; $6ba6: $fa $04 $9c
	ld   bc, $8986                                   ; $6ba9: $01 $86 $89
	nop                                              ; $6bac: $00
	add  hl, bc                                      ; $6bad: $09
	cp   h                                           ; $6bae: $bc
	inc  c                                           ; $6baf: $0c
	ld   b, a                                        ; $6bb0: $47
	dec  h                                           ; $6bb1: $25
	call c, Boot                                     ; $6bb2: $dc $00 $01
	nop                                              ; $6bb5: $00
	inc  bc                                          ; $6bb6: $03
	inc  b                                           ; $6bb7: $04
	add  b                                           ; $6bb8: $80
	ld   a, [bc]                                     ; $6bb9: $0a
	dec  c                                           ; $6bba: $0d
	rlca                                             ; $6bbb: $07
	rrca                                             ; $6bbc: $0f
	rlca                                             ; $6bbd: $07
	rrca                                             ; $6bbe: $0f
	inc  bc                                          ; $6bbf: $03
	rrca                                             ; $6bc0: $0f
	ld   [bc], a                                     ; $6bc1: $02
	add  hl, bc                                      ; $6bc2: $09
	and  $00                                         ; $6bc3: $e6 $00
	cp   b                                           ; $6bc5: $b8
	nop                                              ; $6bc6: $00
	db   $10                                         ; $6bc7: $10
	ld   b, b                                        ; $6bc8: $40
	add  b                                           ; $6bc9: $80
	add  b                                           ; $6bca: $80
	add  b                                           ; $6bcb: $80
	ld   d, b                                        ; $6bcc: $50
	add  b                                           ; $6bcd: $80
	and  b                                           ; $6bce: $a0
	add  b                                           ; $6bcf: $80
	ld   [hl], b                                     ; $6bd0: $70
	ld   [bc], a                                     ; $6bd1: $02
	db   $e3                                         ; $6bd2: $e3
	ldh  [c], a                                      ; $6bd3: $e2
	nop                                              ; $6bd4: $00
	add  b                                           ; $6bd5: $80
	ld   a, h                                        ; $6bd6: $7c
	add  b                                           ; $6bd7: $80
	cp   $0b                                         ; $6bd8: $fe $0b
	jr   c, jr_070_6bf8                              ; $6bda: $38 $1c

	nop                                              ; $6bdc: $00
	dec  de                                          ; $6bdd: $1b
	nop                                              ; $6bde: $00
	ld   [bc], a                                     ; $6bdf: $02
	nop                                              ; $6be0: $00
	ret  nc                                          ; $6be1: $d0

	nop                                              ; $6be2: $00
	ld   b, [hl]                                     ; $6be3: $46
	nop                                              ; $6be4: $00
	xor  e                                           ; $6be5: $ab
	add  [hl]                                        ; $6be6: $86
	nop                                              ; $6be7: $00
	nop                                              ; $6be8: $00
	add  b                                           ; $6be9: $80
	add  d                                           ; $6bea: $82
	nop                                              ; $6beb: $00
	inc  d                                           ; $6bec: $14
	ld   h, b                                        ; $6bed: $60
	nop                                              ; $6bee: $00
	cp   $10                                         ; $6bef: $fe $10
	add  hl, sp                                      ; $6bf1: $39
	nop                                              ; $6bf2: $00
	ld   c, b                                        ; $6bf3: $48
	ld   a, d                                        ; $6bf4: $7a
	ld   [hl], b                                     ; $6bf5: $70
	dec  d                                           ; $6bf6: $15
	cp   a                                           ; $6bf7: $bf

jr_070_6bf8:
	ld   e, a                                        ; $6bf8: $5f
	ccf                                              ; $6bf9: $3f
	dec  sp                                          ; $6bfa: $3b
	ld   a, e                                        ; $6bfb: $7b
	sub  l                                           ; $6bfc: $95
	dec  d                                           ; $6bfd: $15
	ld   [bc], a                                     ; $6bfe: $02
	add  [hl]                                        ; $6bff: $86
	add  hl, de                                      ; $6c00: $19
	dec  e                                           ; $6c01: $1d
	add  b                                           ; $6c02: $80
	ld   d, $80                                      ; $6c03: $16 $80
	xor  a                                           ; $6c05: $af
	add  b                                           ; $6c06: $80
	rst  ToBoot                                         ; $6c07: $c7
	add  b                                           ; $6c08: $80
	sla  d                                           ; $6c09: $cb $22
	call nz, Call_070_60c7                           ; $6c0b: $c4 $c7 $60
	ld   l, h                                        ; $6c0e: $6c
	ret  nz                                          ; $6c0f: $c0

	ret  nc                                          ; $6c10: $d0

	ld   h, b                                        ; $6c11: $60
	ld   h, c                                        ; $6c12: $61
	ld   h, b                                        ; $6c13: $60
	ld   h, [hl]                                     ; $6c14: $66
	ld   h, c                                        ; $6c15: $61
	ld   a, c                                        ; $6c16: $79
	ld   h, a                                        ; $6c17: $67
	ld   h, h                                        ; $6c18: $64
	ld   a, h                                        ; $6c19: $7c
	cp   $1c                                         ; $6c1a: $fe $1c
	ld   e, $02                                      ; $6c1c: $1e $02
	xor  [hl]                                        ; $6c1e: $ae
	ld   l, $03                                      ; $6c1f: $2e $03
	jr   @+$19                                       ; $6c21: $18 $17

	ld   sp, $030f                                   ; $6c23: $31 $0f $03
	ld   hl, sp+$0b                                  ; $6c26: $f8 $0b
	dec  sp                                          ; $6c28: $3b
	dec  de                                          ; $6c29: $1b
	inc  de                                          ; $6c2a: $13
	rra                                              ; $6c2b: $1f
	xor  $1e                                         ; $6c2c: $ee $1e
	add  b                                           ; $6c2e: $80
	inc  e                                           ; $6c2f: $1c
	dec  b                                           ; $6c30: $05
	ld   l, e                                        ; $6c31: $6b
	ld   l, b                                        ; $6c32: $68
	ldh  a, [$d0]                                    ; $6c33: $f0 $d0
	dec  hl                                          ; $6c35: $2b
	add  sp, -$80                                    ; $6c36: $e8 $80
	call c, $a908                                    ; $6c38: $dc $08 $a9
	xor  b                                           ; $6c3b: $a8
	add  $c0                                         ; $6c3c: $c6 $c0
	adc  h                                           ; $6c3e: $8c
	add  b                                           ; $6c3f: $80
	inc  e                                           ; $6c40: $1c
	nop                                              ; $6c41: $00
	rla                                              ; $6c42: $17
	add  c                                           ; $6c43: $81
	nop                                              ; $6c44: $00
	inc  c                                           ; $6c45: $0c
	ld   bc, $1a00                                   ; $6c46: $01 $00 $1a
	nop                                              ; $6c49: $00
	pop  de                                          ; $6c4a: $d1
	ld   bc, $0b1b                                   ; $6c4b: $01 $1b $0b
	add  hl, de                                      ; $6c4e: $19
	dec  bc                                          ; $6c4f: $0b
	ld   d, d                                        ; $6c50: $52
	ld   e, e                                        ; $6c51: $5b
	ret  nz                                          ; $6c52: $c0

	add  c                                           ; $6c53: $81
	inc  e                                           ; $6c54: $1c
	ld   bc, $38da                                   ; $6c55: $01 $da $38
	add  b                                           ; $6c58: $80
	inc  a                                           ; $6c59: $3c
	nop                                              ; $6c5a: $00
	cp   $80                                         ; $6c5b: $fe $80
	ld   a, [hl]                                     ; $6c5d: $7e
	add  b                                           ; $6c5e: $80
	cp   $81                                         ; $6c5f: $fe $81
	halt                                             ; $6c61: $76
	nop                                              ; $6c62: $00
	ld   [hl], a                                     ; $6c63: $77
	add  c                                           ; $6c64: $81
	nop                                              ; $6c65: $00
	ld   b, $80                                      ; $6c66: $06 $80
	nop                                              ; $6c68: $00
	ld   l, b                                        ; $6c69: $68
	nop                                              ; $6c6a: $00
	ld   b, d                                        ; $6c6b: $42
	nop                                              ; $6c6c: $00
	xor  b                                           ; $6c6d: $a8
	add  b                                           ; $6c6e: $80

jr_070_6c6f:
	ldh  [rAUD2HIGH], a                              ; $6c6f: $e0 $19
	xor  b                                           ; $6c71: $a8
	add  d                                           ; $6c72: $82
	ld   [$16f2], a                                  ; $6c73: $ea $f2 $16
	rrca                                             ; $6c76: $0f
	dec  bc                                          ; $6c77: $0b
	inc  d                                           ; $6c78: $14
	rla                                              ; $6c79: $17
	db   $db                                         ; $6c7a: $db
	dec  de                                          ; $6c7b: $1b
	ld   [hl], l                                     ; $6c7c: $75
	dec  d                                           ; $6c7d: $15
	ld   h, e                                        ; $6c7e: $63
	inc  bc                                          ; $6c7f: $03
	ld   sp, $3801                                   ; $6c80: $31 $01 $38
	nop                                              ; $6c83: $00
	ld   d, a                                        ; $6c84: $57
	jr   jr_070_6c6f                                 ; $6c85: $18 $e8

	adc  d                                           ; $6c87: $8a
	ld   a, [$10c0]                                  ; $6c88: $fa $c0 $10
	add  c                                           ; $6c8b: $81
	ret  nc                                          ; $6c8c: $d0

	ld   b, $c3                                      ; $6c8d: $06 $c3
	di                                               ; $6c8f: $f3
	ld   [hl], e                                     ; $6c90: $73
	ld   h, e                                        ; $6c91: $63
	jr   nz, jr_070_6cd3                             ; $6c92: $20 $3f

	add  a                                           ; $6c94: $87
	add  c                                           ; $6c95: $81
	ld   b, $0b                                      ; $6c96: $06 $0b
	ld   h, [hl]                                     ; $6c98: $66

jr_070_6c99:
	ld   b, $1e                                      ; $6c99: $06 $1e
	ld   h, [hl]                                     ; $6c9b: $66
	and  [hl]                                        ; $6c9c: $a6
	ld   a, $ff                                      ; $6c9d: $3e $ff
	jr   c, jr_070_6c99                              ; $6c9f: $38 $f8

	ret  nz                                          ; $6ca1: $c0

	push af                                          ; $6ca2: $f5
	db   $f4                                         ; $6ca3: $f4
	add  c                                           ; $6ca4: $81
	nop                                              ; $6ca5: $00
	add  c                                           ; $6ca6: $81
	ldh  a, [$0c]                                    ; $6ca7: $f0 $0c
	rst  $30                                         ; $6ca9: $f7
	di                                               ; $6caa: $f3
	or   e                                           ; $6cab: $b3
	di                                               ; $6cac: $f3
	inc  de                                          ; $6cad: $13
	di                                               ; $6cae: $f3
	add  e                                           ; $6caf: $83
	di                                               ; $6cb0: $f3
	add  e                                           ; $6cb1: $83
	di                                               ; $6cb2: $f3
	xor  l                                           ; $6cb3: $ad
	add  hl, bc                                      ; $6cb4: $09
	rrca                                             ; $6cb5: $0f
	add  b                                           ; $6cb6: $80
	dec  c                                           ; $6cb7: $0d
	add  c                                           ; $6cb8: $81
	ld   [$0e04], sp                                 ; $6cb9: $08 $04 $0e
	ld   [$080e], sp                                 ; $6cbc: $08 $0e $08
	add  hl, bc                                      ; $6cbf: $09
	add  c                                           ; $6cc0: $81
	ld   [$dd01], sp                                 ; $6cc1: $08 $01 $dd
	call nc, $ea80                                   ; $6cc4: $d4 $80 $ea
	add  b                                           ; $6cc7: $80
	call c, $2e0a                                    ; $6cc8: $dc $0a $2e
	xor  [hl]                                        ; $6ccb: $ae
	ld   a, a                                        ; $6ccc: $7f
	rst  $38                                         ; $6ccd: $ff
	ld   a, a                                        ; $6cce: $7f

jr_070_6ccf:
	rst  $38                                         ; $6ccf: $ff

jr_070_6cd0:
	cp   a                                           ; $6cd0: $bf
	rst  $38                                         ; $6cd1: $ff
	sbc  a                                           ; $6cd2: $9f

jr_070_6cd3:
	rst  $38                                         ; $6cd3: $ff
	adc  e                                           ; $6cd4: $8b
	add  c                                           ; $6cd5: $81
	nop                                              ; $6cd6: $00
	inc  bc                                          ; $6cd7: $03
	ld   d, b                                        ; $6cd8: $50
	ld   b, b                                        ; $6cd9: $40
	sbc  b                                           ; $6cda: $98
	and  b                                           ; $6cdb: $a0
	add  b                                           ; $6cdc: $80
	ld   d, b                                        ; $6cdd: $50
	add  b                                           ; $6cde: $80
	ldh  [$80], a                                    ; $6cdf: $e0 $80
	db   $f4                                         ; $6ce1: $f4
	add  b                                           ; $6ce2: $80
	add  sp, $01                                     ; $6ce3: $e8 $01
	db   $e3                                         ; $6ce5: $e3
	nop                                              ; $6ce6: $00
	add  c                                           ; $6ce7: $81
	ld   h, b                                        ; $6ce8: $60
	inc  bc                                          ; $6ce9: $03
	ld   h, e                                        ; $6cea: $63
	inc  bc                                          ; $6ceb: $03
	ld   a, a                                        ; $6cec: $7f
	rra                                              ; $6ced: $1f
	add  b                                           ; $6cee: $80
	ld   l, e                                        ; $6cef: $6b
	add  b                                           ; $6cf0: $80
	ld   [hl], l                                     ; $6cf1: $75
	add  c                                           ; $6cf2: $81
	ld   h, b                                        ; $6cf3: $60
	ld   [bc], a                                     ; $6cf4: $02
	rra                                              ; $6cf5: $1f
	nop                                              ; $6cf6: $00
	ld   a, a                                        ; $6cf7: $7f
	add  b                                           ; $6cf8: $80
	ld   bc, $3f02                                   ; $6cf9: $01 $02 $3f
	ld   b, b                                        ; $6cfc: $40
	nop                                              ; $6cfd: $00
	add  b                                           ; $6cfe: $80
	ccf                                              ; $6cff: $3f
	add  b                                           ; $6d00: $80
	sbc  a                                           ; $6d01: $9f
	jr   jr_070_6cd0                                 ; $6d02: $18 $cc

	jp   Jump_070_61e9                               ; $6d04: $c3 $e9 $61


	cp   e                                           ; $6d07: $bb
	nop                                              ; $6d08: $00
	ld   c, a                                        ; $6d09: $4f
	ld   b, e                                        ; $6d0a: $43
	ld   a, a                                        ; $6d0b: $7f
	ld   c, a                                        ; $6d0c: $4f
	inc  a                                           ; $6d0d: $3c
	ccf                                              ; $6d0e: $3f
	inc  sp                                          ; $6d0f: $33
	ccf                                              ; $6d10: $3f
	sub  a                                           ; $6d11: $97

jr_070_6d12:
	add  a                                           ; $6d12: $87
	db   $d3                                         ; $6d13: $d3
	jp   $e169                                       ; $6d14: $c3 $69 $e1


	ld   l, a                                        ; $6d17: $6f
	add  sp, -$10                                    ; $6d18: $e8 $f0
	ld   hl, sp+$0e                                  ; $6d1a: $f8 $0e
	add  c                                           ; $6d1c: $81
	or   $80                                         ; $6d1d: $f6 $80
	ldh  a, [$80]                                    ; $6d1f: $f0 $80
	or   [hl]                                        ; $6d21: $b6
	ld   bc, $5756                                   ; $6d22: $01 $56 $57
	add  b                                           ; $6d25: $80
	add  d                                           ; $6d26: $82
	ld   bc, $1e10                                   ; $6d27: $01 $10 $1e
	add  b                                           ; $6d2a: $80
	dec  a                                           ; $6d2b: $3d
	add  b                                           ; $6d2c: $80
	ld   a, $81                                      ; $6d2d: $3e $81
	ccf                                              ; $6d2f: $3f
	ld   a, [de]                                     ; $6d30: $1a
	ld   a, $ee                                      ; $6d31: $3e $ee
	ld   l, $94                                      ; $6d33: $2e $94
	ld   d, h                                        ; $6d35: $54
	xor  c                                           ; $6d36: $a9
	xor  b                                           ; $6d37: $a8
	ld   l, $01                                      ; $6d38: $2e $01
	ld   [bc], a                                     ; $6d3a: $02
	inc  bc                                          ; $6d3b: $03
	ld   b, l                                        ; $6d3c: $45
	daa                                              ; $6d3d: $27
	rlc  c                                           ; $6d3e: $cb $01
	add  a                                           ; $6d40: $87
	nop                                              ; $6d41: $00
	ld   bc, $8000                                   ; $6d42: $01 $00 $80
	nop                                              ; $6d45: $00
	ld   h, b                                        ; $6d46: $60
	jr   nz, jr_070_6d12                             ; $6d47: $20 $c9

	adc  c                                           ; $6d49: $89
	pop  hl                                          ; $6d4a: $e1
	ld   h, c                                        ; $6d4b: $61
	add  b                                           ; $6d4c: $80
	jr   nc, jr_070_6ccf                             ; $6d4d: $30 $80

	call z, $ff06                                    ; $6d4f: $cc $06 $ff
	ccf                                              ; $6d52: $3f
	rst  $38                                         ; $6d53: $ff
	inc  bc                                          ; $6d54: $03
	ccf                                              ; $6d55: $3f
	nop                                              ; $6d56: $00
	inc  bc                                          ; $6d57: $03
	add  b                                           ; $6d58: $80
	nop                                              ; $6d59: $00
	ld   [bc], a                                     ; $6d5a: $02
	ld   [hl], h                                     ; $6d5b: $74
	nop                                              ; $6d5c: $00
	ld   [hl], h                                     ; $6d5d: $74
	add  b                                           ; $6d5e: $80
	ld   d, b                                        ; $6d5f: $50
	add  b                                           ; $6d60: $80
	nop                                              ; $6d61: $00
	add  b                                           ; $6d62: $80
	add  c                                           ; $6d63: $81
	add  c                                           ; $6d64: $81
	rst  $38                                         ; $6d65: $ff
	dec  b                                           ; $6d66: $05
	nop                                              ; $6d67: $00
	rst  $38                                         ; $6d68: $ff
	nop                                              ; $6d69: $00
	rst  $38                                         ; $6d6a: $ff
	nop                                              ; $6d6b: $00
	rst  $38                                         ; $6d6c: $ff
	add  c                                           ; $6d6d: $81
	nop                                              ; $6d6e: $00
	add  b                                           ; $6d6f: $80
	ld   [bc], a                                     ; $6d70: $02
	add  b                                           ; $6d71: $80
	dec  b                                           ; $6d72: $05
	add  b                                           ; $6d73: $80
	cpl                                              ; $6d74: $2f
	add  b                                           ; $6d75: $80
	ld   a, a                                        ; $6d76: $7f
	add  b                                           ; $6d77: $80
	rst  $38                                         ; $6d78: $ff
	nop                                              ; $6d79: $00
	ldh  a, [$8d]                                    ; $6d7a: $f0 $8d
	nop                                              ; $6d7c: $00
	ld   bc, $7f8f                                   ; $6d7d: $01 $8f $7f
	add  b                                           ; $6d80: $80
	cp   a                                           ; $6d81: $bf
	add  b                                           ; $6d82: $80
	ld   a, a                                        ; $6d83: $7f
	add  c                                           ; $6d84: $81
	rst  $38                                         ; $6d85: $ff
	nop                                              ; $6d86: $00
	ld   a, a                                        ; $6d87: $7f
	add  b                                           ; $6d88: $80
	ld   [hl], l                                     ; $6d89: $75
	add  b                                           ; $6d8a: $80
	jr   z, jr_070_6d93                              ; $6d8b: $28 $06

	sub  h                                           ; $6d8d: $94
	inc  d                                           ; $6d8e: $14
	ret  z                                           ; $6d8f: $c8

	rst  $30                                         ; $6d90: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d91: $cf
	rst  $38                                         ; $6d92: $ff

jr_070_6d93:
	ldh  a, [$80]                                    ; $6d93: $f0 $80
	rst  $38                                         ; $6d95: $ff
	nop                                              ; $6d96: $00
	rst  $20                                         ; $6d97: $e7
	add  b                                           ; $6d98: $80
	and  a                                           ; $6d99: $a7
	inc  bc                                          ; $6d9a: $03
	ld   d, l                                        ; $6d9b: $55
	ld   b, l                                        ; $6d9c: $45
	ld   [hl-], a                                    ; $6d9d: $32
	ld   [bc], a                                     ; $6d9e: $02
	add  b                                           ; $6d9f: $80
	ld   bc, $c701                                   ; $6da0: $01 $01 $c7
	nop                                              ; $6da3: $00
	adc  h                                           ; $6da4: $8c
	rrca                                             ; $6da5: $0f
	inc  bc                                          ; $6da6: $03
	cp   $08                                         ; $6da7: $fe $08
	ld   c, $08                                      ; $6da9: $0e $08
	adc  b                                           ; $6dab: $88
	rrca                                             ; $6dac: $0f
	add  b                                           ; $6dad: $80
	nop                                              ; $6dae: $00
	dec  c                                           ; $6daf: $0d
	or   b                                           ; $6db0: $b0
	rst  $38                                         ; $6db1: $ff
	rra                                              ; $6db2: $1f
	rst  $38                                         ; $6db3: $ff
	dec  bc                                          ; $6db4: $0b
	rst  $38                                         ; $6db5: $ff
	ld   hl, $a9ff                                   ; $6db6: $21 $ff $a9
	rst  $38                                         ; $6db9: $ff
	reti                                             ; $6dba: $d9


	rst  $38                                         ; $6dbb: $ff
	ld   a, [$81ff]                                  ; $6dbc: $fa $ff $81
	nop                                              ; $6dbf: $00
	ld   [bc], a                                     ; $6dc0: $02
	ld   hl, sp-$07                                  ; $6dc1: $f8 $f9
	cp   $80                                         ; $6dc3: $fe $80
	db   $fd                                         ; $6dc5: $fd
	add  d                                           ; $6dc6: $82
	rst  $38                                         ; $6dc7: $ff
	ld   b, $7e                                      ; $6dc8: $06 $7e
	cp   $3f                                         ; $6dca: $fe $3f
	rst  $38                                         ; $6dcc: $ff
	cp   a                                           ; $6dcd: $bf
	nop                                              ; $6dce: $00
	ld   a, a                                        ; $6dcf: $7f
	add  b                                           ; $6dd0: $80
	ld   b, b                                        ; $6dd1: $40
	nop                                              ; $6dd2: $00
	add  b                                           ; $6dd3: $80
	add  b                                           ; $6dd4: $80
	ld   b, b                                        ; $6dd5: $40
	add  b                                           ; $6dd6: $80
	add  b                                           ; $6dd7: $80
	add  b                                           ; $6dd8: $80
	ld   b, b                                        ; $6dd9: $40
	add  b                                           ; $6dda: $80
	ldh  [$80], a                                    ; $6ddb: $e0 $80
	ret  nc                                          ; $6ddd: $d0

	ld   a, [bc]                                     ; $6dde: $0a
	rst  $38                                         ; $6ddf: $ff
	nop                                              ; $6de0: $00
	di                                               ; $6de1: $f3
	jr   nc, jr_070_6e1e                             ; $6de2: $30 $3a

	jr   jr_070_6e03                                 ; $6de4: $18 $1d

	inc  c                                           ; $6de6: $0c
	ld   c, $06                                      ; $6de7: $0e $06
	rlca                                             ; $6de9: $07
	add  b                                           ; $6dea: $80
	inc  bc                                          ; $6deb: $03
	add  b                                           ; $6dec: $80
	ld   bc, $001f                                   ; $6ded: $01 $1f $00
	rst  $38                                         ; $6df0: $ff
	nop                                              ; $6df1: $00
	inc  sp                                          ; $6df2: $33
	ldh  a, [$5a]                                    ; $6df3: $f0 $5a
	ld   a, b                                        ; $6df5: $78
	dec  l                                           ; $6df6: $2d
	inc  a                                           ; $6df7: $3c
	sub  [hl]                                        ; $6df8: $96
	ld   e, $4a                                      ; $6df9: $1e $4a
	ld   c, $a4                                      ; $6dfb: $0e $a4
	add  a                                           ; $6dfd: $87

jr_070_6dfe:
	db   $d3                                         ; $6dfe: $d3
	jp   $000f                                       ; $6dff: $c3 $0f $00


	pop  hl                                          ; $6e02: $e1

jr_070_6e03:
	jr   @+$33                                       ; $6e03: $18 $31

	nop                                              ; $6e05: $00
	ld   c, b                                        ; $6e06: $48
	dec  sp                                          ; $6e07: $3b
	or   e                                           ; $6e08: $b3
	rla                                              ; $6e09: $17
	cp   a                                           ; $6e0a: $bf
	ld   e, a                                        ; $6e0b: $5f
	cp   a                                           ; $6e0c: $bf
	cp   e                                           ; $6e0d: $bb
	ei                                               ; $6e0e: $fb
	add  b                                           ; $6e0f: $80
	dec  d                                           ; $6e10: $15
	dec  b                                           ; $6e11: $05
	nop                                              ; $6e12: $00
	ldh  a, [c]                                      ; $6e13: $f2
	inc  c                                           ; $6e14: $0c
	sbc  [hl]                                        ; $6e15: $9e
	add  hl, bc                                      ; $6e16: $09
	ld   l, c                                        ; $6e17: $69
	add  b                                           ; $6e18: $80
	inc  bc                                          ; $6e19: $03
	add  b                                           ; $6e1a: $80
	xor  c                                           ; $6e1b: $a9
	add  b                                           ; $6e1c: $80
	ld   b, d                                        ; $6e1d: $42

jr_070_6e1e:
	add  b                                           ; $6e1e: $80
	and  c                                           ; $6e1f: $a1
	add  b                                           ; $6e20: $80
	ld   [bc], a                                     ; $6e21: $02
	dec  bc                                          ; $6e22: $0b
	nop                                              ; $6e23: $00
	ld   bc, $050c                                   ; $6e24: $01 $0c $05
	jp   nc, $b89f                                   ; $6e27: $d2 $9f $b8

	xor  $6c                                         ; $6e2a: $ee $6c
	ld   a, d                                        ; $6e2c: $7a
	ld   a, [$80ff]                                  ; $6e2d: $fa $ff $80
	cp   $80                                         ; $6e30: $fe $80
	cp   a                                           ; $6e32: $bf
	add  hl, bc                                      ; $6e33: $09
	nop                                              ; $6e34: $00
	ld   de, $1300                                   ; $6e35: $11 $00 $13
	ld   c, b                                        ; $6e38: $48
	ld   c, [hl]                                     ; $6e39: $4e
	and  d                                           ; $6e3a: $a2
	inc  h                                           ; $6e3b: $24
	ld   b, l                                        ; $6e3c: $45
	rst  ToBoot                                         ; $6e3d: $c7
	add  b                                           ; $6e3e: $80
	ld   c, d                                        ; $6e3f: $4a
	add  b                                           ; $6e40: $80
	inc  b                                           ; $6e41: $04
	add  b                                           ; $6e42: $80
	ld   b, d                                        ; $6e43: $42
	dec  b                                           ; $6e44: $05
	nop                                              ; $6e45: $00
	rst  $38                                         ; $6e46: $ff
	nop                                              ; $6e47: $00
	ld   a, b                                        ; $6e48: $78
	db   $10                                         ; $6e49: $10
	sub  l                                           ; $6e4a: $95
	add  b                                           ; $6e4b: $80
	jr   z, @+$05                                    ; $6e4c: $28 $03

	ld   d, b                                        ; $6e4e: $50
	ld   b, d                                        ; $6e4f: $42
	ldh  [$f0], a                                    ; $6e50: $e0 $f0
	add  b                                           ; $6e52: $80
	inc  e                                           ; $6e53: $1c
	add  b                                           ; $6e54: $80
	ld   a, [bc]                                     ; $6e55: $0a
	add  hl, bc                                      ; $6e56: $09
	nop                                              ; $6e57: $00
	call nz, Call_070_7c39                           ; $6e58: $c4 $39 $7c
	jr   nz, jr_070_6dfe                             ; $6e5b: $20 $a1

	ld   d, d                                        ; $6e5d: $52
	ld   b, e                                        ; $6e5e: $43
	xor  h                                           ; $6e5f: $ac
	cp   l                                           ; $6e60: $bd
	add  b                                           ; $6e61: $80
	ld   d, d                                        ; $6e62: $52
	add  b                                           ; $6e63: $80
	add  hl, bc                                      ; $6e64: $09
	add  b                                           ; $6e65: $80
	ld   bc, $000b                                   ; $6e66: $01 $0b $00
	ld   h, b                                        ; $6e69: $60
	add  [hl]                                        ; $6e6a: $86
	and  $05                                         ; $6e6b: $e6 $05
	add  l                                           ; $6e6d: $85
	nop                                              ; $6e6e: $00
	ret  nz                                          ; $6e6f: $c0

	add  l                                           ; $6e70: $85
	ld   b, l                                        ; $6e71: $45
	ld   d, $96                                      ; $6e72: $16 $96
	add  b                                           ; $6e74: $80
	dec  bc                                          ; $6e75: $0b
	add  b                                           ; $6e76: $80
	add  a                                           ; $6e77: $87
	add  hl, bc                                      ; $6e78: $09
	nop                                              ; $6e79: $00
	adc  h                                           ; $6e7a: $8c
	inc  bc                                          ; $6e7b: $03

Jump_070_6e7c:
	adc  l                                           ; $6e7c: $8d
	db   $10                                         ; $6e7d: $10
	ld   d, $8a                                      ; $6e7e: $16 $8a
	inc  c                                           ; $6e80: $0c
	ld   d, l                                        ; $6e81: $55
	rst  $10                                         ; $6e82: $d7
	add  b                                           ; $6e83: $80
	ld   c, d                                        ; $6e84: $4a
	add  b                                           ; $6e85: $80
	inc  b                                           ; $6e86: $04
	add  b                                           ; $6e87: $80
	ld   c, d                                        ; $6e88: $4a
	dec  c                                           ; $6e89: $0d
	nop                                              ; $6e8a: $00
	ld   [hl], a                                     ; $6e8b: $77
	add  b                                           ; $6e8c: $80
	jp   $b783                                       ; $6e8d: $c3 $83 $b7


	ld   [bc], a                                     ; $6e90: $02

jr_070_6e91:
	nop                                              ; $6e91: $00
	adc  c                                           ; $6e92: $89
	xor  e                                           ; $6e93: $ab
	ld   d, d                                        ; $6e94: $52
	ld   [hl+], a                                    ; $6e95: $22
	xor  c                                           ; $6e96: $a9
	ld   sp, hl                                      ; $6e97: $f9
	add  b                                           ; $6e98: $80
	inc  a                                           ; $6e99: $3c
	add  c                                           ; $6e9a: $81
	nop                                              ; $6e9b: $00
	nop                                              ; $6e9c: $00
	ldh  a, [$81]                                    ; $6e9d: $f0 $81
	nop                                              ; $6e9f: $00
	nop                                              ; $6ea0: $00
	rlca                                             ; $6ea1: $07
	add  a                                           ; $6ea2: $87
	inc  bc                                          ; $6ea3: $03
	inc  [hl]                                        ; $6ea4: $34
	ld   [bc], a                                     ; $6ea5: $02
	add  [hl]                                        ; $6ea6: $86
	nop                                              ; $6ea7: $00
	add  b                                           ; $6ea8: $80
	dec  b                                           ; $6ea9: $05
	add  b                                           ; $6eaa: $80
	ld   c, $80                                      ; $6eab: $0e $80
	dec  b                                           ; $6ead: $05
	add  b                                           ; $6eae: $80
	dec  bc                                          ; $6eaf: $0b
	add  [hl]                                        ; $6eb0: $86
	nop                                              ; $6eb1: $00
	ld   [$5455], sp                                 ; $6eb2: $08 $55 $54
	db   $eb                                         ; $6eb5: $eb
	add  sp, $5e                                     ; $6eb6: $e8 $5e
	ld   d, c                                        ; $6eb8: $51
	cp   h                                           ; $6eb9: $bc
	and  e                                           ; $6eba: $a3
	ld   [de], a                                     ; $6ebb: $12
	add  l                                           ; $6ebc: $85
	nop                                              ; $6ebd: $00
	ld   [$2aaa], sp                                 ; $6ebe: $08 $aa $2a
	and  l                                           ; $6ec1: $a5
	ld   d, h                                        ; $6ec2: $54
	daa                                              ; $6ec3: $27
	sbc  b                                           ; $6ec4: $98
	ld   [hl], a                                     ; $6ec5: $77
	ld   sp, $8588                                   ; $6ec6: $31 $88 $85
	nop                                              ; $6ec9: $00
	inc  bc                                          ; $6eca: $03
	jp   z, $d50a                                    ; $6ecb: $ca $0a $d5

	dec  d                                           ; $6ece: $15
	add  b                                           ; $6ecf: $80
	xor  e                                           ; $6ed0: $ab
	ld   [bc], a                                     ; $6ed1: $02
	ld   d, [hl]                                     ; $6ed2: $56
	ld   d, a                                        ; $6ed3: $57
	ld   bc, $0085                                   ; $6ed4: $01 $85 $00
	ld   [$f0cf], sp                                 ; $6ed7: $08 $cf $f0
	and  b                                           ; $6eda: $a0
	ldh  [rSCX], a                                   ; $6edb: $e0 $43
	ret  nz                                          ; $6edd: $c0

	inc  c                                           ; $6ede: $0c
	ld   [bc], a                                     ; $6edf: $02
	ldh  a, [c]                                      ; $6ee0: $f2
	add  l                                           ; $6ee1: $85
	nop                                              ; $6ee2: $00
	ld   [$08c1], sp                                 ; $6ee3: $08 $c1 $08
	ret  z                                           ; $6ee6: $c8

	inc  h                                           ; $6ee7: $24
	dec  h                                           ; $6ee8: $25
	sbc  a                                           ; $6ee9: $9f
	sub  [hl]                                        ; $6eea: $96
	ld   h, h                                        ; $6eeb: $64
	ld   l, l                                        ; $6eec: $6d
	add  l                                           ; $6eed: $85
	nop                                              ; $6eee: $00
	ld   [$e40e], sp                                 ; $6eef: $08 $0e $e4
	ld   [bc], a                                     ; $6ef2: $02
	reti                                             ; $6ef3: $d9


	pop  de                                          ; $6ef4: $d1
	ld   b, $66                                      ; $6ef5: $06 $66
	jr   jr_070_6e91                                 ; $6ef7: $18 $98

	add  [hl]                                        ; $6ef9: $86
	nop                                              ; $6efa: $00
	rlca                                             ; $6efb: $07
	jr   c, jr_070_6f39                              ; $6efc: $38 $3b

	db   $e3                                         ; $6efe: $e3
	rst  $38                                         ; $6eff: $ff
	ld   a, $5f                                      ; $6f00: $3e $5f
	ld   b, c                                        ; $6f02: $41
	ccf                                              ; $6f03: $3f
	add  l                                           ; $6f04: $85
	nop                                              ; $6f05: $00
	ld   [$4706], sp                                 ; $6f06: $08 $06 $47
	cp   $f8                                         ; $6f09: $fe $f8
	cp   h                                           ; $6f0b: $bc
	inc  b                                           ; $6f0c: $04
	call nz, $e4df                                   ; $6f0d: $c4 $df $e4
	add  l                                           ; $6f10: $85
	nop                                              ; $6f11: $00
	add  c                                           ; $6f12: $81
	rst  $38                                         ; $6f13: $ff
	dec  b                                           ; $6f14: $05
	nop                                              ; $6f15: $00
	xor  l                                           ; $6f16: $ad
	cp   a                                           ; $6f17: $bf
	add  b                                           ; $6f18: $80
	rst  $38                                         ; $6f19: $ff
	sub  d                                           ; $6f1a: $92
	add  l                                           ; $6f1b: $85
	nop                                              ; $6f1c: $00
	ld   [$ff7f], sp                                 ; $6f1d: $08 $7f $ff
	ld   a, a                                        ; $6f20: $7f
	nop                                              ; $6f21: $00
	or   l                                           ; $6f22: $b5
	db   $fd                                         ; $6f23: $fd
	ld   bc, $49ff                                   ; $6f24: $01 $ff $49
	add  l                                           ; $6f27: $85
	nop                                              ; $6f28: $00
	ld   [$e260], sp                                 ; $6f29: $08 $60 $e2
	ld   a, [hl]                                     ; $6f2c: $7e
	ld   e, $3d                                      ; $6f2d: $1e $3d
	jr   nz, jr_070_6f32                             ; $6f2f: $20 $01

	db   $db                                         ; $6f31: $db

jr_070_6f32:
	dec  h                                           ; $6f32: $25
	add  [hl]                                        ; $6f33: $86
	nop                                              ; $6f34: $00
	add  b                                           ; $6f35: $80
	inc  e                                           ; $6f36: $1c
	dec  b                                           ; $6f37: $05
	rlca                                             ; $6f38: $07

jr_070_6f39:
	rst  $38                                         ; $6f39: $ff
	ld   a, h                                        ; $6f3a: $7c
	ld   a, d                                        ; $6f3b: $7a
	ld   [bc], a                                     ; $6f3c: $02
	db   $fc                                         ; $6f3d: $fc
	add  l                                           ; $6f3e: $85
	nop                                              ; $6f3f: $00
	ld   [$3760], sp                                 ; $6f40: $08 $60 $37
	ld   b, h                                        ; $6f43: $44
	sbc  a                                           ; $6f44: $9f
	inc  c                                           ; $6f45: $0c
	rst  $20                                         ; $6f46: $e7
	ld   b, a                                        ; $6f47: $47
	add  hl, sp                                      ; $6f48: $39
	add  hl, de                                      ; $6f49: $19
	add  l                                           ; $6f4a: $85
	nop                                              ; $6f4b: $00
	add  hl, bc                                      ; $6f4c: $09
	add  e                                           ; $6f4d: $83
	db   $10                                         ; $6f4e: $10
	inc  de                                          ; $6f4f: $13
	inc  h                                           ; $6f50: $24
	and  h                                           ; $6f51: $a4
	ld   sp, hl                                      ; $6f52: $f9
	ld   c, c                                        ; $6f53: $49
	ld   d, $58                                      ; $6f54: $16 $58
	ld   bc, $0080                                   ; $6f56: $01 $80 $00
	inc  bc                                          ; $6f59: $03
	ret  nz                                          ; $6f5a: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f5b: $cf
	ld   c, a                                        ; $6f5c: $4f
	ld   b, b                                        ; $6f5d: $40
	add  b                                           ; $6f5e: $80
	nop                                              ; $6f5f: $00
	ld   [bc], a                                     ; $6f60: $02
	rrca                                             ; $6f61: $0f
	rst  $38                                         ; $6f62: $ff
	ldh  a, [$81]                                    ; $6f63: $f0 $81
	nop                                              ; $6f65: $00
	ld   bc, $0ef1                                   ; $6f66: $01 $f1 $0e
	add  b                                           ; $6f69: $80
	rrca                                             ; $6f6a: $0f
	ld   [$0f0b], sp                                 ; $6f6b: $08 $0b $0f
	inc  bc                                          ; $6f6e: $03
	ld   c, $03                                      ; $6f6f: $0e $03
	inc  c                                           ; $6f71: $0c
	inc  b                                           ; $6f72: $04
	inc  c                                           ; $6f73: $0c
	ld   a, [bc]                                     ; $6f74: $0a
	add  c                                           ; $6f75: $81
	add  hl, bc                                      ; $6f76: $09
	ld   [$cded], sp                                 ; $6f77: $08 $ed $cd
	pop  hl                                          ; $6f7a: $e1
	sbc  b                                           ; $6f7b: $98
	ret  z                                           ; $6f7c: $c8

	add  hl, sp                                      ; $6f7d: $39
	sbc  [hl]                                        ; $6f7e: $9e
	ld   h, e                                        ; $6f7f: $63
	dec  sp                                          ; $6f80: $3b
	add  b                                           ; $6f81: $80
	jp   z, wType0AnimSpriteYPosRelativeTo                                    ; $6f82: $ca $01 $c6

	ld   h, a                                        ; $6f85: $67
	add  b                                           ; $6f86: $80
	sub  b                                           ; $6f87: $90
	ld   e, $ac                                      ; $6f88: $1e $ac
	ld   e, b                                        ; $6f8a: $58
	ld   h, [hl]                                     ; $6f8b: $66
	dec  sp                                          ; $6f8c: $3b
	ld   c, e                                        ; $6f8d: $4b
	ld   a, a                                        ; $6f8e: $7f
	sbc  a                                           ; $6f8f: $9f
	ld   a, a                                        ; $6f90: $7f
	ccf                                              ; $6f91: $3f
	xor  d                                           ; $6f92: $aa
	ld   a, a                                        ; $6f93: $7f
	nop                                              ; $6f94: $00
	ld   a, a                                        ; $6f95: $7f
	add  b                                           ; $6f96: $80
	rst  $38                                         ; $6f97: $ff
	ld   d, l                                        ; $6f98: $55
	rst  $38                                         ; $6f99: $ff
	ld   d, $ee                                      ; $6f9a: $16 $ee
	or   h                                           ; $6f9c: $b4
	cp   h                                           ; $6f9d: $bc
	add  sp, -$08                                    ; $6f9e: $e8 $f8
	ret  nc                                          ; $6fa0: $d0

	ldh  a, [hScriptOpcodeParams+1]                                    ; $6fa1: $f0 $a1
	ldh  [$c3], a                                    ; $6fa3: $e0 $c3
	ret  nz                                          ; $6fa5: $c0

	ld   b, a                                        ; $6fa6: $47
	ret  nz                                          ; $6fa7: $c0

	add  b                                           ; $6fa8: $80
	add  b                                           ; $6fa9: $80
	ld   a, a                                        ; $6faa: $7f
	ld   a, [de]                                     ; $6fab: $1a
	dec  c                                           ; $6fac: $0d
	dec  l                                           ; $6fad: $2d
	ld   [de], a                                     ; $6fae: $12
	ld   e, e                                        ; $6faf: $5b
	ld   h, $fe                                      ; $6fb0: $26 $fe
	dec  c                                           ; $6fb2: $0d
	rst  $20                                         ; $6fb3: $e7
	ld   [de], a                                     ; $6fb4: $12
	di                                               ; $6fb5: $f3
	ld   [hl-], a                                    ; $6fb6: $32
	rst  $10                                         ; $6fb7: $d7
	nop                                              ; $6fb8: $00
	ld   b, h                                        ; $6fb9: $44
	ld   d, l                                        ; $6fba: $55
	or   b                                           ; $6fbb: $b0

jr_070_6fbc:
	jp   c, $9138                                    ; $6fbc: $da $38 $91

	or   a                                           ; $6fbf: $b7
	nop                                              ; $6fc0: $00
	ld   l, $a1                                      ; $6fc1: $2e $a1
	inc  a                                           ; $6fc3: $3c
	ld   bc, $02bb                                   ; $6fc4: $01 $bb $02
	halt                                             ; $6fc7: $76
	inc  b                                           ; $6fc8: $04
	add  l                                           ; $6fc9: $85
	add  hl, de                                      ; $6fca: $19
	jr   c, jr_070_703c                              ; $6fcb: $38 $6f

	ld   h, a                                        ; $6fcd: $67
	adc  b                                           ; $6fce: $88
	cp   e                                           ; $6fcf: $bb
	inc  hl                                          ; $6fd0: $23
	ld   h, l                                        ; $6fd1: $65
	ld   b, l                                        ; $6fd2: $45
	ret  c                                           ; $6fd3: $d8

	dec  de                                          ; $6fd4: $1b
	ld   [hl+], a                                    ; $6fd5: $22
	dec  h                                           ; $6fd6: $25
	call nc, $2adb                                   ; $6fd7: $d4 $db $2a
	dec  h                                           ; $6fda: $25
	ld   l, $2b                                      ; $6fdb: $2e $2b
	adc  d                                           ; $6fdd: $8a
	sbc  l                                           ; $6fde: $9d
	add  hl, bc                                      ; $6fdf: $09
	halt                                             ; $6fe0: $76
	ld   [bc], a                                     ; $6fe1: $02
	db   $fd                                         ; $6fe2: $fd
	add  hl, bc                                      ; $6fe3: $09
	or   $02                                         ; $6fe4: $f6 $02
	db   $fd                                         ; $6fe6: $fd
	add  hl, bc                                      ; $6fe7: $09
	or   $02                                         ; $6fe8: $f6 $02

jr_070_6fea:
	db   $fd                                         ; $6fea: $fd
	ld   c, l                                        ; $6feb: $4d
	rst  $38                                         ; $6fec: $ff
	ld   d, d                                        ; $6fed: $52
	xor  l                                           ; $6fee: $ad
	inc  h                                           ; $6fef: $24
	db   $db                                         ; $6ff0: $db
	ld   [hl], d                                     ; $6ff1: $72
	xor  l                                           ; $6ff2: $ad
	inc  b                                           ; $6ff3: $04
	db   $db                                         ; $6ff4: $db
	ld   d, d                                        ; $6ff5: $52
	xor  l                                           ; $6ff6: $ad
	inc  h                                           ; $6ff7: $24
	db   $db                                         ; $6ff8: $db
	ld   d, d                                        ; $6ff9: $52
	xor  l                                           ; $6ffa: $ad
	or   [hl]                                        ; $6ffb: $b6
	ld   sp, hl                                      ; $6ffc: $f9

jr_070_6ffd:
	nop                                              ; $6ffd: $00
	ld   hl, sp-$7c                                  ; $6ffe: $f8 $84
	ld   [hl], h                                     ; $7000: $74
	rra                                              ; $7001: $1f
	jp   nz, Jump_070_7ca4                           ; $7002: $c2 $a4 $7c

	ld   bc, $b4c8                                   ; $7005: $01 $c8 $b4
	ld   h, a                                        ; $7008: $67
	rla                                              ; $7009: $17
	adc  h                                           ; $700a: $8c
	adc  $9f                                         ; $700b: $ce $9f
	nop                                              ; $700d: $00
	rra                                              ; $700e: $1f
	db   $10                                         ; $700f: $10
	cpl                                              ; $7010: $2f
	xor  b                                           ; $7011: $a8
	ld   b, e                                        ; $7012: $43
	xor  h                                           ; $7013: $ac
	cp   a                                           ; $7014: $bf
	add  b                                           ; $7015: $80
	dec  bc                                          ; $7016: $0b
	inc  a                                           ; $7017: $3c
	rst  $20                                         ; $7018: $e7
	add  sp, $31                                     ; $7019: $e8 $31
	jp   $00ff                                       ; $701b: $c3 $ff $00


	rst  $38                                         ; $701e: $ff
	nop                                              ; $701f: $00
	rst  $38                                         ; $7020: $ff
	nop                                              ; $7021: $00
	rst  $38                                         ; $7022: $ff
	nop                                              ; $7023: $00
	rst  $38                                         ; $7024: $ff
	nop                                              ; $7025: $00
	rst  $38                                         ; $7026: $ff
	nop                                              ; $7027: $00
	rst  $38                                         ; $7028: $ff
	nop                                              ; $7029: $00
	rst  $38                                         ; $702a: $ff
	jr   nc, jr_070_6fbc                             ; $702b: $30 $8f

	call nc, $f911                                   ; $702d: $d4 $11 $f9
	nop                                              ; $7030: $00
	cp   $00                                         ; $7031: $fe $00
	rst  $38                                         ; $7033: $ff
	nop                                              ; $7034: $00
	rst  $38                                         ; $7035: $ff
	nop                                              ; $7036: $00
	rst  $38                                         ; $7037: $ff
	nop                                              ; $7038: $00
	rst  $38                                         ; $7039: $ff
	nop                                              ; $703a: $00
	rst  $38                                         ; $703b: $ff

jr_070_703c:
	ld   e, $9e                                      ; $703c: $1e $9e
	db   $e4                                         ; $703e: $e4
	inc  de                                          ; $703f: $13
	sbc  c                                           ; $7040: $99
	add  b                                           ; $7041: $80
	and  [hl]                                        ; $7042: $a6
	and  d                                           ; $7043: $a2
	dec  de                                          ; $7044: $1b
	ret  c                                           ; $7045: $d8

	inc  b                                           ; $7046: $04
	db   $e4                                         ; $7047: $e4
	dec  sp                                          ; $7048: $3b
	db   $db                                         ; $7049: $db
	ld   b, h                                        ; $704a: $44
	and  h                                           ; $704b: $a4
	and  a                                           ; $704c: $a7
	ld   e, e                                        ; $704d: $5b
	jr   c, jr_070_6ffd                              ; $704e: $38 $ad

	cp   l                                           ; $7050: $bd
	ld   d, b                                        ; $7051: $50
	ld   d, h                                        ; $7052: $54
	and  l                                           ; $7053: $a5
	jr   z, jr_070_6fea                              ; $7054: $28 $94

	rst  $10                                         ; $7056: $d7
	ld   c, d                                        ; $7057: $4a
	ld   l, e                                        ; $7058: $6b
	dec  h                                           ; $7059: $25
	and  l                                           ; $705a: $a5
	sbc  h                                           ; $705b: $9c
	inc  bc                                          ; $705c: $03
	add  c                                           ; $705d: $81
	nop                                              ; $705e: $00
	ld   [bc], a                                     ; $705f: $02
	ccf                                              ; $7060: $3f
	rst  $38                                         ; $7061: $ff
	pop  bc                                          ; $7062: $c1
	add  c                                           ; $7063: $81
	ld   bc, $e180                                   ; $7064: $01 $80 $e1
	add  d                                           ; $7067: $82
	inc  h                                           ; $7068: $24
	ld   a, [bc]                                     ; $7069: $0a
	ei                                               ; $706a: $fb
	inc  b                                           ; $706b: $04
	dec  c                                           ; $706c: $0d
	nop                                              ; $706d: $00
	add  hl, bc                                      ; $706e: $09
	inc  b                                           ; $706f: $04
	dec  c                                           ; $7070: $0d
	nop                                              ; $7071: $00
	ld   bc, $0108                                   ; $7072: $01 $08 $01
	add  c                                           ; $7075: $81
	ld   [$0044], sp                                 ; $7076: $08 $44 $00
	ld   [$0104], sp                            ; $7079: $08 $04 $01
	db   $fd                                         ; $707c: $fd
	ld   bc, $00fd                                   ; $707d: $01 $fd $00
	db   $fc                                         ; $7080: $fc
	ld   bc, $00f9                                   ; $7081: $01 $f9 $00
	ld   [hl], b                                     ; $7084: $70
	ld   [hl], c                                     ; $7085: $71
	ld   [hl], b                                     ; $7086: $70
	ld   bc, $7170                                   ; $7087: $01 $70 $71
	ld   [hl], h                                     ; $708a: $74
	rst  $38                                         ; $708b: $ff
	cp   $01                                         ; $708c: $fe $01
	rst  $38                                         ; $708e: $ff
	nop                                              ; $708f: $00
	cp   $01                                         ; $7090: $fe $01
	rst  $38                                         ; $7092: $ff
	nop                                              ; $7093: $00
	inc  h                                           ; $7094: $24
	rst  $38                                         ; $7095: $ff
	inc  h                                           ; $7096: $24
	rst  $38                                         ; $7097: $ff
	sub  d                                           ; $7098: $92
	rst  $38                                         ; $7099: $ff
	rst  $20                                         ; $709a: $e7
	add  b                                           ; $709b: $80
	nop                                              ; $709c: $00
	add  b                                           ; $709d: $80
	add  c                                           ; $709e: $81
	nop                                              ; $709f: $00
	inc  bc                                          ; $70a0: $03
	adc  b                                           ; $70a1: $88
	adc  l                                           ; $70a2: $8d
	inc  d                                           ; $70a3: $14
	sbc  c                                           ; $70a4: $99
	add  b                                           ; $70a5: $80
	adc  d                                           ; $70a6: $8a
	add  a                                           ; $70a7: $87
	add  d                                           ; $70a8: $82
	add  a                                           ; $70a9: $87
	adc  h                                           ; $70aa: $8c
	add  sp, -$03                                    ; $70ab: $e8 $fd
	sub  c                                           ; $70ad: $91
	rst  $38                                         ; $70ae: $ff
	nop                                              ; $70af: $00
	rst  $38                                         ; $70b0: $ff
	nop                                              ; $70b1: $00
	rst  $38                                         ; $70b2: $ff
	nop                                              ; $70b3: $00
	rst  $38                                         ; $70b4: $ff
	nop                                              ; $70b5: $00
	ld   c, c                                        ; $70b6: $49
	rst  $38                                         ; $70b7: $ff
	ld   c, c                                        ; $70b8: $49
	rst  $38                                         ; $70b9: $ff
	cp   b                                           ; $70ba: $b8
	rrca                                             ; $70bb: $0f
	inc  c                                           ; $70bc: $0c
	add  b                                           ; $70bd: $80
	rrca                                             ; $70be: $0f
	dec  c                                           ; $70bf: $0d
	inc  c                                           ; $70c0: $0c
	adc  b                                           ; $70c1: $88
	ccf                                              ; $70c2: $3f
	ret  nz                                          ; $70c3: $c0

	ld   b, b                                        ; $70c4: $40
	ldh  a, [c]                                      ; $70c5: $f2
	ld   b, d                                        ; $70c6: $42
	ld   c, c                                        ; $70c7: $49
	ld   sp, hl                                      ; $70c8: $f9
	ld   [hl], e                                     ; $70c9: $73
	db   $e3                                         ; $70ca: $e3
	db   $10                                         ; $70cb: $10
	rst  $38                                         ; $70cc: $ff
	nop                                              ; $70cd: $00
	add  b                                           ; $70ce: $80
	rst  $38                                         ; $70cf: $ff
	add  b                                           ; $70d0: $80
	nop                                              ; $70d1: $00
	nop                                              ; $70d2: $00
	rst  $38                                         ; $70d3: $ff
	add  b                                           ; $70d4: $80
	nop                                              ; $70d5: $00
	add  b                                           ; $70d6: $80
	xor  d                                           ; $70d7: $aa
	add  b                                           ; $70d8: $80
	ld   d, l                                        ; $70d9: $55
	add  b                                           ; $70da: $80
	ld   a, [$0002]                                  ; $70db: $fa $02 $00
	rst  $38                                         ; $70de: $ff
	nop                                              ; $70df: $00
	add  b                                           ; $70e0: $80
	rst  $38                                         ; $70e1: $ff
	add  b                                           ; $70e2: $80
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	rst  $38                                         ; $70e5: $ff
	add  b                                           ; $70e6: $80
	nop                                              ; $70e7: $00
	add  b                                           ; $70e8: $80
	add  b                                           ; $70e9: $80
	add  b                                           ; $70ea: $80
	ld   a, [hl+]                                    ; $70eb: $2a
	add  b                                           ; $70ec: $80
	sub  l                                           ; $70ed: $95
	ld   [bc], a                                     ; $70ee: $02
	nop                                              ; $70ef: $00
	rst  $38                                         ; $70f0: $ff
	nop                                              ; $70f1: $00
	add  b                                           ; $70f2: $80
	rst  $38                                         ; $70f3: $ff
	add  b                                           ; $70f4: $80
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	rst  $38                                         ; $70f7: $ff
	add  b                                           ; $70f8: $80
	nop                                              ; $70f9: $00

Jump_070_70fa:
	add  b                                           ; $70fa: $80
	ld   [bc], a                                     ; $70fb: $02
	add  b                                           ; $70fc: $80
	add  e                                           ; $70fd: $83
	add  b                                           ; $70fe: $80

Call_070_70ff:
	ld   b, c                                        ; $70ff: $41
	add  hl, bc                                      ; $7100: $09
	dec  bc                                          ; $7101: $0b
	rst  $38                                         ; $7102: $ff
	ld   b, $cb                                      ; $7103: $06 $cb
	db   $db                                         ; $7105: $db
	ld   b, $3b                                      ; $7106: $06 $3b
	rst  $28                                         ; $7108: $ef
	jr   nc, jr_070_710b                             ; $7109: $30 $00

jr_070_710b:
	add  b                                           ; $710b: $80
	ld   d, b                                        ; $710c: $50
	add  b                                           ; $710d: $80
	xor  l                                           ; $710e: $ad
	add  b                                           ; $710f: $80
	rst  $38                                         ; $7110: $ff
	add  hl, bc                                      ; $7111: $09
	ret  nc                                          ; $7112: $d0

	rst  $38                                         ; $7113: $ff
	ld   h, b                                        ; $7114: $60
	db   $d3                                         ; $7115: $d3
	db   $db                                         ; $7116: $db
	ld   h, b                                        ; $7117: $60
	call c, $0cf7                                    ; $7118: $dc $f7 $0c
	nop                                              ; $711b: $00
	add  b                                           ; $711c: $80
	ld   a, [bc]                                     ; $711d: $0a
	add  b                                           ; $711e: $80
	or   h                                           ; $711f: $b4
	add  b                                           ; $7120: $80
	db   $fd                                         ; $7121: $fd
	ld   [bc], a                                     ; $7122: $02
	nop                                              ; $7123: $00
	rst  $38                                         ; $7124: $ff
	nop                                              ; $7125: $00
	add  b                                           ; $7126: $80
	rst  $38                                         ; $7127: $ff
	add  b                                           ; $7128: $80
	nop                                              ; $7129: $00
	nop                                              ; $712a: $00
	rst  $38                                         ; $712b: $ff
	add  b                                           ; $712c: $80
	nop                                              ; $712d: $00
	add  b                                           ; $712e: $80
	ld   b, b                                        ; $712f: $40
	add  b                                           ; $7130: $80
	pop  bc                                          ; $7131: $c1
	add  b                                           ; $7132: $80
	add  d                                           ; $7133: $82
	ld   [bc], a                                     ; $7134: $02
	nop                                              ; $7135: $00
	rst  $38                                         ; $7136: $ff
	nop                                              ; $7137: $00
	add  b                                           ; $7138: $80
	rst  $38                                         ; $7139: $ff
	add  b                                           ; $713a: $80
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	rst  $38                                         ; $713d: $ff
	add  b                                           ; $713e: $80
	nop                                              ; $713f: $00
	add  b                                           ; $7140: $80
	ld   bc, $5480                                   ; $7141: $01 $80 $54
	add  b                                           ; $7144: $80
	xor  c                                           ; $7145: $a9
	ld   [bc], a                                     ; $7146: $02
	nop                                              ; $7147: $00
	rst  $38                                         ; $7148: $ff
	nop                                              ; $7149: $00
	add  b                                           ; $714a: $80
	rst  $38                                         ; $714b: $ff
	add  b                                           ; $714c: $80
	nop                                              ; $714d: $00
	nop                                              ; $714e: $00
	rst  $38                                         ; $714f: $ff
	add  b                                           ; $7150: $80
	nop                                              ; $7151: $00
	add  b                                           ; $7152: $80
	ld   d, l                                        ; $7153: $55
	add  b                                           ; $7154: $80
	xor  d                                           ; $7155: $aa
	add  b                                           ; $7156: $80
	ld   e, a                                        ; $7157: $5f
	ld   [bc], a                                     ; $7158: $02
	rra                                              ; $7159: $1f
	ldh  a, [c]                                      ; $715a: $f2
	ld   [hl-], a                                    ; $715b: $32
	add  b                                           ; $715c: $80
	ldh  a, [c]                                      ; $715d: $f2
	ld   de, $1332                                   ; $715e: $11 $32 $13
	cp   $03                                         ; $7161: $fe $03
	ld   [bc], a                                     ; $7163: $02
	ld   c, a                                        ; $7164: $4f
	ld   b, d                                        ; $7165: $42
	sub  d                                           ; $7166: $92
	sbc  a                                           ; $7167: $9f
	adc  $c7                                         ; $7168: $ce $c7
	inc  e                                           ; $716a: $1c
	dec  d                                           ; $716b: $15
	add  hl, de                                      ; $716c: $19
	inc  e                                           ; $716d: $1c
	inc  d                                           ; $716e: $14
	inc  e                                           ; $716f: $1c
	ld   c, h                                        ; $7170: $4c
	add  b                                           ; $7171: $80
	ld   b, l                                        ; $7172: $45
	inc  bc                                          ; $7173: $03
	ld   b, h                                        ; $7174: $44
	add  h                                           ; $7175: $84
	ldh  [$60], a                                    ; $7176: $e0 $60
	add  b                                           ; $7178: $80
	rst  $20                                         ; $7179: $e7
	ld   bc, $9260                                   ; $717a: $01 $60 $92
	adc  c                                           ; $717d: $89
	ld   [$0980], sp                                 ; $717e: $08 $80 $09
	add  b                                           ; $7181: $80
	rrca                                             ; $7182: $0f
	ld   b, $61                                      ; $7183: $06 $61
	ld   d, c                                        ; $7185: $51
	db   $10                                         ; $7186: $10
	ld   [hl], c                                     ; $7187: $71
	ld   [hl], b                                     ; $7188: $70
	ld   [hl], c                                     ; $7189: $71
	ld   [hl], b                                     ; $718a: $70
	add  b                                           ; $718b: $80
	ld   sp, $7147                                   ; $718c: $31 $47 $71
	ld   de, $5371                                   ; $718f: $11 $71 $53
	ld   [hl], e                                     ; $7192: $73
	xor  [hl]                                        ; $7193: $ae
	cp   [hl]                                        ; $7194: $be
	inc  b                                           ; $7195: $04
	rst  $38                                         ; $7196: $ff
	inc  h                                           ; $7197: $24
	rst  $38                                         ; $7198: $ff
	add  h                                           ; $7199: $84
	rst  $38                                         ; $719a: $ff
	ld   [hl-], a                                    ; $719b: $32
	rst  $38                                         ; $719c: $ff
	ld   b, h                                        ; $719d: $44
	rst  $38                                         ; $719e: $ff
	jp   nc, $f9ff                                   ; $719f: $d2 $ff $f9

	rst  $38                                         ; $71a2: $ff
	db   $fd                                         ; $71a3: $fd
	rst  $38                                         ; $71a4: $ff
	ld   [hl], e                                     ; $71a5: $73
	add  a                                           ; $71a6: $87
	add  h                                           ; $71a7: $84
	add  a                                           ; $71a8: $87
	add  d                                           ; $71a9: $82
	add  a                                           ; $71aa: $87
	ret  nz                                          ; $71ab: $c0

	rst  ToBoot                                         ; $71ac: $c7
	jp   nz, Jump_070_45c7                           ; $71ad: $c2 $c7 $45

	rst  ToBoot                                         ; $71b0: $c7
	ld   b, l                                        ; $71b1: $45
	rst  ToBoot                                         ; $71b2: $c7
	ld   b, a                                        ; $71b3: $47
	rst  ToBoot                                         ; $71b4: $c7
	dec  e                                           ; $71b5: $1d
	rst  $38                                         ; $71b6: $ff
	sub  d                                           ; $71b7: $92
	rst  $38                                         ; $71b8: $ff
	ld   c, c                                        ; $71b9: $49
	rst  $38                                         ; $71ba: $ff
	ld   c, c                                        ; $71bb: $49
	rst  $38                                         ; $71bc: $ff
	ld   [de], a                                     ; $71bd: $12
	rst  $38                                         ; $71be: $ff
	ld   [bc], a                                     ; $71bf: $02
	rst  $38                                         ; $71c0: $ff
	ld   b, c                                        ; $71c1: $41
	rst  $38                                         ; $71c2: $ff
	xor  e                                           ; $71c3: $ab
	rst  $38                                         ; $71c4: $ff
	adc  e                                           ; $71c5: $8b
	pop  hl                                          ; $71c6: $e1
	ld   h, e                                        ; $71c7: $63
	db   $e3                                         ; $71c8: $e3
	inc  hl                                          ; $71c9: $23
	db   $e3                                         ; $71ca: $e3
	inc  hl                                          ; $71cb: $23
	db   $e3                                         ; $71cc: $e3
	ld   h, e                                        ; $71cd: $63
	db   $e3                                         ; $71ce: $e3
	ld   h, e                                        ; $71cf: $63
	db   $e3                                         ; $71d0: $e3
	inc  hl                                          ; $71d1: $23
	db   $e3                                         ; $71d2: $e3
	inc  hl                                          ; $71d3: $23
	db   $e3                                         ; $71d4: $e3
	db   $10                                         ; $71d5: $10
	add  [hl]                                        ; $71d6: $86
	sbc  $86                                         ; $71d7: $de $86
	cp   [hl]                                        ; $71d9: $be
	add  b                                           ; $71da: $80
	sbc  $80                                         ; $71db: $de $80
	pop  hl                                          ; $71dd: $e1
	add  b                                           ; $71de: $80
	rst  $38                                         ; $71df: $ff
	add  b                                           ; $71e0: $80
	ld   a, [hl]                                     ; $71e1: $7e
	add  b                                           ; $71e2: $80
	ld   l, h                                        ; $71e3: $6c
	ld   bc, $f171                                   ; $71e4: $01 $71 $f1
	add  c                                           ; $71e7: $81
	ccf                                              ; $71e8: $3f
	nop                                              ; $71e9: $00
	cp   a                                           ; $71ea: $bf
	add  b                                           ; $71eb: $80
	adc  [hl]                                        ; $71ec: $8e
	add  b                                           ; $71ed: $80
	and  a                                           ; $71ee: $a7
	add  b                                           ; $71ef: $80
	daa                                              ; $71f0: $27
	add  b                                           ; $71f1: $80
	ld   h, e                                        ; $71f2: $63
	rlca                                             ; $71f3: $07
	db   $e3                                         ; $71f4: $e3
	db   $eb                                         ; $71f5: $eb
	pop  hl                                          ; $71f6: $e1
	db   $e3                                         ; $71f7: $e3
	ret  nz                                          ; $71f8: $c0

	add  sp, -$40                                    ; $71f9: $e8 $c0
	ldh  [c], a                                      ; $71fb: $e2
	add  b                                           ; $71fc: $80
	ld   a, a                                        ; $71fd: $7f
	add  b                                           ; $71fe: $80
	adc  a                                           ; $71ff: $8f
	add  b                                           ; $7200: $80
	ldh  a, [$80]                                    ; $7201: $f0 $80
	rst  $38                                         ; $7203: $ff
	add  b                                           ; $7204: $80
	sbc  a                                           ; $7205: $9f
	add  b                                           ; $7206: $80
	rst  $20                                         ; $7207: $e7
	add  b                                           ; $7208: $80
	ld   hl, sp-$80                                  ; $7209: $f8 $80
	ccf                                              ; $720b: $3f
	add  b                                           ; $720c: $80
	ei                                               ; $720d: $fb
	add  b                                           ; $720e: $80
	rst  ToBoot                                         ; $720f: $c7
	add  b                                           ; $7210: $80
	ld   a, $80                                      ; $7211: $3e $80
	db   $fc                                         ; $7213: $fc
	add  b                                           ; $7214: $80
	di                                               ; $7215: $f3
	add  b                                           ; $7216: $80
	rst  ToBoot                                         ; $7217: $c7
	add  b                                           ; $7218: $80
	ld   a, $80                                      ; $7219: $3e $80
	db   $fc                                         ; $721b: $fc
	add  b                                           ; $721c: $80
	adc  a                                           ; $721d: $8f
	add  b                                           ; $721e: $80
	dec  hl                                          ; $721f: $2b
	add  b                                           ; $7220: $80
	ld   l, l                                        ; $7221: $6d
	add  b                                           ; $7222: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7223: $cf
	ld   bc, $af8f                                   ; $7224: $01 $8f $af
	add  c                                           ; $7227: $81
	rlca                                             ; $7228: $07
	ld   [bc], a                                     ; $7229: $02
	xor  a                                           ; $722a: $af
	inc  bc                                          ; $722b: $03
	adc  e                                           ; $722c: $8b
	add  b                                           ; $722d: $80
	ld   sp, hl                                      ; $722e: $f9
	add  b                                           ; $722f: $80
	pop  af                                          ; $7230: $f1
	add  b                                           ; $7231: $80
	pop  hl                                          ; $7232: $e1
	add  b                                           ; $7233: $80

jr_070_7234:
	add  hl, de                                      ; $7234: $19
	add  b                                           ; $7235: $80
	push af                                          ; $7236: $f5
	add  b                                           ; $7237: $80
	adc  l                                           ; $7238: $8d
	add  b                                           ; $7239: $80
	db   $fd                                         ; $723a: $fd
	add  b                                           ; $723b: $80
	ld   sp, hl                                      ; $723c: $f9
	add  b                                           ; $723d: $80
	rst  $38                                         ; $723e: $ff
	adc  b                                           ; $723f: $88
	cp   a                                           ; $7240: $bf
	add  c                                           ; $7241: $81
	rst  JumpTable                                         ; $7242: $df
	db   $10                                         ; $7243: $10
	ld   d, c                                        ; $7244: $51
	add  a                                           ; $7245: $87
	add  $c7                                         ; $7246: $c6 $c7
	call nz, $c4c7                                   ; $7248: $c4 $c7 $c4
	rst  ToBoot                                         ; $724b: $c7
	add  $c7                                         ; $724c: $c6 $c7
	add  $c7                                         ; $724e: $c6 $c7
	call nz, $c5c7                                   ; $7250: $c4 $c7 $c5
	rst  ToBoot                                         ; $7253: $c7
	add  hl, bc                                      ; $7254: $09
	add  b                                           ; $7255: $80
	cp   a                                           ; $7256: $bf
	add  b                                           ; $7257: $80
	add  b                                           ; $7258: $80
	add  b                                           ; $7259: $80
	nop                                              ; $725a: $00
	add  b                                           ; $725b: $80
	rst  $38                                         ; $725c: $ff
	add  d                                           ; $725d: $82
	nop                                              ; $725e: $00
	add  b                                           ; $725f: $80
	rst  $38                                         ; $7260: $ff
	inc  b                                           ; $7261: $04
	nop                                              ; $7262: $00
	db   $fd                                         ; $7263: $fd
	ld   b, $08                                      ; $7264: $06 $08
	ld   c, $80                                      ; $7266: $0e $80
	ld   b, $80                                      ; $7268: $06 $80
	ld   c, $80                                      ; $726a: $0e $80
	inc  b                                           ; $726c: $04
	add  b                                           ; $726d: $80
	inc  c                                           ; $726e: $0c
	add  b                                           ; $726f: $80
	ld   [$0c80], sp                                 ; $7270: $08 $80 $0c
	db   $10                                         ; $7273: $10
	jr   c, jr_070_7234                              ; $7274: $38 $be

	or   b                                           ; $7276: $b0
	cp   [hl]                                        ; $7277: $be
	xor  [hl]                                        ; $7278: $ae
	cp   [hl]                                        ; $7279: $be
	inc  l                                           ; $727a: $2c
	inc  a                                           ; $727b: $3c
	jr   @+$3a                                       ; $727c: $18 $38

	jr   jr_070_72b8                                 ; $727e: $18 $38

	jr   z, jr_070_729a                              ; $7280: $28 $18

	jr   c, jr_070_72ac                              ; $7282: $38 $28

	ld   d, l                                        ; $7284: $55

jr_070_7285:
	add  e                                           ; $7285: $83
	rst  $38                                         ; $7286: $ff
	add  b                                           ; $7287: $80
	ld   e, a                                        ; $7288: $5f
	add  b                                           ; $7289: $80
	rst  $38                                         ; $728a: $ff
	add  b                                           ; $728b: $80
	sub  e                                           ; $728c: $93
	add  b                                           ; $728d: $80
	rst  $38                                         ; $728e: $ff
	add  b                                           ; $728f: $80
	ld   c, c                                        ; $7290: $49
	ld   bc, $c5f5                                   ; $7291: $01 $f5 $c5
	add  b                                           ; $7294: $80
	res  0, b                                        ; $7295: $cb $80
	jp   z, $cb80                                    ; $7297: $ca $80 $cb

jr_070_729a:
	add  b                                           ; $729a: $80
	jp   z, $c301                                    ; $729b: $ca $01 $c3

	res  0, b                                        ; $729e: $cb $80
	ld   [$6b80], a                                  ; $72a0: $ea $80 $6b
	inc  bc                                          ; $72a3: $03
	push bc                                          ; $72a4: $c5
	rst  $38                                         ; $72a5: $ff
	db   $fd                                         ; $72a6: $fd
	rst  $38                                         ; $72a7: $ff
	add  b                                           ; $72a8: $80
	cp   a                                           ; $72a9: $bf
	add  b                                           ; $72aa: $80
	rst  $38                                         ; $72ab: $ff

jr_070_72ac:
	add  b                                           ; $72ac: $80
	or   a                                           ; $72ad: $b7
	add  b                                           ; $72ae: $80
	rst  $38                                         ; $72af: $ff
	add  b                                           ; $72b0: $80
	ld   l, e                                        ; $72b1: $6b
	add  b                                           ; $72b2: $80
	rst  $38                                         ; $72b3: $ff
	inc  b                                           ; $72b4: $04
	call z, $a3e3                                    ; $72b5: $cc $e3 $a3

jr_070_72b8:
	db   $e3                                         ; $72b8: $e3
	and  e                                           ; $72b9: $a3
	add  e                                           ; $72ba: $83
	db   $e3                                         ; $72bb: $e3
	add  d                                           ; $72bc: $82
	ldh  [c], a                                      ; $72bd: $e2
	add  b                                           ; $72be: $80
	ldh  [rP1], a                                    ; $72bf: $e0 $00
	ret  nc                                          ; $72c1: $d0

	add  b                                           ; $72c2: $80
	cp   [hl]                                        ; $72c3: $be
	ld   bc, $7776                                   ; $72c4: $01 $76 $77
	add  c                                           ; $72c7: $81
	ld   [hl], h                                     ; $72c8: $74
	ld   [bc], a                                     ; $72c9: $02
	ld   [hl], l                                     ; $72ca: $75
	ld   l, h                                        ; $72cb: $6c
	ld   l, [hl]                                     ; $72cc: $6e
	add  b                                           ; $72cd: $80
	add  sp, $01                                     ; $72ce: $e8 $01
	ret  c                                           ; $72d0: $d8

	jp   c, $d080                                    ; $72d1: $da $80 $d0

	ld   bc, $5f1f                                   ; $72d4: $01 $1f $5f
	add  b                                           ; $72d7: $80
	rrca                                             ; $72d8: $0f
	ld   bc, $5500                                   ; $72d9: $01 $00 $55
	add  c                                           ; $72dc: $81
	nop                                              ; $72dd: $00
	nop                                              ; $72de: $00
	dec  d                                           ; $72df: $15
	add  c                                           ; $72e0: $81
	nop                                              ; $72e1: $00
	add  b                                           ; $72e2: $80
	ld   [$2005], sp                                 ; $72e3: $08 $05 $20
	add  b                                           ; $72e6: $80
	and  b                                           ; $72e7: $a0
	nop                                              ; $72e8: $00
	ld   b, b                                        ; $72e9: $40
	nop                                              ; $72ea: $00
	add  b                                           ; $72eb: $80
	stop                                             ; $72ec: $10 $00
	ld   a, b                                        ; $72ee: $78
	add  c                                           ; $72ef: $81
	jr   c, @-$7e                                    ; $72f0: $38 $80

	ld   a, d                                        ; $72f2: $7a
	add  b                                           ; $72f3: $80
	ld   a, b                                        ; $72f4: $78
	add  hl, bc                                      ; $72f5: $09
	add  b                                           ; $72f6: $80
	rrca                                             ; $72f7: $0f
	cpl                                              ; $72f8: $2f
	nop                                              ; $72f9: $00
	adc  d                                           ; $72fa: $8a
	nop                                              ; $72fb: $00
	jr   nz, jr_070_72fe                             ; $72fc: $20 $00

jr_070_72fe:
	ld   a, [hl-]                                    ; $72fe: $3a

Jump_070_72ff:
	jr   nc, @-$7e                                   ; $72ff: $30 $80

	jr   c, jr_070_7285                              ; $7301: $38 $82

	ccf                                              ; $7303: $3f
	nop                                              ; $7304: $00
	ld   [bc], a                                     ; $7305: $02
	add  b                                           ; $7306: $80
	ldh  a, [rSB]                                    ; $7307: $f0 $01
	nop                                              ; $7309: $00
	ld   c, d                                        ; $730a: $4a
	add  c                                           ; $730b: $81
	nop                                              ; $730c: $00
	ld   bc, $044c                                   ; $730d: $01 $4c $04
	add  b                                           ; $7310: $80
	ld   b, $82                                      ; $7311: $06 $82
	and  $02                                         ; $7313: $e6 $02
	adc  b                                           ; $7315: $88
	ld   bc, $818b                                   ; $7316: $01 $8b $81
	nop                                              ; $7319: $00
	ld   bc, $0002                                   ; $731a: $01 $02 $00
	add  b                                           ; $731d: $80
	db   $10                                         ; $731e: $10
	add  b                                           ; $731f: $80
	add  hl, de                                      ; $7320: $19
	add  b                                           ; $7321: $80
	sbc  c                                           ; $7322: $99
	add  b                                           ; $7323: $80
	ld   e, c                                        ; $7324: $59
	nop                                              ; $7325: $00
	inc  b                                           ; $7326: $04
	add  b                                           ; $7327: $80
	pop  af                                          ; $7328: $f1
	ld   a, [bc]                                     ; $7329: $0a
	ldh  [$ec], a                                    ; $732a: $e0 $ec
	nop                                              ; $732c: $00
	and  d                                           ; $732d: $a2
	nop                                              ; $732e: $00
	ld   [$a200], sp                                 ; $732f: $08 $00 $a2
	nop                                              ; $7332: $00
	ld   b, c                                        ; $7333: $41
	ld   b, b                                        ; $7334: $40
	add  b                                           ; $7335: $80
	ld   [hl], b                                     ; $7336: $70

jr_070_7337:
	nop                                              ; $7337: $00
	ld   bc, $df82                                   ; $7338: $01 $82 $df
	add  h                                           ; $733b: $84
	rst  $28                                         ; $733c: $ef
	add  b                                           ; $733d: $80
	ld   [hl], a                                     ; $733e: $77
	add  b                                           ; $733f: $80
	ld   d, a                                        ; $7340: $57
	ld   bc, $975b                                   ; $7341: $01 $5b $97
	add  a                                           ; $7344: $87
	rst  ToBoot                                         ; $7345: $c7
	add  b                                           ; $7346: $80
	ld   b, a                                        ; $7347: $47
	add  b                                           ; $7348: $80
	ld   b, [hl]                                     ; $7349: $46
	add  b                                           ; $734a: $80
	rlca                                             ; $734b: $07
	ld   bc, $00fb                                   ; $734c: $01 $fb $00
	add  b                                           ; $734f: $80
	rrca                                             ; $7350: $0f
	adc  d                                           ; $7351: $8a
	nop                                              ; $7352: $00
	ld   bc, $000d                                   ; $7353: $01 $0d $00
	add  b                                           ; $7356: $80
	inc  c                                           ; $7357: $0c
	add  b                                           ; $7358: $80
	ld   [$0c80], sp                                 ; $7359: $08 $80 $0c
	add  b                                           ; $735c: $80
	nop                                              ; $735d: $00
	add  b                                           ; $735e: $80
	inc  c                                           ; $735f: $0c
	add  b                                           ; $7360: $80
	dec  bc                                          ; $7361: $0b
	add  b                                           ; $7362: $80
	rrca                                             ; $7363: $0f
	nop                                              ; $7364: $00
	sub  b                                           ; $7365: $90
	add  c                                           ; $7366: $81
	jr   c, jr_070_736e                              ; $7367: $38 $05

	ld   [$2818], sp                                 ; $7369: $08 $18 $28
	jr   c, jr_070_73c7                              ; $736c: $38 $59

jr_070_736e:
	ld   a, c                                        ; $736e: $79
	add  b                                           ; $736f: $80
	db   $db                                         ; $7370: $db
	dec  b                                           ; $7371: $05
	set  3, e                                        ; $7372: $cb $db
	ld   [$b6db], sp                                 ; $7374: $08 $db $b6
	rst  $38                                         ; $7377: $ff
	add  b                                           ; $7378: $80
	sub  d                                           ; $7379: $92
	add  b                                           ; $737a: $80
	rst  $38                                         ; $737b: $ff
	add  b                                           ; $737c: $80
	ld   c, c                                        ; $737d: $49
	add  b                                           ; $737e: $80
	rst  $38                                         ; $737f: $ff
	add  b                                           ; $7380: $80
	ld   d, d                                        ; $7381: $52
	add  b                                           ; $7382: $80
	ld   a, a                                        ; $7383: $7f
	add  b                                           ; $7384: $80
	ld   c, c                                        ; $7385: $49
	ld   bc, $e8d0                                   ; $7386: $01 $d0 $e8
	add  b                                           ; $7389: $80
	ld   h, e                                        ; $738a: $63
	add  b                                           ; $738b: $80
	ldh  [c], a                                      ; $738c: $e2
	add  b                                           ; $738d: $80
	inc  hl                                          ; $738e: $23
	add  b                                           ; $738f: $80
	ldh  [c], a                                      ; $7390: $e2
	add  b                                           ; $7391: $80
	ld   h, e                                        ; $7392: $63
	add  b                                           ; $7393: $80
	ldh  [c], a                                      ; $7394: $e2
	add  b                                           ; $7395: $80
	dec  h                                           ; $7396: $25
	ld   bc, $92aa                                   ; $7397: $01 $aa $92
	add  b                                           ; $739a: $80
	rst  $38                                         ; $739b: $ff
	add  b                                           ; $739c: $80
	ld   c, c                                        ; $739d: $49
	add  b                                           ; $739e: $80
	rst  $38                                         ; $739f: $ff
	add  b                                           ; $73a0: $80
	sub  d                                           ; $73a1: $92
	add  b                                           ; $73a2: $80
	rst  $38                                         ; $73a3: $ff
	add  b                                           ; $73a4: $80
	ld   c, c                                        ; $73a5: $49
	add  b                                           ; $73a6: $80
	rst  $38                                         ; $73a7: $ff
	nop                                              ; $73a8: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73a9: $cf
	add  c                                           ; $73aa: $81
	ldh  [$80], a                                    ; $73ab: $e0 $80
	ld   h, b                                        ; $73ad: $60
	add  b                                           ; $73ae: $80
	ldh  [$80], a                                    ; $73af: $e0 $80
	ld   h, b                                        ; $73b1: $60
	add  b                                           ; $73b2: $80
	pop  hl                                          ; $73b3: $e1
	add  b                                           ; $73b4: $80
	jr   nz, jr_070_7337                             ; $73b5: $20 $80

	rst  $20                                         ; $73b7: $e7
	ld   bc, $a0d8                                   ; $73b8: $01 $d8 $a0
	add  b                                           ; $73bb: $80
	and  c                                           ; $73bc: $a1
	ld   [bc], a                                     ; $73bd: $02
	xor  c                                           ; $73be: $a9
	ld   b, c                                        ; $73bf: $41
	ld   d, e                                        ; $73c0: $53
	add  b                                           ; $73c1: $80
	jp   $8301                                       ; $73c2: $c3 $01 $83


	rst  $10                                         ; $73c5: $d7
	add  c                                           ; $73c6: $81

jr_070_73c7:
	rlca                                             ; $73c7: $07
	ld   bc, $2f6f                                   ; $73c8: $01 $6f $2f
	add  b                                           ; $73cb: $80
	ld   [$1884], sp                                 ; $73cc: $08 $84 $18
	add  [hl]                                        ; $73cf: $86
	add  hl, de                                      ; $73d0: $19
	add  b                                           ; $73d1: $80
	ld   a, d                                        ; $73d2: $7a
	add  b                                           ; $73d3: $80
	ld   a, b                                        ; $73d4: $78
	add  b                                           ; $73d5: $80
	ld   a, d                                        ; $73d6: $7a
	add  b                                           ; $73d7: $80
	ld   a, b                                        ; $73d8: $78
	add  b                                           ; $73d9: $80
	ld   a, d                                        ; $73da: $7a
	add  b                                           ; $73db: $80
	ld   a, b                                        ; $73dc: $78
	add  b                                           ; $73dd: $80
	ld   a, d                                        ; $73de: $7a
	add  b                                           ; $73df: $80
	ld   a, b                                        ; $73e0: $78
	add  b                                           ; $73e1: $80
	ccf                                              ; $73e2: $3f
	add  d                                           ; $73e3: $82
	ld   a, $80                                      ; $73e4: $3e $80
	ld   a, [hl-]                                    ; $73e6: $3a
	add  b                                           ; $73e7: $80
	inc  [hl]                                        ; $73e8: $34
	add  b                                           ; $73e9: $80
	ld   a, [hl-]                                    ; $73ea: $3a
	add  b                                           ; $73eb: $80
	inc  [hl]                                        ; $73ec: $34
	add  b                                           ; $73ed: $80
	ld   a, [hl-]                                    ; $73ee: $3a
	adc  [hl]                                        ; $73ef: $8e
	and  $80                                         ; $73f0: $e6 $80
	sbc  c                                           ; $73f2: $99
	add  b                                           ; $73f3: $80
	ld   e, c                                        ; $73f4: $59
	add  b                                           ; $73f5: $80
	sbc  c                                           ; $73f6: $99
	add  b                                           ; $73f7: $80
	ld   e, c                                        ; $73f8: $59
	add  b                                           ; $73f9: $80
	sbc  c                                           ; $73fa: $99
	add  b                                           ; $73fb: $80
	ld   e, c                                        ; $73fc: $59
	add  b                                           ; $73fd: $80
	sbc  c                                           ; $73fe: $99
	add  b                                           ; $73ff: $80
	ld   e, c                                        ; $7400: $59
	add  [hl]                                        ; $7401: $86
	ld   a, b                                        ; $7402: $78
	add  [hl]                                        ; $7403: $86
	ld   a, c                                        ; $7404: $79
	ld   [bc], a                                     ; $7405: $02
	nop                                              ; $7406: $00
	dec  l                                           ; $7407: $2d
	xor  l                                           ; $7408: $ad
	add  b                                           ; $7409: $80
	ld   h, $01                                      ; $740a: $26 $01
	ld   [de], a                                     ; $740c: $12
	or   d                                           ; $740d: $b2
	add  b                                           ; $740e: $80
	add  hl, bc                                      ; $740f: $09
	ld   [$2c04], sp                                 ; $7410: $08 $04 $2c
	ld   [bc], a                                     ; $7413: $02
	add  d                                           ; $7414: $82
	add  b                                           ; $7415: $80
	adc  d                                           ; $7416: $8a
	add  b                                           ; $7417: $80
	rrca                                             ; $7418: $0f
	ld   b, $80                                      ; $7419: $06 $80
	rlca                                             ; $741b: $07
	add  b                                           ; $741c: $80
	inc  b                                           ; $741d: $04
	add  b                                           ; $741e: $80
	rlca                                             ; $741f: $07
	add  b                                           ; $7420: $80
	ld   b, $80                                      ; $7421: $06 $80
	add  a                                           ; $7423: $87
	add  b                                           ; $7424: $80
	inc  b                                           ; $7425: $04
	add  b                                           ; $7426: $80
	rst  $20                                         ; $7427: $e7
	dec  b                                           ; $7428: $05
	dec  bc                                          ; $7429: $0b
	nop                                              ; $742a: $00
	ldh  [$e1], a                                    ; $742b: $e0 $e1
	ld   hl, $8820                                   ; $742d: $21 $20 $88
	nop                                              ; $7430: $00
	ld   bc, $03fd                                   ; $7431: $01 $fd $03
	add  b                                           ; $7434: $80
	rrca                                             ; $7435: $0f
	add  b                                           ; $7436: $80
	ld   a, [bc]                                     ; $7437: $0a
	add  b                                           ; $7438: $80
	ld   c, $80                                      ; $7439: $0e $80
	ld   [bc], a                                     ; $743b: $02
	add  b                                           ; $743c: $80
	ld   c, $80                                      ; $743d: $0e $80
	ld   a, [bc]                                     ; $743f: $0a
	add  b                                           ; $7440: $80
	ld   c, $03                                      ; $7441: $0e $03
	rla                                              ; $7443: $17
	ld   e, a                                        ; $7444: $5f
	ld   [de], a                                     ; $7445: $12
	ld   e, $82                                      ; $7446: $1e $82
	inc  e                                           ; $7448: $1c
	inc  c                                           ; $7449: $0c
	inc  d                                           ; $744a: $14
	inc  e                                           ; $744b: $1c
	inc  c                                           ; $744c: $0c
	inc  d                                           ; $744d: $14
	inc  b                                           ; $744e: $04
	inc  d                                           ; $744f: $14
	ld   b, h                                        ; $7450: $44
	ld   d, h                                        ; $7451: $54
	dec  h                                           ; $7452: $25
	ld   [hl], b                                     ; $7453: $70
	ld   [bc], a                                     ; $7454: $02
	nop                                              ; $7455: $00
	ld   d, b                                        ; $7456: $50
	add  e                                           ; $7457: $83
	ld   b, h                                        ; $7458: $44
	add  b                                           ; $7459: $80
	inc  b                                           ; $745a: $04
	add  b                                           ; $745b: $80
	ld   b, h                                        ; $745c: $44
	add  b                                           ; $745d: $80
	inc  b                                           ; $745e: $04
	ld   bc, $e4ca                                   ; $745f: $01 $ca $e4
	add  b                                           ; $7462: $80
	ld   h, l                                        ; $7463: $65
	add  b                                           ; $7464: $80
	db   $e4                                         ; $7465: $e4
	ld   bc, $2524                                   ; $7466: $01 $24 $25
	add  b                                           ; $7469: $80
	push hl                                          ; $746a: $e5
	add  b                                           ; $746b: $80
	ld   h, l                                        ; $746c: $65
	dec  b                                           ; $746d: $05
	push hl                                          ; $746e: $e5
	db   $e4                                         ; $746f: $e4
	nop                                              ; $7470: $00
	rlca                                             ; $7471: $07
	xor  l                                           ; $7472: $ad
	sub  d                                           ; $7473: $92
	add  b                                           ; $7474: $80
	rst  $38                                         ; $7475: $ff
	add  b                                           ; $7476: $80
	ld   c, c                                        ; $7477: $49
	nop                                              ; $7478: $00
	nop                                              ; $7479: $00
	add  b                                           ; $747a: $80
	rst  $38                                         ; $747b: $ff
	add  d                                           ; $747c: $82
	inc  h                                           ; $747d: $24
	add  b                                           ; $747e: $80
	nop                                              ; $747f: $00
	ld   [bc], a                                     ; $7480: $02
	rst  $38                                         ; $7481: $ff
	or   b                                           ; $7482: $b0
	ld   h, b                                        ; $7483: $60
	add  b                                           ; $7484: $80
	pop  hl                                          ; $7485: $e1
	add  c                                           ; $7486: $81
	ld   hl, $e102                                   ; $7487: $21 $02 $e1
	ldh  [hScriptOpcodeParams], a                                    ; $748a: $e0 $a0
	add  b                                           ; $748c: $80
	and  a                                           ; $748d: $a7
	nop                                              ; $748e: $00
	and  [hl]                                        ; $748f: $a6
	add  b                                           ; $7490: $80
	ld   h, $00                                      ; $7491: $26 $00
	or   $84                                         ; $7493: $f6 $84
	cpl                                              ; $7495: $2f
	dec  b                                           ; $7496: $05
	ld   c, b                                        ; $7497: $48
	add  b                                           ; $7498: $80
	or   a                                           ; $7499: $b7
	nop                                              ; $749a: $00
	add  b                                           ; $749b: $80
	rst  $38                                         ; $749c: $ff
	add  b                                           ; $749d: $80
	nop                                              ; $749e: $00
	add  b                                           ; $749f: $80
	rst  $38                                         ; $74a0: $ff
	add  h                                           ; $74a1: $84
	add  hl, de                                      ; $74a2: $19
	ld   [bc], a                                     ; $74a3: $02
	ld   b, e                                        ; $74a4: $43
	nop                                              ; $74a5: $00
	cp   h                                           ; $74a6: $bc
	add  b                                           ; $74a7: $80
	nop                                              ; $74a8: $00
	nop                                              ; $74a9: $00
	rst  $38                                         ; $74aa: $ff
	add  b                                           ; $74ab: $80
	nop                                              ; $74ac: $00
	add  b                                           ; $74ad: $80
	rst  $38                                         ; $74ae: $ff
	add  b                                           ; $74af: $80
	ld   a, d                                        ; $74b0: $7a
	add  d                                           ; $74b1: $82
	ld   a, b                                        ; $74b2: $78
	ld   [bc], a                                     ; $74b3: $02
	rlca                                             ; $74b4: $07
	nop                                              ; $74b5: $00
	ld   hl, sp-$80                                  ; $74b6: $f8 $80
	nop                                              ; $74b8: $00
	nop                                              ; $74b9: $00
	rst  $38                                         ; $74ba: $ff
	add  b                                           ; $74bb: $80
	nop                                              ; $74bc: $00
	add  b                                           ; $74bd: $80
	rst  $38                                         ; $74be: $ff
	add  b                                           ; $74bf: $80
	inc  [hl]                                        ; $74c0: $34
	add  b                                           ; $74c1: $80
	ld   a, [hl-]                                    ; $74c2: $3a
	add  b                                           ; $74c3: $80
	inc  a                                           ; $74c4: $3c
	ld   [bc], a                                     ; $74c5: $02
	ret  nz                                          ; $74c6: $c0

	nop                                              ; $74c7: $00
	ccf                                              ; $74c8: $3f
	add  b                                           ; $74c9: $80
	nop                                              ; $74ca: $00
	nop                                              ; $74cb: $00
	rst  $38                                         ; $74cc: $ff
	add  b                                           ; $74cd: $80
	nop                                              ; $74ce: $00
	add  b                                           ; $74cf: $80
	rst  $38                                         ; $74d0: $ff
	add  h                                           ; $74d1: $84
	and  $02                                         ; $74d2: $e6 $02
	add  hl, de                                      ; $74d4: $19
	nop                                              ; $74d5: $00
	and  $80                                         ; $74d6: $e6 $80
	nop                                              ; $74d8: $00
	nop                                              ; $74d9: $00
	rst  $38                                         ; $74da: $ff
	add  b                                           ; $74db: $80
	nop                                              ; $74dc: $00
	add  b                                           ; $74dd: $80
	rst  $38                                         ; $74de: $ff
	add  b                                           ; $74df: $80
	sbc  c                                           ; $74e0: $99
	add  b                                           ; $74e1: $80
	ld   e, c                                        ; $74e2: $59
	add  b                                           ; $74e3: $80
	add  hl, de                                      ; $74e4: $19
	ld   [bc], a                                     ; $74e5: $02
	and  $00                                         ; $74e6: $e6 $00
	add  hl, de                                      ; $74e8: $19
	add  b                                           ; $74e9: $80
	nop                                              ; $74ea: $00
	nop                                              ; $74eb: $00
	rst  $38                                         ; $74ec: $ff
	add  b                                           ; $74ed: $80
	nop                                              ; $74ee: $00
	add  b                                           ; $74ef: $80
	rst  $38                                         ; $74f0: $ff
	add  d                                           ; $74f1: $82
	ld   a, c                                        ; $74f2: $79
	add  b                                           ; $74f3: $80
	ld   a, b                                        ; $74f4: $78
	ld   [bc], a                                     ; $74f5: $02
	rlca                                             ; $74f6: $07
	nop                                              ; $74f7: $00
	ld   hl, sp-$80                                  ; $74f8: $f8 $80
	nop                                              ; $74fa: $00
	nop                                              ; $74fb: $00
	rst  $38                                         ; $74fc: $ff
	add  b                                           ; $74fd: $80
	nop                                              ; $74fe: $00
	add  b                                           ; $74ff: $80
	rst  $38                                         ; $7500: $ff
	inc  bc                                          ; $7501: $03
	add  d                                           ; $7502: $82
	add  b                                           ; $7503: $80
	add  d                                           ; $7504: $82
	add  b                                           ; $7505: $80
	add  b                                           ; $7506: $80
	nop                                              ; $7507: $00
	ld   [bc], a                                     ; $7508: $02
	pop  hl                                          ; $7509: $e1
	nop                                              ; $750a: $00
	ld   e, $80                                      ; $750b: $1e $80
	nop                                              ; $750d: $00
	nop                                              ; $750e: $00
	rst  $38                                         ; $750f: $ff
	add  b                                           ; $7510: $80
	nop                                              ; $7511: $00
	add  b                                           ; $7512: $80
	rst  $38                                         ; $7513: $ff
	ld   bc, $060d                                   ; $7514: $01 $0d $06
	add  b                                           ; $7517: $80
	ld   b, a                                        ; $7518: $47
	add  b                                           ; $7519: $80
	ld   b, h                                        ; $751a: $44
	inc  bc                                          ; $751b: $03
	call nz, $07c7                                   ; $751c: $c4 $c7 $07
	dec  b                                           ; $751f: $05
	add  b                                           ; $7520: $80
	push hl                                          ; $7521: $e5
	inc  bc                                          ; $7522: $03
	dec  h                                           ; $7523: $25
	inc  h                                           ; $7524: $24
	and  h                                           ; $7525: $a4
	xor  a                                           ; $7526: $af
	add  b                                           ; $7527: $80
	nop                                              ; $7528: $00
	ld   [bc], a                                     ; $7529: $02
	inc  bc                                          ; $752a: $03
	rst  $38                                         ; $752b: $ff
	db   $fc                                         ; $752c: $fc
	adc  c                                           ; $752d: $89
	nop                                              ; $752e: $00
	nop                                              ; $752f: $00
	cp   $81                                         ; $7530: $fe $81
	nop                                              ; $7532: $00
	ld   bc, $0f01                                   ; $7533: $01 $01 $0f
	add  c                                           ; $7536: $81
	nop                                              ; $7537: $00
	add  b                                           ; $7538: $80
	ld   c, $80                                      ; $7539: $0e $80
	ld   [bc], a                                     ; $753b: $02
	add  b                                           ; $753c: $80
	nop                                              ; $753d: $00
	ld   b, $0d                                      ; $753e: $06 $0d
	ld   e, a                                        ; $7540: $5f
	nop                                              ; $7541: $00
	ld   [$5500], sp                                 ; $7542: $08 $00 $55
	rst  $38                                         ; $7545: $ff
	add  c                                           ; $7546: $81
	nop                                              ; $7547: $00
	add  b                                           ; $7548: $80
	cp   $80                                         ; $7549: $fe $80
	ld   [bc], a                                     ; $754b: $02
	add  b                                           ; $754c: $80
	nop                                              ; $754d: $00
	ld   [bc], a                                     ; $754e: $02
	db   $fd                                         ; $754f: $fd
	db   $10                                         ; $7550: $10
	inc  b                                           ; $7551: $04
	add  b                                           ; $7552: $80
	dec  b                                           ; $7553: $05
	ld   bc, $ff16                                   ; $7554: $01 $16 $ff
	add  c                                           ; $7557: $81
	nop                                              ; $7558: $00
	add  b                                           ; $7559: $80
	cp   $81                                         ; $755a: $fe $81
	ld   [bc], a                                     ; $755c: $02
	ld   [bc], a                                     ; $755d: $02
	ld   e, [hl]                                     ; $755e: $5e
	db   $fc                                         ; $755f: $fc
	and  b                                           ; $7560: $a0
	add  b                                           ; $7561: $80
	db   $fc                                         ; $7562: $fc
	ld   [bc], a                                     ; $7563: $02
	rst  JumpTable                                         ; $7564: $df
	jr   nz, @+$01                                   ; $7565: $20 $ff

	add  c                                           ; $7567: $81
	nop                                              ; $7568: $00
	add  b                                           ; $7569: $80
	cp   $80                                         ; $756a: $fe $80
	ld   [bc], a                                     ; $756c: $02
	inc  bc                                          ; $756d: $03
	nop                                              ; $756e: $00
	ld   [bc], a                                     ; $756f: $02
	rst  $38                                         ; $7570: $ff
	db   $fd                                         ; $7571: $fd
	add  b                                           ; $7572: $80
	nop                                              ; $7573: $00
	ld   [bc], a                                     ; $7574: $02
	ld   a, $c1                                      ; $7575: $3e $c1
	rst  $38                                         ; $7577: $ff
	add  b                                           ; $7578: $80
	nop                                              ; $7579: $00
	inc  bc                                          ; $757a: $03
	ld   b, $fe                                      ; $757b: $06 $fe
	ld   a, [$8002]                                  ; $757d: $fa $02 $80
	nop                                              ; $7580: $00
	ld   [bc], a                                     ; $7581: $02
	ret  nz                                          ; $7582: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7583: $cf
	rrca                                             ; $7584: $0f
	add  b                                           ; $7585: $80
	nop                                              ; $7586: $00
	ld   [bc], a                                     ; $7587: $02
	ld   a, h                                        ; $7588: $7c
	add  e                                           ; $7589: $83
	rst  $38                                         ; $758a: $ff
	add  b                                           ; $758b: $80
	nop                                              ; $758c: $00
	inc  bc                                          ; $758d: $03
	ld   d, $fe                                      ; $758e: $16 $fe
	ld   [$8002], a                                  ; $7590: $ea $02 $80
	nop                                              ; $7593: $00
	ld   [bc], a                                     ; $7594: $02
	cp   b                                           ; $7595: $b8
	ld   sp, hl                                      ; $7596: $f9
	ld   b, c                                        ; $7597: $41
	add  b                                           ; $7598: $80
	nop                                              ; $7599: $00
	ld   [bc], a                                     ; $759a: $02
	ld   sp, hl                                      ; $759b: $f9
	ld   b, $ff                                      ; $759c: $06 $ff
	add  b                                           ; $759e: $80
	nop                                              ; $759f: $00
	inc  bc                                          ; $75a0: $03
	ld   d, $fe                                      ; $75a1: $16 $fe
	ld   [$8002], a                                  ; $75a3: $ea $02 $80
	nop                                              ; $75a6: $00
	ld   [bc], a                                     ; $75a7: $02
	dec  bc                                          ; $75a8: $0b
	rst  $38                                         ; $75a9: $ff
	db   $f4                                         ; $75aa: $f4
	add  b                                           ; $75ab: $80
	nop                                              ; $75ac: $00
	ld   [bc], a                                     ; $75ad: $02
	di                                               ; $75ae: $f3
	inc  c                                           ; $75af: $0c
	rst  $38                                         ; $75b0: $ff
	add  b                                           ; $75b1: $80
	nop                                              ; $75b2: $00
	inc  bc                                          ; $75b3: $03
	ld   d, $fe                                      ; $75b4: $16 $fe
	ld   [$8002], a                                  ; $75b6: $ea $02 $80
	nop                                              ; $75b9: $00
	ld   [bc], a                                     ; $75ba: $02
	ld   bc, $3e3f                                   ; $75bb: $01 $3f $3e
	add  b                                           ; $75be: $80

jr_070_75bf:
	nop                                              ; $75bf: $00
	ld   [bc], a                                     ; $75c0: $02
	rst  $20                                         ; $75c1: $e7
	jr   @+$01                                       ; $75c2: $18 $ff

	add  b                                           ; $75c4: $80
	nop                                              ; $75c5: $00
	inc  bc                                          ; $75c6: $03
	ld   d, $fe                                      ; $75c7: $16 $fe
	ld   [$8002], a                                  ; $75c9: $ea $02 $80
	inc  bc                                          ; $75cc: $03
	ld   [bc], a                                     ; $75cd: $02
	ld   [hl], b                                     ; $75ce: $70
	pop  af                                          ; $75cf: $f1
	add  c                                           ; $75d0: $81
	add  b                                           ; $75d1: $80
	rrca                                             ; $75d2: $0f
	ld   [bc], a                                     ; $75d3: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75d4: $cf
	jr   nc, @+$01                                   ; $75d5: $30 $ff

	add  d                                           ; $75d7: $82
	nop                                              ; $75d8: $00
	add  b                                           ; $75d9: $80
	add  b                                           ; $75da: $80
	nop                                              ; $75db: $00
	nop                                              ; $75dc: $00
	add  c                                           ; $75dd: $81
	add  b                                           ; $75de: $80
	nop                                              ; $75df: $00
	ld   [hl], b                                     ; $75e0: $70
	add  b                                           ; $75e1: $80
	inc  b                                           ; $75e2: $04
	inc  b                                           ; $75e3: $04
	nop                                              ; $75e4: $00
	rlca                                             ; $75e5: $07
	rrca                                             ; $75e6: $0f
	add  hl, bc                                      ; $75e7: $09
	ld   bc, $0080                                   ; $75e8: $01 $80 $00
	add  b                                           ; $75eb: $80
	rrca                                             ; $75ec: $0f
	add  d                                           ; $75ed: $82
	nop                                              ; $75ee: $00
	nop                                              ; $75ef: $00
	ldh  a, [$80]                                    ; $75f0: $f0 $80
	inc  b                                           ; $75f2: $04
	add  b                                           ; $75f3: $80
	nop                                              ; $75f4: $00
	add  b                                           ; $75f5: $80
	rra                                              ; $75f6: $1f
	add  c                                           ; $75f7: $81
	nop                                              ; $75f8: $00
	inc  bc                                          ; $75f9: $03
	ret  nz                                          ; $75fa: $c0

	rst  ToBoot                                         ; $75fb: $c7
	ld   b, a                                        ; $75fc: $47
	ld   b, b                                        ; $75fd: $40
	add  b                                           ; $75fe: $80
	nop                                              ; $75ff: $00
	add  b                                           ; $7600: $80
	inc  b                                           ; $7601: $04
	add  b                                           ; $7602: $80
	nop                                              ; $7603: $00
	inc  bc                                          ; $7604: $03
	ld   l, $fe                                      ; $7605: $2e $fe
	jp   nc, $8002                                   ; $7607: $d2 $02 $80

	nop                                              ; $760a: $00
	ld   [bc], a                                     ; $760b: $02
	rra                                              ; $760c: $1f
	rst  $38                                         ; $760d: $ff
	ldh  [$85], a                                    ; $760e: $e0 $85
	nop                                              ; $7610: $00
	ld   [bc], a                                     ; $7611: $02
	ld   bc, $3e3f                                   ; $7612: $01 $3f $3e
	add  c                                           ; $7615: $81
	nop                                              ; $7616: $00
	inc  bc                                          ; $7617: $03
	ret  nz                                          ; $7618: $c0

	rst  ToBoot                                         ; $7619: $c7
	ld   b, a                                        ; $761a: $47
	ld   b, b                                        ; $761b: $40
	add  b                                           ; $761c: $80
	nop                                              ; $761d: $00
	add  b                                           ; $761e: $80
	ld   b, b                                        ; $761f: $40
	add  b                                           ; $7620: $80
	nop                                              ; $7621: $00
	inc  bc                                          ; $7622: $03
	ld   a, b                                        ; $7623: $78
	ld   sp, hl                                      ; $7624: $f9
	adc  c                                           ; $7625: $89
	ld   [$0080], sp                                 ; $7626: $08 $80 $00
	ld   [bc], a                                     ; $7629: $02
	rra                                              ; $762a: $1f
	rst  $38                                         ; $762b: $ff
	ldh  [$81], a                                    ; $762c: $e0 $81
	nop                                              ; $762e: $00
	add  b                                           ; $762f: $80
	ld   [$0080], sp                                 ; $7630: $08 $80 $00
	ld   [bc], a                                     ; $7633: $02
	dec  bc                                          ; $7634: $0b
	rst  $38                                         ; $7635: $ff
	db   $f4                                         ; $7636: $f4
	add  c                                           ; $7637: $81
	nop                                              ; $7638: $00
	inc  bc                                          ; $7639: $03
	ldh  [$e3], a                                    ; $763a: $e0 $e3
	inc  hl                                          ; $763c: $23
	jr   nz, jr_070_75bf                             ; $763d: $20 $80

	nop                                              ; $763f: $00
	ld   c, d                                        ; $7640: $4a
	ld   bc, $0086                                   ; $7641: $01 $86 $00
	nop                                              ; $7644: $00
	rrca                                             ; $7645: $0f
	add  l                                           ; $7646: $85
	nop                                              ; $7647: $00
	nop                                              ; $7648: $00
	rrca                                             ; $7649: $0f
	add  l                                           ; $764a: $85
	nop                                              ; $764b: $00
	nop                                              ; $764c: $00
	rst  $38                                         ; $764d: $ff
	add  l                                           ; $764e: $85
	nop                                              ; $764f: $00
	rla                                              ; $7650: $17
	sbc  h                                           ; $7651: $9c
	cp   h                                           ; $7652: $bc
	sbc  b                                           ; $7653: $98
	cp   b                                           ; $7654: $b8
	sbc  h                                           ; $7655: $9c
	cp   h                                           ; $7656: $bc
	sbc  b                                           ; $7657: $98
	cp   b                                           ; $7658: $b8
	sbc  h                                           ; $7659: $9c
	cp   h                                           ; $765a: $bc
	sbc  b                                           ; $765b: $98
	cp   b                                           ; $765c: $b8
	sbc  h                                           ; $765d: $9c
	cp   h                                           ; $765e: $bc
	sbc  b                                           ; $765f: $98
	cp   b                                           ; $7660: $b8
	sbc  h                                           ; $7661: $9c
	cp   h                                           ; $7662: $bc
	sbc  b                                           ; $7663: $98
	cp   b                                           ; $7664: $b8
	sbc  h                                           ; $7665: $9c
	cp   h                                           ; $7666: $bc
	sbc  b                                           ; $7667: $98
	cp   b                                           ; $7668: $b8
	add  b                                           ; $7669: $80
	cp   h                                           ; $766a: $bc
	add  b                                           ; $766b: $80
	cp   b                                           ; $766c: $b8
	add  b                                           ; $766d: $80
	db   $fc                                         ; $766e: $fc
	add  b                                           ; $766f: $80
	cp   b                                           ; $7670: $b8
	nop                                              ; $7671: $00
	rst  $38                                         ; $7672: $ff
	add  l                                           ; $7673: $85
	nop                                              ; $7674: $00
	nop                                              ; $7675: $00
	ld   hl, sp-$7b                                  ; $7676: $f8 $85
	rlca                                             ; $7678: $07
	nop                                              ; $7679: $00
	rst  $38                                         ; $767a: $ff
	add  [hl]                                        ; $767b: $86
	nop                                              ; $767c: $00
	add  [hl]                                        ; $767d: $86
	rst  $38                                         ; $767e: $ff
	add  l                                           ; $767f: $85
	nop                                              ; $7680: $00
	ld   bc, $d02f                                   ; $7681: $01 $2f $d0
	add  b                                           ; $7684: $80
	add  sp, -$80                                    ; $7685: $e8 $80
	ret  nc                                          ; $7687: $d0

	add  b                                           ; $7688: $80
	add  sp, $00                                     ; $7689: $e8 $00
	rst  $38                                         ; $768b: $ff
	add  l                                           ; $768c: $85
	nop                                              ; $768d: $00
	ld   b, $05                                      ; $768e: $06 $05
	rst  $38                                         ; $7690: $ff
	ld   a, b                                        ; $7691: $78
	ld   a, a                                        ; $7692: $7f
	ld   hl, sp-$01                                  ; $7693: $f8 $ff
	ld   a, [$ff80]                                  ; $7695: $fa $80 $ff
	add  l                                           ; $7698: $85
	nop                                              ; $7699: $00
	ld   [$fd42], sp                                 ; $769a: $08 $42 $fd
	ld   [hl], $f6                                   ; $769d: $36 $f6
	dec  a                                           ; $769f: $3d
	db   $fd                                         ; $76a0: $fd
	ld   a, [hl-]                                    ; $76a1: $3a
	ld   a, [$857f]                                  ; $76a2: $fa $7f $85
	nop                                              ; $76a5: $00
	ld   bc, $3fc7                                   ; $76a6: $01 $c7 $3f
	add  b                                           ; $76a9: $80
	ld   a, a                                        ; $76aa: $7f
	add  b                                           ; $76ab: $80
	ccf                                              ; $76ac: $3f
	add  b                                           ; $76ad: $80
	ld   a, a                                        ; $76ae: $7f
	nop                                              ; $76af: $00
	ld   hl, sp-$7b                                  ; $76b0: $f8 $85
	nop                                              ; $76b2: $00
	ld   [$ffc0], sp                                 ; $76b3: $08 $c0 $ff
	cp   a                                           ; $76b6: $bf
	rst  $38                                         ; $76b7: $ff
	dec  a                                           ; $76b8: $3d
	db   $fd                                         ; $76b9: $fd
	ccf                                              ; $76ba: $3f
	rst  $38                                         ; $76bb: $ff
	ld   a, a                                        ; $76bc: $7f
	add  l                                           ; $76bd: $85
	nop                                              ; $76be: $00
	ld   [$7ffe], sp                                 ; $76bf: $08 $fe $7f
	ccf                                              ; $76c2: $3f
	ld   a, a                                        ; $76c3: $7f
	dec  a                                           ; $76c4: $3d
	ld   a, a                                        ; $76c5: $7f
	cp   l                                           ; $76c6: $bd
	rst  $38                                         ; $76c7: $ff
	pop  bc                                          ; $76c8: $c1
	add  l                                           ; $76c9: $85
	nop                                              ; $76ca: $00
	ld   [$9f77], sp                                 ; $76cb: $08 $77 $9f
	or   a                                           ; $76ce: $b7
	cp   a                                           ; $76cf: $bf
	sub  a                                           ; $76d0: $97
	sbc  a                                           ; $76d1: $9f
	or   a                                           ; $76d2: $b7
	cp   a                                           ; $76d3: $bf
	ldh  [$85], a                                    ; $76d4: $e0 $85
	nop                                              ; $76d6: $00
	ld   [$ffc3], sp                                 ; $76d7: $08 $c3 $ff
	sbc  a                                           ; $76da: $9f
	rst  $38                                         ; $76db: $ff
	sbc  a                                           ; $76dc: $9f
	rst  $38                                         ; $76dd: $ff
	sbc  a                                           ; $76de: $9f
	rst  $38                                         ; $76df: $ff
	ld   e, h                                        ; $76e0: $5c
	add  l                                           ; $76e1: $85
	nop                                              ; $76e2: $00
	ld   [$fff1], sp                                 ; $76e3: $08 $f1 $ff
	rst  $30                                         ; $76e6: $f7
	rst  $38                                         ; $76e7: $ff
	rst  $30                                         ; $76e8: $f7
	rst  $38                                         ; $76e9: $ff
	rst  $30                                         ; $76ea: $f7
	rst  $38                                         ; $76eb: $ff
	ld   b, $85                                      ; $76ec: $06 $85
	nop                                              ; $76ee: $00
	ld   [$ffe2], sp                                 ; $76ef: $08 $e2 $ff
	db   $fc                                         ; $76f2: $fc
	rst  $38                                         ; $76f3: $ff
	db   $fc                                         ; $76f4: $fc
	rst  $38                                         ; $76f5: $ff
	db   $fc                                         ; $76f6: $fc
	rst  $38                                         ; $76f7: $ff
	ld   de, $008d                                   ; $76f8: $11 $8d $00
	nop                                              ; $76fb: $00
	ldh  a, [$8f]                                    ; $76fc: $f0 $8f
	nop                                              ; $76fe: $00
	ld   c, $02                                      ; $76ff: $0e $02
	inc  bc                                          ; $7701: $03
	nop                                              ; $7702: $00
	ld   bc, $0302                                   ; $7703: $01 $02 $03
	nop                                              ; $7706: $00
	ld   bc, $0302                                   ; $7707: $01 $02 $03
	nop                                              ; $770a: $00
	ld   bc, $0302                                   ; $770b: $01 $02 $03
	xor  b                                           ; $770e: $a8
	add  b                                           ; $770f: $80
	xor  e                                           ; $7710: $ab
	rlca                                             ; $7711: $07
	db   $fd                                         ; $7712: $fd
	inc  bc                                          ; $7713: $03
	ld   d, a                                        ; $7714: $57
	xor  d                                           ; $7715: $aa
	rst  $38                                         ; $7716: $ff
	ccf                                              ; $7717: $3f
	ld   l, d                                        ; $7718: $6a
	xor  d                                           ; $7719: $aa
	add  b                                           ; $771a: $80
	rst  $38                                         ; $771b: $ff
	add  b                                           ; $771c: $80
	xor  d                                           ; $771d: $aa
	ld   [$2eff], sp                                 ; $771e: $08 $ff $2e
	ei                                               ; $7721: $fb
	ret  nz                                          ; $7722: $c0

	ld   b, b                                        ; $7723: $40
	ld   a, a                                        ; $7724: $7f
	rst  $38                                         ; $7725: $ff
	ld   b, b                                        ; $7726: $40
	ret  nz                                          ; $7727: $c0

	add  b                                           ; $7728: $80
	rst  $38                                         ; $7729: $ff
	ld   b, $b0                                      ; $772a: $06 $b0
	ldh  a, [rVBK]                                   ; $772c: $f0 $4f
	rrca                                             ; $772e: $0f
	cp   [hl]                                        ; $772f: $be
	cp   $bf                                         ; $7730: $fe $bf
	add  b                                           ; $7732: $80
	rra                                              ; $7733: $1f
	ld   c, $0f                                      ; $7734: $0e $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7736: $cf
	inc  bc                                          ; $7737: $03
	inc  hl                                          ; $7738: $23
	ld   bc, $00f9                                   ; $7739: $01 $f9 $00
	or   $08                                         ; $773c: $f6 $08
	di                                               ; $773e: $f3
	inc  d                                           ; $773f: $14
	db   $f4                                         ; $7740: $f4
	nop                                              ; $7741: $00
	jp   c, $80d0                                    ; $7742: $da $d0 $80

	add  sp, -$80                                    ; $7745: $e8 $80
	ret  nc                                          ; $7747: $d0

	add  b                                           ; $7748: $80
	add  sp, $0e                                     ; $7749: $e8 $0e
	ret  nc                                          ; $774b: $d0

	ld   d, b                                        ; $774c: $50
	ld   a, b                                        ; $774d: $78
	ld   [$0028], sp                                 ; $774e: $08 $28 $00
	call nz, $e600                                   ; $7751: $c4 $00 $e6
	rst  $38                                         ; $7754: $ff
	ld   a, d                                        ; $7755: $7a
	ld   a, a                                        ; $7756: $7f
	ei                                               ; $7757: $fb
	rst  $38                                         ; $7758: $ff
	ei                                               ; $7759: $fb
	add  c                                           ; $775a: $81
	rst  $38                                         ; $775b: $ff
	add  b                                           ; $775c: $80
	ld   a, a                                        ; $775d: $7f
	add  d                                           ; $775e: $82
	rst  $38                                         ; $775f: $ff
	ld   a, a                                        ; $7760: $7f
	cp   l                                           ; $7761: $bd
	db   $fd                                         ; $7762: $fd
	ld   [hl], $f6                                   ; $7763: $36 $f6
	dec  a                                           ; $7765: $3d
	db   $fd                                         ; $7766: $fd
	ld   a, [hl-]                                    ; $7767: $3a
	ld   a, [$fd3d]                                  ; $7768: $fa $3d $fd
	or   [hl]                                        ; $776b: $b6
	or   $bd                                         ; $776c: $f6 $bd
	db   $fd                                         ; $776e: $fd
	cp   d                                           ; $776f: $ba
	ld   a, [$3f38]                                  ; $7770: $fa $38 $3f
	ld   a, [hl]                                     ; $7773: $7e
	ld   a, a                                        ; $7774: $7f
	ld   a, $3f                                      ; $7775: $3e $3f
	ld   a, [hl]                                     ; $7777: $7e
	ld   a, a                                        ; $7778: $7f
	ld   a, $3f                                      ; $7779: $3e $3f
	ld   a, [hl]                                     ; $777b: $7e
	ld   a, a                                        ; $777c: $7f
	ld   a, $3f                                      ; $777d: $3e $3f
	ld   a, [hl]                                     ; $777f: $7e
	ld   a, a                                        ; $7780: $7f
	cp   e                                           ; $7781: $bb
	db   $fd                                         ; $7782: $fd
	dec  a                                           ; $7783: $3d
	db   $fd                                         ; $7784: $fd
	dec  a                                           ; $7785: $3d
	db   $fd                                         ; $7786: $fd
	add  hl, sp                                      ; $7787: $39
	ld   sp, hl                                      ; $7788: $f9
	dec  a                                           ; $7789: $3d
	db   $fd                                         ; $778a: $fd
	add  hl, sp                                      ; $778b: $39
	ld   sp, hl                                      ; $778c: $f9
	dec  a                                           ; $778d: $3d
	db   $fd                                         ; $778e: $fd
	add  hl, sp                                      ; $778f: $39
	ld   sp, hl                                      ; $7790: $f9
	add  e                                           ; $7791: $83
	ld   a, a                                        ; $7792: $7f
	dec  a                                           ; $7793: $3d
	ld   a, a                                        ; $7794: $7f
	dec  e                                           ; $7795: $1d
	ld   a, a                                        ; $7796: $7f
	dec  e                                           ; $7797: $1d
	ld   a, a                                        ; $7798: $7f
	sbc  l                                           ; $7799: $9d
	rst  $38                                         ; $779a: $ff
	dec  e                                           ; $779b: $1d
	ld   a, a                                        ; $779c: $7f
	dec  e                                           ; $779d: $1d
	ld   a, a                                        ; $779e: $7f
	dec  e                                           ; $779f: $1d
	ld   a, a                                        ; $77a0: $7f
	and  [hl]                                        ; $77a1: $a6
	sbc  a                                           ; $77a2: $9f
	or   a                                           ; $77a3: $b7
	cp   a                                           ; $77a4: $bf
	sub  a                                           ; $77a5: $97
	sbc  a                                           ; $77a6: $9f
	or   a                                           ; $77a7: $b7
	cp   a                                           ; $77a8: $bf
	sub  a                                           ; $77a9: $97
	sbc  a                                           ; $77aa: $9f
	or   a                                           ; $77ab: $b7
	cp   a                                           ; $77ac: $bf
	sub  a                                           ; $77ad: $97
	sbc  a                                           ; $77ae: $9f
	or   a                                           ; $77af: $b7
	cp   a                                           ; $77b0: $bf
	inc  sp                                          ; $77b1: $33
	rst  $38                                         ; $77b2: $ff
	sbc  a                                           ; $77b3: $9f
	rst  $38                                         ; $77b4: $ff
	sbc  a                                           ; $77b5: $9f
	rst  $38                                         ; $77b6: $ff
	cp   a                                           ; $77b7: $bf
	rst  $38                                         ; $77b8: $ff
	xor  a                                           ; $77b9: $af
	rst  $28                                         ; $77ba: $ef
	xor  a                                           ; $77bb: $af
	rst  $28                                         ; $77bc: $ef
	xor  a                                           ; $77bd: $af
	rst  $28                                         ; $77be: $ef
	xor  a                                           ; $77bf: $af
	rst  $28                                         ; $77c0: $ef
	adc  l                                           ; $77c1: $8d
	rst  $38                                         ; $77c2: $ff
	rst  $30                                         ; $77c3: $f7
	rst  $38                                         ; $77c4: $ff
	rst  $30                                         ; $77c5: $f7
	rst  $38                                         ; $77c6: $ff
	rst  $28                                         ; $77c7: $ef
	rst  $38                                         ; $77c8: $ff
	set  7, e                                        ; $77c9: $cb $fb
	set  7, e                                        ; $77cb: $cb $fb
	set  7, e                                        ; $77cd: $cb $fb
	adc  e                                           ; $77cf: $8b
	ei                                               ; $77d0: $fb
	sbc  h                                           ; $77d1: $9c
	rst  $38                                         ; $77d2: $ff
	call c, $fcff                                    ; $77d3: $dc $ff $fc
	rst  $38                                         ; $77d6: $ff
	call c, $ccff                                    ; $77d7: $dc $ff $cc
	rst  $28                                         ; $77da: $ef
	call z, $acef                                    ; $77db: $cc $ef $ac
	rst  $28                                         ; $77de: $ef
	inc  l                                           ; $77df: $2c
	rst  $28                                         ; $77e0: $ef
	nop                                              ; $77e1: $00
	cp   [hl]                                        ; $77e2: $be
	add  l                                           ; $77e3: $85
	nop                                              ; $77e4: $00
	ld   [$bf50], sp                                 ; $77e5: $08 $50 $bf
	sbc  a                                           ; $77e8: $9f
	cp   a                                           ; $77e9: $bf
	sbc  a                                           ; $77ea: $9f
	cp   a                                           ; $77eb: $bf
	sbc  a                                           ; $77ec: $9f
	cp   a                                           ; $77ed: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77ee: $cf
	add  l                                           ; $77ef: $85
	nop                                              ; $77f0: $00
	ld   [$ff7f], sp                                 ; $77f1: $08 $7f $ff
	cp   [hl]                                        ; $77f4: $be
	rst  $38                                         ; $77f5: $ff
	cp   [hl]                                        ; $77f6: $be
	rst  $38                                         ; $77f7: $ff
	cp   [hl]                                        ; $77f8: $be
	rst  $38                                         ; $77f9: $ff
	ld   a, $80                                      ; $77fa: $3e $80
	nop                                              ; $77fc: $00
	add  b                                           ; $77fd: $80
	inc  bc                                          ; $77fe: $03
	inc  bc                                          ; $77ff: $03
	nop                                              ; $7800: $00
	ld   [bc], a                                     ; $7801: $02
	inc  bc                                          ; $7802: $03
	nop                                              ; $7803: $00
	add  b                                           ; $7804: $80
	inc  bc                                          ; $7805: $03
	add  b                                           ; $7806: $80
	ld   bc, $0303                                   ; $7807: $01 $03 $03
	nop                                              ; $780a: $00
	inc  bc                                          ; $780b: $03
	xor  e                                           ; $780c: $ab
	add  b                                           ; $780d: $80
	xor  d                                           ; $780e: $aa
	add  b                                           ; $780f: $80
	rst  $38                                         ; $7810: $ff
	add  b                                           ; $7811: $80
	xor  d                                           ; $7812: $aa
	ld   bc, $7fff                                   ; $7813: $01 $ff $7f
	add  b                                           ; $7816: $80
	xor  d                                           ; $7817: $aa
	inc  b                                           ; $7818: $04
	ld   a, a                                        ; $7819: $7f
	nop                                              ; $781a: $00
	rst  $38                                         ; $781b: $ff
	ld   a, a                                        ; $781c: $7f
	push de                                          ; $781d: $d5
	add  b                                           ; $781e: $80
	sub  c                                           ; $781f: $91
	rra                                              ; $7820: $1f
	cp   a                                           ; $7821: $bf
	rst  $38                                         ; $7822: $ff
	ret  nz                                          ; $7823: $c0

	add  b                                           ; $7824: $80
	cp   a                                           ; $7825: $bf
	rst  $38                                         ; $7826: $ff
	ret  nz                                          ; $7827: $c0

	add  b                                           ; $7828: $80
	cp   a                                           ; $7829: $bf
	rst  $38                                         ; $782a: $ff
	inc  a                                           ; $782b: $3c
	db   $fc                                         ; $782c: $fc
	jp   $ea43                                       ; $782d: $c3 $43 $ea


	rst  $38                                         ; $7830: $ff
	rst  JumpTable                                         ; $7831: $df
	jp   z, $3f2a                                    ; $7832: $ca $2a $3f

	rst  $20                                         ; $7835: $e7
	ld   a, [$171a]                                  ; $7836: $fa $1a $17
	ldh  a, [rIE]                                    ; $7839: $f0 $ff
	rra                                              ; $783b: $1f
	dec  d                                           ; $783c: $15
	push af                                          ; $783d: $f5
	rst  $38                                         ; $783e: $ff
	rst  ToBoot                                         ; $783f: $c7
	call $0180                                       ; $7840: $cd $80 $01
	add  b                                           ; $7843: $80
	db   $fd                                         ; $7844: $fd
	add  b                                           ; $7845: $80
	ld   [$f808], sp                                 ; $7846: $08 $08 $f8
	cp   $8e                                         ; $7849: $fe $8e
	adc  b                                           ; $784b: $88
	ld   a, b                                        ; $784c: $78
	ld   a, a                                        ; $784d: $7f
	rst  $30                                         ; $784e: $f7
	ld   hl, sp-$09                                  ; $784f: $f8 $f7
	add  b                                           ; $7851: $80
	ld   a, a                                        ; $7852: $7f
	add  b                                           ; $7853: $80
	ccf                                              ; $7854: $3f
	add  b                                           ; $7855: $80
	rra                                              ; $7856: $1f
	inc  c                                           ; $7857: $0c
	rlca                                             ; $7858: $07
	rst  ToBoot                                         ; $7859: $c7
	inc  bc                                          ; $785a: $03
	inc  hl                                          ; $785b: $23
	ld   bc, $c013                                   ; $785c: $01 $13 $c0
	call z, $bc00                                    ; $785f: $cc $00 $bc
	db   $fd                                         ; $7862: $fd
	or   [hl]                                        ; $7863: $b6
	or   $80                                         ; $7864: $f6 $80
	db   $fd                                         ; $7866: $fd
	add  b                                           ; $7867: $80
	ld   a, [$fd80]                                  ; $7868: $fa $80 $fd
	add  b                                           ; $786b: $80
	or   $05                                         ; $786c: $f6 $05
	db   $fd                                         ; $786e: $fd
	ld   a, l                                        ; $786f: $7d
	ld   a, d                                        ; $7870: $7a
	ld   a, [hl-]                                    ; $7871: $3a
	inc  a                                           ; $7872: $3c
	db   $fc                                         ; $7873: $fc
	add  b                                           ; $7874: $80
	ld   hl, sp-$80                                  ; $7875: $f8 $80
	db   $fd                                         ; $7877: $fd
	add  b                                           ; $7878: $80
	ld   hl, sp-$80                                  ; $7879: $f8 $80
	db   $fd                                         ; $787b: $fd
	add  b                                           ; $787c: $80
	ld   hl, sp-$80                                  ; $787d: $f8 $80
	db   $fd                                         ; $787f: $fd
	add  b                                           ; $7880: $80
	ld   hl, sp+$60                                  ; $7881: $f8 $60
	cp   l                                           ; $7883: $bd
	db   $fd                                         ; $7884: $fd
	add  hl, sp                                      ; $7885: $39
	ld   sp, hl                                      ; $7886: $f9
	dec  a                                           ; $7887: $3d
	db   $fd                                         ; $7888: $fd
	add  hl, sp                                      ; $7889: $39
	ld   sp, hl                                      ; $788a: $f9
	dec  a                                           ; $788b: $3d
	db   $fd                                         ; $788c: $fd
	add  hl, sp                                      ; $788d: $39
	ld   sp, hl                                      ; $788e: $f9
	dec  a                                           ; $788f: $3d
	db   $fd                                         ; $7890: $fd
	add  hl, sp                                      ; $7891: $39
	ld   sp, hl                                      ; $7892: $f9
	and  e                                           ; $7893: $a3
	ld   a, a                                        ; $7894: $7f
	dec  e                                           ; $7895: $1d
	ld   a, a                                        ; $7896: $7f
	dec  e                                           ; $7897: $1d
	ld   a, a                                        ; $7898: $7f
	dec  e                                           ; $7899: $1d
	ld   a, a                                        ; $789a: $7f
	dec  e                                           ; $789b: $1d
	ld   a, a                                        ; $789c: $7f
	dec  e                                           ; $789d: $1d
	ld   a, a                                        ; $789e: $7f
	dec  e                                           ; $789f: $1d
	ld   a, a                                        ; $78a0: $7f
	dec  e                                           ; $78a1: $1d
	ld   a, a                                        ; $78a2: $7f
	and  $df                                         ; $78a3: $e6 $df
	or   a                                           ; $78a5: $b7
	cp   a                                           ; $78a6: $bf
	sub  a                                           ; $78a7: $97
	sbc  a                                           ; $78a8: $9f
	or   e                                           ; $78a9: $b3
	cp   a                                           ; $78aa: $bf
	db   $d3                                         ; $78ab: $d3
	rst  JumpTable                                         ; $78ac: $df
	or   e                                           ; $78ad: $b3
	cp   a                                           ; $78ae: $bf
	db   $d3                                         ; $78af: $d3
	rst  JumpTable                                         ; $78b0: $df
	or   e                                           ; $78b1: $b3
	cp   a                                           ; $78b2: $bf
	daa                                              ; $78b3: $27
	rst  $28                                         ; $78b4: $ef
	xor  a                                           ; $78b5: $af
	rst  $28                                         ; $78b6: $ef
	xor  a                                           ; $78b7: $af
	rst  $28                                         ; $78b8: $ef
	xor  a                                           ; $78b9: $af
	rst  $28                                         ; $78ba: $ef
	cpl                                              ; $78bb: $2f
	rst  $28                                         ; $78bc: $ef
	cpl                                              ; $78bd: $2f
	rst  $28                                         ; $78be: $ef
	cpl                                              ; $78bf: $2f
	rst  $28                                         ; $78c0: $ef
	ld   l, $ef                                      ; $78c1: $2e $ef
	cp   b                                           ; $78c3: $b8
	ei                                               ; $78c4: $fb
	sbc  e                                           ; $78c5: $9b
	ei                                               ; $78c6: $fb
	ld   a, [de]                                     ; $78c7: $1a
	ei                                               ; $78c8: $fb
	ld   a, [de]                                     ; $78c9: $1a
	ei                                               ; $78ca: $fb
	ld   a, [de]                                     ; $78cb: $1a
	ei                                               ; $78cc: $fb
	ld   a, [de]                                     ; $78cd: $1a
	ei                                               ; $78ce: $fb
	ld   a, [de]                                     ; $78cf: $1a
	ei                                               ; $78d0: $fb
	ld   a, [hl-]                                    ; $78d1: $3a
	ei                                               ; $78d2: $fb
	db   $ec                                         ; $78d3: $ec
	rst  $28                                         ; $78d4: $ef
	inc  l                                           ; $78d5: $2c
	rst  $28                                         ; $78d6: $ef
	inc  l                                           ; $78d7: $2c
	rst  $28                                         ; $78d8: $ef
	ld   l, h                                        ; $78d9: $6c
	rst  $28                                         ; $78da: $ef
	ld   c, h                                        ; $78db: $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78dc: $cf
	ld   l, h                                        ; $78dd: $6c
	rst  $28                                         ; $78de: $ef
	call z, $eccf                                    ; $78df: $cc $cf $ec
	rst  $28                                         ; $78e2: $ef
	xor  [hl]                                        ; $78e3: $ae
	add  c                                           ; $78e4: $81
	cp   a                                           ; $78e5: $bf
	add  b                                           ; $78e6: $80

Call_070_78e7:
	cp   $80                                         ; $78e7: $fe $80
	cp   [hl]                                        ; $78e9: $be
	add  h                                           ; $78ea: $84
	cp   $16                                         ; $78eb: $fe $16
	xor  $fe                                         ; $78ed: $ee $fe
	add  d                                           ; $78ef: $82
	rst  $38                                         ; $78f0: $ff
	cp   h                                           ; $78f1: $bc
	rst  $38                                         ; $78f2: $ff
	cp   h                                           ; $78f3: $bc
	rst  $38                                         ; $78f4: $ff
	cp   h                                           ; $78f5: $bc
	rst  $38                                         ; $78f6: $ff
	cp   h                                           ; $78f7: $bc
	rst  $38                                         ; $78f8: $ff
	cp   h                                           ; $78f9: $bc
	rst  $38                                         ; $78fa: $ff
	cp   h                                           ; $78fb: $bc
	rst  $38                                         ; $78fc: $ff
	cp   b                                           ; $78fd: $b8
	rst  $38                                         ; $78fe: $ff
	ld   a, [hl-]                                    ; $78ff: $3a
	nop                                              ; $7900: $00
	ld   [bc], a                                     ; $7901: $02
	inc  bc                                          ; $7902: $03
	nop                                              ; $7903: $00
	add  b                                           ; $7904: $80
	inc  bc                                          ; $7905: $03
	add  b                                           ; $7906: $80
	ld   bc, $0301                                   ; $7907: $01 $01 $03
	nop                                              ; $790a: $00
	add  b                                           ; $790b: $80
	inc  bc                                          ; $790c: $03
	add  b                                           ; $790d: $80
	ld   [bc], a                                     ; $790e: $02
	dec  b                                           ; $790f: $05
	inc  bc                                          ; $7910: $03
	call nc, $80ff                                   ; $7911: $d4 $ff $80
	rst  $38                                         ; $7914: $ff
	ld   a, a                                        ; $7915: $7f
	add  b                                           ; $7916: $80

jr_070_7917:
	xor  d                                           ; $7917: $aa
	inc  bc                                          ; $7918: $03
	ld   a, a                                        ; $7919: $7f
	nop                                              ; $791a: $00
	rst  $38                                         ; $791b: $ff
	rra                                              ; $791c: $1f
	add  b                                           ; $791d: $80
	push af                                          ; $791e: $f5
	inc  [hl]                                        ; $791f: $34
	cp   a                                           ; $7920: $bf
	and  b                                           ; $7921: $a0
	rst  $38                                         ; $7922: $ff
	ld   a, [hl+]                                    ; $7923: $2a
	rst  $38                                         ; $7924: $ff

jr_070_7925:
	jr   nc, jr_070_7917                             ; $7925: $30 $f0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7927: $cf
	adc  a                                           ; $7928: $8f
	cp   a                                           ; $7929: $bf
	rst  $38                                         ; $792a: $ff
	jr   c, jr_070_7925                              ; $792b: $38 $f8

	rst  ToBoot                                         ; $792d: $c7
	ld   b, a                                        ; $792e: $47
	ld   a, a                                        ; $792f: $7f
	rst  $38                                         ; $7930: $ff
	ccf                                              ; $7931: $3f
	rst  $38                                         ; $7932: $ff
	xor  c                                           ; $7933: $a9
	db   $fd                                         ; $7934: $fd
	dec  d                                           ; $7935: $15
	inc  bc                                          ; $7936: $03
	add  sp, -$01                                    ; $7937: $e8 $ff
	push hl                                          ; $7939: $e5
	cp   $1e                                         ; $793a: $fe $1e
	ld   de, $fff0                                   ; $793c: $11 $f0 $ff
	db   $ec                                         ; $793f: $ec
	rst  $38                                         ; $7940: $ff
	db   $dd                                         ; $7941: $dd
	ret  nz                                          ; $7942: $c0

	nop                                              ; $7943: $00
	rlca                                             ; $7944: $07
	rst  $30                                         ; $7945: $f7
	rst  $38                                         ; $7946: $ff
	rst  $30                                         ; $7947: $f7
	rst  $38                                         ; $7948: $ff
	rrca                                             ; $7949: $0f
	ld   [$fff8], sp                                 ; $794a: $08 $f8 $ff
	rst  $30                                         ; $794d: $f7
	rst  $38                                         ; $794e: $ff
	adc  a                                           ; $794f: $8f
	add  b                                           ; $7950: $80
	ld   [hl], b                                     ; $7951: $70
	ld   a, a                                        ; $7952: $7f
	ld   a, [bc]                                     ; $7953: $0a
	db   $fd                                         ; $7954: $fd
	add  b                                           ; $7955: $80
	cp   $7f                                         ; $7956: $fe $7f
	db   $fc                                         ; $7958: $fc
	add  h                                           ; $7959: $84
	add  a                                           ; $795a: $87
	ld   a, a                                        ; $795b: $7f
	ld   a, e                                        ; $795c: $7b
	rst  $38                                         ; $795d: $ff
	ld   hl, sp-$7c                                  ; $795e: $f8 $84
	add  e                                           ; $7960: $83
	ld   a, a                                        ; $7961: $7f
	ld   a, e                                        ; $7962: $7b
	rst  $38                                         ; $7963: $ff
	dec  b                                           ; $7964: $05
	dec  e                                           ; $7965: $1d
	ld   a, [de]                                     ; $7966: $1a
	ld   [bc], a                                     ; $7967: $02
	adc  l                                           ; $7968: $8d
	ld   bc, $00e1                                   ; $7969: $01 $e1 $00
	stop                                             ; $796c: $10 $00
	ldh  a, [rP1]                                    ; $796e: $f0 $00
	adc  h                                           ; $7970: $8c
	nop                                              ; $7971: $00
	add  hl, sp                                      ; $7972: $39
	nop                                              ; $7973: $00
	ld   hl, sp+$3f                                  ; $7974: $f8 $3f
	ld   a, [hl]                                     ; $7976: $7e
	ld   a, a                                        ; $7977: $7f
	ld   a, $3f                                      ; $7978: $3e $3f
	ld   a, [hl]                                     ; $797a: $7e
	ld   a, a                                        ; $797b: $7f
	ld   a, $3f                                      ; $797c: $3e $3f
	ld   a, [hl]                                     ; $797e: $7e
	rra                                              ; $797f: $1f
	ld   e, [hl]                                     ; $7980: $5e
	rrca                                             ; $7981: $0f
	ld   c, d                                        ; $7982: $4a
	rlca                                             ; $7983: $07
	adc  b                                           ; $7984: $88
	di                                               ; $7985: $f3
	pop  hl                                          ; $7986: $e1
	db   $e3                                         ; $7987: $e3
	di                                               ; $7988: $f3
	pop  af                                          ; $7989: $f1
	pop  hl                                          ; $798a: $e1
	db   $e3                                         ; $798b: $e3
	di                                               ; $798c: $f3
	pop  af                                          ; $798d: $f1
	pop  hl                                          ; $798e: $e1
	db   $e3                                         ; $798f: $e3
	rst  $30                                         ; $7990: $f7
	push af                                          ; $7991: $f5
	pop  hl                                          ; $7992: $e1
	db   $e3                                         ; $7993: $e3
	jr   nz, jr_070_7a15                             ; $7994: $20 $7f

	dec  e                                           ; $7996: $1d
	ld   a, a                                        ; $7997: $7f
	dec  e                                           ; $7998: $1d
	ld   a, a                                        ; $7999: $7f
	dec  e                                           ; $799a: $1d
	ld   a, a                                        ; $799b: $7f
	dec  e                                           ; $799c: $1d
	ld   a, a                                        ; $799d: $7f
	dec  e                                           ; $799e: $1d
	ld   a, a                                        ; $799f: $7f
	dec  e                                           ; $79a0: $1d
	ld   a, a                                        ; $79a1: $7f
	dec  e                                           ; $79a2: $1d
	ld   a, a                                        ; $79a3: $7f
	add  [hl]                                        ; $79a4: $86
	cp   a                                           ; $79a5: $bf
	or   e                                           ; $79a6: $b3
	cp   a                                           ; $79a7: $bf
	or   e                                           ; $79a8: $b3
	cp   a                                           ; $79a9: $bf
	or   e                                           ; $79aa: $b3
	cp   a                                           ; $79ab: $bf
	or   e                                           ; $79ac: $b3
	cp   a                                           ; $79ad: $bf
	or   e                                           ; $79ae: $b3
	cp   a                                           ; $79af: $bf
	di                                               ; $79b0: $f3
	rst  $38                                         ; $79b1: $ff
	or   a                                           ; $79b2: $b7
	cp   a                                           ; $79b3: $bf
	and  c                                           ; $79b4: $a1
	rst  $28                                         ; $79b5: $ef
	inc  l                                           ; $79b6: $2c
	rst  $28                                         ; $79b7: $ef
	inc  l                                           ; $79b8: $2c
	rst  $28                                         ; $79b9: $ef
	inc  l                                           ; $79ba: $2c
	rst  $28                                         ; $79bb: $ef
	inc  l                                           ; $79bc: $2c
	rst  $28                                         ; $79bd: $ef
	inc  a                                           ; $79be: $3c
	rst  $38                                         ; $79bf: $ff
	inc  a                                           ; $79c0: $3c
	rst  $38                                         ; $79c1: $ff
	inc  a                                           ; $79c2: $3c
	rst  $38                                         ; $79c3: $ff
	add  hl, sp                                      ; $79c4: $39
	ei                                               ; $79c5: $fb
	inc  sp                                          ; $79c6: $33
	di                                               ; $79c7: $f3
	ld   a, e                                        ; $79c8: $7b
	ei                                               ; $79c9: $fb
	ld   [hl], e                                     ; $79ca: $73
	di                                               ; $79cb: $f3
	ld   a, e                                        ; $79cc: $7b
	ei                                               ; $79cd: $fb
	ld   [hl], e                                     ; $79ce: $73
	di                                               ; $79cf: $f3
	ld   a, e                                        ; $79d0: $7b
	ei                                               ; $79d1: $fb
	ld   [hl], e                                     ; $79d2: $73
	di                                               ; $79d3: $f3
	ld   c, l                                        ; $79d4: $4d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79d5: $cf
	db   $ec                                         ; $79d6: $ec
	rst  $28                                         ; $79d7: $ef
	inc  c                                           ; $79d8: $0c
	call z, $eccf                                    ; $79d9: $cc $cf $ec
	rst  $28                                         ; $79dc: $ef
	call z, $eccf                                    ; $79dd: $cc $cf $ec
	rst  $28                                         ; $79e0: $ef
	call z, $accf                                    ; $79e1: $cc $cf $ac
	xor  a                                           ; $79e4: $af
	cp   $85                                         ; $79e5: $fe $85
	nop                                              ; $79e7: $00
	ld   [$f30d], sp                                 ; $79e8: $08 $0d $f3
	ld   h, c                                        ; $79eb: $61
	pop  hl                                          ; $79ec: $e1
	inc  sp                                          ; $79ed: $33
	di                                               ; $79ee: $f3
	ld   hl, $7ee1                                   ; $79ef: $21 $e1 $7e
	add  l                                           ; $79f2: $85
	nop                                              ; $79f3: $00
	add  b                                           ; $79f4: $80
	ldh  a, [$08]                                    ; $79f5: $f0 $08
	ldh  [$f0], a                                    ; $79f7: $e0 $f0
	ldh  [$f0], a                                    ; $79f9: $e0 $f0
	ldh  [$f0], a                                    ; $79fb: $e0 $f0
	xor  $03                                         ; $79fd: $ee $03
	nop                                              ; $79ff: $00
	add  b                                           ; $7a00: $80
	inc  bc                                          ; $7a01: $03
	add  b                                           ; $7a02: $80
	ld   [bc], a                                     ; $7a03: $02
	ld   bc, $0003                                   ; $7a04: $01 $03 $00
	add  b                                           ; $7a07: $80
	inc  bc                                          ; $7a08: $03
	add  b                                           ; $7a09: $80
	ld   bc, $0305                                   ; $7a0a: $01 $05 $03
	nop                                              ; $7a0d: $00
	inc  bc                                          ; $7a0e: $03
	ld   d, h                                        ; $7a0f: $54
	rst  $38                                         ; $7a10: $ff
	ccf                                              ; $7a11: $3f
	add  b                                           ; $7a12: $80
	push de                                          ; $7a13: $d5
	inc  bc                                          ; $7a14: $03

jr_070_7a15:
	cp   a                                           ; $7a15: $bf
	add  b                                           ; $7a16: $80
	rst  $38                                         ; $7a17: $ff
	ccf                                              ; $7a18: $3f
	add  b                                           ; $7a19: $80
	ld   [$7f07], a                                  ; $7a1a: $ea $07 $7f
	ld   b, b                                        ; $7a1d: $40
	rst  $38                                         ; $7a1e: $ff
	nop                                              ; $7a1f: $00
	rst  $38                                         ; $7a20: $ff
	dec  d                                           ; $7a21: $15
	ret  nz                                          ; $7a22: $c0

	rst  $38                                         ; $7a23: $ff
	add  b                                           ; $7a24: $80
	ld   a, a                                        ; $7a25: $7f
	inc  bc                                          ; $7a26: $03
	rst  $38                                         ; $7a27: $ff
	nop                                              ; $7a28: $00
	ret  nz                                          ; $7a29: $c0

	rst  $38                                         ; $7a2a: $ff
	add  b                                           ; $7a2b: $80
	cp   a                                           ; $7a2c: $bf
	ld   [hl], $ff                                   ; $7a2d: $36 $ff
	inc  a                                           ; $7a2f: $3c
	db   $fc                                         ; $7a30: $fc
	jp   $2043                                       ; $7a31: $c3 $43 $20


	ccf                                              ; $7a34: $3f
	xor  $ff                                         ; $7a35: $ee $ff
	rst  JumpTable                                         ; $7a37: $df
	pop  de                                          ; $7a38: $d1
	ld   sp, $ee3f                                   ; $7a39: $31 $3f $ee
	rst  $38                                         ; $7a3c: $ff
	rst  $28                                         ; $7a3d: $ef
	ld   hl, sp+$18                                  ; $7a3e: $f8 $18
	rla                                              ; $7a40: $17
	or   $ff                                         ; $7a41: $f6 $ff
	or   $ff                                         ; $7a43: $f6 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a45: $cf
	ret  z                                           ; $7a46: $c8

	jr   c, jr_070_7a88                              ; $7a47: $38 $3f

	rst  $30                                         ; $7a49: $f7
	rst  $38                                         ; $7a4a: $ff
	rst  $28                                         ; $7a4b: $ef
	ldh  [rAUD2LOW], a                               ; $7a4c: $e0 $18
	rra                                              ; $7a4e: $1f
	rst  $30                                         ; $7a4f: $f7
	rst  $38                                         ; $7a50: $ff
	rst  $30                                         ; $7a51: $f7
	cp   $02                                         ; $7a52: $fe $02
	call nz, $3fc7                                   ; $7a54: $c4 $c7 $3f
	dec  sp                                          ; $7a57: $3b
	rst  $38                                         ; $7a58: $ff
	ld   hl, sp-$3c                                  ; $7a59: $f8 $c4
	rst  ToBoot                                         ; $7a5b: $c7
	ccf                                              ; $7a5c: $3f
	dec  sp                                          ; $7a5d: $3b
	rst  $38                                         ; $7a5e: $ff
	db   $fc                                         ; $7a5f: $fc
	ld   hl, sp-$05                                  ; $7a60: $f8 $fb
	rlca                                             ; $7a62: $07
	dec  sp                                          ; $7a63: $3b
	ccf                                              ; $7a64: $3f
	add  b                                           ; $7a65: $80
	db   $fc                                         ; $7a66: $fc
	add  b                                           ; $7a67: $80
	inc  bc                                          ; $7a68: $03
	add  d                                           ; $7a69: $82
	rst  $38                                         ; $7a6a: $ff
	add  b                                           ; $7a6b: $80
	ldh  [$80], a                                    ; $7a6c: $e0 $80
	rra                                              ; $7a6e: $1f
	add  b                                           ; $7a6f: $80
	rst  $38                                         ; $7a70: $ff
	ld   [de], a                                     ; $7a71: $12
	ld   a, $03                                      ; $7a72: $3e $03
	ld   [hl+], a                                    ; $7a74: $22
	ld   bc, $00f1                                   ; $7a75: $01 $f1 $00
	ld   a, [de]                                     ; $7a78: $1a
	nop                                              ; $7a79: $00
	ld   [hl], h                                     ; $7a7a: $74
	nop                                              ; $7a7b: $00
	db   $fd                                         ; $7a7c: $fd
	nop                                              ; $7a7d: $00
	add  d                                           ; $7a7e: $82
	nop                                              ; $7a7f: $00
	ld   c, $00                                      ; $7a80: $0e $00
	ld   c, c                                        ; $7a82: $49
	ld   sp, hl                                      ; $7a83: $f9
	cp   c                                           ; $7a84: $b9
	add  b                                           ; $7a85: $80
	ld   sp, hl                                      ; $7a86: $f9
	add  b                                           ; $7a87: $80

jr_070_7a88:
	ld   a, c                                        ; $7a88: $79
	ld   e, b                                        ; $7a89: $58
	add  hl, sp                                      ; $7a8a: $39
	add  hl, hl                                      ; $7a8b: $29
	add  hl, bc                                      ; $7a8c: $09
	ld   c, c                                        ; $7a8d: $49
	ld   bc, $0084                                   ; $7a8e: $01 $84 $00
	ld   h, c                                        ; $7a91: $61
	add  b                                           ; $7a92: $80
	xor  $7f                                         ; $7a93: $ee $7f
	dec  e                                           ; $7a95: $1d
	ld   a, a                                        ; $7a96: $7f
	dec  a                                           ; $7a97: $3d
	ld   a, a                                        ; $7a98: $7f
	dec  a                                           ; $7a99: $3d
	ld   a, a                                        ; $7a9a: $7f
	inc  a                                           ; $7a9b: $3c
	ld   a, a                                        ; $7a9c: $7f
	inc  a                                           ; $7a9d: $3c
	ld   a, a                                        ; $7a9e: $7f
	ld   a, h                                        ; $7a9f: $7c
	ld   a, a                                        ; $7aa0: $7f
	ld   e, h                                        ; $7aa1: $5c
	ccf                                              ; $7aa2: $3f
	and  [hl]                                        ; $7aa3: $a6
	rst  $38                                         ; $7aa4: $ff
	or   a                                           ; $7aa5: $b7
	cp   a                                           ; $7aa6: $bf
	rst  $30                                         ; $7aa7: $f7
	rst  $38                                         ; $7aa8: $ff
	rst  $30                                         ; $7aa9: $f7
	rst  $38                                         ; $7aaa: $ff
	rst  $30                                         ; $7aab: $f7
	rst  $38                                         ; $7aac: $ff
	rst  $30                                         ; $7aad: $f7
	rst  $38                                         ; $7aae: $ff
	rst  $30                                         ; $7aaf: $f7
	rst  $38                                         ; $7ab0: $ff
	rst  $30                                         ; $7ab1: $f7
	rst  $38                                         ; $7ab2: $ff
	or   c                                           ; $7ab3: $b1
	rst  $38                                         ; $7ab4: $ff
	inc  a                                           ; $7ab5: $3c
	rst  $38                                         ; $7ab6: $ff
	inc  a                                           ; $7ab7: $3c
	rst  $38                                         ; $7ab8: $ff
	inc  a                                           ; $7ab9: $3c
	rst  $38                                         ; $7aba: $ff
	inc  a                                           ; $7abb: $3c
	rst  $38                                         ; $7abc: $ff
	inc  a                                           ; $7abd: $3c
	rst  $38                                         ; $7abe: $ff
	inc  e                                           ; $7abf: $1c
	rst  JumpTable                                         ; $7ac0: $df
	inc  e                                           ; $7ac1: $1c
	rst  JumpTable                                         ; $7ac2: $df
	ld   a, c                                        ; $7ac3: $79
	ei                                               ; $7ac4: $fb
	ld   [hl], e                                     ; $7ac5: $73
	di                                               ; $7ac6: $f3
	ld   a, e                                        ; $7ac7: $7b
	ei                                               ; $7ac8: $fb
	ld   [hl], e                                     ; $7ac9: $73
	di                                               ; $7aca: $f3
	ld   a, e                                        ; $7acb: $7b
	ei                                               ; $7acc: $fb
	ld   [hl], e                                     ; $7acd: $73
	di                                               ; $7ace: $f3
	ld   a, e                                        ; $7acf: $7b
	ei                                               ; $7ad0: $fb
	ld   [hl], e                                     ; $7ad1: $73
	di                                               ; $7ad2: $f3
	ld   c, l                                        ; $7ad3: $4d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ad4: $cf
	xor  h                                           ; $7ad5: $ac
	xor  a                                           ; $7ad6: $af
	call z, $accf                                    ; $7ad7: $cc $cf $ac
	xor  a                                           ; $7ada: $af
	call z, $accf                                    ; $7adb: $cc $cf $ac
	xor  a                                           ; $7ade: $af
	call z, $accf                                    ; $7adf: $cc $cf $ac
	xor  a                                           ; $7ae2: $af
	add  b                                           ; $7ae3: $80
	di                                               ; $7ae4: $f3
	dec  b                                           ; $7ae5: $05
	ld   h, c                                        ; $7ae6: $61
	pop  hl                                          ; $7ae7: $e1
	inc  sp                                          ; $7ae8: $33
	di                                               ; $7ae9: $f3
	and  c                                           ; $7aea: $a1
	pop  hl                                          ; $7aeb: $e1
	add  b                                           ; $7aec: $80
	di                                               ; $7aed: $f3
	inc  bc                                          ; $7aee: $03
	ld   h, c                                        ; $7aef: $61
	pop  hl                                          ; $7af0: $e1
	ld   [hl], e                                     ; $7af1: $73
	di                                               ; $7af2: $f3
	add  b                                           ; $7af3: $80
	pop  hl                                          ; $7af4: $e1
	db   $10                                         ; $7af5: $10
	ld   l, $f0                                      ; $7af6: $2e $f0
	ret  nz                                          ; $7af8: $c0

	ldh  a, [$c0]                                    ; $7af9: $f0 $c0
	ldh  a, [$c0]                                    ; $7afb: $f0 $c0
	ldh  a, [$d0]                                    ; $7afd: $f0 $d0
	ldh  a, [$90]                                    ; $7aff: $f0 $90
	ldh  a, [$90]                                    ; $7b01: $f0 $90
	ldh  a, [$90]                                    ; $7b03: $f0 $90
	ldh  a, [$ae]                                    ; $7b05: $f0 $ae
	add  b                                           ; $7b07: $80
	inc  bc                                          ; $7b08: $03
	nop                                              ; $7b09: $00
	ld   bc, $0384                                   ; $7b0a: $01 $84 $03
	add  b                                           ; $7b0d: $80
	nop                                              ; $7b0e: $00
	add  d                                           ; $7b0f: $82
	inc  bc                                          ; $7b10: $03
	nop                                              ; $7b11: $00
	ld   l, d                                        ; $7b12: $6a
	add  b                                           ; $7b13: $80
	ld   [$7f0a], a                                  ; $7b14: $ea $0a $7f
	ld   b, b                                        ; $7b17: $40
	rst  $38                                         ; $7b18: $ff
	ld   b, c                                        ; $7b19: $41
	rst  $38                                         ; $7b1a: $ff
	cp   l                                           ; $7b1b: $bd
	xor  c                                           ; $7b1c: $a9
	ld   a, e                                        ; $7b1d: $7b
	ld   a, a                                        ; $7b1e: $7f
	ei                                               ; $7b1f: $fb
	rst  $38                                         ; $7b20: $ff
	add  b                                           ; $7b21: $80

jr_070_7b22:
	ret  nz                                          ; $7b22: $c0

	dec  bc                                          ; $7b23: $0b
	ld   a, a                                        ; $7b24: $7f
	rst  $38                                         ; $7b25: $ff
	ccf                                              ; $7b26: $3f
	rst  $38                                         ; $7b27: $ff
	jr   c, jr_070_7b22                              ; $7b28: $38 $f8

	add  a                                           ; $7b2a: $87
	rlca                                             ; $7b2b: $07
	ld   a, a                                        ; $7b2c: $7f
	rst  $38                                         ; $7b2d: $ff
	ld   a, h                                        ; $7b2e: $7c
	db   $fc                                         ; $7b2f: $fc
	add  b                                           ; $7b30: $80
	inc  bc                                          ; $7b31: $03
	add  b                                           ; $7b32: $80
	rst  $38                                         ; $7b33: $ff
	inc  d                                           ; $7b34: $14
	ldh  [rIE], a                                    ; $7b35: $e0 $ff

jr_070_7b37:
	rst  $28                                         ; $7b37: $ef
	ldh  a, [rAUD1SWEEP]                             ; $7b38: $f0 $10
	rra                                              ; $7b3a: $1f
	ld   a, [$e3ff]                                  ; $7b3b: $fa $ff $e3
	db   $fd                                         ; $7b3e: $fd
	dec  e                                           ; $7b3f: $1d
	dec  bc                                          ; $7b40: $0b
	ld   hl, sp-$01                                  ; $7b41: $f8 $ff
	ldh  a, [rIE]                                    ; $7b43: $f0 $ff
	add  d                                           ; $7b45: $82
	adc  c                                           ; $7b46: $89
	ld   a, c                                        ; $7b47: $79
	ld   a, a                                        ; $7b48: $7f
	di                                               ; $7b49: $f3
	add  b                                           ; $7b4a: $80
	rst  $38                                         ; $7b4b: $ff
	ld   a, [de]                                     ; $7b4c: $1a
	db   $f4                                         ; $7b4d: $f4
	inc  b                                           ; $7b4e: $04
	rrca                                             ; $7b4f: $0f
	pop  af                                          ; $7b50: $f1
	rst  $38                                         ; $7b51: $ff
	rst  $30                                         ; $7b52: $f7
	ld   a, [$070a]                                  ; $7b53: $fa $0a $07
	ld   [bc], a                                     ; $7b56: $02
	rst  $38                                         ; $7b57: $ff
	ei                                               ; $7b58: $fb
	rst  $38                                         ; $7b59: $ff
	db   $fc                                         ; $7b5a: $fc
	add  b                                           ; $7b5b: $80
	add  e                                           ; $7b5c: $83
	ld   a, a                                        ; $7b5d: $7f
	ld   a, e                                        ; $7b5e: $7b
	rst  $38                                         ; $7b5f: $ff
	ld   l, b                                        ; $7b60: $68
	ret  nc                                          ; $7b61: $d0

	rst  $30                                         ; $7b62: $f7
	cp   a                                           ; $7b63: $bf
	and  e                                           ; $7b64: $a3
	rst  $38                                         ; $7b65: $ff
	xor  b                                           ; $7b66: $a8
	db   $fc                                         ; $7b67: $fc
	add  b                                           ; $7b68: $80
	inc  bc                                          ; $7b69: $03
	add  b                                           ; $7b6a: $80
	rst  $38                                         ; $7b6b: $ff
	add  b                                           ; $7b6c: $80
	db   $fc                                         ; $7b6d: $fc
	add  b                                           ; $7b6e: $80
	add  e                                           ; $7b6f: $83
	add  b                                           ; $7b70: $80
	ld   a, a                                        ; $7b71: $7f
	add  b                                           ; $7b72: $80
	rst  $38                                         ; $7b73: $ff
	add  b                                           ; $7b74: $80
	ld   hl, sp-$80                                  ; $7b75: $f8 $80
	rrca                                             ; $7b77: $0f
	add  b                                           ; $7b78: $80
	rst  $38                                         ; $7b79: $ff
	add  b                                           ; $7b7a: $80
	ldh  a, [$80]                                    ; $7b7b: $f0 $80
	rrca                                             ; $7b7d: $0f
	add  d                                           ; $7b7e: $82
	rst  $38                                         ; $7b7f: $ff
	add  b                                           ; $7b80: $80
	ldh  [$80], a                                    ; $7b81: $e0 $80
	rra                                              ; $7b83: $1f
	jr   z, jr_070_7b37                              ; $7b84: $28 $b1

	ld   b, b                                        ; $7b86: $40
	ldh  a, [$c0]                                    ; $7b87: $f0 $c0
	db   $fd                                         ; $7b89: $fd
	nop                                              ; $7b8a: $00
	inc  bc                                          ; $7b8b: $03
	ret  nz                                          ; $7b8c: $c0

	ld   b, e                                        ; $7b8d: $43
	ld   b, b                                        ; $7b8e: $40
	ld   a, a                                        ; $7b8f: $7f
	nop                                              ; $7b90: $00
	inc  a                                           ; $7b91: $3c
	ld   b, b                                        ; $7b92: $40
	rst  ToBoot                                         ; $7b93: $c7
	ret  nz                                          ; $7b94: $c0

	add  d                                           ; $7b95: $82
	rra                                              ; $7b96: $1f
	ld   [$0507], sp                                 ; $7b97: $08 $07 $05
	inc  bc                                          ; $7b9a: $03
	ld   h, e                                        ; $7b9b: $63
	nop                                              ; $7b9c: $00
	jr   c, jr_070_7bdf                              ; $7b9d: $38 $40

	inc  a                                           ; $7b9f: $3c
	or   b                                           ; $7ba0: $b0
	ld   b, a                                        ; $7ba1: $47
	ld   b, b                                        ; $7ba2: $40
	ld   e, h                                        ; $7ba3: $5c
	rra                                              ; $7ba4: $1f
	ld   b, a                                        ; $7ba5: $47
	rst  $38                                         ; $7ba6: $ff
	rst  $30                                         ; $7ba7: $f7
	rst  $38                                         ; $7ba8: $ff
	rst  $30                                         ; $7ba9: $f7
	rst  $38                                         ; $7baa: $ff
	ld   [hl], a                                     ; $7bab: $77
	ld   a, a                                        ; $7bac: $7f
	ld   d, a                                        ; $7bad: $57
	add  b                                           ; $7bae: $80
	rra                                              ; $7baf: $1f
	inc  a                                           ; $7bb0: $3c
	rrca                                             ; $7bb1: $0f
	add  hl, bc                                      ; $7bb2: $09
	rlca                                             ; $7bb3: $07
	inc  b                                           ; $7bb4: $04
	ld   bc, $dfc0                                   ; $7bb5: $01 $c0 $df
	ld   a, [de]                                     ; $7bb8: $1a
	rst  JumpTable                                         ; $7bb9: $df
	ld   a, [de]                                     ; $7bba: $1a
	rst  JumpTable                                         ; $7bbb: $df
	ld   a, [de]                                     ; $7bbc: $1a
	rst  JumpTable                                         ; $7bbd: $df
	ld   a, [de]                                     ; $7bbe: $1a
	rst  JumpTable                                         ; $7bbf: $df
	dec  de                                          ; $7bc0: $1b
	rst  JumpTable                                         ; $7bc1: $df
	ld   e, e                                        ; $7bc2: $5b
	rst  JumpTable                                         ; $7bc3: $df
	db   $db                                         ; $7bc4: $db
	rst  JumpTable                                         ; $7bc5: $df
	db   $fc                                         ; $7bc6: $fc
	ei                                               ; $7bc7: $fb
	ld   [hl], e                                     ; $7bc8: $73
	di                                               ; $7bc9: $f3
	ld   a, e                                        ; $7bca: $7b
	ei                                               ; $7bcb: $fb
	ld   [hl], e                                     ; $7bcc: $73
	di                                               ; $7bcd: $f3
	ld   [hl], e                                     ; $7bce: $73
	di                                               ; $7bcf: $f3
	ld   [hl], e                                     ; $7bd0: $73
	di                                               ; $7bd1: $f3
	inc  sp                                          ; $7bd2: $33
	di                                               ; $7bd3: $f3
	inc  sp                                          ; $7bd4: $33
	di                                               ; $7bd5: $f3
	ccf                                              ; $7bd6: $3f
	ldh  a, [$30]                                    ; $7bd7: $f0 $30
	ldh  a, [$30]                                    ; $7bd9: $f0 $30
	ldh  a, [$30]                                    ; $7bdb: $f0 $30
	ldh  a, [$b0]                                    ; $7bdd: $f0 $b0

jr_070_7bdf:
	ldh  a, [$b0]                                    ; $7bdf: $f0 $b0
	ldh  a, [$b0]                                    ; $7be1: $f0 $b0
	ldh  a, [$b0]                                    ; $7be3: $f0 $b0
	ldh  a, [$61]                                    ; $7be5: $f0 $61
	cp   $ee                                         ; $7be7: $fe $ee
	cp   $ee                                         ; $7be9: $fe $ee
	cp   $ec                                         ; $7beb: $fe $ec
	db   $fc                                         ; $7bed: $fc
	add  b                                           ; $7bee: $80
	cp   $80                                         ; $7bef: $fe $80
	db   $fc                                         ; $7bf1: $fc
	add  b                                           ; $7bf2: $80
	cp   h                                           ; $7bf3: $bc
	add  b                                           ; $7bf4: $80
	db   $fc                                         ; $7bf5: $fc
	ld   de, $ff82                                   ; $7bf6: $11 $82 $ff
	cp   b                                           ; $7bf9: $b8
	rst  $38                                         ; $7bfa: $ff
	cp   c                                           ; $7bfb: $b9
	rst  $38                                         ; $7bfc: $ff
	cp   c                                           ; $7bfd: $b9
	rst  $38                                         ; $7bfe: $ff
	cp   b                                           ; $7bff: $b8
	rst  $38                                         ; $7c00: $ff
	cp   b                                           ; $7c01: $b8
	rst  $38                                         ; $7c02: $ff
	cp   c                                           ; $7c03: $b9
	rst  $38                                         ; $7c04: $ff
	cp   c                                           ; $7c05: $b9
	rst  $38                                         ; $7c06: $ff
	ld   a, [hl-]                                    ; $7c07: $3a
	nop                                              ; $7c08: $00
	add  h                                           ; $7c09: $84
	inc  bc                                          ; $7c0a: $03
	add  b                                           ; $7c0b: $80
	nop                                              ; $7c0c: $00
	add  h                                           ; $7c0d: $84
	inc  bc                                          ; $7c0e: $03
	add  b                                           ; $7c0f: $80
	ccf                                              ; $7c10: $3f
	add  b                                           ; $7c11: $80
	rst  $38                                         ; $7c12: $ff
	add  b                                           ; $7c13: $80
	cp   $80                                         ; $7c14: $fe $80
	add  c                                           ; $7c16: $81
	add  b                                           ; $7c17: $80
	ld   a, a                                        ; $7c18: $7f
	add  b                                           ; $7c19: $80
	db   $eb                                         ; $7c1a: $eb
	add  b                                           ; $7c1b: $80
	ld   d, l                                        ; $7c1c: $55
	add  b                                           ; $7c1d: $80
	add  b                                           ; $7c1e: $80
	add  b                                           ; $7c1f: $80
	rst  $38                                         ; $7c20: $ff
	add  b                                           ; $7c21: $80
	ld   hl, sp-$80                                  ; $7c22: $f8 $80
	rlca                                             ; $7c24: $07
	add  d                                           ; $7c25: $82
	rst  $38                                         ; $7c26: $ff
	add  b                                           ; $7c27: $80
	ld   [hl], b                                     ; $7c28: $70
	add  b                                           ; $7c29: $80
	rrca                                             ; $7c2a: $0f
	add  b                                           ; $7c2b: $80
	xor  d                                           ; $7c2c: $aa
	add  b                                           ; $7c2d: $80
	jp   z, $3f80                                    ; $7c2e: $ca $80 $3f

	add  b                                           ; $7c31: $80
	rst  $38                                         ; $7c32: $ff
	add  b                                           ; $7c33: $80

jr_070_7c34:
	cp   $80                                         ; $7c34: $fe $80
	pop  bc                                          ; $7c36: $c1
	add  b                                           ; $7c37: $80
	ccf                                              ; $7c38: $3f

Call_070_7c39:
	add  b                                           ; $7c39: $80
	rst  $38                                         ; $7c3a: $ff
	add  b                                           ; $7c3b: $80

jr_070_7c3c:
	cp   b                                           ; $7c3c: $b8
	ld   [bc], a                                     ; $7c3d: $02
	db   $fd                                         ; $7c3e: $fd
	rst  $38                                         ; $7c3f: $ff
	ld   hl, sp-$80                                  ; $7c40: $f8 $80
	rst  $38                                         ; $7c42: $ff
	inc  b                                           ; $7c43: $04
	ld   a, [$0706]                                  ; $7c44: $fa $06 $07
	cp   $ff                                         ; $7c47: $fe $ff
	add  b                                           ; $7c49: $80
	cp   $80                                         ; $7c4a: $fe $80
	pop  bc                                          ; $7c4c: $c1
	add  b                                           ; $7c4d: $80
	ccf                                              ; $7c4e: $3f

Call_070_7c4f:
	add  hl, bc                                      ; $7c4f: $09
	ld   d, a                                        ; $7c50: $57
	rst  $38                                         ; $7c51: $ff
	inc  a                                           ; $7c52: $3c
	call nc, $bfd7                                   ; $7c53: $d4 $d7 $bf
	add  a                                           ; $7c56: $87
	rst  $38                                         ; $7c57: $ff
	and  b                                           ; $7c58: $a0
	ldh  a, [$80]                                    ; $7c59: $f0 $80
	rrca                                             ; $7c5b: $0f
	add  d                                           ; $7c5c: $82
	rst  $38                                         ; $7c5d: $ff
	add  b                                           ; $7c5e: $80
	rlca                                             ; $7c5f: $07
	add  b                                           ; $7c60: $80
	rst  $38                                         ; $7c61: $ff
	add  b                                           ; $7c62: $80
	db   $fc                                         ; $7c63: $fc
	add  b                                           ; $7c64: $80
	add  e                                           ; $7c65: $83
	add  b                                           ; $7c66: $80
	ld   a, a                                        ; $7c67: $7f
	add  b                                           ; $7c68: $80
	rst  $38                                         ; $7c69: $ff
	add  b                                           ; $7c6a: $80
	ld   hl, sp-$80                                  ; $7c6b: $f8 $80
	rlca                                             ; $7c6d: $07
	add  b                                           ; $7c6e: $80
	rst  $38                                         ; $7c6f: $ff
	add  b                                           ; $7c70: $80
	ldh  [$80], a                                    ; $7c71: $e0 $80
	rra                                              ; $7c73: $1f
	add  b                                           ; $7c74: $80
	rst  $38                                         ; $7c75: $ff
	add  b                                           ; $7c76: $80
	cp   $80                                         ; $7c77: $fe $80
	pop  bc                                          ; $7c79: $c1
	add  b                                           ; $7c7a: $80
	ccf                                              ; $7c7b: $3f
	add  b                                           ; $7c7c: $80
	rst  $38                                         ; $7c7d: $ff
	add  b                                           ; $7c7e: $80
	rlca                                             ; $7c7f: $07
	add  hl, hl                                      ; $7c80: $29
	ccf                                              ; $7c81: $3f
	rst  $38                                         ; $7c82: $ff
	ld   a, a                                        ; $7c83: $7f
	rst  $38                                         ; $7c84: $ff
	ld   [hl], b                                     ; $7c85: $70
	ldh  a, [$cf]                                    ; $7c86: $f0 $cf
	rrca                                             ; $7c88: $0f
	rra                                              ; $7c89: $1f
	rst  $38                                         ; $7c8a: $ff
	ld   e, a                                        ; $7c8b: $5f
	rst  $38                                         ; $7c8c: $ff
	ld   d, b                                        ; $7c8d: $50
	ldh  a, [rLCDC]                                  ; $7c8e: $f0 $40
	rst  $38                                         ; $7c90: $ff
	inc  e                                           ; $7c91: $1c
	rst  $38                                         ; $7c92: $ff
	jr   nz, jr_070_7c34                             ; $7c93: $20 $9f

	ld   b, e                                        ; $7c95: $43
	ld   a, a                                        ; $7c96: $7f
	sbc  a                                           ; $7c97: $9f
	rst  $38                                         ; $7c98: $ff
	inc  e                                           ; $7c99: $1c
	rst  $38                                         ; $7c9a: $ff
	jr   nz, jr_070_7c3c                             ; $7c9b: $20 $9f

	ld   b, e                                        ; $7c9d: $43
	ld   a, a                                        ; $7c9e: $7f
	ld   [hl+], a                                    ; $7c9f: $22
	add  b                                           ; $7ca0: $80
	db   $10                                         ; $7ca1: $10
	ld   b, b                                        ; $7ca2: $40
	ret  z                                           ; $7ca3: $c8

Jump_070_7ca4:
	ldh  a, [$fc]                                    ; $7ca4: $f0 $fc
	ldh  a, [$e5]                                    ; $7ca6: $f0 $e5
	ldh  [$1f], a                                    ; $7ca8: $e0 $1f
	inc  e                                           ; $7caa: $1c
	add  b                                           ; $7cab: $80
	ld   hl, sp-$80                                  ; $7cac: $f8 $80
	db   $fc                                         ; $7cae: $fc
	add  hl, hl                                      ; $7caf: $29
	inc  hl                                          ; $7cb0: $23
	ld   e, a                                        ; $7cb1: $5f
	ld   e, e                                        ; $7cb2: $5b
	rra                                              ; $7cb3: $1f
	dec  bc                                          ; $7cb4: $0b

jr_070_7cb5:
	rrca                                             ; $7cb5: $0f
	dec  c                                           ; $7cb6: $0d
	rlca                                             ; $7cb7: $07
	add  [hl]                                        ; $7cb8: $86
	ld   bc, $0041                                   ; $7cb9: $01 $41 $00
	ret  nz                                          ; $7cbc: $c0

	nop                                              ; $7cbd: $00
	ld   c, h                                        ; $7cbe: $4c
	nop                                              ; $7cbf: $00
	jr   nc, jr_070_7cb5                             ; $7cc0: $30 $f3

	inc  sp                                          ; $7cc2: $33
	di                                               ; $7cc3: $f3
	inc  sp                                          ; $7cc4: $33
	di                                               ; $7cc5: $f3
	ld   [hl-], a                                    ; $7cc6: $32
	di                                               ; $7cc7: $f3
	ld   [hl-], a                                    ; $7cc8: $32
	di                                               ; $7cc9: $f3
	or   d                                           ; $7cca: $b2
	ld   [hl], e                                     ; $7ccb: $73
	ld   [hl-], a                                    ; $7ccc: $32
	inc  de                                          ; $7ccd: $13
	ld   [bc], a                                     ; $7cce: $02
	inc  bc                                          ; $7ccf: $03
	ld   l, [hl]                                     ; $7cd0: $6e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cd1: $cf
	xor  [hl]                                        ; $7cd2: $ae
	xor  a                                           ; $7cd3: $af
	adc  $cf                                         ; $7cd4: $ce $cf
	xor  [hl]                                        ; $7cd6: $ae
	xor  a                                           ; $7cd7: $af
	adc  $cf                                         ; $7cd8: $ce $cf
	add  b                                           ; $7cda: $80
	xor  a                                           ; $7cdb: $af
	add  b                                           ; $7cdc: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cdd: $cf
	add  b                                           ; $7cde: $80
	rst  $28                                         ; $7cdf: $ef
	add  b                                           ; $7ce0: $80
	cp   h                                           ; $7ce1: $bc
	add  b                                           ; $7ce2: $80
	cp   b                                           ; $7ce3: $b8
	dec  e                                           ; $7ce4: $1d
	sbc  h                                           ; $7ce5: $9c
	cp   h                                           ; $7ce6: $bc
	sbc  b                                           ; $7ce7: $98
	cp   b                                           ; $7ce8: $b8
	sbc  h                                           ; $7ce9: $9c
	cp   h                                           ; $7cea: $bc
	sbc  b                                           ; $7ceb: $98
	cp   b                                           ; $7cec: $b8
	sbc  h                                           ; $7ced: $9c
	cp   h                                           ; $7cee: $bc
	sbc  b                                           ; $7cef: $98
	cp   b                                           ; $7cf0: $b8
	add  d                                           ; $7cf1: $82
	rst  $38                                         ; $7cf2: $ff
	cp   b                                           ; $7cf3: $b8
	rst  $38                                         ; $7cf4: $ff
	cp   c                                           ; $7cf5: $b9
	rst  $38                                         ; $7cf6: $ff
	cp   c                                           ; $7cf7: $b9
	rst  $38                                         ; $7cf8: $ff
	cp   b                                           ; $7cf9: $b8
	rst  $38                                         ; $7cfa: $ff
	cp   b                                           ; $7cfb: $b8
	rst  $38                                         ; $7cfc: $ff
	cp   c                                           ; $7cfd: $b9
	rst  $38                                         ; $7cfe: $ff
	cp   c                                           ; $7cff: $b9
	rst  $38                                         ; $7d00: $ff
	ld   a, [hl-]                                    ; $7d01: $3a
	nop                                              ; $7d02: $00
	add  d                                           ; $7d03: $82
	inc  bc                                          ; $7d04: $03
	add  b                                           ; $7d05: $80
	ld   [bc], a                                     ; $7d06: $02
	add  b                                           ; $7d07: $80
	nop                                              ; $7d08: $00
	add  b                                           ; $7d09: $80
	inc  bc                                          ; $7d0a: $03
	add  b                                           ; $7d0b: $80
	ld   bc, $0280                                   ; $7d0c: $01 $80 $02
	add  b                                           ; $7d0f: $80
	ld   d, l                                        ; $7d10: $55
	add  b                                           ; $7d11: $80
	ld   [$5480], a                                  ; $7d12: $ea $80 $54
	add  b                                           ; $7d15: $80
	add  d                                           ; $7d16: $82
	add  b                                           ; $7d17: $80
	ld   d, l                                        ; $7d18: $55
	add  b                                           ; $7d19: $80
	xor  d                                           ; $7d1a: $aa
	add  b                                           ; $7d1b: $80
	ld   d, h                                        ; $7d1c: $54
	add  b                                           ; $7d1d: $80
	add  d                                           ; $7d1e: $82
	add  b                                           ; $7d1f: $80
	ld   d, l                                        ; $7d20: $55
	add  b                                           ; $7d21: $80
	and  b                                           ; $7d22: $a0
	add  b                                           ; $7d23: $80
	dec  d                                           ; $7d24: $15
	add  b                                           ; $7d25: $80
	xor  d                                           ; $7d26: $aa
	add  b                                           ; $7d27: $80
	ld   d, l                                        ; $7d28: $55
	add  b                                           ; $7d29: $80
	and  b                                           ; $7d2a: $a0
	add  b                                           ; $7d2b: $80
	dec  d                                           ; $7d2c: $15
	add  b                                           ; $7d2d: $80
	xor  d                                           ; $7d2e: $aa
	add  b                                           ; $7d2f: $80
	rlca                                             ; $7d30: $07
	add  b                                           ; $7d31: $80
	cp   a                                           ; $7d32: $bf
	add  b                                           ; $7d33: $80
	ld   d, l                                        ; $7d34: $55
	add  b                                           ; $7d35: $80

jr_070_7d36:
	xor  b                                           ; $7d36: $a8
	add  b                                           ; $7d37: $80
	rlca                                             ; $7d38: $07
	add  b                                           ; $7d39: $80
	xor  d                                           ; $7d3a: $aa
	add  b                                           ; $7d3b: $80
	ld   d, l                                        ; $7d3c: $55
	add  b                                           ; $7d3d: $80
	xor  b                                           ; $7d3e: $a8
	add  b                                           ; $7d3f: $80
	rst  $38                                         ; $7d40: $ff
	add  b                                           ; $7d41: $80
	cp   $80                                         ; $7d42: $fe $80
	pop  bc                                          ; $7d44: $c1
	add  b                                           ; $7d45: $80
	ccf                                              ; $7d46: $3f
	add  b                                           ; $7d47: $80
	rst  $38                                         ; $7d48: $ff
	add  b                                           ; $7d49: $80
	cp   $80                                         ; $7d4a: $fe $80
	ld   b, c                                        ; $7d4c: $41
	add  b                                           ; $7d4d: $80
	ld   a, [hl+]                                    ; $7d4e: $2a
	add  b                                           ; $7d4f: $80
	ldh  [$80], a                                    ; $7d50: $e0 $80
	rra                                              ; $7d52: $1f
	add  d                                           ; $7d53: $82
	rst  $38                                         ; $7d54: $ff
	add  b                                           ; $7d55: $80
	ldh  a, [$80]                                    ; $7d56: $f0 $80
	rrca                                             ; $7d58: $0f
	add  b                                           ; $7d59: $80
	rst  $38                                         ; $7d5a: $ff
	add  b                                           ; $7d5b: $80
	cp   a                                           ; $7d5c: $bf
	add  d                                           ; $7d5d: $82
	rst  $38                                         ; $7d5e: $ff
	add  b                                           ; $7d5f: $80
	ld   hl, sp-$80                                  ; $7d60: $f8 $80
	rlca                                             ; $7d62: $07
	add  d                                           ; $7d63: $82
	rst  $38                                         ; $7d64: $ff
	add  b                                           ; $7d65: $80
	db   $fc                                         ; $7d66: $fc
	add  b                                           ; $7d67: $80
	add  e                                           ; $7d68: $83
	add  b                                           ; $7d69: $80
	cp   $80                                         ; $7d6a: $fe $80
	pop  bc                                          ; $7d6c: $c1
	add  b                                           ; $7d6d: $80
	ccf                                              ; $7d6e: $3f
	add  d                                           ; $7d6f: $82
	rst  $38                                         ; $7d70: $ff
	add  b                                           ; $7d71: $80
	ldh  [$80], a                                    ; $7d72: $e0 $80
	rra                                              ; $7d74: $1f
	add  b                                           ; $7d75: $80
	rst  $38                                         ; $7d76: $ff
	add  b                                           ; $7d77: $80

jr_070_7d78:
	rrca                                             ; $7d78: $0f
	dec  bc                                          ; $7d79: $0b
	rra                                              ; $7d7a: $1f
	rst  $38                                         ; $7d7b: $ff
	ld   e, a                                        ; $7d7c: $5f
	rst  $38                                         ; $7d7d: $ff
	jr   jr_070_7d78                                 ; $7d7e: $18 $f8

	rst  $30                                         ; $7d80: $f7
	ld   d, a                                        ; $7d81: $57
	ld   e, a                                        ; $7d82: $5f
	rst  $38                                         ; $7d83: $ff
	ld   e, a                                        ; $7d84: $5f
	rst  $38                                         ; $7d85: $ff
	add  b                                           ; $7d86: $80
	ldh  a, [rAUD4POLY]                              ; $7d87: $f0 $22
	and  b                                           ; $7d89: $a0
	rst  $38                                         ; $7d8a: $ff
	ld   e, $ff                                      ; $7d8b: $1e $ff
	ld   h, b                                        ; $7d8d: $60
	rst  JumpTable                                         ; $7d8e: $df
	ld   bc, $9f3f                                   ; $7d8f: $01 $3f $9f
	rst  $38                                         ; $7d92: $ff
	inc  e                                           ; $7d93: $1c
	rst  $38                                         ; $7d94: $ff
	jr   nz, jr_070_7d36                             ; $7d95: $20 $9f

	ld   d, [hl]                                     ; $7d97: $56
	ld   a, a                                        ; $7d98: $7f
	ld   a, [hl+]                                    ; $7d99: $2a
	ldh  a, [$0b]                                    ; $7d9a: $f0 $0b
	rst  $38                                         ; $7d9c: $ff
	inc  bc                                          ; $7d9d: $03
	rst  $38                                         ; $7d9e: $ff
	ei                                               ; $7d9f: $fb
	rst  $38                                         ; $7da0: $ff
	db   $e4                                         ; $7da1: $e4
	ld   hl, sp+$03                                  ; $7da2: $f8 $03
	rst  $38                                         ; $7da4: $ff
	dec  de                                          ; $7da5: $1b
	rst  $38                                         ; $7da6: $ff
	xor  d                                           ; $7da7: $aa
	cp   $cd                                         ; $7da8: $fe $cd
	ld   a, l                                        ; $7daa: $7d
	db   $fc                                         ; $7dab: $fc
	add  b                                           ; $7dac: $80
	cp   $1c                                         ; $7dad: $fe $1c
	ld   hl, sp+$18                                  ; $7daf: $f8 $18
	rlca                                             ; $7db1: $07
	rst  $20                                         ; $7db2: $e7
	rst  $38                                         ; $7db3: $ff
	rst  $30                                         ; $7db4: $f7
	rst  $38                                         ; $7db5: $ff
	db   $fd                                         ; $7db6: $fd
	ld   a, [$0f1a]                                  ; $7db7: $fa $1a $0f
	xor  [hl]                                        ; $7dba: $ae
	inc  bc                                          ; $7dbb: $03
	add  c                                           ; $7dbc: $81
	nop                                              ; $7dbd: $00
	add  b                                           ; $7dbe: $80
	nop                                              ; $7dbf: $00
	ld   h, b                                        ; $7dc0: $60
	nop                                              ; $7dc1: $00
	jr   c, jr_070_7dc4                              ; $7dc2: $38 $00

jr_070_7dc4:
	ld   a, b                                        ; $7dc4: $78
	nop                                              ; $7dc5: $00
	push af                                          ; $7dc6: $f5
	nop                                              ; $7dc7: $00
	add  d                                           ; $7dc8: $82
	nop                                              ; $7dc9: $00
	ld   sp, $80cf                                   ; $7dca: $31 $cf $80
	rst  $28                                         ; $7dcd: $ef
	add  b                                           ; $7dce: $80

Call_070_7dcf:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dcf: $cf
	add  b                                           ; $7dd0: $80
	ld   l, a                                        ; $7dd1: $6f
	inc  b                                           ; $7dd2: $04
	ld   c, a                                        ; $7dd3: $4f
	rrca                                             ; $7dd4: $0f
	cpl                                              ; $7dd5: $2f
	rrca                                             ; $7dd6: $0f
	dec  bc                                          ; $7dd7: $0b
	add  c                                           ; $7dd8: $81
	inc  bc                                          ; $7dd9: $03
	or   $00                                         ; $7dda: $f6 $00
	ld   bc, $0c03                                   ; $7ddc: $01 $03 $0c
	add  c                                           ; $7ddf: $81
	nop                                              ; $7de0: $00
	add  b                                           ; $7de1: $80
	inc  bc                                          ; $7de2: $03
	add  a                                           ; $7de3: $87
	rrca                                             ; $7de4: $0f
	ld   bc, $807f                                   ; $7de5: $01 $7f $80
	add  c                                           ; $7de8: $81
	nop                                              ; $7de9: $00
	add  b                                           ; $7dea: $80
	ret  nz                                          ; $7deb: $c0

	add  b                                           ; $7dec: $80
	pop  bc                                          ; $7ded: $c1
	add  d                                           ; $7dee: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7def: $cf
	add  d                                           ; $7df0: $82
	rst  $38                                         ; $7df1: $ff
	add  h                                           ; $7df2: $84
	nop                                              ; $7df3: $00
	add  b                                           ; $7df4: $80
	ld   hl, sp-$7b                                  ; $7df5: $f8 $85
	rst  $38                                         ; $7df7: $ff
	ld   bc, $16e9                                   ; $7df8: $01 $e9 $16
	add  b                                           ; $7dfb: $80
	ld   e, $81                                      ; $7dfc: $1e $81
	nop                                              ; $7dfe: $00
	add  b                                           ; $7dff: $80
	ld   b, $82                                      ; $7e00: $06 $82
	ld   e, $80                                      ; $7e02: $1e $80
	db   $fc                                         ; $7e04: $fc
	ld   [bc], a                                     ; $7e05: $02
	ld   hl, sp-$53                                  ; $7e06: $f8 $ad
	ld   d, l                                        ; $7e08: $55
	add  b                                           ; $7e09: $80
	ld   a, [hl+]                                    ; $7e0a: $2a
	adc  d                                           ; $7e0b: $8a
	nop                                              ; $7e0c: $00
	add  b                                           ; $7e0d: $80
	ld   e, b                                        ; $7e0e: $58
	inc  b                                           ; $7e0f: $04
	ld   d, b                                        ; $7e10: $50
	ld   d, d                                        ; $7e11: $52
	ld   b, d                                        ; $7e12: $42
	ld   b, [hl]                                     ; $7e13: $46
	ld   b, $80                                      ; $7e14: $06 $80
	ld   bc, $0380                                   ; $7e16: $01 $80 $03
	add  b                                           ; $7e19: $80
	rlca                                             ; $7e1a: $07
	add  b                                           ; $7e1b: $80
	rrca                                             ; $7e1c: $0f
	add  b                                           ; $7e1d: $80
	ccf                                              ; $7e1e: $3f
	adc  [hl]                                        ; $7e1f: $8e
	rst  $38                                         ; $7e20: $ff
	add  b                                           ; $7e21: $80
	cp   $8b                                         ; $7e22: $fe $8b
	rst  $38                                         ; $7e24: $ff
	nop                                              ; $7e25: $00
	cp   $80                                         ; $7e26: $fe $80
	ld   a, a                                        ; $7e28: $7f
	add  c                                           ; $7e29: $81
	rst  $38                                         ; $7e2a: $ff
	nop                                              ; $7e2b: $00
	cp   $88                                         ; $7e2c: $fe $88
	rst  $38                                         ; $7e2e: $ff
	add  d                                           ; $7e2f: $82
	nop                                              ; $7e30: $00
	add  b                                           ; $7e31: $80
	ccf                                              ; $7e32: $3f
	add  a                                           ; $7e33: $87
	rst  $38                                         ; $7e34: $ff
	nop                                              ; $7e35: $00
	ld   a, a                                        ; $7e36: $7f
	add  b                                           ; $7e37: $80
	add  b                                           ; $7e38: $80
	add  b                                           ; $7e39: $80
	add  a                                           ; $7e3a: $87
	ld   bc, $3fbf                                   ; $7e3b: $01 $bf $3f
	adc  b                                           ; $7e3e: $88
	rst  $38                                         ; $7e3f: $ff
	add  b                                           ; $7e40: $80
	nop                                              ; $7e41: $00
	adc  e                                           ; $7e42: $8b
	rst  $38                                         ; $7e43: $ff
	nop                                              ; $7e44: $00
	ld   a, a                                        ; $7e45: $7f
	add  b                                           ; $7e46: $80
	add  b                                           ; $7e47: $80
	add  b                                           ; $7e48: $80
	sbc  a                                           ; $7e49: $9f
	ld   bc, $3fbf                                   ; $7e4a: $01 $bf $3f
	add  a                                           ; $7e4d: $87
	rst  $38                                         ; $7e4e: $ff
	nop                                              ; $7e4f: $00
	cp   a                                           ; $7e50: $bf
	add  b                                           ; $7e51: $80
	ld   d, e                                        ; $7e52: $53
	add  c                                           ; $7e53: $81
	rst  JumpTable                                         ; $7e54: $df
	nop                                              ; $7e55: $00
	sbc  a                                           ; $7e56: $9f
	adc  b                                           ; $7e57: $88
	rst  $38                                         ; $7e58: $ff
	add  d                                           ; $7e59: $82
	cp   $8a                                         ; $7e5a: $fe $8a
	rst  $38                                         ; $7e5c: $ff
	add  b                                           ; $7e5d: $80
	ccf                                              ; $7e5e: $3f
	add  b                                           ; $7e5f: $80
	ld   a, a                                        ; $7e60: $7f
	adc  c                                           ; $7e61: $89
	rst  $38                                         ; $7e62: $ff
	add  [hl]                                        ; $7e63: $86
	nop                                              ; $7e64: $00
	ld   bc, $807f                                   ; $7e65: $01 $7f $80
	add  h                                           ; $7e68: $84
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00
	rst  $38                                         ; $7e6b: $ff
	add  l                                           ; $7e6c: $85

jr_070_7e6d:
	nop                                              ; $7e6d: $00
	nop                                              ; $7e6e: $00
	rst  $38                                         ; $7e6f: $ff
	add  l                                           ; $7e70: $85
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	rst  $38                                         ; $7e73: $ff
	add  l                                           ; $7e74: $85
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	rst  $38                                         ; $7e77: $ff
	add  e                                           ; $7e78: $83
	nop                                              ; $7e79: $00
	add  b                                           ; $7e7a: $80
	inc  bc                                          ; $7e7b: $03
	nop                                              ; $7e7c: $00
	rst  $38                                         ; $7e7d: $ff
	add  l                                           ; $7e7e: $85
	nop                                              ; $7e7f: $00
	ld   bc, $00f0                                   ; $7e80: $01 $f0 $00
	add  b                                           ; $7e83: $80
	db   $10                                         ; $7e84: $10
	add  b                                           ; $7e85: $80
	ld   [hl], b                                     ; $7e86: $70
	add  b                                           ; $7e87: $80
	add  b                                           ; $7e88: $80
	ld   bc, $0708                                   ; $7e89: $01 $08 $07
	add  b                                           ; $7e8c: $80
	ld   e, $80                                      ; $7e8d: $1e $80
	ldh  a, [$80]                                    ; $7e8f: $f0 $80
	adc  b                                           ; $7e91: $88
	add  b                                           ; $7e92: $80
	jr   c, @-$7e                                    ; $7e93: $38 $80

	add  sp, -$80                                    ; $7e95: $e8 $80
	adc  b                                           ; $7e97: $88
	add  b                                           ; $7e98: $80
	xor  b                                           ; $7e99: $a8
	add  b                                           ; $7e9a: $80
	add  c                                           ; $7e9b: $81
	nop                                              ; $7e9c: $00
	dec  b                                           ; $7e9d: $05
	add  b                                           ; $7e9e: $80
	dec  e                                           ; $7e9f: $1d
	add  b                                           ; $7ea0: $80
	ld   a, l                                        ; $7ea1: $7d
	add  b                                           ; $7ea2: $80
	cp   l                                           ; $7ea3: $bd
	add  b                                           ; $7ea4: $80
	ld   a, l                                        ; $7ea5: $7d
	add  b                                           ; $7ea6: $80
	cp   l                                           ; $7ea7: $bd
	inc  b                                           ; $7ea8: $04
	ld   a, l                                        ; $7ea9: $7d
	ld   a, h                                        ; $7eaa: $7c
	cp   h                                           ; $7eab: $bc
	or   c                                           ; $7eac: $b1
	add  hl, bc                                      ; $7ead: $09
	add  h                                           ; $7eae: $84
	ld   c, c                                        ; $7eaf: $49
	add  b                                           ; $7eb0: $80
	ld   c, e                                        ; $7eb1: $4b
	add  b                                           ; $7eb2: $80

jr_070_7eb3:
	ld   a, [hl]                                     ; $7eb3: $7e
	add  b                                           ; $7eb4: $80
	pop  hl                                          ; $7eb5: $e1
	add  b                                           ; $7eb6: $80
	rra                                              ; $7eb7: $1f
	nop                                              ; $7eb8: $00
	cpl                                              ; $7eb9: $2f
	add  l                                           ; $7eba: $85
	jr   nz, @-$7e                                   ; $7ebb: $20 $80

	ldh  [$80], a                                    ; $7ebd: $e0 $80
	nop                                              ; $7ebf: $00
	add  d                                           ; $7ec0: $82
	ldh  [rP1], a                                    ; $7ec1: $e0 $00
	sbc  a                                           ; $7ec3: $9f
	add  l                                           ; $7ec4: $85
	or   b                                           ; $7ec5: $b0
	ld   bc, $80a0                                   ; $7ec6: $01 $a0 $80
	add  b                                           ; $7ec9: $80
	jr   nc, @-$7e                                   ; $7eca: $30 $80

	add  b                                           ; $7ecc: $80
	add  b                                           ; $7ecd: $80
	sub  b                                           ; $7ece: $90
	nop                                              ; $7ecf: $00
	dec  b                                           ; $7ed0: $05
	add  b                                           ; $7ed1: $80
	ld   a, l                                        ; $7ed2: $7d
	add  b                                           ; $7ed3: $80
	cp   l                                           ; $7ed4: $bd
	add  b                                           ; $7ed5: $80
	ld   a, l                                        ; $7ed6: $7d
	add  b                                           ; $7ed7: $80
	cp   l                                           ; $7ed8: $bd
	add  b                                           ; $7ed9: $80
	ld   a, l                                        ; $7eda: $7d
	add  b                                           ; $7edb: $80
	cp   l                                           ; $7edc: $bd
	add  b                                           ; $7edd: $80
	ld   a, l                                        ; $7ede: $7d
	ld   bc, $b0bd                                   ; $7edf: $01 $bd $b0
	add  e                                           ; $7ee2: $83
	ld   [$ff80], sp                                 ; $7ee3: $08 $80 $ff
	add  [hl]                                        ; $7ee6: $86
	ld   [$2f00], sp                                 ; $7ee7: $08 $00 $2f
	add  e                                           ; $7eea: $83
	jr   nz, jr_070_7e6d                             ; $7eeb: $20 $80

	ldh  [$86], a                                    ; $7eed: $e0 $86
	jr   nz, jr_070_7ef2                             ; $7eef: $20 $01

	add  c                                           ; $7ef1: $81

jr_070_7ef2:
	adc  [hl]                                        ; $7ef2: $8e
	add  b                                           ; $7ef3: $80
	ld   e, $80                                      ; $7ef4: $1e $80
	or   $80                                         ; $7ef6: $f6 $80
	ld   c, $80                                      ; $7ef8: $0e $80
	ld   a, [hl+]                                    ; $7efa: $2a
	add  h                                           ; $7efb: $84
	xor  d                                           ; $7efc: $aa
	add  b                                           ; $7efd: $80
	push de                                          ; $7efe: $d5
	adc  h                                           ; $7eff: $8c
	xor  d                                           ; $7f00: $aa
	add  b                                           ; $7f01: $80
	nop                                              ; $7f02: $00
	add  [hl]                                        ; $7f03: $86
	ld   d, l                                        ; $7f04: $55
	add  h                                           ; $7f05: $84
	dec  d                                           ; $7f06: $15
	ld   bc, $f0ff                                   ; $7f07: $01 $ff $f0
	add  b                                           ; $7f0a: $80
	ld   b, b                                        ; $7f0b: $40
	adc  d                                           ; $7f0c: $8a
	ld   d, b                                        ; $7f0d: $50
	nop                                              ; $7f0e: $00
	rrca                                             ; $7f0f: $0f
	adc  c                                           ; $7f10: $89
	nop                                              ; $7f11: $00
	add  b                                           ; $7f12: $80
	ld   [bc], a                                     ; $7f13: $02
	add  b                                           ; $7f14: $80
	ld   [$0082], sp                                 ; $7f15: $08 $82 $00
	add  b                                           ; $7f18: $80
	ld   bc, $0680                                   ; $7f19: $01 $80 $06
	add  b                                           ; $7f1c: $80
	add  hl, de                                      ; $7f1d: $19
	add  b                                           ; $7f1e: $80

jr_070_7f1f:
	ld   b, a                                        ; $7f1f: $47
	add  b                                           ; $7f20: $80
	ld   a, $80                                      ; $7f21: $3e $80
	pop  af                                          ; $7f23: $f1
	add  b                                           ; $7f24: $80
	ld   c, $80                                      ; $7f25: $0e $80
	ld   sp, $cf80                                   ; $7f27: $31 $80 $cf
	add  b                                           ; $7f2a: $80
	ld   a, $80                                      ; $7f2b: $3e $80
	ld   sp, hl                                      ; $7f2d: $f9
	add  b                                           ; $7f2e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f2f: $cf
	add  b                                           ; $7f30: $80
	jr   c, jr_070_7eb3                              ; $7f31: $38 $80

	pop  bc                                          ; $7f33: $c1
	ld   bc, $707f                                   ; $7f34: $01 $7f $70
	add  b                                           ; $7f37: $80
	ldh  a, [$80]                                    ; $7f38: $f0 $80
	ret  nz                                          ; $7f3a: $c0

	add  b                                           ; $7f3b: $80
	jr   nz, @-$7e                                   ; $7f3c: $20 $80

	ldh  [$84], a                                    ; $7f3e: $e0 $84
	jr   nz, jr_070_7f42                             ; $7f40: $20 $00

jr_070_7f42:
	and  a                                           ; $7f42: $a7
	add  a                                           ; $7f43: $87
	xor  b                                           ; $7f44: $a8
	add  b                                           ; $7f45: $80
	ld   hl, sp-$80                                  ; $7f46: $f8 $80
	ret  nz                                          ; $7f48: $c0

	add  b                                           ; $7f49: $80
	db   $10                                         ; $7f4a: $10
	inc  b                                           ; $7f4b: $04
	dec  b                                           ; $7f4c: $05
	ld   a, l                                        ; $7f4d: $7d
	ld   a, h                                        ; $7f4e: $7c
	cp   h                                           ; $7f4f: $bc
	cp   l                                           ; $7f50: $bd
	add  b                                           ; $7f51: $80
	ld   a, l                                        ; $7f52: $7d
	add  b                                           ; $7f53: $80
	cp   l                                           ; $7f54: $bd
	add  b                                           ; $7f55: $80
	ld   a, l                                        ; $7f56: $7d
	add  b                                           ; $7f57: $80
	cp   l                                           ; $7f58: $bd
	add  b                                           ; $7f59: $80
	ld   a, l                                        ; $7f5a: $7d
	ld   [bc], a                                     ; $7f5b: $02
	cp   l                                           ; $7f5c: $bd
	ld   c, b                                        ; $7f5d: $48
	ldh  a, [$86]                                    ; $7f5e: $f0 $86
	ld   [$0b80], sp                                 ; $7f60: $08 $80 $0b
	add  b                                           ; $7f63: $80
	db   $fc                                         ; $7f64: $fc
	add  b                                           ; $7f65: $80
	ld   [$2f00], sp                                 ; $7f66: $08 $00 $2f
	add  a                                           ; $7f69: $87
	jr   nz, @-$7e                                   ; $7f6a: $20 $80

	ldh  [$82], a                                    ; $7f6c: $e0 $82
	jr   nz, jr_070_7f71                             ; $7f6e: $20 $01

	sbc  a                                           ; $7f70: $9f

jr_070_7f71:
	sub  b                                           ; $7f71: $90
	add  b                                           ; $7f72: $80
	sub  d                                           ; $7f73: $92
	add  d                                           ; $7f74: $82
	sub  b                                           ; $7f75: $90
	add  b                                           ; $7f76: $80
	sub  e                                           ; $7f77: $93
	add  b                                           ; $7f78: $80
	sub  [hl]                                        ; $7f79: $96
	add  b                                           ; $7f7a: $80
	sub  h                                           ; $7f7b: $94
	add  b                                           ; $7f7c: $80
	adc  l                                           ; $7f7d: $8d
	nop                                              ; $7f7e: $00
	dec  b                                           ; $7f7f: $05
	add  b                                           ; $7f80: $80
	ld   a, l                                        ; $7f81: $7d
	add  b                                           ; $7f82: $80
	cp   l                                           ; $7f83: $bd
	ld   bc, $877d                                   ; $7f84: $01 $7d $87
	add  c                                           ; $7f87: $81
	rst  $38                                         ; $7f88: $ff
	add  d                                           ; $7f89: $82
	nop                                              ; $7f8a: $00
	add  b                                           ; $7f8b: $80
	ld   d, l                                        ; $7f8c: $55
	add  b                                           ; $7f8d: $80
	rst  $38                                         ; $7f8e: $ff
	add  d                                           ; $7f8f: $82
	ld   [$8880], sp                                 ; $7f90: $08 $80 $88
	add  b                                           ; $7f93: $80
	ret  z                                           ; $7f94: $c8

	add  d                                           ; $7f95: $82
	ld   [$3f80], sp                                 ; $7f96: $08 $80 $3f
	ld   bc, $e0ef                                   ; $7f99: $01 $ef $e0
	adc  d                                           ; $7f9c: $8a
	jr   nz, jr_070_7f1f                             ; $7f9d: $20 $80

	ldh  [rSB], a                                    ; $7f9f: $e0 $01
	and  l                                           ; $7fa1: $a5
	xor  d                                           ; $7fa2: $aa
	add  b                                           ; $7fa3: $80
	add  d                                           ; $7fa4: $82
	add  b                                           ; $7fa5: $80
	and  b                                           ; $7fa6: $a0
	add  d                                           ; $7fa7: $82
	xor  c                                           ; $7fa8: $a9
	add  b                                           ; $7fa9: $80
	ld   [rRAMG], sp                                 ; $7faa: $08 $00 $00
	add  b                                           ; $7fad: $80
	ldh  a, [rSB]                                    ; $7fae: $f0 $01
	cp   $54                                         ; $7fb0: $fe $54
	add  c                                           ; $7fb2: $81
	xor  d                                           ; $7fb3: $aa
	add  b                                           ; $7fb4: $80
	nop                                              ; $7fb5: $00
	add  h                                           ; $7fb6: $84
	xor  d                                           ; $7fb7: $aa
	add  d                                           ; $7fb8: $82
	nop                                              ; $7fb9: $00
	add  b                                           ; $7fba: $80
	dec  d                                           ; $7fbb: $15
	add  d                                           ; $7fbc: $82
	dec  b                                           ; $7fbd: $05
	add  b                                           ; $7fbe: $80
	ld   [$0f82], sp                                 ; $7fbf: $08 $82 $0f
	add  c                                           ; $7fc2: $81
	nop                                              ; $7fc3: $00
	ld   bc, $5c03                                   ; $7fc4: $01 $03 $5c
	add  l                                           ; $7fc7: $85
	ld   d, b                                        ; $7fc8: $50
	add  b                                           ; $7fc9: $80
	add  b                                           ; $7fca: $80
	add  d                                           ; $7fcb: $82
	ldh  a, [$81]                                    ; $7fcc: $f0 $81
	nop                                              ; $7fce: $00
	adc  l                                           ; $7fcf: $8d
	ldh  a, [rP1]                                    ; $7fd0: $f0 $00
	rst  $38                                         ; $7fd2: $ff
	add  d                                           ; $7fd3: $82
	ccf                                              ; $7fd4: $3f
	adc  c                                           ; $7fd5: $89
	rst  $38                                         ; $7fd6: $ff
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
	push de                                          ; $7fe9: $d5
	nop                                              ; $7fea: $00
	nop                                              ; $7feb: $00
	nop                                              ; $7fec: $00
	nop                                              ; $7fed: $00

Call_070_7fee:
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
