; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07f", ROMX[$4000], BANK[$7f]

	pop  af                                          ; $4000: $f1
	nop                                              ; $4001: $00
	add  d                                           ; $4002: $82
	rrca                                             ; $4003: $0f
	inc  bc                                          ; $4004: $03
	nop                                              ; $4005: $00
	ld   bc, $000e                                   ; $4006: $01 $0e $00
	add  b                                           ; $4009: $80
	ld   bc, $0000                                   ; $400a: $01 $00 $00
	add  e                                           ; $400d: $83
	rrca                                             ; $400e: $0f
	add  b                                           ; $400f: $80
	ldh  a, [rTMA]                                   ; $4010: $f0 $06
	rrca                                             ; $4012: $0f
	nop                                              ; $4013: $00
	ldh  a, [rP1]                                    ; $4014: $f0 $00
	ld   [$070f], sp                                 ; $4016: $08 $0f $07
	add  c                                           ; $4019: $81
	rst  $38                                         ; $401a: $ff
	ld   [bc], a                                     ; $401b: $02
	ld   a, [$faff]                                  ; $401c: $fa $ff $fa
	add  b                                           ; $401f: $80
	rst  $38                                         ; $4020: $ff
	add  b                                           ; $4021: $80
	nop                                              ; $4022: $00
	inc  bc                                          ; $4023: $03
	rrca                                             ; $4024: $0f
	adc  a                                           ; $4025: $8f
	rst  $38                                         ; $4026: $ff
	ld   a, a                                        ; $4027: $7f
	add  e                                           ; $4028: $83
	rst  $38                                         ; $4029: $ff
	ld   b, $20                                      ; $402a: $06 $20
	rst  $38                                         ; $402c: $ff
	rst  JumpTable                                         ; $402d: $df
	nop                                              ; $402e: $00
	ld   a, a                                        ; $402f: $7f
	rst  $38                                         ; $4030: $ff
	ld   a, a                                        ; $4031: $7f
	add  c                                           ; $4032: $81
	rst  $38                                         ; $4033: $ff
	add  b                                           ; $4034: $80
	ldh  a, [$82]                                    ; $4035: $f0 $82
	rst  $38                                         ; $4037: $ff
	inc  b                                           ; $4038: $04
	nop                                              ; $4039: $00
	rst  $38                                         ; $403a: $ff
	pop  af                                          ; $403b: $f1
	ccf                                              ; $403c: $3f
	adc  $81                                         ; $403d: $ce $81
	rst  $38                                         ; $403f: $ff
	inc  bc                                          ; $4040: $03
	sub  b                                           ; $4041: $90
	rst  $38                                         ; $4042: $ff
	ld   l, a                                        ; $4043: $6f
	nop                                              ; $4044: $00
	add  b                                           ; $4045: $80
	rst  $38                                         ; $4046: $ff
	rlca                                             ; $4047: $07
	add  b                                           ; $4048: $80
	rst  $38                                         ; $4049: $ff
	rra                                              ; $404a: $1f
	ldh  [$80], a                                    ; $404b: $e0 $80
	rst  $38                                         ; $404d: $ff
	nop                                              ; $404e: $00
	rst  $38                                         ; $404f: $ff
	add  b                                           ; $4050: $80
	db   $fc                                         ; $4051: $fc
	ld   a, [de]                                     ; $4052: $1a
	nop                                              ; $4053: $00
	rst  $38                                         ; $4054: $ff
	jp   $fc3f                                       ; $4055: $c3 $3f $fc


	rst  $38                                         ; $4058: $ff
	jr   @+$01                                       ; $4059: $18 $ff

	and  $09                                         ; $405b: $e6 $09
	ld   [$2fff], sp                                 ; $405d: $08 $ff $2f
	rst  $38                                         ; $4060: $ff
	inc  l                                           ; $4061: $2c
	inc  bc                                          ; $4062: $03
	jp   $3cff                                       ; $4063: $c3 $ff $3c


	rst  $38                                         ; $4066: $ff
	ld   bc, $01ff                                   ; $4067: $01 $ff $01
	rst  $38                                         ; $406a: $ff
	db   $10                                         ; $406b: $10
	rst  $38                                         ; $406c: $ff
	db   $10                                         ; $406d: $10
	add  c                                           ; $406e: $81
	rst  $38                                         ; $406f: $ff
	add  hl, de                                      ; $4070: $19
	ld   b, $ff                                      ; $4071: $06 $ff
	ldh  [rIE], a                                    ; $4073: $e0 $ff
	ld   d, $ff                                      ; $4075: $16 $ff
	ld   c, $ff                                      ; $4077: $0e $ff
	nop                                              ; $4079: $00
	rst  $38                                         ; $407a: $ff
	ld   d, [hl]                                     ; $407b: $56
	rst  $38                                         ; $407c: $ff
	ld   d, a                                        ; $407d: $57
	rst  $38                                         ; $407e: $ff
	db   $fd                                         ; $407f: $fd
	rst  $38                                         ; $4080: $ff
	inc  c                                           ; $4081: $0c
	cp   $e5                                         ; $4082: $fe $e5
	db   $fd                                         ; $4084: $fd
	ld   d, b                                        ; $4085: $50
	ei                                               ; $4086: $fb
	inc  sp                                          ; $4087: $33
	or   $48                                         ; $4088: $f6 $48
	adc  $80                                         ; $408a: $ce $80
	add  b                                           ; $408c: $80
	add  b                                           ; $408d: $80
	nop                                              ; $408e: $00
	ld   e, $10                                      ; $408f: $1e $10
	rla                                              ; $4091: $17
	cpl                                              ; $4092: $2f
	dec  sp                                          ; $4093: $3b
	rlca                                             ; $4094: $07
	rla                                              ; $4095: $17
	dec  hl                                          ; $4096: $2b
	ccf                                              ; $4097: $3f
	rlca                                             ; $4098: $07
	inc  de                                          ; $4099: $13
	adc  l                                           ; $409a: $8d
	rst  $30                                         ; $409b: $f7
	ld   b, c                                        ; $409c: $41
	add  hl, sp                                      ; $409d: $39
	ld   bc, $1b03                                   ; $409e: $01 $03 $1b
	jp   hl                                          ; $40a1: $e9


	ldh  a, [c]                                      ; $40a2: $f2
	di                                               ; $40a3: $f3
	call nc, $83c7                                   ; $40a4: $d4 $c7 $83
	and  b                                           ; $40a7: $a0
	ret  nz                                          ; $40a8: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40a9: $cf
	rst  $10                                         ; $40aa: $d7
	sbc  a                                           ; $40ab: $9f
	nop                                              ; $40ac: $00
	add  a                                           ; $40ad: $87
	ld   bc, $3e80                                   ; $40ae: $01 $80 $3e
	dec  bc                                          ; $40b1: $0b
	db   $fc                                         ; $40b2: $fc
	nop                                              ; $40b3: $00
	db   $fc                                         ; $40b4: $fc
	inc  c                                           ; $40b5: $0c
	db   $f4                                         ; $40b6: $f4
	inc  b                                           ; $40b7: $04
	db   $fc                                         ; $40b8: $fc
	ld   bc, $dfc0                                   ; $40b9: $01 $c0 $df
	ret  nz                                          ; $40bc: $c0

	nop                                              ; $40bd: $00
	add  b                                           ; $40be: $80
	ret  nz                                          ; $40bf: $c0

	ld   bc, $2200                                   ; $40c0: $01 $00 $22
	add  b                                           ; $40c3: $80
	ld   a, [hl]                                     ; $40c4: $7e
	add  e                                           ; $40c5: $83
	ld   a, h                                        ; $40c6: $7c
	ld   [bc], a                                     ; $40c7: $02
	add  c                                           ; $40c8: $81
	nop                                              ; $40c9: $00
	rst  $30                                         ; $40ca: $f7
	add  b                                           ; $40cb: $80
	ld   bc, $0081                                   ; $40cc: $01 $81 $00
	nop                                              ; $40cf: $00
	ld   [$0084], sp                                 ; $40d0: $08 $84 $00
	ld   [bc], a                                     ; $40d3: $02
	rlca                                             ; $40d4: $07
	ld   hl, sp+$00                                  ; $40d5: $f8 $00
	add  c                                           ; $40d7: $81
	rst  $38                                         ; $40d8: $ff
	add  b                                           ; $40d9: $80
	ccf                                              ; $40da: $3f
	add  b                                           ; $40db: $80
	ld   bc, $0309                                   ; $40dc: $01 $09 $03
	nop                                              ; $40df: $00
	rra                                              ; $40e0: $1f
	nop                                              ; $40e1: $00
	db   $fc                                         ; $40e2: $fc
	nop                                              ; $40e3: $00
	ldh  [rIE], a                                    ; $40e4: $e0 $ff
	ld   a, a                                        ; $40e6: $7f
	add  b                                           ; $40e7: $80
	add  e                                           ; $40e8: $83
	rst  $38                                         ; $40e9: $ff
	inc  bc                                          ; $40ea: $03
	adc  a                                           ; $40eb: $8f
	ld   hl, sp+$18                                  ; $40ec: $f8 $18
	sbc  b                                           ; $40ee: $98
	add  d                                           ; $40ef: $82
	jr   @+$04                                       ; $40f0: $18 $02

	rst  $30                                         ; $40f2: $f7
	ldh  a, [rIF]                                    ; $40f3: $f0 $0f
	add  e                                           ; $40f5: $83
	rst  $38                                         ; $40f6: $ff
	nop                                              ; $40f7: $00
	ldh  a, [$83]                                    ; $40f8: $f0 $83
	rrca                                             ; $40fa: $0f
	add  b                                           ; $40fb: $80
	nop                                              ; $40fc: $00
	add  b                                           ; $40fd: $80
	rrca                                             ; $40fe: $0f
	add  b                                           ; $40ff: $80
	nop                                              ; $4100: $00
	add  d                                           ; $4101: $82
	rrca                                             ; $4102: $0f
	add  d                                           ; $4103: $82
	rst  $38                                         ; $4104: $ff
	add  b                                           ; $4105: $80
	ld   hl, sp-$80                                  ; $4106: $f8 $80
	nop                                              ; $4108: $00
	inc  c                                           ; $4109: $0c
	sub  b                                           ; $410a: $90
	rst  $38                                         ; $410b: $ff
	ld   l, a                                        ; $410c: $6f
	nop                                              ; $410d: $00
	ldh  a, [c]                                      ; $410e: $f2
	di                                               ; $410f: $f3
	ldh  [$ef], a                                    ; $4110: $e0 $ef
	pop  af                                          ; $4112: $f1
	rst  $38                                         ; $4113: $ff
	ret  nz                                          ; $4114: $c0

	rst  $38                                         ; $4115: $ff
	ccf                                              ; $4116: $3f
	add  d                                           ; $4117: $82
	nop                                              ; $4118: $00
	rlca                                             ; $4119: $07
	rst  $38                                         ; $411a: $ff
	cp   a                                           ; $411b: $bf
	ld   a, b                                        ; $411c: $78
	rlca                                             ; $411d: $07
	rst  $38                                         ; $411e: $ff
	ccf                                              ; $411f: $3f
	rst  $38                                         ; $4120: $ff
	nop                                              ; $4121: $00
	add  b                                           ; $4122: $80
	ret  nz                                          ; $4123: $c0

	dec  b                                           ; $4124: $05
	rst  $38                                         ; $4125: $ff
	ei                                               ; $4126: $fb
	rlca                                             ; $4127: $07
	db   $10                                         ; $4128: $10

jr_07f_4129:
	rra                                              ; $4129: $1f
	inc  c                                           ; $412a: $0c
	add  b                                           ; $412b: $80
	rst  $38                                         ; $412c: $ff
	nop                                              ; $412d: $00
	nop                                              ; $412e: $00
	add  d                                           ; $412f: $82
	rst  $38                                         ; $4130: $ff
	nop                                              ; $4131: $00
	nop                                              ; $4132: $00
	add  b                                           ; $4133: $80
	ld   bc, $ff15                                   ; $4134: $01 $15 $ff
	ld   a, [$f50f]                                  ; $4137: $fa $0f $f5
	rst  $38                                         ; $413a: $ff
	nop                                              ; $413b: $00
	rst  $38                                         ; $413c: $ff
	or   $09                                         ; $413d: $f6 $09
	ldh  a, [$f3]                                    ; $413f: $f0 $f3
	ret  nz                                          ; $4141: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4142: $cf
	ld   e, b                                        ; $4143: $58
	rst  $38                                         ; $4144: $ff
	add  e                                           ; $4145: $83
	rst  $38                                         ; $4146: $ff
	sub  [hl]                                        ; $4147: $96
	rst  $38                                         ; $4148: $ff
	ld   d, l                                        ; $4149: $55
	rst  $38                                         ; $414a: $ff
	inc  d                                           ; $414b: $14
	add  b                                           ; $414c: $80
	rst  $38                                         ; $414d: $ff
	ld   b, $c0                                      ; $414e: $06 $c0
	dec  a                                           ; $4150: $3d
	rst  $38                                         ; $4151: $ff
	ld   a, [$28ff]                                  ; $4152: $fa $ff $28
	ret  nc                                          ; $4155: $d0

	add  b                                           ; $4156: $80
	xor  $1e                                         ; $4157: $ee $1e
	cp   e                                           ; $4159: $bb
	rst  $38                                         ; $415a: $ff
	ld   d, c                                        ; $415b: $51
	rst  $38                                         ; $415c: $ff
	ld   h, c                                        ; $415d: $61
	rst  $38                                         ; $415e: $ff
	xor  e                                           ; $415f: $ab
	ld   a, a                                        ; $4160: $7f
	ld   e, $fe                                      ; $4161: $1e $fe
	inc  e                                           ; $4163: $1c
	db   $fd                                         ; $4164: $fd
	and  c                                           ; $4165: $a1
	nop                                              ; $4166: $00
	add  b                                           ; $4167: $80
	add  c                                           ; $4168: $81
	ld   d, l                                        ; $4169: $55
	ld   d, a                                        ; $416a: $57
	db   $e3                                         ; $416b: $e3
	rst  $28                                         ; $416c: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $416d: $cf
	rst  JumpTable                                         ; $416e: $df
	jr   nz, jr_07f_41b0                             ; $416f: $20 $3f

	rst  $38                                         ; $4171: $ff
	add  b                                           ; $4172: $80
	ld   a, a                                        ; $4173: $7f
	rst  $38                                         ; $4174: $ff
	nop                                              ; $4175: $00
	rst  $38                                         ; $4176: $ff
	nop                                              ; $4177: $00
	add  l                                           ; $4178: $85
	rst  $38                                         ; $4179: $ff
	inc  bc                                          ; $417a: $03
	inc  bc                                          ; $417b: $03
	db   $fc                                         ; $417c: $fc
	rst  $38                                         ; $417d: $ff
	nop                                              ; $417e: $00
	add  b                                           ; $417f: $80
	ret  nz                                          ; $4180: $c0

	inc  bc                                          ; $4181: $03
	rlca                                             ; $4182: $07
	cp   $04                                         ; $4183: $fe $04
	cp   $80                                         ; $4185: $fe $80
	db   $fc                                         ; $4187: $fc
	rrca                                             ; $4188: $0f
	db   $fd                                         ; $4189: $fd
	ld   sp, hl                                      ; $418a: $f9
	ldh  a, [$f8]                                    ; $418b: $f0 $f8
	ldh  a, [c]                                      ; $418d: $f2
	inc  bc                                          ; $418e: $03
	push hl                                          ; $418f: $e5
	rlca                                             ; $4190: $07

Call_07f_4191:
	inc  bc                                          ; $4191: $03
	daa                                              ; $4192: $27
	add  $01                                         ; $4193: $c6 $01
	inc  bc                                          ; $4195: $03
	ld   a, a                                        ; $4196: $7f
	ld   a, l                                        ; $4197: $7d
	cp   $80                                         ; $4198: $fe $80
	rst  $38                                         ; $419a: $ff
	inc  bc                                          ; $419b: $03
	add  sp, $1f                                     ; $419c: $e8 $1f
	rla                                              ; $419e: $17
	ldh  [$80], a                                    ; $419f: $e0 $80
	cp   $80                                         ; $41a1: $fe $80
	rst  $38                                         ; $41a3: $ff
	nop                                              ; $41a4: $00
	jr   nz, jr_07f_4129                             ; $41a5: $20 $82

	ret  nz                                          ; $41a7: $c0

	add  c                                           ; $41a8: $81
	nop                                              ; $41a9: $00
	add  b                                           ; $41aa: $80
	add  b                                           ; $41ab: $80
	nop                                              ; $41ac: $00
	nop                                              ; $41ad: $00
	add  e                                           ; $41ae: $83
	ret  nz                                          ; $41af: $c0

jr_07f_41b0:
	nop                                              ; $41b0: $00
	add  sp, -$73                                    ; $41b1: $e8 $8d
	nop                                              ; $41b3: $00
	nop                                              ; $41b4: $00
	ld   [$00ad], sp                                 ; $41b5: $08 $ad $00
	nop                                              ; $41b8: $00
	ld   b, b                                        ; $41b9: $40
	add  l                                           ; $41ba: $85
	add  b                                           ; $41bb: $80
	ld   [bc], a                                     ; $41bc: $02
	jr   nz, jr_07f_41de                             ; $41bd: $20 $1f

	rst  JumpTable                                         ; $41bf: $df
	add  b                                           ; $41c0: $80
	ld   a, [de]                                     ; $41c1: $1a
	add  b                                           ; $41c2: $80
	dec  d                                           ; $41c3: $15
	ld   bc, $2808                                   ; $41c4: $01 $08 $28
	adc  e                                           ; $41c7: $8b
	nop                                              ; $41c8: $00
	ld   [bc], a                                     ; $41c9: $02
	inc  bc                                          ; $41ca: $03
	ld   [bc], a                                     ; $41cb: $02
	ld   bc, $0085                                   ; $41cc: $01 $85 $00
	inc  b                                           ; $41cf: $04
	dec  e                                           ; $41d0: $1d
	inc  bc                                          ; $41d1: $03
	ld   h, e                                        ; $41d2: $63
	ld   b, [hl]                                     ; $41d3: $46
	call nc, $1880                                   ; $41d4: $d4 $80 $18
	ld   bc, $df30                                   ; $41d7: $01 $30 $df
	add  l                                           ; $41da: $85
	nop                                              ; $41db: $00
	nop                                              ; $41dc: $00
	ret  nc                                          ; $41dd: $d0

jr_07f_41de:
	add  l                                           ; $41de: $85
	ldh  [rP1], a                                    ; $41df: $e0 $00
	ld   sp, $ff89                                   ; $41e1: $31 $89 $ff
	nop                                              ; $41e4: $00
	ld   bc, $ff80                                   ; $41e5: $01 $80 $ff
	ld   b, $01                                      ; $41e8: $06 $01
	jr   jr_07f_4207                                 ; $41ea: $18 $1b

	inc  sp                                          ; $41ec: $33
	dec  sp                                          ; $41ed: $3b
	dec  de                                          ; $41ee: $1b
	dec  sp                                          ; $41ef: $3b
	add  d                                           ; $41f0: $82
	ld   a, e                                        ; $41f1: $7b
	ld   c, $73                                      ; $41f2: $0e $73
	ld   a, e                                        ; $41f4: $7b
	ld   d, e                                        ; $41f5: $53
	ld   a, e                                        ; $41f6: $7b
	ld   e, e                                        ; $41f7: $5b
	ld   a, e                                        ; $41f8: $7b
	ld   a, b                                        ; $41f9: $78
	ld   a, [hl]                                     ; $41fa: $7e
	ld   a, d                                        ; $41fb: $7a
	ld   a, [hl]                                     ; $41fc: $7e
	halt                                             ; $41fd: $76
	ld   a, [hl]                                     ; $41fe: $7e
	ld   d, d                                        ; $41ff: $52
	ld   a, [hl]                                     ; $4200: $7e
	ld   e, [hl]                                     ; $4201: $5e
	add  l                                           ; $4202: $85
	ld   a, [hl]                                     ; $4203: $7e
	nop                                              ; $4204: $00
	inc  bc                                          ; $4205: $03
	adc  l                                           ; $4206: $8d

jr_07f_4207:
	ldh  [rP1], a                                    ; $4207: $e0 $00
	scf                                              ; $4209: $37
	add  b                                           ; $420a: $80
	nop                                              ; $420b: $00
	add  b                                           ; $420c: $80
	inc  bc                                          ; $420d: $03
	add  b                                           ; $420e: $80
	nop                                              ; $420f: $00
	inc  bc                                          ; $4210: $03
	ei                                               ; $4211: $fb
	inc  bc                                          ; $4212: $03
	nop                                              ; $4213: $00
	db   $fc                                         ; $4214: $fc
	add  e                                           ; $4215: $83
	db   $fd                                         ; $4216: $fd
	dec  b                                           ; $4217: $05
	db   $10                                         ; $4218: $10
	rra                                              ; $4219: $1f
	ld   l, $e0                                      ; $421a: $2e $e0
	rst  JumpTable                                         ; $421c: $df
	rra                                              ; $421d: $1f
	add  b                                           ; $421e: $80
	ldh  [$80], a                                    ; $421f: $e0 $80
	inc  c                                           ; $4221: $0c
	add  b                                           ; $4222: $80
	ld   a, h                                        ; $4223: $7c
	add  b                                           ; $4224: $80
	ld   l, h                                        ; $4225: $6c
	add  b                                           ; $4226: $80
	ld   d, h                                        ; $4227: $54
	add  b                                           ; $4228: $80
	rlca                                             ; $4229: $07
	add  b                                           ; $422a: $80
	ld   hl, sp-$80                                  ; $422b: $f8 $80
	nop                                              ; $422d: $00
	ld   b, $24                                      ; $422e: $06 $24
	inc  a                                           ; $4230: $3c
	ld   a, [hl]                                     ; $4231: $7e
	ld   h, [hl]                                     ; $4232: $66
	ld   e, b                                        ; $4233: $58
	ld   e, d                                        ; $4234: $5a
	ld   a, [de]                                     ; $4235: $1a
	add  c                                           ; $4236: $81
	ld   e, d                                        ; $4237: $5a
	ld   bc, $c08d                                   ; $4238: $01 $8d $c0
	adc  h                                           ; $423b: $8c
	nop                                              ; $423c: $00
	nop                                              ; $423d: $00
	ldh  a, [$8d]                                    ; $423e: $f0 $8d
	nop                                              ; $4240: $00
	ld   bc, $7c83                                   ; $4241: $01 $83 $7c
	add  h                                           ; $4244: $84
	ld   a, l                                        ; $4245: $7d
	add  b                                           ; $4246: $80
	dec  a                                           ; $4247: $3d
	add  b                                           ; $4248: $80
	ld   b, c                                        ; $4249: $41
	dec  b                                           ; $424a: $05
	inc  a                                           ; $424b: $3c
	ld   a, h                                        ; $424c: $7c
	ld   b, e                                        ; $424d: $43
	ld   a, a                                        ; $424e: $7f
	ld   a, h                                        ; $424f: $7c
	ld   b, d                                        ; $4250: $42
	adc  b                                           ; $4251: $88
	jp   nz, Jump_07f_4280                           ; $4252: $c2 $80 $42

	inc  bc                                          ; $4255: $03
	add  d                                           ; $4256: $82
	jp   nz, $000d                                   ; $4257: $c2 $0d $00

	adc  h                                           ; $425a: $8c
	ret  nz                                          ; $425b: $c0

	inc  bc                                          ; $425c: $03
	ret  nc                                          ; $425d: $d0

	nop                                              ; $425e: $00
	jr   jr_07f_4261                                 ; $425f: $18 $00

jr_07f_4261:
	add  d                                           ; $4261: $82
	db   $10                                         ; $4262: $10
	db   $10                                         ; $4263: $10
	ld   d, c                                        ; $4264: $51
	db   $10                                         ; $4265: $10
	sub  $54                                         ; $4266: $d6 $54
	call nc, Call_07f_4191                           ; $4268: $d4 $91 $41
	nop                                              ; $426b: $00
	ld   hl, sp+$00                                  ; $426c: $f8 $00
	jr   jr_07f_4281                                 ; $426e: $18 $11

	inc  [hl]                                        ; $4270: $34
	rlca                                             ; $4271: $07
	rst  ToBoot                                         ; $4272: $c7
	adc  a                                           ; $4273: $8f
	xor  e                                           ; $4274: $ab
	add  b                                           ; $4275: $80
	inc  sp                                          ; $4276: $33
	ld   bc, $4363                                   ; $4277: $01 $63 $43
	add  b                                           ; $427a: $80
	add  e                                           ; $427b: $83
	ld   bc, $8203                                   ; $427c: $01 $03 $82
	add  b                                           ; $427f: $80

Jump_07f_4280:
	ret  nz                                          ; $4280: $c0

jr_07f_4281:
	nop                                              ; $4281: $00
	add  b                                           ; $4282: $80
	add  b                                           ; $4283: $80
	nop                                              ; $4284: $00
	add  b                                           ; $4285: $80
	inc  e                                           ; $4286: $1c
	inc  b                                           ; $4287: $04
	ld   [hl], $3e                                   ; $4288: $36 $3e
	ld   a, [hl-]                                    ; $428a: $3a
	ld   a, $5e                                      ; $428b: $3e $5e
	add  c                                           ; $428d: $81
	ld   a, [hl]                                     ; $428e: $7e
	nop                                              ; $428f: $00
	inc  bc                                          ; $4290: $03
	adc  l                                           ; $4291: $8d
	ldh  [rP1], a                                    ; $4292: $e0 $00
	scf                                              ; $4294: $37
	add  b                                           ; $4295: $80
	inc  bc                                          ; $4296: $03
	inc  bc                                          ; $4297: $03
	ld   bc, $0103                                   ; $4298: $01 $03 $01
	inc  bc                                          ; $429b: $03
	add  b                                           ; $429c: $80
	ld   bc, $0380                                   ; $429d: $01 $80 $03
	nop                                              ; $42a0: $00
	ld   bc, $0380                                   ; $42a1: $01 $80 $03
	ld   [bc], a                                     ; $42a4: $02
	nop                                              ; $42a5: $00
	ld   bc, $85a9                                   ; $42a6: $01 $a9 $85
	ld   a, e                                        ; $42a9: $7b
	inc  bc                                          ; $42aa: $03
	ld   d, e                                        ; $42ab: $53
	ld   a, e                                        ; $42ac: $7b
	ld   h, c                                        ; $42ad: $61
	ld   h, e                                        ; $42ae: $63
	add  b                                           ; $42af: $80
	inc  bc                                          ; $42b0: $03
	add  b                                           ; $42b1: $80
	nop                                              ; $42b2: $00
	dec  b                                           ; $42b3: $05
	ld   d, d                                        ; $42b4: $52
	ld   a, [hl]                                     ; $42b5: $7e
	ld   a, d                                        ; $42b6: $7a
	ld   a, [hl]                                     ; $42b7: $7e
	ld   d, h                                        ; $42b8: $54
	ld   a, h                                        ; $42b9: $7c
	add  b                                           ; $42ba: $80
	ld   h, b                                        ; $42bb: $60
	add  d                                           ; $42bc: $82
	nop                                              ; $42bd: $00
	inc  b                                           ; $42be: $04
	inc  b                                           ; $42bf: $04
	rlca                                             ; $42c0: $07
	adc  e                                           ; $42c1: $8b
	ld   hl, sp+$5f                                  ; $42c2: $f8 $5f
	add  c                                           ; $42c4: $81
	ldh  [$03], a                                    ; $42c5: $e0 $03
	and  b                                           ; $42c7: $a0

jr_07f_42c8:
	ldh  [$60], a                                    ; $42c8: $e0 $60
	ldh  [$80], a                                    ; $42ca: $e0 $80
	add  b                                           ; $42cc: $80
	ld   b, $20                                      ; $42cd: $06 $20
	jr   nc, jr_07f_4321                             ; $42cf: $30 $50

	ret  nz                                          ; $42d1: $c0

	or   b                                           ; $42d2: $b0
	jr   nc, jr_07f_42c8                             ; $42d3: $30 $f3

	adc  c                                           ; $42d5: $89
	db   $fd                                         ; $42d6: $fd
	inc  b                                           ; $42d7: $04
	ld   bc, $ff00                                   ; $42d8: $01 $00 $ff
	nop                                              ; $42db: $00
	or   e                                           ; $42dc: $b3
	adc  e                                           ; $42dd: $8b
	ld   e, h                                        ; $42de: $5c
	inc  bc                                          ; $42df: $03
	ld   d, l                                        ; $42e0: $55
	ld   b, l                                        ; $42e1: $45
	jr   jr_07f_433e                                 ; $42e2: $18 $5a

	adc  d                                           ; $42e4: $8a
	ld   b, d                                        ; $42e5: $42
	add  b                                           ; $42e6: $80
	jp   nz, Jump_07f_4d00                           ; $42e7: $c2 $00 $4d

	adc  e                                           ; $42ea: $8b
	nop                                              ; $42eb: $00
	add  b                                           ; $42ec: $80
	ret  nz                                          ; $42ed: $c0

	nop                                              ; $42ee: $00
	ldh  a, [$86]                                    ; $42ef: $f0 $86
	nop                                              ; $42f1: $00
	nop                                              ; $42f2: $00
	rst  $38                                         ; $42f3: $ff
	add  b                                           ; $42f4: $80
	nop                                              ; $42f5: $00
	dec  bc                                          ; $42f6: $0b
	rrca                                             ; $42f7: $0f
	nop                                              ; $42f8: $00
	ldh  a, [rP1]                                    ; $42f9: $f0 $00
	rst  $38                                         ; $42fb: $ff
	ld   a, a                                        ; $42fc: $7f
	ld   e, a                                        ; $42fd: $5f
	ccf                                              ; $42fe: $3f
	dec  de                                          ; $42ff: $1b
	rlca                                             ; $4300: $07
	ld   h, e                                        ; $4301: $63
	ld   h, b                                        ; $4302: $60
	add  b                                           ; $4303: $80
	ld   a, h                                        ; $4304: $7c
	add  b                                           ; $4305: $80
	inc  bc                                          ; $4306: $03
	nop                                              ; $4307: $00
	ei                                               ; $4308: $fb
	add  c                                           ; $4309: $81
	inc  bc                                          ; $430a: $03
	dec  c                                           ; $430b: $0d
	add  $fe                                         ; $430c: $c6 $fe
	jp   $fcff                                       ; $430e: $c3 $ff $fc


	rst  $38                                         ; $4311: $ff
	ld   a, a                                        ; $4312: $7f
	rst  $38                                         ; $4313: $ff

jr_07f_4314:
	ld   l, a                                        ; $4314: $6f
	rra                                              ; $4315: $1f
	adc  l                                           ; $4316: $8d
	add  e                                           ; $4317: $83
	pop  af                                          ; $4318: $f1
	ldh  a, [$80]                                    ; $4319: $f0 $80
	cp   $01                                         ; $431b: $fe $01
	rrca                                             ; $431d: $0f
	nop                                              ; $431e: $00
	add  b                                           ; $431f: $80
	ret  nz                                          ; $4320: $c0

jr_07f_4321:
	ld   [bc], a                                     ; $4321: $02
	jr   nc, jr_07f_4314                             ; $4322: $30 $f0

	ret  nz                                          ; $4324: $c0

	add  e                                           ; $4325: $83
	ldh  a, [rDIV]                                   ; $4326: $f0 $04
	or   b                                           ; $4328: $b0
	ld   [hl], b                                     ; $4329: $70
	jr   nc, jr_07f_432c                             ; $432a: $30 $00

jr_07f_432c:
	ldh  a, [$85]                                    ; $432c: $f0 $85
	nop                                              ; $432e: $00
	ld   [bc], a                                     ; $432f: $02
	rst  $38                                         ; $4330: $ff
	nop                                              ; $4331: $00
	db   $fd                                         ; $4332: $fd
	add  e                                           ; $4333: $83
	db   $fc                                         ; $4334: $fc
	nop                                              ; $4335: $00
	ld   a, [$0385]                                  ; $4336: $fa $85 $03
	add  hl, de                                      ; $4339: $19
	ld   hl, sp+$03                                  ; $433a: $f8 $03
	dec  bc                                          ; $433c: $0b
	rst  $38                                         ; $433d: $ff

jr_07f_433e:
	ld   c, c                                        ; $433e: $49
	ld   a, a                                        ; $433f: $7f
	ld   b, c                                        ; $4340: $41
	ld   a, a                                        ; $4341: $7f
	add  b                                           ; $4342: $80
	rst  $38                                         ; $4343: $ff
	ld   a, a                                        ; $4344: $7f
	rst  $38                                         ; $4345: $ff
	pop  de                                          ; $4346: $d1
	rst  $38                                         ; $4347: $ff
	pop  de                                          ; $4348: $d1
	rst  $38                                         ; $4349: $ff
	inc  bc                                          ; $434a: $03
	rst  $38                                         ; $434b: $ff
	add  sp, -$01                                    ; $434c: $e8 $ff
	inc  d                                           ; $434e: $14
	rst  $38                                         ; $434f: $ff
	ld   b, b                                        ; $4350: $40
	rst  $38                                         ; $4351: $ff
	or   b                                           ; $4352: $b0
	nop                                              ; $4353: $00
	add  b                                           ; $4354: $80
	ldh  [rSC], a                                    ; $4355: $e0 $02
	or   b                                           ; $4357: $b0
	ldh  a, [$b0]                                    ; $4358: $f0 $b0
	add  c                                           ; $435a: $81
	ldh  a, [rSC]                                    ; $435b: $f0 $02
	ld   [hl], b                                     ; $435d: $70
	ldh  a, [rSVBK]                                  ; $435e: $f0 $70
	add  c                                           ; $4360: $81
	ldh  a, [rP1]                                    ; $4361: $f0 $00
	ldh  a, [c]                                      ; $4363: $f2
	add  c                                           ; $4364: $81
	nop                                              ; $4365: $00
	add  b                                           ; $4366: $80
	ld   bc, $0082                                   ; $4367: $01 $82 $00
	add  b                                           ; $436a: $80
	ld   bc, $0082                                   ; $436b: $01 $82 $00
	dec  bc                                          ; $436e: $0b
	dec  e                                           ; $436f: $1d
	rra                                              ; $4370: $1f
	nop                                              ; $4371: $00
	ld   a, a                                        ; $4372: $7f
	ld   a, e                                        ; $4373: $7b
	rlca                                             ; $4374: $07
	sub  b                                           ; $4375: $90
	sub  e                                           ; $4376: $93
	ld   hl, sp-$01                                  ; $4377: $f8 $ff
	ld   hl, sp-$01                                  ; $4379: $f8 $ff
	add  d                                           ; $437b: $82
	nop                                              ; $437c: $00
	ld   [bc], a                                     ; $437d: $02
	ret  nz                                          ; $437e: $c0

	rst  $38                                         ; $437f: $ff

Jump_07f_4380:
	ccf                                              ; $4380: $3f
	add  c                                           ; $4381: $81
	rst  $38                                         ; $4382: $ff
	ld   a, [bc]                                     ; $4383: $0a
	dec  bc                                          ; $4384: $0b
	rst  $38                                         ; $4385: $ff
	dec  bc                                          ; $4386: $0b
	rst  $38                                         ; $4387: $ff
	ld   bc, $3eff                                   ; $4388: $01 $ff $3e
	ccf                                              ; $438b: $3f
	inc  c                                           ; $438c: $0c
	rrca                                             ; $438d: $0f
	inc  bc                                          ; $438e: $03
	adc  c                                           ; $438f: $89
	ldh  a, [rSC]                                    ; $4390: $f0 $02
	ld   d, b                                        ; $4392: $50
	ldh  a, [$50]                                    ; $4393: $f0 $50
	add  b                                           ; $4395: $80
	ldh  a, [rIE]                                    ; $4396: $f0 $ff
	nop                                              ; $4398: $00
	rst  $38                                         ; $4399: $ff
	nop                                              ; $439a: $00
	rst  $38                                         ; $439b: $ff
	nop                                              ; $439c: $00
	rst  $38                                         ; $439d: $ff
	nop                                              ; $439e: $00
	rst  $38                                         ; $439f: $ff
	nop                                              ; $43a0: $00
	rst  $38                                         ; $43a1: $ff
	nop                                              ; $43a2: $00
	rst  $30                                         ; $43a3: $f7
	nop                                              ; $43a4: $00
	ld   c, c                                        ; $43a5: $49
	ld   bc, $0f00                                   ; $43a6: $01 $00 $0f
	add  l                                           ; $43a9: $85
	nop                                              ; $43aa: $00
	nop                                              ; $43ab: $00
	ld   bc, $0384                                   ; $43ac: $01 $84 $03
	ld   bc, $fa0b                                   ; $43af: $01 $0b $fa
	add  l                                           ; $43b2: $85
	nop                                              ; $43b3: $00
	add  l                                           ; $43b4: $85
	ret  nz                                          ; $43b5: $c0

	ld   bc, $1fdf                                   ; $43b6: $01 $df $1f
	adc  h                                           ; $43b9: $8c
	nop                                              ; $43ba: $00
	add  b                                           ; $43bb: $80
	rst  $38                                         ; $43bc: $ff
	add  l                                           ; $43bd: $85
	nop                                              ; $43be: $00
	nop                                              ; $43bf: $00
	inc  bc                                          ; $43c0: $03
	add  h                                           ; $43c1: $84
	rlca                                             ; $43c2: $07
	ld   bc, $f4f7                                   ; $43c3: $01 $f7 $f4
	add  l                                           ; $43c6: $85
	nop                                              ; $43c7: $00
	add  l                                           ; $43c8: $85
	add  b                                           ; $43c9: $80
	ld   bc, $c0bf                                   ; $43ca: $01 $bf $c0
	add  l                                           ; $43cd: $85
	nop                                              ; $43ce: $00
	add  [hl]                                        ; $43cf: $86
	rrca                                             ; $43d0: $0f
	nop                                              ; $43d1: $00
	rst  $38                                         ; $43d2: $ff
	add  l                                           ; $43d3: $85
	nop                                              ; $43d4: $00
	nop                                              ; $43d5: $00
	rlca                                             ; $43d6: $07
	add  h                                           ; $43d7: $84
	rrca                                             ; $43d8: $0f
	ld   bc, $e8ef                                   ; $43d9: $01 $ef $e8
	adc  h                                           ; $43dc: $8c
	nop                                              ; $43dd: $00
	ld   bc, $8f7f                                   ; $43de: $01 $7f $8f
	add  c                                           ; $43e1: $81
	rrca                                             ; $43e2: $0f
	inc  c                                           ; $43e3: $0c
	dec  bc                                          ; $43e4: $0b
	rrca                                             ; $43e5: $0f
	ld   a, [bc]                                     ; $43e6: $0a
	rrca                                             ; $43e7: $0f
	ld   a, [bc]                                     ; $43e8: $0a
	rrca                                             ; $43e9: $0f
	ld   bc, $000f                                   ; $43ea: $01 $0f $00
	rrca                                             ; $43ed: $0f
	nop                                              ; $43ee: $00
	rrca                                             ; $43ef: $0f
	push af                                          ; $43f0: $f5
	add  l                                           ; $43f1: $85
	nop                                              ; $43f2: $00
	nop                                              ; $43f3: $00
	ld   c, $84                                      ; $43f4: $0e $84
	ld   e, $09                                      ; $43f6: $1e $09
	sbc  $25                                         ; $43f8: $de $25
	rrca                                             ; $43fa: $0f
	nop                                              ; $43fb: $00
	rrca                                             ; $43fc: $0f
	ld   [$050f], sp                                 ; $43fd: $08 $0f $05
	rrca                                             ; $4400: $0f
	rlca                                             ; $4401: $07
	add  l                                           ; $4402: $85
	rrca                                             ; $4403: $0f
	add  b                                           ; $4404: $80
	dec  c                                           ; $4405: $0d
	add  b                                           ; $4406: $80
	rlca                                             ; $4407: $07
	add  b                                           ; $4408: $80
	ld   a, [bc]                                     ; $4409: $0a
	add  b                                           ; $440a: $80
	dec  b                                           ; $440b: $05
	add  b                                           ; $440c: $80
	ld   a, [bc]                                     ; $440d: $0a
	add  b                                           ; $440e: $80
	ld   bc, $0082                                   ; $440f: $01 $82 $00
	nop                                              ; $4412: $00
	ldh  a, [$85]                                    ; $4413: $f0 $85
	nop                                              ; $4415: $00
	nop                                              ; $4416: $00
	inc  e                                           ; $4417: $1c
	add  h                                           ; $4418: $84
	inc  a                                           ; $4419: $3c

jr_07f_441a:
	ld   bc, $5ebd                                   ; $441a: $01 $bd $5e
	add  l                                           ; $441d: $85
	nop                                              ; $441e: $00
	add  [hl]                                        ; $441f: $86
	rst  $38                                         ; $4420: $ff
	nop                                              ; $4421: $00
	ldh  a, [$8c]                                    ; $4422: $f0 $8c
	nop                                              ; $4424: $00
	nop                                              ; $4425: $00
	ldh  a, [$82]                                    ; $4426: $f0 $82
	rst  $38                                         ; $4428: $ff
	dec  c                                           ; $4429: $0d
	cp   e                                           ; $442a: $bb
	rst  $38                                         ; $442b: $ff
	xor  d                                           ; $442c: $aa
	rst  $38                                         ; $442d: $ff
	xor  d                                           ; $442e: $aa
	rst  $38                                         ; $442f: $ff
	ld   de, $00ff                                   ; $4430: $11 $ff $00
	rst  $38                                         ; $4433: $ff
	nop                                              ; $4434: $00
	rst  $38                                         ; $4435: $ff
	xor  h                                           ; $4436: $ac
	dec  bc                                          ; $4437: $0b
	adc  h                                           ; $4438: $8c
	inc  bc                                          ; $4439: $03
	ld   bc, $df2d                                   ; $443a: $01 $2d $df
	add  b                                           ; $443d: $80
	ret  nz                                          ; $443e: $c0

	add  b                                           ; $443f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4440: $cf
	ld   [bc], a                                     ; $4441: $02
	adc  $cf                                         ; $4442: $ce $cf
	call $ce85                                       ; $4444: $cd $85 $ce
	ld   bc, $fffd                                   ; $4447: $01 $fd $ff
	add  b                                           ; $444a: $80
	nop                                              ; $444b: $00
	add  b                                           ; $444c: $80
	rst  $38                                         ; $444d: $ff
	nop                                              ; $444e: $00
	nop                                              ; $444f: $00
	add  b                                           ; $4450: $80
	rst  $38                                         ; $4451: $ff
	nop                                              ; $4452: $00
	nop                                              ; $4453: $00
	add  h                                           ; $4454: $84
	rst  $38                                         ; $4455: $ff
	ld   bc, $f7f3                                   ; $4456: $01 $f3 $f7
	add  b                                           ; $4459: $80
	rlca                                             ; $445a: $07
	add  b                                           ; $445b: $80
	rst  $20                                         ; $445c: $e7
	add  b                                           ; $445d: $80
	ld   h, a                                        ; $445e: $67
	nop                                              ; $445f: $00
	daa                                              ; $4460: $27
	add  l                                           ; $4461: $85
	and  a                                           ; $4462: $a7
	ld   bc, $bf3b                                   ; $4463: $01 $3b $bf
	add  b                                           ; $4466: $80
	add  b                                           ; $4467: $80
	add  b                                           ; $4468: $80
	sbc  a                                           ; $4469: $9f
	inc  bc                                          ; $446a: $03
	sbc  h                                           ; $446b: $9c
	sbc  a                                           ; $446c: $9f
	sbc  e                                           ; $446d: $9b
	sbc  h                                           ; $446e: $9c
	add  h                                           ; $446f: $84
	sbc  l                                           ; $4470: $9d
	ld   bc, $fffb                                   ; $4471: $01 $fb $ff
	add  b                                           ; $4474: $80
	nop                                              ; $4475: $00
	add  b                                           ; $4476: $80
	rst  $38                                         ; $4477: $ff
	nop                                              ; $4478: $00
	nop                                              ; $4479: $00
	add  b                                           ; $447a: $80
	cp   $00                                         ; $447b: $fe $00
	ld   bc, $ff84                                   ; $447d: $01 $84 $ff
	ld   bc, $efe6                                   ; $4480: $01 $e6 $ef
	add  b                                           ; $4483: $80
	rrca                                             ; $4484: $0f
	add  d                                           ; $4485: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4486: $cf
	add  [hl]                                        ; $4487: $86
	ld   c, a                                        ; $4488: $4f
	ld   bc, $7f77                                   ; $4489: $01 $77 $7f
	add  b                                           ; $448c: $80
	nop                                              ; $448d: $00
	add  b                                           ; $448e: $80
	ccf                                              ; $448f: $3f
	inc  bc                                          ; $4490: $03
	jr   c, jr_07f_44d2                              ; $4491: $38 $3f

	scf                                              ; $4493: $37
	jr   c, jr_07f_441a                              ; $4494: $38 $84

	dec  sp                                          ; $4496: $3b
	ld   bc, $fff7                                   ; $4497: $01 $f7 $ff
	add  b                                           ; $449a: $80
	nop                                              ; $449b: $00
	add  b                                           ; $449c: $80
	rst  $38                                         ; $449d: $ff
	inc  bc                                          ; $449e: $03
	ld   bc, $fcfd                                   ; $449f: $01 $fd $fc
	ld   [bc], a                                     ; $44a2: $02
	add  h                                           ; $44a3: $84
	cp   $01                                         ; $44a4: $fe $01
	call z, $80de                                    ; $44a6: $cc $de $80
	ld   e, $8a                                      ; $44a9: $1e $8a
	sbc  [hl]                                        ; $44ab: $9e
	ld   bc, $ffef                                   ; $44ac: $01 $ef $ff
	add  b                                           ; $44af: $80
	nop                                              ; $44b0: $00
	add  b                                           ; $44b1: $80
	ld   a, a                                        ; $44b2: $7f
	inc  bc                                          ; $44b3: $03
	ld   [hl], b                                     ; $44b4: $70
	ld   a, a                                        ; $44b5: $7f
	ld   l, a                                        ; $44b6: $6f
	ld   [hl], b                                     ; $44b7: $70
	add  h                                           ; $44b8: $84
	ld   [hl], a                                     ; $44b9: $77
	ld   bc, $ffef                                   ; $44ba: $01 $ef $ff
	add  b                                           ; $44bd: $80
	nop                                              ; $44be: $00
	add  b                                           ; $44bf: $80
	rst  $38                                         ; $44c0: $ff
	inc  bc                                          ; $44c1: $03
	inc  bc                                          ; $44c2: $03
	ei                                               ; $44c3: $fb
	ld   sp, hl                                      ; $44c4: $f9
	dec  b                                           ; $44c5: $05
	add  h                                           ; $44c6: $84
	db   $fd                                         ; $44c7: $fd
	ld   bc, $bd99                                   ; $44c8: $01 $99 $bd
	adc  h                                           ; $44cb: $8c
	inc  a                                           ; $44cc: $3c
	ld   bc, $ffdf                                   ; $44cd: $01 $df $ff
	add  b                                           ; $44d0: $80
	nop                                              ; $44d1: $00

jr_07f_44d2:
	add  b                                           ; $44d2: $80
	rst  $38                                         ; $44d3: $ff
	inc  bc                                          ; $44d4: $03
	ldh  [rIE], a                                    ; $44d5: $e0 $ff
	rst  JumpTable                                         ; $44d7: $df
	ldh  [$84], a                                    ; $44d8: $e0 $84
	rst  $28                                         ; $44da: $ef
	ld   bc, $f0df                                   ; $44db: $01 $df $f0
	add  b                                           ; $44de: $80
	nop                                              ; $44df: $00
	add  b                                           ; $44e0: $80
	ldh  a, [rP1]                                    ; $44e1: $f0 $00

jr_07f_44e3:
	nop                                              ; $44e3: $00
	add  b                                           ; $44e4: $80
	ldh  a, [rP1]                                    ; $44e5: $f0 $00
	nop                                              ; $44e7: $00
	add  h                                           ; $44e8: $84
	ldh  a, [$08]                                    ; $44e9: $f0 $08
	ld   e, d                                        ; $44eb: $5a
	rst  $38                                         ; $44ec: $ff
	nop                                              ; $44ed: $00
	rst  $38                                         ; $44ee: $ff
	adc  b                                           ; $44ef: $88
	rst  $38                                         ; $44f0: $ff
	ld   d, l                                        ; $44f1: $55
	rst  $38                                         ; $44f2: $ff
	ld   [hl], a                                     ; $44f3: $77
	add  l                                           ; $44f4: $85
	rst  $38                                         ; $44f5: $ff
	nop                                              ; $44f6: $00
	pop  af                                          ; $44f7: $f1
	add  a                                           ; $44f8: $87
	inc  bc                                          ; $44f9: $03
	add  h                                           ; $44fa: $84
	dec  bc                                          ; $44fb: $0b
	nop                                              ; $44fc: $00
	ld   a, $82                                      ; $44fd: $3e $82
	adc  $02                                         ; $44ff: $ce $02
	call $cecf                                       ; $4501: $cd $cf $ce
	add  b                                           ; $4504: $80
	rst  ToBoot                                         ; $4505: $c7
	add  b                                           ; $4506: $80
	ret  nc                                          ; $4507: $d0

	add  b                                           ; $4508: $80
	reti                                             ; $4509: $d9


	add  b                                           ; $450a: $80
	call c, $ff82                                    ; $450b: $dc $82 $ff
	nop                                              ; $450e: $00
	nop                                              ; $450f: $00
	add  b                                           ; $4510: $80
	rst  $38                                         ; $4511: $ff
	nop                                              ; $4512: $00
	nop                                              ; $4513: $00
	add  b                                           ; $4514: $80
	rst  $38                                         ; $4515: $ff
	add  b                                           ; $4516: $80
	nop                                              ; $4517: $00
	add  b                                           ; $4518: $80
	rst  $38                                         ; $4519: $ff
	add  b                                           ; $451a: $80
	nop                                              ; $451b: $00
	nop                                              ; $451c: $00
	inc  hl                                          ; $451d: $23
	add  c                                           ; $451e: $81
	and  a                                           ; $451f: $a7
	ld   bc, $67e7                                   ; $4520: $01 $e7 $67
	add  b                                           ; $4523: $80
	rst  $20                                         ; $4524: $e7
	add  b                                           ; $4525: $80
	rst  ToBoot                                         ; $4526: $c7
	add  b                                           ; $4527: $80
	rla                                              ; $4528: $17
	add  b                                           ; $4529: $80
	scf                                              ; $452a: $37
	add  b                                           ; $452b: $80
	ld   [hl], a                                     ; $452c: $77
	add  d                                           ; $452d: $82
	sbc  l                                           ; $452e: $9d
	inc  bc                                          ; $452f: $03
	sbc  h                                           ; $4530: $9c
	sbc  e                                           ; $4531: $9b
	sbc  a                                           ; $4532: $9f
	sbc  h                                           ; $4533: $9c
	add  b                                           ; $4534: $80
	adc  a                                           ; $4535: $8f
	add  b                                           ; $4536: $80
	and  b                                           ; $4537: $a0
	add  b                                           ; $4538: $80
	or   e                                           ; $4539: $b3
	add  b                                           ; $453a: $80
	cp   b                                           ; $453b: $b8
	nop                                              ; $453c: $00
	cp   $81                                         ; $453d: $fe $81
	rst  $38                                         ; $453f: $ff
	inc  bc                                          ; $4540: $03
	ld   bc, $fffe                                   ; $4541: $01 $fe $ff
	ld   bc, $ff80                                   ; $4544: $01 $80 $ff
	add  b                                           ; $4547: $80
	nop                                              ; $4548: $00
	add  b                                           ; $4549: $80
	cp   $80                                         ; $454a: $fe $80
	nop                                              ; $454c: $00
	nop                                              ; $454d: $00
	ld   b, a                                        ; $454e: $47
	add  c                                           ; $454f: $81
	ld   c, a                                        ; $4550: $4f
	add  d                                           ; $4551: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4552: $cf
	add  b                                           ; $4553: $80
	adc  a                                           ; $4554: $8f
	add  b                                           ; $4555: $80
	cpl                                              ; $4556: $2f
	add  b                                           ; $4557: $80
	ld   l, a                                        ; $4558: $6f
	add  b                                           ; $4559: $80
	rst  $28                                         ; $455a: $ef
	add  d                                           ; $455b: $82
	dec  sp                                          ; $455c: $3b
	inc  bc                                          ; $455d: $03
	jr   c, jr_07f_4597                              ; $455e: $38 $37

	ccf                                              ; $4560: $3f
	jr   c, jr_07f_44e3                              ; $4561: $38 $80

	rra                                              ; $4563: $1f
	add  b                                           ; $4564: $80
	ld   b, b                                        ; $4565: $40
	add  b                                           ; $4566: $80
	ld   h, a                                        ; $4567: $67
	add  b                                           ; $4568: $80
	ld   [hl], b                                     ; $4569: $70
	nop                                              ; $456a: $00
	db   $fc                                         ; $456b: $fc
	add  c                                           ; $456c: $81
	cp   $03                                         ; $456d: $fe $03
	inc  bc                                          ; $456f: $03
	db   $fd                                         ; $4570: $fd
	rst  $38                                         ; $4571: $ff
	inc  bc                                          ; $4572: $03
	add  b                                           ; $4573: $80
	rst  $38                                         ; $4574: $ff
	add  b                                           ; $4575: $80
	nop                                              ; $4576: $00
	add  b                                           ; $4577: $80
	db   $fc                                         ; $4578: $fc
	add  b                                           ; $4579: $80
	ld   bc, $8e00                                   ; $457a: $01 $00 $8e
	add  l                                           ; $457d: $85
	sbc  [hl]                                        ; $457e: $9e
	add  b                                           ; $457f: $80
	ld   e, $80                                      ; $4580: $1e $80
	ld   e, [hl]                                     ; $4582: $5e
	add  d                                           ; $4583: $82
	sbc  $82                                         ; $4584: $de $82
	ld   [hl], a                                     ; $4586: $77
	inc  bc                                          ; $4587: $03
	ld   [hl], b                                     ; $4588: $70
	ld   l, a                                        ; $4589: $6f
	ld   a, a                                        ; $458a: $7f
	ld   [hl], b                                     ; $458b: $70
	add  b                                           ; $458c: $80
	ccf                                              ; $458d: $3f
	add  b                                           ; $458e: $80
	add  b                                           ; $458f: $80
	add  b                                           ; $4590: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4591: $cf
	add  b                                           ; $4592: $80
	ldh  [rP1], a                                    ; $4593: $e0 $00
	ld   sp, hl                                      ; $4595: $f9
	add  c                                           ; $4596: $81

jr_07f_4597:
	db   $fd                                         ; $4597: $fd
	inc  bc                                          ; $4598: $03
	rlca                                             ; $4599: $07
	ei                                               ; $459a: $fb
	rst  $38                                         ; $459b: $ff
	rlca                                             ; $459c: $07
	add  b                                           ; $459d: $80
	cp   $80                                         ; $459e: $fe $80
	nop                                              ; $45a0: $00
	add  b                                           ; $45a1: $80
	ld   sp, hl                                      ; $45a2: $f9
	add  b                                           ; $45a3: $80
	inc  bc                                          ; $45a4: $03
	nop                                              ; $45a5: $00
	inc  e                                           ; $45a6: $1c
	add  a                                           ; $45a7: $87
	inc  a                                           ; $45a8: $3c
	add  h                                           ; $45a9: $84
	cp   l                                           ; $45aa: $bd
	add  d                                           ; $45ab: $82
	rst  $28                                         ; $45ac: $ef
	inc  bc                                          ; $45ad: $03
	ldh  [$df], a                                    ; $45ae: $e0 $df
	rst  $38                                         ; $45b0: $ff
	ldh  [$80], a                                    ; $45b1: $e0 $80
	ld   a, a                                        ; $45b3: $7f
	add  b                                           ; $45b4: $80
	nop                                              ; $45b5: $00
	add  b                                           ; $45b6: $80
	sbc  a                                           ; $45b7: $9f
	add  b                                           ; $45b8: $80
	ret  nz                                          ; $45b9: $c0

	nop                                              ; $45ba: $00
	rst  $38                                         ; $45bb: $ff
	add  c                                           ; $45bc: $81
	ldh  a, [rP1]                                    ; $45bd: $f0 $00
	nop                                              ; $45bf: $00
	add  b                                           ; $45c0: $80
	ldh  a, [rP1]                                    ; $45c1: $f0 $00
	nop                                              ; $45c3: $00
	add  b                                           ; $45c4: $80
	ldh  a, [$80]                                    ; $45c5: $f0 $80
	nop                                              ; $45c7: $00
	add  b                                           ; $45c8: $80
	ldh  a, [$80]                                    ; $45c9: $f0 $80
	nop                                              ; $45cb: $00
	ld   bc, $ddd2                                   ; $45cc: $01 $d2 $dd
	add  b                                           ; $45cf: $80
	ld   [hl], a                                     ; $45d0: $77
	add  b                                           ; $45d1: $80
	xor  d                                           ; $45d2: $aa
	add  b                                           ; $45d3: $80
	ld   d, l                                        ; $45d4: $55
	add  b                                           ; $45d5: $80
	xor  d                                           ; $45d6: $aa
	add  b                                           ; $45d7: $80
	ld   de, $0082                                   ; $45d8: $11 $82 $00
	ld   bc, $00f0                                   ; $45db: $01 $f0 $00
	add  d                                           ; $45de: $82
	rrca                                             ; $45df: $0f
	inc  b                                           ; $45e0: $04
	ld   a, [bc]                                     ; $45e1: $0a
	rrca                                             ; $45e2: $0f
	nop                                              ; $45e3: $00
	rrca                                             ; $45e4: $0f
	ld   a, [bc]                                     ; $45e5: $0a
	add  e                                           ; $45e6: $83
	rrca                                             ; $45e7: $0f
	ld   bc, $00ff                                   ; $45e8: $01 $ff $00
	add  d                                           ; $45eb: $82
	rst  $38                                         ; $45ec: $ff
	inc  b                                           ; $45ed: $04
	xor  d                                           ; $45ee: $aa
	rst  $38                                         ; $45ef: $ff
	nop                                              ; $45f0: $00
	rst  $38                                         ; $45f1: $ff
	xor  d                                           ; $45f2: $aa
	adc  l                                           ; $45f3: $8d
	rst  $38                                         ; $45f4: $ff
	rlca                                             ; $45f5: $07
	ld   d, l                                        ; $45f6: $55
	rst  $38                                         ; $45f7: $ff
	nop                                              ; $45f8: $00
	rst  $38                                         ; $45f9: $ff
	nop                                              ; $45fa: $00
	rst  $38                                         ; $45fb: $ff
	ld   d, l                                        ; $45fc: $55
	nop                                              ; $45fd: $00
	add  d                                           ; $45fe: $82
	rst  $38                                         ; $45ff: $ff
	ld   b, $aa                                      ; $4600: $06 $aa

Jump_07f_4602:
	rst  $38                                         ; $4602: $ff
	nop                                              ; $4603: $00
	rst  $38                                         ; $4604: $ff
	and  b                                           ; $4605: $a0
	rst  $38                                         ; $4606: $ff
	push af                                          ; $4607: $f5
	add  d                                           ; $4608: $82
	rst  $38                                         ; $4609: $ff
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	add  d                                           ; $460c: $82
	rst  $38                                         ; $460d: $ff
	ld   b, $bf                                      ; $460e: $06 $bf
	rst  $38                                         ; $4610: $ff
	dec  d                                           ; $4611: $15
	rst  $38                                         ; $4612: $ff
	nop                                              ; $4613: $00
	rst  $38                                         ; $4614: $ff
	ld   d, l                                        ; $4615: $55
	add  d                                           ; $4616: $82
	rst  $38                                         ; $4617: $ff
	nop                                              ; $4618: $00
	nop                                              ; $4619: $00
	add  h                                           ; $461a: $84
	rst  $38                                         ; $461b: $ff
	inc  b                                           ; $461c: $04
	ld   d, l                                        ; $461d: $55
	rst  $38                                         ; $461e: $ff
	nop                                              ; $461f: $00
	rst  $38                                         ; $4620: $ff
	ld   d, l                                        ; $4621: $55
	add  d                                           ; $4622: $82
	rst  $38                                         ; $4623: $ff
	nop                                              ; $4624: $00
	nop                                              ; $4625: $00
	add  h                                           ; $4626: $84
	rst  $38                                         ; $4627: $ff
	inc  b                                           ; $4628: $04
	ld   e, a                                        ; $4629: $5f
	rst  $38                                         ; $462a: $ff
	ld   a, [bc]                                     ; $462b: $0a
	rst  $38                                         ; $462c: $ff
	ld   d, l                                        ; $462d: $55
	add  d                                           ; $462e: $82
	rst  $38                                         ; $462f: $ff
	nop                                              ; $4630: $00
	nop                                              ; $4631: $00
	add  [hl]                                        ; $4632: $86
	rst  $38                                         ; $4633: $ff
	ld   [bc], a                                     ; $4634: $02
	xor  d                                           ; $4635: $aa
	rst  $38                                         ; $4636: $ff
	ld   d, l                                        ; $4637: $55
	add  d                                           ; $4638: $82
	rst  $38                                         ; $4639: $ff
	nop                                              ; $463a: $00
	nop                                              ; $463b: $00
	add  [hl]                                        ; $463c: $86
	rst  $38                                         ; $463d: $ff
	inc  b                                           ; $463e: $04
	xor  d                                           ; $463f: $aa
	rst  $38                                         ; $4640: $ff
	ld   b, b                                        ; $4641: $40
	rst  $38                                         ; $4642: $ff
	ld   [$ff80], a                                  ; $4643: $ea $80 $ff
	nop                                              ; $4646: $00
	nop                                              ; $4647: $00
	add  [hl]                                        ; $4648: $86
	rst  $38                                         ; $4649: $ff
	inc  b                                           ; $464a: $04
	xor  d                                           ; $464b: $aa
	rst  $38                                         ; $464c: $ff
	nop                                              ; $464d: $00
	rst  $38                                         ; $464e: $ff
	xor  d                                           ; $464f: $aa
	add  b                                           ; $4650: $80
	rst  $38                                         ; $4651: $ff
	nop                                              ; $4652: $00
	nop                                              ; $4653: $00
	adc  b                                           ; $4654: $88
	rst  $38                                         ; $4655: $ff
	dec  b                                           ; $4656: $05
	ld   d, l                                        ; $4657: $55
	rst  $38                                         ; $4658: $ff
	add  b                                           ; $4659: $80
	rst  $38                                         ; $465a: $ff
	push de                                          ; $465b: $d5
	nop                                              ; $465c: $00
	adc  b                                           ; $465d: $88
	rst  $38                                         ; $465e: $ff
	dec  b                                           ; $465f: $05
	ld   d, a                                        ; $4660: $57
	rst  $38                                         ; $4661: $ff
	ld   [bc], a                                     ; $4662: $02
	rst  $38                                         ; $4663: $ff
	ld   e, d                                        ; $4664: $5a
	nop                                              ; $4665: $00
	sbc  l                                           ; $4666: $9d
	ldh  a, [$85]                                    ; $4667: $f0 $85
	nop                                              ; $4669: $00
	adc  d                                           ; $466a: $8a
	ldh  a, [$0c]                                    ; $466b: $f0 $0c
	or   b                                           ; $466d: $b0
	ldh  a, [hScriptOpcodeParams]                                    ; $466e: $f0 $a0
	ldh  a, [hScriptOpcodeParams]                                    ; $4670: $f0 $a0
	ldh  a, [rAUD1SWEEP]                             ; $4672: $f0 $10
	ldh  a, [rP1]                                    ; $4674: $f0 $00
	ldh  a, [rP1]                                    ; $4676: $f0 $00
	ldh  a, [$af]                                    ; $4678: $f0 $af
	adc  c                                           ; $467a: $89
	rrca                                             ; $467b: $0f
	inc  b                                           ; $467c: $04
	ld   a, [bc]                                     ; $467d: $0a
	rrca                                             ; $467e: $0f
	nop                                              ; $467f: $00
	rrca                                             ; $4680: $0f
	push af                                          ; $4681: $f5
	adc  c                                           ; $4682: $89
	rst  $38                                         ; $4683: $ff
	inc  b                                           ; $4684: $04
	xor  d                                           ; $4685: $aa
	rst  $38                                         ; $4686: $ff
	nop                                              ; $4687: $00
	rst  $38                                         ; $4688: $ff
	ld   d, l                                        ; $4689: $55
	adc  c                                           ; $468a: $89
	rst  $38                                         ; $468b: $ff
	inc  b                                           ; $468c: $04
	xor  d                                           ; $468d: $aa
	rst  $38                                         ; $468e: $ff
	nop                                              ; $468f: $00
	rst  $38                                         ; $4690: $ff
	ld   d, l                                        ; $4691: $55
	adc  c                                           ; $4692: $89
	rst  $38                                         ; $4693: $ff
	inc  b                                           ; $4694: $04
	xor  d                                           ; $4695: $aa
	rst  $38                                         ; $4696: $ff
	nop                                              ; $4697: $00
	rst  $38                                         ; $4698: $ff
	ld   d, l                                        ; $4699: $55
	add  a                                           ; $469a: $87
	rst  $38                                         ; $469b: $ff
	ld   b, $55                                      ; $469c: $06 $55
	rst  $38                                         ; $469e: $ff
	nop                                              ; $469f: $00
	rst  $38                                         ; $46a0: $ff
	dec  d                                           ; $46a1: $15
	rst  $38                                         ; $46a2: $ff
	ld   b, b                                        ; $46a3: $40
	add  a                                           ; $46a4: $87
	rst  $38                                         ; $46a5: $ff
	ld   b, $55                                      ; $46a6: $06 $55
	rst  $38                                         ; $46a8: $ff
	nop                                              ; $46a9: $00
	rst  $38                                         ; $46aa: $ff
	ld   d, l                                        ; $46ab: $55
	rst  $38                                         ; $46ac: $ff
	nop                                              ; $46ad: $00
	add  l                                           ; $46ae: $85
	rst  $38                                         ; $46af: $ff
	ld   [$fffa], sp                                 ; $46b0: $08 $fa $ff
	ld   d, b                                        ; $46b3: $50
	rst  $38                                         ; $46b4: $ff
	nop                                              ; $46b5: $00
	rst  $38                                         ; $46b6: $ff
	ld   d, l                                        ; $46b7: $55
	rst  $38                                         ; $46b8: $ff
	nop                                              ; $46b9: $00
	add  l                                           ; $46ba: $85
	rst  $38                                         ; $46bb: $ff
	ld   [$ffaa], sp                                 ; $46bc: $08 $aa $ff
	nop                                              ; $46bf: $00
	rst  $38                                         ; $46c0: $ff
	ld   a, [hl+]                                    ; $46c1: $2a

Jump_07f_46c2:
	rst  $38                                         ; $46c2: $ff
	ld   a, a                                        ; $46c3: $7f
	rst  $38                                         ; $46c4: $ff
	nop                                              ; $46c5: $00
	add  e                                           ; $46c6: $83
	rst  $38                                         ; $46c7: $ff
	ld   b, $55                                      ; $46c8: $06 $55
	rst  $38                                         ; $46ca: $ff
	nop                                              ; $46cb: $00
	rst  $38                                         ; $46cc: $ff
	nop                                              ; $46cd: $00
	rst  $38                                         ; $46ce: $ff
	xor  d                                           ; $46cf: $aa
	add  c                                           ; $46d0: $81
	rst  $38                                         ; $46d1: $ff
	nop                                              ; $46d2: $00
	nop                                              ; $46d3: $00
	add  c                                           ; $46d4: $81
	rst  $38                                         ; $46d5: $ff
	ld   b, $fa                                      ; $46d6: $06 $fa
	rst  $38                                         ; $46d8: $ff
	ld   d, b                                        ; $46d9: $50
	rst  $38                                         ; $46da: $ff
	nop                                              ; $46db: $00
	rst  $38                                         ; $46dc: $ff
	ld   d, l                                        ; $46dd: $55
	add  e                                           ; $46de: $83
	rst  $38                                         ; $46df: $ff
	nop                                              ; $46e0: $00

jr_07f_46e1:
	nop                                              ; $46e1: $00
	add  c                                           ; $46e2: $81
	rst  $38                                         ; $46e3: $ff
	ld   b, $aa                                      ; $46e4: $06 $aa
	rst  $38                                         ; $46e6: $ff

jr_07f_46e7:
	nop                                              ; $46e7: $00
	rst  $38                                         ; $46e8: $ff
	nop                                              ; $46e9: $00
	rst  $38                                         ; $46ea: $ff
	ld   d, l                                        ; $46eb: $55
	add  e                                           ; $46ec: $83
	rst  $38                                         ; $46ed: $ff
	ld   a, [bc]                                     ; $46ee: $0a
	dec  b                                           ; $46ef: $05
	rst  $38                                         ; $46f0: $ff
	ldh  a, [rIE]                                    ; $46f1: $f0 $ff
	and  b                                           ; $46f3: $a0
	rst  $38                                         ; $46f4: $ff
	dec  b                                           ; $46f5: $05
	rst  $38                                         ; $46f6: $ff
	cpl                                              ; $46f7: $2f
	rst  $38                                         ; $46f8: $ff
	ld   a, a                                        ; $46f9: $7f
	add  e                                           ; $46fa: $83
	rst  $38                                         ; $46fb: $ff
	ld   [bc], a                                     ; $46fc: $02
	ld   a, a                                        ; $46fd: $7f
	ldh  a, [rSVBK]                                  ; $46fe: $f0 $70
	adc  e                                           ; $4700: $8b
	ldh  a, [$08]                                    ; $4701: $f0 $08
	ld   d, b                                        ; $4703: $50
	ldh  a, [rP1]                                    ; $4704: $f0 $00
	ldh  a, [$80]                                    ; $4706: $f0 $80
	ldh  a, [$50]                                    ; $4708: $f0 $50
	ldh  a, [rSVBK]                                  ; $470a: $f0 $70
	add  l                                           ; $470c: $85
	ldh  a, [$80]                                    ; $470d: $f0 $80
	ret  nc                                          ; $470f: $d0

	add  b                                           ; $4710: $80
	ld   [hl], b                                     ; $4711: $70
	add  b                                           ; $4712: $80
	and  b                                           ; $4713: $a0
	add  b                                           ; $4714: $80
	ld   d, b                                        ; $4715: $50
	add  b                                           ; $4716: $80
	and  b                                           ; $4717: $a0
	add  b                                           ; $4718: $80
	db   $10                                         ; $4719: $10
	add  d                                           ; $471a: $82
	nop                                              ; $471b: $00
	nop                                              ; $471c: $00
	rrca                                             ; $471d: $0f
	add  l                                           ; $471e: $85
	rst  $38                                         ; $471f: $ff
	inc  b                                           ; $4720: $04
	xor  d                                           ; $4721: $aa
	rst  $38                                         ; $4722: $ff
	nop                                              ; $4723: $00
	rst  $38                                         ; $4724: $ff
	xor  d                                           ; $4725: $aa
	add  c                                           ; $4726: $81
	rst  $38                                         ; $4727: $ff
	ld   [bc], a                                     ; $4728: $02
	push af                                          ; $4729: $f5
	rrca                                             ; $472a: $0f
	dec  b                                           ; $472b: $05
	adc  e                                           ; $472c: $8b
	rrca                                             ; $472d: $0f
	ld   [bc], a                                     ; $472e: $02
	and  l                                           ; $472f: $a5
	rst  $38                                         ; $4730: $ff
	ld   d, l                                        ; $4731: $55
	adc  e                                           ; $4732: $8b
	rst  $38                                         ; $4733: $ff
	ld   [bc], a                                     ; $4734: $02
	ld   d, a                                        ; $4735: $57
	rst  $38                                         ; $4736: $ff
	ld   d, a                                        ; $4737: $57
	sbc  h                                           ; $4738: $9c
	rst  $38                                         ; $4739: $ff
	rst  $38                                         ; $473a: $ff
	nop                                              ; $473b: $00
	rst  $38                                         ; $473c: $ff
	nop                                              ; $473d: $00
	rst  $38                                         ; $473e: $ff
	nop                                              ; $473f: $00
	rst  $38                                         ; $4740: $ff
	nop                                              ; $4741: $00
	rst  $38                                         ; $4742: $ff
	nop                                              ; $4743: $00
	cp   b                                           ; $4744: $b8
	nop                                              ; $4745: $00
	daa                                              ; $4746: $27
	ld   bc, $0300                                   ; $4747: $01 $00 $03
	adc  l                                           ; $474a: $8d
	rrca                                             ; $474b: $0f
	nop                                              ; $474c: $00
	add  e                                           ; $474d: $83
	adc  l                                           ; $474e: $8d
	add  b                                           ; $474f: $80
	nop                                              ; $4750: $00
	jp   c, $2a89                                    ; $4751: $da $89 $2a

	add  b                                           ; $4754: $80
	ld   a, [bc]                                     ; $4755: $0a
	add  b                                           ; $4756: $80
	jr   z, jr_07f_46e7                              ; $4757: $28 $8e

	add  b                                           ; $4759: $80
	adc  [hl]                                        ; $475a: $8e
	nop                                              ; $475b: $00
	add  d                                           ; $475c: $82
	ld   e, b                                        ; $475d: $58
	adc  b                                           ; $475e: $88
	jr   jr_07f_46e1                                 ; $475f: $18 $80

	ld   [$ff80], sp                                 ; $4761: $08 $80 $ff
	add  b                                           ; $4764: $80
	rrca                                             ; $4765: $0f
	add  b                                           ; $4766: $80
	nop                                              ; $4767: $00
	add  b                                           ; $4768: $80
	inc  c                                           ; $4769: $0c
	add  b                                           ; $476a: $80
	ld   e, $84                                      ; $476b: $1e $84
	nop                                              ; $476d: $00
	add  d                                           ; $476e: $82
	rst  $38                                         ; $476f: $ff
	add  b                                           ; $4770: $80
	nop                                              ; $4771: $00
	add  b                                           ; $4772: $80
	ld   b, a                                        ; $4773: $47
	add  b                                           ; $4774: $80
	db   $e3                                         ; $4775: $e3
	add  b                                           ; $4776: $80
	ld   h, e                                        ; $4777: $63
	add  b                                           ; $4778: $80
	inc  hl                                          ; $4779: $23
	add  b                                           ; $477a: $80
	inc  bc                                          ; $477b: $03
	add  d                                           ; $477c: $82
	rst  $38                                         ; $477d: $ff
	add  b                                           ; $477e: $80
	db   $10                                         ; $477f: $10
	add  b                                           ; $4780: $80
	jr   nc, @-$78                                   ; $4781: $30 $86

	db   $10                                         ; $4783: $10
	add  d                                           ; $4784: $82
	rst  $38                                         ; $4785: $ff
	add  b                                           ; $4786: $80
	nop                                              ; $4787: $00
	ld   bc, $fbfa                                   ; $4788: $01 $fa $fb
	add  b                                           ; $478b: $80
	ld   a, e                                        ; $478c: $7b
	add  b                                           ; $478d: $80
	dec  sp                                          ; $478e: $3b
	add  b                                           ; $478f: $80
	dec  de                                          ; $4790: $1b
	add  b                                           ; $4791: $80
	dec  bc                                          ; $4792: $0b
	dec  c                                           ; $4793: $0d

jr_07f_4794:
	add  $fb                                         ; $4794: $c6 $fb
	jp   nc, Jump_07f_60ff                           ; $4796: $d2 $ff $60

	ld   a, [hl]                                     ; $4799: $7e
	dec  d                                           ; $479a: $15
	rra                                              ; $479b: $1f
	ld   [$450f], sp                                 ; $479c: $08 $0f $45
	ld   b, [hl]                                     ; $479f: $46
	ld   b, d                                        ; $47a0: $42
	ld   b, e                                        ; $47a1: $43
	add  b                                           ; $47a2: $80
	ld   b, c                                        ; $47a3: $41
	ld   bc, $8848                                   ; $47a4: $01 $48 $88
	add  b                                           ; $47a7: $80
	ld   b, b                                        ; $47a8: $40
	ld   de, $f8a8                                   ; $47a9: $11 $a8 $f8
	ld   c, e                                        ; $47ac: $4b
	db   $eb                                         ; $47ad: $eb
	sbc  l                                           ; $47ae: $9d
	db   $dd                                         ; $47af: $dd
	and  b                                           ; $47b0: $a0
	cp   $89                                         ; $47b1: $fe $89
	ld   a, c                                        ; $47b3: $79
	ld   a, [bc]                                     ; $47b4: $0a
	cp   e                                           ; $47b5: $bb
	ld   a, b                                        ; $47b6: $78
	rra                                              ; $47b7: $1f
	nop                                              ; $47b8: $00
	rrca                                             ; $47b9: $0f
	rlca                                             ; $47ba: $07
	nop                                              ; $47bb: $00
	add  b                                           ; $47bc: $80
	rst  $38                                         ; $47bd: $ff
	add  b                                           ; $47be: $80
	nop                                              ; $47bf: $00
	add  b                                           ; $47c0: $80
	add  c                                           ; $47c1: $81

jr_07f_47c2:
	add  b                                           ; $47c2: $80
	ld   c, [hl]                                     ; $47c3: $4e
	inc  b                                           ; $47c4: $04
	ld   h, b                                        ; $47c5: $60
	ldh  [$7f], a                                    ; $47c6: $e0 $7f
	rst  $38                                         ; $47c8: $ff
	nop                                              ; $47c9: $00
	add  b                                           ; $47ca: $80
	rst  $38                                         ; $47cb: $ff
	nop                                              ; $47cc: $00
	nop                                              ; $47cd: $00
	add  b                                           ; $47ce: $80
	rst  $38                                         ; $47cf: $ff
	add  b                                           ; $47d0: $80
	nop                                              ; $47d1: $00
	add  b                                           ; $47d2: $80
	and  b                                           ; $47d3: $a0
	add  b                                           ; $47d4: $80
	jr   nz, jr_07f_47db                             ; $47d5: $20 $04

	ld   bc, $df21                                   ; $47d7: $01 $21 $df
	rst  $38                                         ; $47da: $ff

jr_07f_47db:
	nop                                              ; $47db: $00
	add  b                                           ; $47dc: $80
	rst  $38                                         ; $47dd: $ff
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	add  b                                           ; $47e0: $80
	rst  $38                                         ; $47e1: $ff
	add  b                                           ; $47e2: $80
	nop                                              ; $47e3: $00
	add  b                                           ; $47e4: $80
	ld   a, [de]                                     ; $47e5: $1a
	add  b                                           ; $47e6: $80
	ld   h, d                                        ; $47e7: $62
	inc  b                                           ; $47e8: $04
	add  b                                           ; $47e9: $80
	add  d                                           ; $47ea: $82
	db   $fd                                         ; $47eb: $fd
	rst  $38                                         ; $47ec: $ff
	nop                                              ; $47ed: $00
	add  b                                           ; $47ee: $80
	rst  $38                                         ; $47ef: $ff
	nop                                              ; $47f0: $00
	nop                                              ; $47f1: $00
	add  b                                           ; $47f2: $80
	rst  $38                                         ; $47f3: $ff
	add  b                                           ; $47f4: $80
	nop                                              ; $47f5: $00
	add  b                                           ; $47f6: $80
	ld   bc, $0680                                   ; $47f7: $01 $80 $06
	add  b                                           ; $47fa: $80
	jr   jr_07f_47fd                                 ; $47fb: $18 $00

Call_07f_47fd:
jr_07f_47fd:
	db   $fc                                         ; $47fd: $fc
	adc  l                                           ; $47fe: $8d
	rrca                                             ; $47ff: $0f
	nop                                              ; $4800: $00
	add  e                                           ; $4801: $83
	adc  e                                           ; $4802: $8b
	add  b                                           ; $4803: $80
	add  b                                           ; $4804: $80
	nop                                              ; $4805: $00
	ld   bc, $2ada                                   ; $4806: $01 $da $2a
	add  b                                           ; $4809: $80
	ld   [hl+], a                                    ; $480a: $22
	add  b                                           ; $480b: $80
	ld   a, [hl+]                                    ; $480c: $2a
	add  b                                           ; $480d: $80
	ld   [bc], a                                     ; $480e: $02
	add  d                                           ; $480f: $82
	jr   nz, jr_07f_4794                             ; $4810: $20 $82

	nop                                              ; $4812: $00
	adc  h                                           ; $4813: $8c
	add  b                                           ; $4814: $80
	sub  b                                           ; $4815: $90
	nop                                              ; $4816: $00
	add  h                                           ; $4817: $84
	ld   [$0088], sp                                 ; $4818: $08 $88 $00
	add  b                                           ; $481b: $80
	inc  bc                                          ; $481c: $03
	add  b                                           ; $481d: $80
	ld   b, $80                                      ; $481e: $06 $80
	dec  b                                           ; $4820: $05
	add  b                                           ; $4821: $80
	ld   b, $80                                      ; $4822: $06 $80
	dec  b                                           ; $4824: $05
	add  b                                           ; $4825: $80
	ld   b, $80                                      ; $4826: $06 $80
	dec  b                                           ; $4828: $05
	add  b                                           ; $4829: $80
	ld   b, $80                                      ; $482a: $06 $80
	add  e                                           ; $482c: $83
	add  b                                           ; $482d: $80
	jp   $c182                                       ; $482e: $c3 $82 $c1


	add  [hl]                                        ; $4831: $86
	ret  nz                                          ; $4832: $c0

	adc  h                                           ; $4833: $8c
	db   $10                                         ; $4834: $10
	add  b                                           ; $4835: $80
	inc  de                                          ; $4836: $13
	nop                                              ; $4837: $00
	ld   [bc], a                                     ; $4838: $02
	adc  c                                           ; $4839: $89
	inc  bc                                          ; $483a: $03
	nop                                              ; $483b: $00
	ld   [bc], a                                     ; $483c: $02
	add  c                                           ; $483d: $81
	inc  bc                                          ; $483e: $03
	add  b                                           ; $483f: $80
	jr   c, jr_07f_47c2                              ; $4840: $38 $80

	ld   a, h                                        ; $4842: $7c
	add  b                                           ; $4843: $80
	ld   a, l                                        ; $4844: $7d
	add  b                                           ; $4845: $80
	ld   bc, $0280                                   ; $4846: $01 $80 $02
	add  b                                           ; $4849: $80
	inc  b                                           ; $484a: $04
	add  b                                           ; $484b: $80
	ld   [$1880], sp                                 ; $484c: $08 $80 $18
	dec  bc                                          ; $484f: $0b
	db   $db                                         ; $4850: $db
	xor  $ca                                         ; $4851: $ee $ca
	or   $94                                         ; $4853: $f6 $94
	sbc  e                                           ; $4855: $9b
	ld   a, [bc]                                     ; $4856: $0a
	rrca                                             ; $4857: $0f
	dec  b                                           ; $4858: $05
	rlca                                             ; $4859: $07
	ld   [bc], a                                     ; $485a: $02
	inc  bc                                          ; $485b: $03
	add  b                                           ; $485c: $80
	ld   bc, $0080                                   ; $485d: $01 $80 $00
	dec  d                                           ; $4860: $15
	sub  b                                           ; $4861: $90
	ld   d, b                                        ; $4862: $50
	rrca                                             ; $4863: $0f
	ld   a, a                                        ; $4864: $7f
	ret  z                                           ; $4865: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4866: $cf
	ld   c, d                                        ; $4867: $4a
	jp   z, Jump_07f_6aea                            ; $4868: $ca $ea $6a

	jp   z, Jump_07f_75ba                            ; $486b: $ca $ba $75

	db   $dd                                         ; $486e: $dd
	xor  h                                           ; $486f: $ac
	ei                                               ; $4870: $fb
	ld   a, $26                                      ; $4871: $3e $26
	rst  JumpTable                                         ; $4873: $df
	rst  $38                                         ; $4874: $ff
	nop                                              ; $4875: $00
	rst  $38                                         ; $4876: $ff
	add  d                                           ; $4877: $82
	xor  b                                           ; $4878: $a8
	add  b                                           ; $4879: $80
	xor  c                                           ; $487a: $a9
	add  b                                           ; $487b: $80
	ld   d, a                                        ; $487c: $57
	rlca                                             ; $487d: $07
	nop                                              ; $487e: $00
	rst  $38                                         ; $487f: $ff
	nop                                              ; $4880: $00
	ld   [bc], a                                     ; $4881: $02
	db   $fd                                         ; $4882: $fd
	rst  $38                                         ; $4883: $ff
	nop                                              ; $4884: $00
	rst  $38                                         ; $4885: $ff
	add  b                                           ; $4886: $80
	ld   [$0080], sp                                 ; $4887: $08 $80 $00
	add  b                                           ; $488a: $80
	db   $10                                         ; $488b: $10
	inc  bc                                          ; $488c: $03
	cp   e                                           ; $488d: $bb
	rst  $38                                         ; $488e: $ff
	ld   b, h                                        ; $488f: $44
	rst  $38                                         ; $4890: $ff
	add  b                                           ; $4891: $80
	ld   h, b                                        ; $4892: $60
	add  b                                           ; $4893: $80
	rst  $38                                         ; $4894: $ff
	ld   bc, $ff00                                   ; $4895: $01 $00 $ff
	add  b                                           ; $4898: $80
	ld   hl, $0180                                   ; $4899: $21 $80 $01
	add  b                                           ; $489c: $80
	ld   e, d                                        ; $489d: $5a
	add  b                                           ; $489e: $80
	rst  $38                                         ; $489f: $ff
	nop                                              ; $48a0: $00
	nop                                              ; $48a1: $00
	add  b                                           ; $48a2: $80
	rst  $38                                         ; $48a3: $ff
	add  l                                           ; $48a4: $85
	nop                                              ; $48a5: $00
	ld   bc, $07f8                                   ; $48a6: $01 $f8 $07
	add  b                                           ; $48a9: $80
	inc  bc                                          ; $48aa: $03
	add  b                                           ; $48ab: $80
	rrca                                             ; $48ac: $0f
	add  b                                           ; $48ad: $80
	rra                                              ; $48ae: $1f
	nop                                              ; $48af: $00
	rst  $38                                         ; $48b0: $ff
	add  l                                           ; $48b1: $85
	nop                                              ; $48b2: $00
	ld   bc, $e01f                                   ; $48b3: $01 $1f $e0
	add  b                                           ; $48b6: $80
	ret  nz                                          ; $48b7: $c0

	add  b                                           ; $48b8: $80
	add  b                                           ; $48b9: $80
	add  b                                           ; $48ba: $80
	nop                                              ; $48bb: $00
	nop                                              ; $48bc: $00
	rst  $38                                         ; $48bd: $ff
	add  l                                           ; $48be: $85

jr_07f_48bf:
	nop                                              ; $48bf: $00
	ld   bc, $01fe                                   ; $48c0: $01 $fe $01
	add  h                                           ; $48c3: $84
	nop                                              ; $48c4: $00
	nop                                              ; $48c5: $00
	rst  $38                                         ; $48c6: $ff
	add  l                                           ; $48c7: $85
	nop                                              ; $48c8: $00
	ld   bc, $8070                                   ; $48c9: $01 $70 $80
	add  h                                           ; $48cc: $84
	nop                                              ; $48cd: $00
	nop                                              ; $48ce: $00
	rrca                                             ; $48cf: $0f
	add  c                                           ; $48d0: $81
	nop                                              ; $48d1: $00
	add  b                                           ; $48d2: $80
	db   $fd                                         ; $48d3: $fd
	add  b                                           ; $48d4: $80
	nop                                              ; $48d5: $00
	add  b                                           ; $48d6: $80
	db   $f4                                         ; $48d7: $f4
	add  d                                           ; $48d8: $82
	nop                                              ; $48d9: $00
	add  b                                           ; $48da: $80
	rst  ToBoot                                         ; $48db: $c7
	add  d                                           ; $48dc: $82
	nop                                              ; $48dd: $00
	add  b                                           ; $48de: $80
	ld   a, [hl]                                     ; $48df: $7e
	add  b                                           ; $48e0: $80
	nop                                              ; $48e1: $00
	add  b                                           ; $48e2: $80
	rst  $38                                         ; $48e3: $ff
	add  d                                           ; $48e4: $82
	nop                                              ; $48e5: $00
	add  b                                           ; $48e6: $80
	adc  a                                           ; $48e7: $8f
	add  b                                           ; $48e8: $80
	nop                                              ; $48e9: $00
	add  b                                           ; $48ea: $80
	db   $10                                         ; $48eb: $10
	add  b                                           ; $48ec: $80
	rst  $38                                         ; $48ed: $ff
	add  b                                           ; $48ee: $80
	nop                                              ; $48ef: $00
	ld   [bc], a                                     ; $48f0: $02
	ret  z                                           ; $48f1: $c8

jr_07f_48f2:
	rst  $38                                         ; $48f2: $ff
	scf                                              ; $48f3: $37
	add  c                                           ; $48f4: $81
	nop                                              ; $48f5: $00
	add  b                                           ; $48f6: $80
	ld   e, $00                                      ; $48f7: $1e $00
	rrca                                             ; $48f9: $0f
	add  c                                           ; $48fa: $81
	nop                                              ; $48fb: $00
	add  b                                           ; $48fc: $80
	ld   [hl], b                                     ; $48fd: $70
	add  b                                           ; $48fe: $80
	nop                                              ; $48ff: $00
	ld   [bc], a                                     ; $4900: $02
	ld   [hl], b                                     ; $4901: $70
	ldh  a, [$80]                                    ; $4902: $f0 $80
	add  c                                           ; $4904: $81
	nop                                              ; $4905: $00
	add  b                                           ; $4906: $80
	db   $10                                         ; $4907: $10
	dec  bc                                          ; $4908: $0b
	ld   de, $2200                                   ; $4909: $11 $00 $22
	jr   nz, jr_07f_48f2                             ; $490c: $20 $e4

	ret  nc                                          ; $490e: $d0

	ld   e, b                                        ; $490f: $58
	ld   h, b                                        ; $4910: $60
	ld   sp, $2220                                   ; $4911: $31 $20 $22
	jr   nz, @-$7e                                   ; $4914: $20 $80

	inc  h                                           ; $4916: $24
	inc  hl                                          ; $4917: $23
	inc  l                                           ; $4918: $2c
	ld   a, [hl+]                                    ; $4919: $2a
	dec  de                                          ; $491a: $1b
	inc  d                                           ; $491b: $14
	ld   [hl], $28                                   ; $491c: $36 $28
	ld   l, h                                        ; $491e: $6c
	nop                                              ; $491f: $00
	adc  b                                           ; $4920: $88
	nop                                              ; $4921: $00
	ld   de, $2301                                   ; $4922: $11 $01 $23
	ld   [bc], a                                     ; $4925: $02
	ld   b, [hl]                                     ; $4926: $46
	dec  b                                           ; $4927: $05
	adc  l                                           ; $4928: $8d
	ld   a, [bc]                                     ; $4929: $0a
	dec  de                                          ; $492a: $1b
	inc  d                                           ; $492b: $14
	ld   [hl], $28                                   ; $492c: $36 $28
	ld   l, h                                        ; $492e: $6c
	ld   d, b                                        ; $492f: $50
	ret  c                                           ; $4930: $d8

	and  b                                           ; $4931: $a0
	or   c                                           ; $4932: $b1
	ld   b, c                                        ; $4933: $41
	ld   h, e                                        ; $4934: $63
	add  d                                           ; $4935: $82
	add  $05                                         ; $4936: $c6 $05
	adc  l                                           ; $4938: $8d
	dec  bc                                          ; $4939: $0b
	dec  de                                          ; $493a: $1b
	db   $10                                         ; $493b: $10
	add  b                                           ; $493c: $80
	jr   nc, jr_07f_48bf                             ; $493d: $30 $80

	ld   [hl], b                                     ; $493f: $70
	add  b                                           ; $4940: $80
	ldh  a, [$80]                                    ; $4941: $f0 $80
	ldh  [$80], a                                    ; $4943: $e0 $80
	ret  nz                                          ; $4945: $c0

	add  b                                           ; $4946: $80
	add  b                                           ; $4947: $80
	add  b                                           ; $4948: $80
	nop                                              ; $4949: $00
	ld   [bc], a                                     ; $494a: $02
	ldh  a, [rIE]                                    ; $494b: $f0 $ff
	nop                                              ; $494d: $00
	add  b                                           ; $494e: $80
	rst  $38                                         ; $494f: $ff
	nop                                              ; $4950: $00
	nop                                              ; $4951: $00
	add  b                                           ; $4952: $80
	rst  $38                                         ; $4953: $ff
	add  b                                           ; $4954: $80
	nop                                              ; $4955: $00
	add  b                                           ; $4956: $80
	and  b                                           ; $4957: $a0
	add  b                                           ; $4958: $80
	jr   nz, jr_07f_4962                             ; $4959: $20 $07

	ld   bc, $d821                                   ; $495b: $01 $21 $d8
	ld   hl, sp+$3e                                  ; $495e: $f8 $3e
	cp   $c0                                         ; $4960: $fe $c0

jr_07f_4962:
	nop                                              ; $4962: $00
	add  b                                           ; $4963: $80
	db   $fd                                         ; $4964: $fd
	add  b                                           ; $4965: $80
	nop                                              ; $4966: $00
	add  b                                           ; $4967: $80
	ld   a, [de]                                     ; $4968: $1a
	add  b                                           ; $4969: $80
	ld   h, d                                        ; $496a: $62
	inc  bc                                          ; $496b: $03
	add  b                                           ; $496c: $80
	add  d                                           ; $496d: $82
	ld   [bc], a                                     ; $496e: $02
	nop                                              ; $496f: $00
	add  b                                           ; $4970: $80
	sbc  $80                                         ; $4971: $de $80
	nop                                              ; $4973: $00

jr_07f_4974:
	add  b                                           ; $4974: $80
	call nc, $0080                                   ; $4975: $d4 $80 $00
	add  b                                           ; $4978: $80
	inc  bc                                          ; $4979: $03
	add  b                                           ; $497a: $80
	inc  c                                           ; $497b: $0c
	add  b                                           ; $497c: $80
	jr   nc, jr_07f_4980                             ; $497d: $30 $01

	rrca                                             ; $497f: $0f

jr_07f_4980:
	nop                                              ; $4980: $00
	add  b                                           ; $4981: $80
	add  b                                           ; $4982: $80
	add  h                                           ; $4983: $84
	nop                                              ; $4984: $00
	add  d                                           ; $4985: $82
	ld   b, b                                        ; $4986: $40
	rrca                                             ; $4987: $0f
	nop                                              ; $4988: $00
	ld   b, b                                        ; $4989: $40
	ld   [hl], l                                     ; $498a: $75
	ld   a, $38                                      ; $498b: $3e $38
	inc  a                                           ; $498d: $3c
	ld   b, b                                        ; $498e: $40
	ret  nz                                          ; $498f: $c0

	ret  z                                           ; $4990: $c8

	ld   a, b                                        ; $4991: $78
	ret  nc                                          ; $4992: $d0

	ldh  [rLYC], a                                   ; $4993: $e0 $45
	push bc                                          ; $4995: $c5
	ld   a, [bc]                                     ; $4996: $0a
	adc  d                                           ; $4997: $8a
	add  b                                           ; $4998: $80
	dec  d                                           ; $4999: $15
	add  [hl]                                        ; $499a: $86
	nop                                              ; $499b: $00
	add  b                                           ; $499c: $80
	ld   b, b                                        ; $499d: $40
	add  b                                           ; $499e: $80
	add  b                                           ; $499f: $80
	add  b                                           ; $49a0: $80
	ret  nz                                          ; $49a1: $c0

	add  b                                           ; $49a2: $80

jr_07f_49a3:
	add  b                                           ; $49a3: $80
	adc  [hl]                                        ; $49a4: $8e
	nop                                              ; $49a5: $00
	nop                                              ; $49a6: $00
	rrca                                             ; $49a7: $0f
	adc  l                                           ; $49a8: $8d
	nop                                              ; $49a9: $00
	rra                                              ; $49aa: $1f
	add  b                                           ; $49ab: $80
	adc  a                                           ; $49ac: $8f
	ld   e, $14                                      ; $49ad: $1e $14
	ld   [hl], $00                                   ; $49af: $36 $00
	ld   b, h                                        ; $49b1: $44
	nop                                              ; $49b2: $00
	adc  c                                           ; $49b3: $89
	nop                                              ; $49b4: $00
	ld   [de], a                                     ; $49b5: $12
	nop                                              ; $49b6: $00
	inc  h                                           ; $49b7: $24
	nop                                              ; $49b8: $00
	ld   c, a                                        ; $49b9: $4f
	ld   [$1e9e], sp                                 ; $49ba: $08 $9e $1e
	inc  a                                           ; $49bd: $3c
	inc  l                                           ; $49be: $2c
	ld   l, b                                        ; $49bf: $68
	ld   d, b                                        ; $49c0: $50
	reti                                             ; $49c1: $d9


	ld   hl, $0033                                   ; $49c2: $21 $33 $00
	inc  h                                           ; $49c5: $24
	nop                                              ; $49c6: $00
	ld   c, b                                        ; $49c7: $48
	nop                                              ; $49c8: $00
	adc  a                                           ; $49c9: $8f
	nop                                              ; $49ca: $00
	add  b                                           ; $49cb: $80
	inc  a                                           ; $49cc: $3c
	add  b                                           ; $49cd: $80
	ld   a, b                                        ; $49ce: $78
	dec  c                                           ; $49cf: $0d
	ldh  a, [$b0]                                    ; $49d0: $f0 $b0
	and  c                                           ; $49d2: $a1
	ld   b, c                                        ; $49d3: $41
	ld   h, e                                        ; $49d4: $63
	add  e                                           ; $49d5: $83
	rst  ToBoot                                         ; $49d6: $c7
	rlca                                             ; $49d7: $07
	adc  a                                           ; $49d8: $8f
	inc  bc                                          ; $49d9: $03
	inc  c                                           ; $49da: $0c
	nop                                              ; $49db: $00
	ccf                                              ; $49dc: $3f
	jr   nc, @-$7e                                   ; $49dd: $30 $80

	ld   [hl], b                                     ; $49df: $70
	add  b                                           ; $49e0: $80
	ldh  a, [$80]                                    ; $49e1: $f0 $80
	ldh  [$80], a                                    ; $49e3: $e0 $80
	ret  nz                                          ; $49e5: $c0

	add  b                                           ; $49e6: $80
	add  b                                           ; $49e7: $80
	add  b                                           ; $49e8: $80
	nop                                              ; $49e9: $00
	add  b                                           ; $49ea: $80
	db   $10                                         ; $49eb: $10
	dec  b                                           ; $49ec: $05
	ld   sp, $3634                                   ; $49ed: $31 $34 $36
	jr   c, jr_07f_4a2e                              ; $49f0: $38 $3c

	jr   c, jr_07f_4974                              ; $49f2: $38 $80

	jr   nc, @-$7e                                   ; $49f4: $30 $80

	ccf                                              ; $49f6: $3f
	daa                                              ; $49f7: $27
	ld   d, d                                        ; $49f8: $52
	rst  $38                                         ; $49f9: $ff
	nop                                              ; $49fa: $00
	rst  $38                                         ; $49fb: $ff
	xor  l                                           ; $49fc: $ad
	rst  $38                                         ; $49fd: $ff
	ld   e, $14                                      ; $49fe: $1e $14
	ld   [hl], $28                                   ; $4a00: $36 $28
	ld   l, h                                        ; $4a02: $6c

jr_07f_4a03:
	ld   d, b                                        ; $4a03: $50
	ret  c                                           ; $4a04: $d8

	and  b                                           ; $4a05: $a0
	xor  a                                           ; $4a06: $af
	rst  $38                                         ; $4a07: $ff
	add  l                                           ; $4a08: $85
	rst  $38                                         ; $4a09: $ff
	jr   nz, @+$01                                   ; $4a0a: $20 $ff

	ld   e, d                                        ; $4a0c: $5a
	rst  $38                                         ; $4a0d: $ff
	ld   e, $16                                      ; $4a0e: $1e $16
	inc  [hl]                                        ; $4a10: $34
	inc  l                                           ; $4a11: $2c
	ld   l, b                                        ; $4a12: $68
	ld   e, b                                        ; $4a13: $58
	ret  nc                                          ; $4a14: $d0

	or   b                                           ; $4a15: $b0
	or   l                                           ; $4a16: $b5
	push af                                          ; $4a17: $f5
	ld   l, d                                        ; $4a18: $6a
	ld   [$ffbf], a                                  ; $4a19: $ea $bf $ff
	ccf                                              ; $4a1c: $3f
	rst  $38                                         ; $4a1d: $ff
	rra                                              ; $4a1e: $1f
	db   $10                                         ; $4a1f: $10
	add  b                                           ; $4a20: $80
	jr   nc, jr_07f_49a3                             ; $4a21: $30 $80

	ld   [hl], b                                     ; $4a23: $70
	add  b                                           ; $4a24: $80
	ldh  a, [$80]                                    ; $4a25: $f0 $80
	ld   d, b                                        ; $4a27: $50
	add  b                                           ; $4a28: $80
	and  b                                           ; $4a29: $a0
	add  d                                           ; $4a2a: $82
	ldh  a, [rTIMA]                                  ; $4a2b: $f0 $05
	add  hl, bc                                      ; $4a2d: $09

jr_07f_4a2e:
	ld   h, $df                                      ; $4a2e: $26 $df
	rst  $38                                         ; $4a30: $ff
	nop                                              ; $4a31: $00
	rst  $38                                         ; $4a32: $ff
	add  b                                           ; $4a33: $80
	ld   [hl+], a                                    ; $4a34: $22
	add  b                                           ; $4a35: $80
	ld   de, $9480                                   ; $4a36: $11 $80 $94
	add  b                                           ; $4a39: $80
	rst  $38                                         ; $4a3a: $ff
	rlca                                             ; $4a3b: $07
	rst  $20                                         ; $4a3c: $e7
	jr   jr_07f_4a3f                                 ; $4a3d: $18 $00

jr_07f_4a3f:
	ld   [bc], a                                     ; $4a3f: $02
	db   $fd                                         ; $4a40: $fd
	rst  $38                                         ; $4a41: $ff
	nop                                              ; $4a42: $00
	rst  $38                                         ; $4a43: $ff
	add  b                                           ; $4a44: $80
	sub  d                                           ; $4a45: $92

jr_07f_4a46:
	add  b                                           ; $4a46: $80
	dec  l                                           ; $4a47: $2d
	add  b                                           ; $4a48: $80
	add  h                                           ; $4a49: $84
	inc  bc                                          ; $4a4a: $03
	cp   [hl]                                        ; $4a4b: $be
	rst  $38                                         ; $4a4c: $ff
	or   $48                                         ; $4a4d: $f6 $48
	add  b                                           ; $4a4f: $80
	ret  nz                                          ; $4a50: $c0

	add  b                                           ; $4a51: $80
	rst  $38                                         ; $4a52: $ff
	ld   bc, $ff00                                   ; $4a53: $01 $00 $ff
	add  b                                           ; $4a56: $80
	ld   c, d                                        ; $4a57: $4a
	add  b                                           ; $4a58: $80
	dec  h                                           ; $4a59: $25
	add  b                                           ; $4a5a: $80
	add  d                                           ; $4a5b: $82
	add  hl, bc                                      ; $4a5c: $09
	sub  $ff                                         ; $4a5d: $d6 $ff
	sub  $00                                         ; $4a5f: $d6 $00
	rrca                                             ; $4a61: $0f
	ld   b, b                                        ; $4a62: $40
	or   b                                           ; $4a63: $b0
	ldh  a, [rP1]                                    ; $4a64: $f0 $00
	ldh  a, [$80]                                    ; $4a66: $f0 $80
	or   b                                           ; $4a68: $b0
	add  b                                           ; $4a69: $80
	ld   d, b                                        ; $4a6a: $50
	add  b                                           ; $4a6b: $80
	add  b                                           ; $4a6c: $80
	dec  b                                           ; $4a6d: $05
	ld   [hl], b                                     ; $4a6e: $70
	ldh  a, [rSVBK]                                  ; $4a6f: $f0 $70
	nop                                              ; $4a71: $00
	jr   nz, jr_07f_4aa3                             ; $4a72: $20 $2f

	add  b                                           ; $4a74: $80
	ld   a, h                                        ; $4a75: $7c
	add  b                                           ; $4a76: $80
	ldh  a, [$80]                                    ; $4a77: $f0 $80
	ldh  [$80], a                                    ; $4a79: $e0 $80
	ret  nz                                          ; $4a7b: $c0

	add  h                                           ; $4a7c: $84
	nop                                              ; $4a7d: $00
	add  b                                           ; $4a7e: $80
	inc  c                                           ; $4a7f: $0c
	add  b                                           ; $4a80: $80
	jr   jr_07f_4a03                                 ; $4a81: $18 $80

	ld   [bc], a                                     ; $4a83: $02
	sbc  b                                           ; $4a84: $98
	nop                                              ; $4a85: $00
	nop                                              ; $4a86: $00
	rrca                                             ; $4a87: $0f
	adc  l                                           ; $4a88: $8d
	nop                                              ; $4a89: $00
	rla                                              ; $4a8a: $17
	dec  de                                          ; $4a8b: $1b
	rla                                              ; $4a8c: $17
	ld   [$f00f], sp                                 ; $4a8d: $08 $0f $f0
	rst  $30                                         ; $4a90: $f7
	ei                                               ; $4a91: $fb
	ld   [$0717], sp                                 ; $4a92: $08 $17 $07
	inc  hl                                          ; $4a95: $23
	nop                                              ; $4a96: $00
	ld   b, h                                        ; $4a97: $44
	nop                                              ; $4a98: $00
	adc  b                                           ; $4a99: $88
	nop                                              ; $4a9a: $00
	rla                                              ; $4a9b: $17
	rst  $38                                         ; $4a9c: $ff
	ld   [de], a                                     ; $4a9d: $12
	push af                                          ; $4a9e: $f5
	ld   a, a                                        ; $4a9f: $7f
	rst  $38                                         ; $4aa0: $ff
	add  b                                           ; $4aa1: $80
	nop                                              ; $4aa2: $00

jr_07f_4aa3:
	add  b                                           ; $4aa3: $80
	rst  $30                                         ; $4aa4: $f7
	add  hl, bc                                      ; $4aa5: $09
	jp   Jump_07f_4602                               ; $4aa6: $c3 $02 $46


	dec  b                                           ; $4aa9: $05
	adc  l                                           ; $4aaa: $8d
	ld   a, [bc]                                     ; $4aab: $0a
	ld   h, l                                        ; $4aac: $65
	rst  $38                                         ; $4aad: $ff
	ldh  [$7f], a                                    ; $4aae: $e0 $7f
	add  b                                           ; $4ab0: $80
	rst  $38                                         ; $4ab1: $ff
	add  b                                           ; $4ab2: $80
	nop                                              ; $4ab3: $00
	add  b                                           ; $4ab4: $80
	rst  $30                                         ; $4ab5: $f7
	rlca                                             ; $4ab6: $07
	jp   $c682                                       ; $4ab7: $c3 $82 $c6


	dec  b                                           ; $4aba: $05
	adc  l                                           ; $4abb: $8d
	ld   a, [bc]                                     ; $4abc: $0a
	jp   c, $80d0                                    ; $4abd: $da $d0 $80

	ldh  [$80], a                                    ; $4ac0: $e0 $80
	ret  nc                                          ; $4ac2: $d0

	add  b                                           ; $4ac3: $80
	jr   nc, jr_07f_4a46                             ; $4ac4: $30 $80

	ldh  [$80], a                                    ; $4ac6: $e0 $80
	ret  nz                                          ; $4ac8: $c0

	add  b                                           ; $4ac9: $80
	add  b                                           ; $4aca: $80
	add  b                                           ; $4acb: $80
	nop                                              ; $4acc: $00
	nop                                              ; $4acd: $00
	ldh  a, [rIE]                                    ; $4ace: $f0 $ff
	nop                                              ; $4ad0: $00
	rst  $38                                         ; $4ad1: $ff
	nop                                              ; $4ad2: $00
	rst  $38                                         ; $4ad3: $ff
	nop                                              ; $4ad4: $00
	rst  $38                                         ; $4ad5: $ff
	nop                                              ; $4ad6: $00
	rst  $38                                         ; $4ad7: $ff
	nop                                              ; $4ad8: $00
	rst  $38                                         ; $4ad9: $ff
	nop                                              ; $4ada: $00
	rst  $30                                         ; $4adb: $f7
	nop                                              ; $4adc: $00
	add  a                                           ; $4add: $87
	nop                                              ; $4ade: $00
	nop                                              ; $4adf: $00
	dec  c                                           ; $4ae0: $0d
	add  l                                           ; $4ae1: $85
	rrca                                             ; $4ae2: $0f
	ld   c, b                                        ; $4ae3: $48
	ld   b, $0f                                      ; $4ae4: $06 $0f
	inc  bc                                          ; $4ae6: $03
	rrca                                             ; $4ae7: $0f
	ld   [bc], a                                     ; $4ae8: $02
	rrca                                             ; $4ae9: $0f
	ld   [bc], a                                     ; $4aea: $02
	rrca                                             ; $4aeb: $0f
	cp   $ff                                         ; $4aec: $fe $ff
	push hl                                          ; $4aee: $e5
	rst  $38                                         ; $4aef: $ff
	rst  ToBoot                                         ; $4af0: $c7
	rst  $38                                         ; $4af1: $ff
	ld   e, $ff                                      ; $4af2: $1e $ff
	inc  [hl]                                        ; $4af4: $34
	rst  $38                                         ; $4af5: $ff
	and  h                                           ; $4af6: $a4
	rst  $38                                         ; $4af7: $ff
	and  l                                           ; $4af8: $a5
	rst  $38                                         ; $4af9: $ff
	and  a                                           ; $4afa: $a7
	rst  $38                                         ; $4afb: $ff
	or   e                                           ; $4afc: $b3
	rst  $38                                         ; $4afd: $ff
	or   a                                           ; $4afe: $b7
	rst  $38                                         ; $4aff: $ff
	sub  d                                           ; $4b00: $92
	rst  $38                                         ; $4b01: $ff
	sub  h                                           ; $4b02: $94
	rst  $38                                         ; $4b03: $ff
	ret  nc                                          ; $4b04: $d0

	rst  $38                                         ; $4b05: $ff
	ld   d, b                                        ; $4b06: $50
	rst  $38                                         ; $4b07: $ff
	sub  c                                           ; $4b08: $91
	rst  $38                                         ; $4b09: $ff
	ld   de, $05ff                                   ; $4b0a: $11 $ff $05
	rst  $38                                         ; $4b0d: $ff
	add  l                                           ; $4b0e: $85
	rst  $38                                         ; $4b0f: $ff
	add  h                                           ; $4b10: $84
	rst  $38                                         ; $4b11: $ff
	and  h                                           ; $4b12: $a4
	rst  $38                                         ; $4b13: $ff
	db   $e4                                         ; $4b14: $e4
	rst  $38                                         ; $4b15: $ff
	call nz, $84ff                                   ; $4b16: $c4 $ff $84
	rst  $38                                         ; $4b19: $ff
	add  h                                           ; $4b1a: $84
	rst  $38                                         ; $4b1b: $ff
	push bc                                          ; $4b1c: $c5
	rst  $38                                         ; $4b1d: $ff
	ld   c, a                                        ; $4b1e: $4f
	rst  $38                                         ; $4b1f: $ff
	ld   e, a                                        ; $4b20: $5f
	rst  $38                                         ; $4b21: $ff
	ld   [hl], a                                     ; $4b22: $77
	rst  $38                                         ; $4b23: $ff
	ld   h, a                                        ; $4b24: $67
	rst  $38                                         ; $4b25: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b26: $cf
	rst  $38                                         ; $4b27: $ff
	rst  JumpTable                                         ; $4b28: $df
	rst  $38                                         ; $4b29: $ff
	ld   a, a                                        ; $4b2a: $7f
	rst  $38                                         ; $4b2b: $ff
	ld   a, a                                        ; $4b2c: $7f
	adc  l                                           ; $4b2d: $8d
	rst  $38                                         ; $4b2e: $ff
	ld   bc, $eff0                                   ; $4b2f: $01 $f0 $ef
	add  b                                           ; $4b32: $80
	rst  $30                                         ; $4b33: $f7
	ld   [bc], a                                     ; $4b34: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b35: $cf
	rst  $28                                         ; $4b36: $ef
	cp   a                                           ; $4b37: $bf
	add  e                                           ; $4b38: $83
	add  b                                           ; $4b39: $80
	add  e                                           ; $4b3a: $83
	nop                                              ; $4b3b: $00
	add  h                                           ; $4b3c: $84
	cp   $88                                         ; $4b3d: $fe $88
	ld   bc, $0084                                   ; $4b3f: $01 $84 $00
	adc  b                                           ; $4b42: $88
	rst  $38                                         ; $4b43: $ff
	add  d                                           ; $4b44: $82
	ld   a, a                                        ; $4b45: $7f
	add  b                                           ; $4b46: $80
	ccf                                              ; $4b47: $3f
	add  h                                           ; $4b48: $84
	ret  nz                                          ; $4b49: $c0

	add  [hl]                                        ; $4b4a: $86
	ldh  [$80], a                                    ; $4b4b: $e0 $80
	ldh  a, [rSC]                                    ; $4b4d: $f0 $02
	rrca                                             ; $4b4f: $0f
	ld   c, $06                                      ; $4b50: $0e $06
	add  b                                           ; $4b52: $80
	rlca                                             ; $4b53: $07
	ld   bc, $0206                                   ; $4b54: $01 $06 $02
	add  c                                           ; $4b57: $81
	inc  bc                                          ; $4b58: $03
	add  e                                           ; $4b59: $83
	nop                                              ; $4b5a: $00
	ld   bc, $40bf                                   ; $4b5b: $01 $bf $40
	add  b                                           ; $4b5e: $80
	add  c                                           ; $4b5f: $81
	add  b                                           ; $4b60: $80
	ld   b, b                                        ; $4b61: $40
	add  b                                           ; $4b62: $80
	add  c                                           ; $4b63: $81
	add  b                                           ; $4b64: $80
	ld   b, b                                        ; $4b65: $40
	ld   bc, $877c                                   ; $4b66: $01 $7c $87
	add  b                                           ; $4b69: $80
	ld   b, a                                        ; $4b6a: $47
	add  b                                           ; $4b6b: $80
	daa                                              ; $4b6c: $27
	ld   a, [bc]                                     ; $4b6d: $0a
	ld   d, a                                        ; $4b6e: $57
	or   a                                           ; $4b6f: $b7
	ld   c, a                                        ; $4b70: $4f
	ld   e, a                                        ; $4b71: $5f
	or   a                                           ; $4b72: $b7
	cp   a                                           ; $4b73: $bf
	ld   e, l                                        ; $4b74: $5d
	ld   e, a                                        ; $4b75: $5f
	cp   [hl]                                        ; $4b76: $be
	cp   a                                           ; $4b77: $bf
	rra                                              ; $4b78: $1f
	add  b                                           ; $4b79: $80
	rst  $30                                         ; $4b7a: $f7
	add  b                                           ; $4b7b: $80
	di                                               ; $4b7c: $f3
	add  a                                           ; $4b7d: $87
	ldh  a, [$0e]                                    ; $4b7e: $f0 $0e
	ld   [hl], b                                     ; $4b80: $70
	ldh  a, [$6d]                                    ; $4b81: $f0 $6d
	jp   $e303                                       ; $4b83: $c3 $03 $e3


	jp   $23fb                                       ; $4b86: $c3 $fb $23


	rst  $38                                         ; $4b89: $ff
	db   $db                                         ; $4b8a: $db
	rst  $38                                         ; $4b8b: $ff
	rst  $20                                         ; $4b8c: $e7
	rst  $38                                         ; $4b8d: $ff
	ei                                               ; $4b8e: $fb
	add  c                                           ; $4b8f: $81
	rst  $38                                         ; $4b90: $ff
	nop                                              ; $4b91: $00
	ld   [bc], a                                     ; $4b92: $02
	adc  l                                           ; $4b93: $8d
	inc  bc                                          ; $4b94: $03
	ld   b, b                                        ; $4b95: $40
	ld   sp, hl                                      ; $4b96: $f9
	rrca                                             ; $4b97: $0f
	ld   [bc], a                                     ; $4b98: $02
	rrca                                             ; $4b99: $0f
	ld   [bc], a                                     ; $4b9a: $02
	rrca                                             ; $4b9b: $0f
	ld   [bc], a                                     ; $4b9c: $02
	rrca                                             ; $4b9d: $0f
	ld   [bc], a                                     ; $4b9e: $02
	rrca                                             ; $4b9f: $0f
	ld   [bc], a                                     ; $4ba0: $02
	rrca                                             ; $4ba1: $0f
	ld   [bc], a                                     ; $4ba2: $02
	rrca                                             ; $4ba3: $0f
	ld   [bc], a                                     ; $4ba4: $02
	rrca                                             ; $4ba5: $0f
	sub  $ff                                         ; $4ba6: $d6 $ff
	and  h                                           ; $4ba8: $a4
	rst  $38                                         ; $4ba9: $ff
	ld   h, h                                        ; $4baa: $64
	rst  $38                                         ; $4bab: $ff
	call nz, $85ff                                   ; $4bac: $c4 $ff $85
	rst  $38                                         ; $4baf: $ff
	rlca                                             ; $4bb0: $07
	rst  $38                                         ; $4bb1: $ff
	ld   b, $ff                                      ; $4bb2: $06 $ff
	inc  b                                           ; $4bb4: $04
	rst  $38                                         ; $4bb5: $ff
	db   $10                                         ; $4bb6: $10
	rst  $38                                         ; $4bb7: $ff
	db   $10                                         ; $4bb8: $10
	rst  $38                                         ; $4bb9: $ff
	ld   d, b                                        ; $4bba: $50
	rst  $38                                         ; $4bbb: $ff
	ret  nc                                          ; $4bbc: $d0

	rst  $38                                         ; $4bbd: $ff
	sub  c                                           ; $4bbe: $91
	rst  $38                                         ; $4bbf: $ff
	inc  de                                          ; $4bc0: $13
	rst  $38                                         ; $4bc1: $ff
	ld   d, $ff                                      ; $4bc2: $16 $ff
	inc  e                                           ; $4bc4: $1c
	rst  $38                                         ; $4bc5: $ff
	inc  c                                           ; $4bc6: $0c
	rst  $38                                         ; $4bc7: $ff
	add  h                                           ; $4bc8: $84
	rst  $38                                         ; $4bc9: $ff
	add  l                                           ; $4bca: $85
	rst  $38                                         ; $4bcb: $ff
	add  a                                           ; $4bcc: $87
	rst  $38                                         ; $4bcd: $ff
	add  a                                           ; $4bce: $87
	rst  $38                                         ; $4bcf: $ff
	add  a                                           ; $4bd0: $87
	rst  $38                                         ; $4bd1: $ff
	add  a                                           ; $4bd2: $87
	rst  $38                                         ; $4bd3: $ff
	adc  a                                           ; $4bd4: $8f
	rst  $38                                         ; $4bd5: $ff
	rst  JumpTable                                         ; $4bd6: $df
	adc  l                                           ; $4bd7: $8d
	rst  $38                                         ; $4bd8: $ff
	add  e                                           ; $4bd9: $83
	cp   $81                                         ; $4bda: $fe $81
	rst  $38                                         ; $4bdc: $ff
	ld   bc, $fffd                                   ; $4bdd: $01 $fd $ff
	add  b                                           ; $4be0: $80
	cp   $01                                         ; $4be1: $fe $01
	ld   sp, hl                                      ; $4be3: $f9
	db   $fd                                         ; $4be4: $fd
	add  b                                           ; $4be5: $80
	cp   $00                                         ; $4be6: $fe $00
	rlca                                             ; $4be8: $07
	add  c                                           ; $4be9: $81
	nop                                              ; $4bea: $00
	ld   bc, $17e8                                   ; $4beb: $01 $e8 $17
	add  b                                           ; $4bee: $80
	cpl                                              ; $4bef: $2f
	add  b                                           ; $4bf0: $80
	rla                                              ; $4bf1: $17
	add  b                                           ; $4bf2: $80
	cpl                                              ; $4bf3: $2f
	add  b                                           ; $4bf4: $80
	rla                                              ; $4bf5: $17
	add  b                                           ; $4bf6: $80
	cpl                                              ; $4bf7: $2f
	nop                                              ; $4bf8: $00
	rst  $38                                         ; $4bf9: $ff
	add  d                                           ; $4bfa: $82
	ld   bc, $fe8a                                   ; $4bfb: $01 $8a $fe
	add  d                                           ; $4bfe: $82
	rst  $38                                         ; $4bff: $ff
	adc  d                                           ; $4c00: $8a
	nop                                              ; $4c01: $00
	add  b                                           ; $4c02: $80
	ldh  [$80], a                                    ; $4c03: $e0 $80
	ldh  a, [$84]                                    ; $4c05: $f0 $84
	rrca                                             ; $4c07: $0f
	add  e                                           ; $4c08: $83
	rlca                                             ; $4c09: $07
	dec  b                                           ; $4c0a: $05
	ld   b, $00                                      ; $4c0b: $06 $00
	ld   bc, $0100                                   ; $4c0d: $01 $00 $01
	cp   $80                                         ; $4c10: $fe $80
	rst  $38                                         ; $4c12: $ff
	add  b                                           ; $4c13: $80
	cp   $80                                         ; $4c14: $fe $80
	rst  $38                                         ; $4c16: $ff
	add  b                                           ; $4c17: $80
	cp   $80                                         ; $4c18: $fe $80
	rst  $38                                         ; $4c1a: $ff
	add  b                                           ; $4c1b: $80
	add  c                                           ; $4c1c: $81
	add  b                                           ; $4c1d: $80
	ld   b, b                                        ; $4c1e: $40
	inc  bc                                          ; $4c1f: $03
	rst  $38                                         ; $4c20: $ff
	nop                                              ; $4c21: $00
	add  b                                           ; $4c22: $80
	nop                                              ; $4c23: $00
	add  b                                           ; $4c24: $80
	add  b                                           ; $4c25: $80
	ld   bc, $4000                                   ; $4c26: $01 $00 $40
	add  b                                           ; $4c29: $80

jr_07f_4c2a:
	add  b                                           ; $4c2a: $80
	nop                                              ; $4c2b: $00
	ld   h, b                                        ; $4c2c: $60
	add  b                                           ; $4c2d: $80
	ld   b, b                                        ; $4c2e: $40
	nop                                              ; $4c2f: $00
	ld   e, a                                        ; $4c30: $5f
	add  b                                           ; $4c31: $80
	cp   a                                           ; $4c32: $bf
	nop                                              ; $4c33: $00
	rst  $38                                         ; $4c34: $ff
	adc  c                                           ; $4c35: $89
	nop                                              ; $4c36: $00
	dec  b                                           ; $4c37: $05
	jr   nz, jr_07f_4c2a                             ; $4c38: $20 $f0

	ret  nc                                          ; $4c3a: $d0

	ldh  a, [$f8]                                    ; $4c3b: $f0 $f8
	ld   [$0480], sp                                 ; $4c3d: $08 $80 $04
	add  b                                           ; $4c40: $80
	inc  bc                                          ; $4c41: $03
	add  h                                           ; $4c42: $84
	nop                                              ; $4c43: $00
	nop                                              ; $4c44: $00
	db   $fd                                         ; $4c45: $fd
	add  a                                           ; $4c46: $87
	rst  $38                                         ; $4c47: $ff
	add  b                                           ; $4c48: $80
	ld   a, a                                        ; $4c49: $7f
	add  b                                           ; $4c4a: $80
	cp   a                                           ; $4c4b: $bf
	add  b                                           ; $4c4c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c4d: $cf
	inc  b                                           ; $4c4e: $04
	ld   [bc], a                                     ; $4c4f: $02
	inc  bc                                          ; $4c50: $03
	ld   [bc], a                                     ; $4c51: $02
	inc  bc                                          ; $4c52: $03
	ld   [bc], a                                     ; $4c53: $02
	add  c                                           ; $4c54: $81
	inc  bc                                          ; $4c55: $03
	nop                                              ; $4c56: $00
	ld   [bc], a                                     ; $4c57: $02
	add  l                                           ; $4c58: $85
	inc  bc                                          ; $4c59: $03
	nop                                              ; $4c5a: $00
	db   $fd                                         ; $4c5b: $fd
	add  l                                           ; $4c5c: $85
	nop                                              ; $4c5d: $00
	ld   [$0f53], sp                                 ; $4c5e: $08 $53 $0f
	ret  nc                                          ; $4c61: $d0

	ccf                                              ; $4c62: $3f
	add  e                                           ; $4c63: $83
	rst  $38                                         ; $4c64: $ff
	rrca                                             ; $4c65: $0f
	rst  $38                                         ; $4c66: $ff
	ccf                                              ; $4c67: $3f
	add  l                                           ; $4c68: $85
	nop                                              ; $4c69: $00
	ld   [bc], a                                     ; $4c6a: $02
	add  b                                           ; $4c6b: $80
	rst  $38                                         ; $4c6c: $ff
	ld   a, a                                        ; $4c6d: $7f
	add  h                                           ; $4c6e: $84
	rst  $38                                         ; $4c6f: $ff
	add  l                                           ; $4c70: $85
	nop                                              ; $4c71: $00
	ld   [$f065], sp                                 ; $4c72: $08 $65 $f0
	rst  $38                                         ; $4c75: $ff
	ldh  a, [rIE]                                    ; $4c76: $f0 $ff
	ldh  a, [rIE]                                    ; $4c78: $f0 $ff
	ldh  a, [$9a]                                    ; $4c7a: $f0 $9a
	add  l                                           ; $4c7c: $85
	nop                                              ; $4c7d: $00
	ld   l, b                                        ; $4c7e: $68
	ld   d, b                                        ; $4c7f: $50
	nop                                              ; $4c80: $00
	ldh  a, [rP1]                                    ; $4c81: $f0 $00
	ldh  a, [rP1]                                    ; $4c83: $f0 $00
	ldh  a, [rP1]                                    ; $4c85: $f0 $00
	ld   e, a                                        ; $4c87: $5f
	rst  $38                                         ; $4c88: $ff
	db   $fc                                         ; $4c89: $fc
	rst  $38                                         ; $4c8a: $ff
	ld   bc, $abfc                                   ; $4c8b: $01 $fc $ab
	add  b                                           ; $4c8e: $80
	rst  $38                                         ; $4c8f: $ff
	add  b                                           ; $4c90: $80
	rst  $38                                         ; $4c91: $ff
	add  b                                           ; $4c92: $80
	rst  $38                                         ; $4c93: $ff
	add  b                                           ; $4c94: $80
	rst  $38                                         ; $4c95: $ff
	add  b                                           ; $4c96: $80
	add  hl, hl                                      ; $4c97: $29
	rst  $38                                         ; $4c98: $ff

jr_07f_4c99:
	ld   [bc], a                                     ; $4c99: $02
	db   $fc                                         ; $4c9a: $fc
	ld   d, a                                        ; $4c9b: $57
	nop                                              ; $4c9c: $00
	rst  $38                                         ; $4c9d: $ff
	nop                                              ; $4c9e: $00
	rst  $38                                         ; $4c9f: $ff
	nop                                              ; $4ca0: $00
	rst  $38                                         ; $4ca1: $ff
	nop                                              ; $4ca2: $00
	rst  $38                                         ; $4ca3: $ff
	nop                                              ; $4ca4: $00
	rst  $38                                         ; $4ca5: $ff
	nop                                              ; $4ca6: $00
	jr   nc, jr_07f_4c99                             ; $4ca7: $30 $f0

	rst  $38                                         ; $4ca9: $ff
	ld   [hl], b                                     ; $4caa: $70
	rst  $38                                         ; $4cab: $ff
	ld   [hl], b                                     ; $4cac: $70
	rst  $38                                         ; $4cad: $ff
	ld   [hl], b                                     ; $4cae: $70
	rst  $38                                         ; $4caf: $ff
	ld   [hl], b                                     ; $4cb0: $70
	rst  $38                                         ; $4cb1: $ff
	ld   [hl], b                                     ; $4cb2: $70
	rst  $38                                         ; $4cb3: $ff
	ld   [hl], b                                     ; $4cb4: $70
	rst  $38                                         ; $4cb5: $ff
	ld   [hl], b                                     ; $4cb6: $70
	ld   c, d                                        ; $4cb7: $4a
	nop                                              ; $4cb8: $00
	ldh  a, [rP1]                                    ; $4cb9: $f0 $00
	ldh  a, [rP1]                                    ; $4cbb: $f0 $00
	ldh  a, [rP1]                                    ; $4cbd: $f0 $00
	ldh  a, [rP1]                                    ; $4cbf: $f0 $00
	ldh  a, [rP1]                                    ; $4cc1: $f0 $00
	ldh  a, [rP1]                                    ; $4cc3: $f0 $00
	ldh  a, [rP1]                                    ; $4cc5: $f0 $00
	adc  d                                           ; $4cc7: $8a
	add  b                                           ; $4cc8: $80
	rst  $38                                         ; $4cc9: $ff

jr_07f_4cca:
	add  b                                           ; $4cca: $80
	rst  $38                                         ; $4ccb: $ff
	add  b                                           ; $4ccc: $80
	rst  $38                                         ; $4ccd: $ff
	add  b                                           ; $4cce: $80
	rst  $38                                         ; $4ccf: $ff
	add  b                                           ; $4cd0: $80
	rst  $38                                         ; $4cd1: $ff
	add  b                                           ; $4cd2: $80
	rst  $38                                         ; $4cd3: $ff
	add  b                                           ; $4cd4: $80
	rst  $38                                         ; $4cd5: $ff
	add  b                                           ; $4cd6: $80
	ld   a, a                                        ; $4cd7: $7f
	nop                                              ; $4cd8: $00
	rst  $38                                         ; $4cd9: $ff
	nop                                              ; $4cda: $00
	rst  $38                                         ; $4cdb: $ff
	nop                                              ; $4cdc: $00
	rst  $38                                         ; $4cdd: $ff
	nop                                              ; $4cde: $00
	rst  $38                                         ; $4cdf: $ff
	nop                                              ; $4ce0: $00
	rst  $38                                         ; $4ce1: $ff
	nop                                              ; $4ce2: $00
	rst  $38                                         ; $4ce3: $ff
	nop                                              ; $4ce4: $00
	rst  $38                                         ; $4ce5: $ff
	nop                                              ; $4ce6: $00
	ld   a, d                                        ; $4ce7: $7a
	adc  l                                           ; $4ce8: $8d
	ldh  a, [rP1]                                    ; $4ce9: $f0 $00
	cpl                                              ; $4ceb: $2f
	adc  l                                           ; $4cec: $8d
	nop                                              ; $4ced: $00
	jr   nc, jr_07f_4cca                             ; $4cee: $30 $da

	add  b                                           ; $4cf0: $80
	rst  $38                                         ; $4cf1: $ff
	add  b                                           ; $4cf2: $80
	rst  $38                                         ; $4cf3: $ff
	add  b                                           ; $4cf4: $80
	rst  $38                                         ; $4cf5: $ff
	add  b                                           ; $4cf6: $80
	rst  $38                                         ; $4cf7: $ff
	add  b                                           ; $4cf8: $80
	rst  $38                                         ; $4cf9: $ff
	add  b                                           ; $4cfa: $80
	rst  $38                                         ; $4cfb: $ff
	add  b                                           ; $4cfc: $80
	rst  $38                                         ; $4cfd: $ff
	add  b                                           ; $4cfe: $80
	ld   a, a                                        ; $4cff: $7f

Jump_07f_4d00:
	nop                                              ; $4d00: $00
	rst  $38                                         ; $4d01: $ff
	nop                                              ; $4d02: $00
	rst  $38                                         ; $4d03: $ff
	nop                                              ; $4d04: $00
	rst  $38                                         ; $4d05: $ff
	nop                                              ; $4d06: $00
	rst  $38                                         ; $4d07: $ff
	nop                                              ; $4d08: $00
	rst  $38                                         ; $4d09: $ff
	nop                                              ; $4d0a: $00
	rst  $38                                         ; $4d0b: $ff
	nop                                              ; $4d0c: $00
	rst  $38                                         ; $4d0d: $ff
	nop                                              ; $4d0e: $00
	cp   d                                           ; $4d0f: $ba
	ld   [hl], b                                     ; $4d10: $70
	ldh  a, [rSVBK]                                  ; $4d11: $f0 $70
	ldh  a, [rSVBK]                                  ; $4d13: $f0 $70
	ldh  a, [rSVBK]                                  ; $4d15: $f0 $70
	ldh  a, [rSVBK]                                  ; $4d17: $f0 $70
	ldh  a, [rSVBK]                                  ; $4d19: $f0 $70
	ldh  a, [rSVBK]                                  ; $4d1b: $f0 $70
	ldh  a, [rSVBK]                                  ; $4d1d: $f0 $70
	rst  $28                                         ; $4d1f: $ef
	adc  l                                           ; $4d20: $8d
	nop                                              ; $4d21: $00
	nop                                              ; $4d22: $00
	ldh  a, [$9d]                                    ; $4d23: $f0 $9d
	rst  $38                                         ; $4d25: $ff
	ld   a, a                                        ; $4d26: $7f
	sbc  d                                           ; $4d27: $9a
	ldh  a, [rIE]                                    ; $4d28: $f0 $ff
	ldh  a, [rIE]                                    ; $4d2a: $f0 $ff
	ldh  a, [rIE]                                    ; $4d2c: $f0 $ff
	ldh  a, [rIE]                                    ; $4d2e: $f0 $ff
	ldh  a, [rIE]                                    ; $4d30: $f0 $ff
	ldh  a, [rIE]                                    ; $4d32: $f0 $ff
	ldh  a, [rIE]                                    ; $4d34: $f0 $ff
	ldh  a, [$ca]                                    ; $4d36: $f0 $ca
	nop                                              ; $4d38: $00
	ldh  a, [rP1]                                    ; $4d39: $f0 $00
	ldh  a, [rP1]                                    ; $4d3b: $f0 $00
	ldh  a, [rP1]                                    ; $4d3d: $f0 $00
	ldh  a, [rP1]                                    ; $4d3f: $f0 $00
	ldh  a, [rP1]                                    ; $4d41: $f0 $00
	ldh  a, [rP1]                                    ; $4d43: $f0 $00
	ldh  a, [rP1]                                    ; $4d45: $f0 $00
	adc  d                                           ; $4d47: $8a
	add  b                                           ; $4d48: $80
	rst  $38                                         ; $4d49: $ff
	add  b                                           ; $4d4a: $80
	rst  $38                                         ; $4d4b: $ff
	add  b                                           ; $4d4c: $80
	rst  $38                                         ; $4d4d: $ff
	add  b                                           ; $4d4e: $80
	rst  $38                                         ; $4d4f: $ff
	add  b                                           ; $4d50: $80
	rst  $38                                         ; $4d51: $ff
	add  b                                           ; $4d52: $80
	rst  $38                                         ; $4d53: $ff
	add  b                                           ; $4d54: $80
	rst  $38                                         ; $4d55: $ff
	add  b                                           ; $4d56: $80
	ld   a, a                                        ; $4d57: $7f
	nop                                              ; $4d58: $00
	rst  $38                                         ; $4d59: $ff
	nop                                              ; $4d5a: $00
	rst  $38                                         ; $4d5b: $ff
	nop                                              ; $4d5c: $00
	rst  $38                                         ; $4d5d: $ff
	nop                                              ; $4d5e: $00
	rst  $38                                         ; $4d5f: $ff
	nop                                              ; $4d60: $00
	rst  $38                                         ; $4d61: $ff
	nop                                              ; $4d62: $00
	rst  $38                                         ; $4d63: $ff
	nop                                              ; $4d64: $00
	rst  $38                                         ; $4d65: $ff
	nop                                              ; $4d66: $00
	or   b                                           ; $4d67: $b0
	ld   [hl], b                                     ; $4d68: $70
	rst  $38                                         ; $4d69: $ff
	ld   [hl], b                                     ; $4d6a: $70
	rst  $38                                         ; $4d6b: $ff
	ld   [hl], b                                     ; $4d6c: $70
	rst  $38                                         ; $4d6d: $ff
	ld   [hl], b                                     ; $4d6e: $70
	rst  $38                                         ; $4d6f: $ff
	ld   [hl], b                                     ; $4d70: $70
	rst  $38                                         ; $4d71: $ff
	ld   [hl], b                                     ; $4d72: $70
	rst  $38                                         ; $4d73: $ff
	ld   [hl], b                                     ; $4d74: $70
	rst  $38                                         ; $4d75: $ff
	ld   [hl], b                                     ; $4d76: $70
	ld   c, d                                        ; $4d77: $4a
	nop                                              ; $4d78: $00
	ldh  a, [rP1]                                    ; $4d79: $f0 $00
	ldh  a, [rP1]                                    ; $4d7b: $f0 $00
	ldh  a, [rP1]                                    ; $4d7d: $f0 $00
	ldh  a, [rP1]                                    ; $4d7f: $f0 $00
	ldh  a, [rP1]                                    ; $4d81: $f0 $00
	ldh  a, [rP1]                                    ; $4d83: $f0 $00
	ldh  a, [rP1]                                    ; $4d85: $f0 $00
	adc  d                                           ; $4d87: $8a
	add  b                                           ; $4d88: $80
	rst  $38                                         ; $4d89: $ff
	add  b                                           ; $4d8a: $80
	rst  $38                                         ; $4d8b: $ff
	add  b                                           ; $4d8c: $80
	rst  $38                                         ; $4d8d: $ff
	add  b                                           ; $4d8e: $80
	rst  $38                                         ; $4d8f: $ff
	add  b                                           ; $4d90: $80
	rst  $38                                         ; $4d91: $ff
	add  b                                           ; $4d92: $80
	rst  $38                                         ; $4d93: $ff
	add  b                                           ; $4d94: $80
	rst  $38                                         ; $4d95: $ff
	add  b                                           ; $4d96: $80

jr_07f_4d97:
	ld   a, a                                        ; $4d97: $7f
	nop                                              ; $4d98: $00
	rst  $38                                         ; $4d99: $ff
	nop                                              ; $4d9a: $00
	rst  $38                                         ; $4d9b: $ff
	nop                                              ; $4d9c: $00
	rst  $38                                         ; $4d9d: $ff
	nop                                              ; $4d9e: $00
	rst  $38                                         ; $4d9f: $ff
	nop                                              ; $4da0: $00
	rst  $38                                         ; $4da1: $ff
	nop                                              ; $4da2: $00
	rst  $38                                         ; $4da3: $ff
	nop                                              ; $4da4: $00
	rst  $38                                         ; $4da5: $ff
	nop                                              ; $4da6: $00
	db   $10                                         ; $4da7: $10
	cp   d                                           ; $4da8: $ba
	ld   [hl], b                                     ; $4da9: $70
	ldh  a, [rSVBK]                                  ; $4daa: $f0 $70
	ldh  a, [rSVBK]                                  ; $4dac: $f0 $70
	ldh  a, [rSVBK]                                  ; $4dae: $f0 $70
	ldh  a, [rSVBK]                                  ; $4db0: $f0 $70
	ldh  a, [rSVBK]                                  ; $4db2: $f0 $70
	ldh  a, [rSVBK]                                  ; $4db4: $f0 $70
	ldh  a, [rSVBK]                                  ; $4db6: $f0 $70
	rst  $28                                         ; $4db8: $ef
	adc  l                                           ; $4db9: $8d
	nop                                              ; $4dba: $00
	jr   nc, jr_07f_4d97                             ; $4dbb: $30 $da

	add  b                                           ; $4dbd: $80
	rst  $38                                         ; $4dbe: $ff
	add  b                                           ; $4dbf: $80
	rst  $38                                         ; $4dc0: $ff
	ret  nz                                          ; $4dc1: $c0

	ccf                                              ; $4dc2: $3f
	ldh  [$d7], a                                    ; $4dc3: $e0 $d7
	ld   hl, sp+$23                                  ; $4dc5: $f8 $23
	db   $fc                                         ; $4dc7: $fc
	reti                                             ; $4dc8: $d9


	rst  $38                                         ; $4dc9: $ff
	db   $e4                                         ; $4dca: $e4
	rst  $38                                         ; $4dcb: $ff
	ld   d, d                                        ; $4dcc: $52

jr_07f_4dcd:
	nop                                              ; $4dcd: $00
	rst  $38                                         ; $4dce: $ff
	nop                                              ; $4dcf: $00
	rst  $38                                         ; $4dd0: $ff
	nop                                              ; $4dd1: $00
	rst  $38                                         ; $4dd2: $ff
	nop                                              ; $4dd3: $00
	rst  $38                                         ; $4dd4: $ff
	nop                                              ; $4dd5: $00
	rst  $38                                         ; $4dd6: $ff
	nop                                              ; $4dd7: $00
	rst  $38                                         ; $4dd8: $ff
	nop                                              ; $4dd9: $00
	rst  $38                                         ; $4dda: $ff
	add  b                                           ; $4ddb: $80
	ld   a, [hl-]                                    ; $4ddc: $3a
	ld   [hl], b                                     ; $4ddd: $70
	ldh  a, [rSVBK]                                  ; $4dde: $f0 $70
	ldh  a, [rSVBK]                                  ; $4de0: $f0 $70
	ldh  a, [rSVBK]                                  ; $4de2: $f0 $70
	ldh  a, [rSVBK]                                  ; $4de4: $f0 $70
	ldh  a, [rSVBK]                                  ; $4de6: $f0 $70
	ldh  a, [rSVBK]                                  ; $4de8: $f0 $70
	ldh  a, [rSVBK]                                  ; $4dea: $f0 $70
	rst  $28                                         ; $4dec: $ef
	adc  l                                           ; $4ded: $8d
	nop                                              ; $4dee: $00
	nop                                              ; $4def: $00
	ldh  a, [$8b]                                    ; $4df0: $f0 $8b
	rst  $38                                         ; $4df2: $ff
	ld   [bc], a                                     ; $4df3: $02
	db   $fc                                         ; $4df4: $fc
	rst  $38                                         ; $4df5: $ff
	db   $fc                                         ; $4df6: $fc
	adc  c                                           ; $4df7: $89
	rst  $38                                         ; $4df8: $ff
	ld   d, b                                        ; $4df9: $50
	db   $fc                                         ; $4dfa: $fc
	rst  $38                                         ; $4dfb: $ff
	inc  bc                                          ; $4dfc: $03
	rst  $38                                         ; $4dfd: $ff
	ld   h, l                                        ; $4dfe: $65
	ldh  a, [rIE]                                    ; $4dff: $f0 $ff
	ldh  a, [rIE]                                    ; $4e01: $f0 $ff
	ldh  a, [rIE]                                    ; $4e03: $f0 $ff
	ldh  a, [rIE]                                    ; $4e05: $f0 $ff
	ldh  a, [rIE]                                    ; $4e07: $f0 $ff
	ldh  a, [$7f]                                    ; $4e09: $f0 $7f
	ldh  a, [rIE]                                    ; $4e0b: $f0 $ff
	ldh  a, [rWY]                                    ; $4e0d: $f0 $4a
	nop                                              ; $4e0f: $00
	ldh  a, [rP1]                                    ; $4e10: $f0 $00
	ldh  a, [rP1]                                    ; $4e12: $f0 $00
	ldh  a, [rP1]                                    ; $4e14: $f0 $00
	ldh  a, [rP1]                                    ; $4e16: $f0 $00
	ldh  a, [rP1]                                    ; $4e18: $f0 $00
	ldh  a, [rP1]                                    ; $4e1a: $f0 $00
	ldh  a, [rP1]                                    ; $4e1c: $f0 $00
	adc  d                                           ; $4e1e: $8a
	add  b                                           ; $4e1f: $80
	rst  $38                                         ; $4e20: $ff
	add  b                                           ; $4e21: $80
	rst  $38                                         ; $4e22: $ff
	add  b                                           ; $4e23: $80
	rst  $38                                         ; $4e24: $ff
	add  b                                           ; $4e25: $80
	rst  $38                                         ; $4e26: $ff
	add  b                                           ; $4e27: $80
	rst  $38                                         ; $4e28: $ff
	add  b                                           ; $4e29: $80
	rst  $38                                         ; $4e2a: $ff
	add  b                                           ; $4e2b: $80
	rst  $38                                         ; $4e2c: $ff
	add  b                                           ; $4e2d: $80
	ld   a, a                                        ; $4e2e: $7f
	nop                                              ; $4e2f: $00
	rst  $38                                         ; $4e30: $ff
	nop                                              ; $4e31: $00
	rst  $38                                         ; $4e32: $ff
	nop                                              ; $4e33: $00
	rst  $38                                         ; $4e34: $ff
	nop                                              ; $4e35: $00
	rst  $38                                         ; $4e36: $ff
	nop                                              ; $4e37: $00
	rst  $38                                         ; $4e38: $ff
	nop                                              ; $4e39: $00
	rst  $38                                         ; $4e3a: $ff
	nop                                              ; $4e3b: $00
	rst  $38                                         ; $4e3c: $ff
	nop                                              ; $4e3d: $00
	or   b                                           ; $4e3e: $b0
	ld   [hl], b                                     ; $4e3f: $70
	rst  $38                                         ; $4e40: $ff
	ld   [hl], b                                     ; $4e41: $70
	rst  $38                                         ; $4e42: $ff
	ld   [hl], b                                     ; $4e43: $70
	rst  $38                                         ; $4e44: $ff
	ld   [hl], b                                     ; $4e45: $70
	push af                                          ; $4e46: $f5
	ld   [hl], b                                     ; $4e47: $70
	ldh  a, [rSVBK]                                  ; $4e48: $f0 $70
	jr   nc, jr_07f_4dcd                             ; $4e4a: $30 $81

	ldh  a, [$08]                                    ; $4e4c: $f0 $08
	adc  a                                           ; $4e4e: $8f
	nop                                              ; $4e4f: $00
	ldh  a, [rP1]                                    ; $4e50: $f0 $00
	ldh  a, [rP1]                                    ; $4e52: $f0 $00
	ldh  a, [rP1]                                    ; $4e54: $f0 $00
	ld   d, b                                        ; $4e56: $50
	add  l                                           ; $4e57: $85
	nop                                              ; $4e58: $00
	nop                                              ; $4e59: $00
	ldh  a, [$de]                                    ; $4e5a: $f0 $de
	nop                                              ; $4e5c: $00
	add  b                                           ; $4e5d: $80
	db   $10                                         ; $4e5e: $10
	rst  $38                                         ; $4e5f: $ff
	nop                                              ; $4e60: $00
	rst  $38                                         ; $4e61: $ff
	nop                                              ; $4e62: $00
	rst  $38                                         ; $4e63: $ff
	nop                                              ; $4e64: $00
	rst  $38                                         ; $4e65: $ff
	nop                                              ; $4e66: $00
	rst  $38                                         ; $4e67: $ff
	nop                                              ; $4e68: $00
	rst  $38                                         ; $4e69: $ff
	nop                                              ; $4e6a: $00
	sub  l                                           ; $4e6b: $95
	nop                                              ; $4e6c: $00
	inc  bc                                          ; $4e6d: $03
	ld   bc, $0086                                   ; $4e6e: $01 $86 $00
	ld   [$ff0f], sp                                 ; $4e71: $08 $0f $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e74: $cf
	cp   $3f                                         ; $4e75: $fe $3f
	ld   sp, hl                                      ; $4e77: $f9
	rst  $38                                         ; $4e78: $ff
	push hl                                          ; $4e79: $e5
	dec  e                                           ; $4e7a: $1d
	add  l                                           ; $4e7b: $85
	nop                                              ; $4e7c: $00
	inc  b                                           ; $4e7d: $04
	ldh  a, [$ca]                                    ; $4e7e: $f0 $ca
	ld   a, [$f535]                                  ; $4e80: $fa $35 $f5
	add  b                                           ; $4e83: $80
	xor  d                                           ; $4e84: $aa
	add  b                                           ; $4e85: $80
	ld   d, l                                        ; $4e86: $55
	add  [hl]                                        ; $4e87: $86
	nop                                              ; $4e88: $00
	add  b                                           ; $4e89: $80
	xor  d                                           ; $4e8a: $aa
	add  b                                           ; $4e8b: $80
	ld   d, h                                        ; $4e8c: $54
	add  b                                           ; $4e8d: $80
	xor  b                                           ; $4e8e: $a8
	ld   [bc], a                                     ; $4e8f: $02
	ld   d, b                                        ; $4e90: $50
	cp   d                                           ; $4e91: $ba
	or   l                                           ; $4e92: $b5
	add  b                                           ; $4e93: $80
	xor  d                                           ; $4e94: $aa
	add  b                                           ; $4e95: $80
	or   l                                           ; $4e96: $b5
	add  b                                           ; $4e97: $80
	xor  d                                           ; $4e98: $aa
	add  b                                           ; $4e99: $80
	or   l                                           ; $4e9a: $b5
	add  b                                           ; $4e9b: $80
	xor  d                                           ; $4e9c: $aa
	add  b                                           ; $4e9d: $80
	or   l                                           ; $4e9e: $b5
	add  b                                           ; $4e9f: $80
	xor  d                                           ; $4ea0: $aa
	ld   bc, $2faf                                   ; $4ea1: $01 $af $2f
	add  c                                           ; $4ea4: $81
	daa                                              ; $4ea5: $27
	dec  bc                                          ; $4ea6: $0b
	rra                                              ; $4ea7: $1f
	inc  de                                          ; $4ea8: $13
	rra                                              ; $4ea9: $1f
	inc  de                                          ; $4eaa: $13
	rra                                              ; $4eab: $1f
	ld   [de], a                                     ; $4eac: $12
	rra                                              ; $4ead: $1f
	ld   de, $111f                                   ; $4eae: $11 $1f $11
	rra                                              ; $4eb1: $1f
	ld   l, d                                        ; $4eb2: $6a
	add  e                                           ; $4eb3: $83
	ld   a, a                                        ; $4eb4: $7f
	add  b                                           ; $4eb5: $80
	ccf                                              ; $4eb6: $3f
	add  b                                           ; $4eb7: $80
	ld   e, a                                        ; $4eb8: $5f
	add  b                                           ; $4eb9: $80
	dec  hl                                          ; $4eba: $2b
	add  b                                           ; $4ebb: $80
	ld   d, l                                        ; $4ebc: $55
	add  b                                           ; $4ebd: $80
	ld   a, [hl+]                                    ; $4ebe: $2a
	nop                                              ; $4ebf: $00
	rst  $38                                         ; $4ec0: $ff
	adc  c                                           ; $4ec1: $89
	ldh  a, [$80]                                    ; $4ec2: $f0 $80
	ld   [hl], b                                     ; $4ec4: $70
	add  b                                           ; $4ec5: $80
	and  b                                           ; $4ec6: $a0
	inc  b                                           ; $4ec7: $04
	add  hl, bc                                      ; $4ec8: $09
	rrca                                             ; $4ec9: $0f
	ld   a, [bc]                                     ; $4eca: $0a
	ld   h, a                                        ; $4ecb: $67
	ld   h, h                                        ; $4ecc: $64
	add  b                                           ; $4ecd: $80
	ld   [hl], c                                     ; $4ece: $71
	add  b                                           ; $4ecf: $80
	ld   a, b                                        ; $4ed0: $78
	add  l                                           ; $4ed1: $85
	nop                                              ; $4ed2: $00
	inc  c                                           ; $4ed3: $0c
	call z, $50fe                                    ; $4ed4: $cc $fe $50
	ei                                               ; $4ed7: $fb
	add  hl, bc                                      ; $4ed8: $09
	db   $dd                                         ; $4ed9: $dd
	dec  b                                           ; $4eda: $05
	and  $84                                         ; $4edb: $e6 $84
	ld   [hl], c                                     ; $4edd: $71
	ld   e, d                                        ; $4ede: $5a
	inc  e                                           ; $4edf: $1c
	dec  e                                           ; $4ee0: $1d
	add  b                                           ; $4ee1: $80
	ld   c, $07                                      ; $4ee2: $0e $07
	nop                                              ; $4ee4: $00
	add  b                                           ; $4ee5: $80
	rrc  e                                           ; $4ee6: $cb $0b
	ld   [hl], $66                                   ; $4ee8: $36 $66
	adc  c                                           ; $4eea: $89
	sbc  c                                           ; $4eeb: $99
	add  b                                           ; $4eec: $80
	ld   l, [hl]                                     ; $4eed: $6e
	add  hl, bc                                      ; $4eee: $09
	or   e                                           ; $4eef: $b3
	and  e                                           ; $4ef0: $a3
	call z, Call_07f_62d1                            ; $4ef1: $cc $d1 $62
	ld   l, a                                        ; $4ef4: $6f
	nop                                              ; $4ef5: $00
	rra                                              ; $4ef6: $1f
	sub  b                                           ; $4ef7: $90
	add  b                                           ; $4ef8: $80
	add  b                                           ; $4ef9: $80
	ldh  [$80], a                                    ; $4efa: $e0 $80
	or   b                                           ; $4efc: $b0
	add  b                                           ; $4efd: $80
	ld   h, b                                        ; $4efe: $60
	add  b                                           ; $4eff: $80
	sub  b                                           ; $4f00: $90
	add  b                                           ; $4f01: $80
	ldh  [$80], a                                    ; $4f02: $e0 $80
	jr   nc, jr_07f_4f07                             ; $4f04: $30 $01

	nop                                              ; $4f06: $00

jr_07f_4f07:
	db   $10                                         ; $4f07: $10
	add  d                                           ; $4f08: $82
	and  b                                           ; $4f09: $a0
	add  b                                           ; $4f0a: $80
	cp   [hl]                                        ; $4f0b: $be
	add  c                                           ; $4f0c: $81
	cp   a                                           ; $4f0d: $bf
	add  b                                           ; $4f0e: $80
	xor  a                                           ; $4f0f: $af
	add  b                                           ; $4f10: $80
	or   a                                           ; $4f11: $b7
	add  b                                           ; $4f12: $80
	xor  e                                           ; $4f13: $ab
	nop                                              ; $4f14: $00
	xor  a                                           ; $4f15: $af
	add  c                                           ; $4f16: $81
	rra                                              ; $4f17: $1f
	inc  c                                           ; $4f18: $0c
	rlca                                             ; $4f19: $07
	rra                                              ; $4f1a: $1f
	rrca                                             ; $4f1b: $0f
	daa                                              ; $4f1c: $27
	rlca                                             ; $4f1d: $07
	cpl                                              ; $4f1e: $2f
	daa                                              ; $4f1f: $27
	cpl                                              ; $4f20: $2f
	daa                                              ; $4f21: $27
	cpl                                              ; $4f22: $2f
	rlca                                             ; $4f23: $07
	cpl                                              ; $4f24: $2f
	ld   e, a                                        ; $4f25: $5f
	add  [hl]                                        ; $4f26: $86
	nop                                              ; $4f27: $00
	add  b                                           ; $4f28: $80
	ld   a, b                                        ; $4f29: $78
	add  e                                           ; $4f2a: $83
	ld   a, a                                        ; $4f2b: $7f
	nop                                              ; $4f2c: $00
	rst  $38                                         ; $4f2d: $ff
	adc  b                                           ; $4f2e: $88
	nop                                              ; $4f2f: $00
	add  e                                           ; $4f30: $83
	ldh  a, [rP1]                                    ; $4f31: $f0 $00
	pop  af                                          ; $4f33: $f1
	add  l                                           ; $4f34: $85
	cp   $80                                         ; $4f35: $fe $80
	or   $80                                         ; $4f37: $f6 $80
	add  $80                                         ; $4f39: $c6 $80
	ld   b, $04                                      ; $4f3b: $06 $04
	nop                                              ; $4f3d: $00
	rla                                              ; $4f3e: $17
	ld   [$fa1a], sp                                 ; $4f3f: $08 $1a $fa

jr_07f_4f42:
	add  b                                           ; $4f42: $80
	push af                                          ; $4f43: $f5
	add  b                                           ; $4f44: $80
	ld   [$d580], a                                  ; $4f45: $ea $80 $d5
	add  b                                           ; $4f48: $80
	xor  d                                           ; $4f49: $aa
	add  b                                           ; $4f4a: $80
	ld   d, l                                        ; $4f4b: $55
	add  b                                           ; $4f4c: $80
	xor  d                                           ; $4f4d: $aa
	add  b                                           ; $4f4e: $80
	ld   d, h                                        ; $4f4f: $54
	add  b                                           ; $4f50: $80
	xor  d                                           ; $4f51: $aa
	add  b                                           ; $4f52: $80
	ld   d, h                                        ; $4f53: $54
	add  b                                           ; $4f54: $80
	xor  d                                           ; $4f55: $aa
	add  b                                           ; $4f56: $80
	ld   d, b                                        ; $4f57: $50
	add  b                                           ; $4f58: $80

jr_07f_4f59:
	xor  b                                           ; $4f59: $a8
	add  b                                           ; $4f5a: $80

jr_07f_4f5b:
	nop                                              ; $4f5b: $00
	add  b                                           ; $4f5c: $80
	and  b                                           ; $4f5d: $a0
	add  b                                           ; $4f5e: $80
	nop                                              ; $4f5f: $00
	add  b                                           ; $4f60: $80
	and  b                                           ; $4f61: $a0
	add  b                                           ; $4f62: $80
	ld   b, b                                        ; $4f63: $40
	add  b                                           ; $4f64: $80
	add  b                                           ; $4f65: $80
	add  a                                           ; $4f66: $87
	nop                                              ; $4f67: $00
	nop                                              ; $4f68: $00
	ld   e, a                                        ; $4f69: $5f
	add  b                                           ; $4f6a: $80
	dec  d                                           ; $4f6b: $15
	add  b                                           ; $4f6c: $80
	ld   a, [bc]                                     ; $4f6d: $0a
	inc  e                                           ; $4f6e: $1c
	dec  d                                           ; $4f6f: $15
	rra                                              ; $4f70: $1f
	nop                                              ; $4f71: $00
	ld   [hl], c                                     ; $4f72: $71
	rst  $38                                         ; $4f73: $ff
	ld   e, e                                        ; $4f74: $5b
	rst  $38                                         ; $4f75: $ff
	dec  de                                          ; $4f76: $1b
	cp   a                                           ; $4f77: $bf
	add  hl, hl                                      ; $4f78: $29
	rra                                              ; $4f79: $1f
	ld   d, $1f                                      ; $4f7a: $16 $1f
	ld   de, $111f                                   ; $4f7c: $11 $1f $11
	rra                                              ; $4f7f: $1f
	add  hl, de                                      ; $4f80: $19
	rra                                              ; $4f81: $1f
	ld   [hl], b                                     ; $4f82: $70
	rst  $38                                         ; $4f83: $ff
	ld   l, h                                        ; $4f84: $6c
	rst  $38                                         ; $4f85: $ff
	cp   $ff                                         ; $4f86: $fe $ff
	or   e                                           ; $4f88: $b3
	rst  $38                                         ; $4f89: $ff
	add  hl, de                                      ; $4f8a: $19
	ld   d, l                                        ; $4f8b: $55
	add  b                                           ; $4f8c: $80
	ld   a, [hl+]                                    ; $4f8d: $2a
	add  b                                           ; $4f8e: $80
	ld   d, l                                        ; $4f8f: $55
	add  b                                           ; $4f90: $80
	ld   a, [hl+]                                    ; $4f91: $2a
	add  hl, bc                                      ; $4f92: $09
	dec  d                                           ; $4f93: $15
	push de                                          ; $4f94: $d5
	jp   nz, $61e2                                   ; $4f95: $c2 $e2 $61

	jp   hl                                          ; $4f98: $e9


	ld   [$c9f6], sp                                 ; $4f99: $08 $f6 $c9
	ld   d, b                                        ; $4f9c: $50
	add  b                                           ; $4f9d: $80
	and  b                                           ; $4f9e: $a0
	add  b                                           ; $4f9f: $80
	ld   d, b                                        ; $4fa0: $50
	add  b                                           ; $4fa1: $80
	and  b                                           ; $4fa2: $a0
	add  b                                           ; $4fa3: $80
	ld   d, b                                        ; $4fa4: $50
	add  b                                           ; $4fa5: $80
	and  b                                           ; $4fa6: $a0
	add  b                                           ; $4fa7: $80
	ld   d, b                                        ; $4fa8: $50
	add  b                                           ; $4fa9: $80
	jr   nz, jr_07f_4fac                             ; $4faa: $20 $00

jr_07f_4fac:
	rrca                                             ; $4fac: $0f
	add  d                                           ; $4fad: $82
	nop                                              ; $4fae: $00
	add  b                                           ; $4faf: $80
	inc  b                                           ; $4fb0: $04
	add  b                                           ; $4fb1: $80
	ld   [bc], a                                     ; $4fb2: $02
	add  b                                           ; $4fb3: $80
	ld   bc, $0083                                   ; $4fb4: $01 $83 $00
	ld   [bc], a                                     ; $4fb7: $02
	dec  d                                           ; $4fb8: $15
	dec  de                                          ; $4fb9: $1b
	ld   l, $80                                      ; $4fba: $2e $80
	jr   nc, jr_07f_4f42                             ; $4fbc: $30 $84

	jr   nz, @-$7e                                   ; $4fbe: $20 $80

	and  b                                           ; $4fc0: $a0
	dec  d                                           ; $4fc1: $15
	ld   h, b                                        ; $4fc2: $60
	ld   b, b                                        ; $4fc3: $40
	jr   nz, @-$46                                   ; $4fc4: $20 $b8

	call c, $e447                                    ; $4fc6: $dc $47 $e4
	and  $70                                         ; $4fc9: $e6 $70
	ld   [hl], l                                     ; $4fcb: $75
	jr   c, jr_07f_4ffc                              ; $4fcc: $38 $2e

	inc  c                                           ; $4fce: $0c
	add  hl, de                                      ; $4fcf: $19
	nop                                              ; $4fd0: $00
	inc  b                                           ; $4fd1: $04
	nop                                              ; $4fd2: $00
	ld   [bc], a                                     ; $4fd3: $02
	nop                                              ; $4fd4: $00
	adc  $e0                                         ; $4fd5: $ce $e0
	jr   nz, jr_07f_4f59                             ; $4fd7: $20 $80

	jr   nc, jr_07f_4f5b                             ; $4fd9: $30 $80

	add  b                                           ; $4fdb: $80
	add  b                                           ; $4fdc: $80
	ldh  [$80], a                                    ; $4fdd: $e0 $80
	ld   [hl], b                                     ; $4fdf: $70
	add  b                                           ; $4fe0: $80
	sub  b                                           ; $4fe1: $90
	add  b                                           ; $4fe2: $80
	ret  nz                                          ; $4fe3: $c0

	ld   bc, $10e0                                   ; $4fe4: $01 $e0 $10
	add  b                                           ; $4fe7: $80
	xor  d                                           ; $4fe8: $aa
	add  b                                           ; $4fe9: $80
	ld   d, b                                        ; $4fea: $50
	add  b                                           ; $4feb: $80
	xor  d                                           ; $4fec: $aa
	add  b                                           ; $4fed: $80
	ld   b, b                                        ; $4fee: $40
	add  b                                           ; $4fef: $80
	xor  b                                           ; $4ff0: $a8
	add  c                                           ; $4ff1: $81
	nop                                              ; $4ff2: $00
	add  b                                           ; $4ff3: $80
	ldh  [rDIV], a                                   ; $4ff4: $e0 $04
	rlca                                             ; $4ff6: $07
	nop                                              ; $4ff7: $00
	jr   c, jr_07f_4ffa                              ; $4ff8: $38 $00

jr_07f_4ffa:
	ret  nz                                          ; $4ffa: $c0

	add  b                                           ; $4ffb: $80

jr_07f_4ffc:
	nop                                              ; $4ffc: $00
	add  b                                           ; $4ffd: $80
	rlca                                             ; $4ffe: $07
	rlca                                             ; $4fff: $07
	rra                                              ; $5000: $1f
	inc  e                                           ; $5001: $1c
	rra                                              ; $5002: $1f
	dec  de                                          ; $5003: $1b
	rra                                              ; $5004: $1f
	rla                                              ; $5005: $17
	rra                                              ; $5006: $1f
	ld   l, a                                        ; $5007: $6f
	adc  l                                           ; $5008: $8d
	nop                                              ; $5009: $00
	nop                                              ; $500a: $00
	add  b                                           ; $500b: $80
	add  b                                           ; $500c: $80
	xor  d                                           ; $500d: $aa
	add  b                                           ; $500e: $80
	ld   d, b                                        ; $500f: $50
	add  b                                           ; $5010: $80
	xor  d                                           ; $5011: $aa
	add  b                                           ; $5012: $80
	ld   b, b                                        ; $5013: $40
	rlca                                             ; $5014: $07
	xor  b                                           ; $5015: $a8
	xor  e                                           ; $5016: $ab
	nop                                              ; $5017: $00

jr_07f_5018:
	inc  c                                           ; $5018: $0c
	ld   [bc], a                                     ; $5019: $02
	ldh  a, [c]                                      ; $501a: $f2
	adc  $31                                         ; $501b: $ce $31
	adc  l                                           ; $501d: $8d

jr_07f_501e:
	nop                                              ; $501e: $00
	nop                                              ; $501f: $00
	rst  $38                                         ; $5020: $ff
	add  b                                           ; $5021: $80
	nop                                              ; $5022: $00
	nop                                              ; $5023: $00
	add  b                                           ; $5024: $80
	add  b                                           ; $5025: $80
	nop                                              ; $5026: $00
	add  b                                           ; $5027: $80
	add  b                                           ; $5028: $80
	ld   bc, $3f00                                   ; $5029: $01 $00 $3f
	add  b                                           ; $502c: $80
	add  b                                           ; $502d: $80
	add  b                                           ; $502e: $80
	ccf                                              ; $502f: $3f
	add  c                                           ; $5030: $81
	cp   a                                           ; $5031: $bf
	ld   bc, $0100                                   ; $5032: $01 $00 $01
	add  e                                           ; $5035: $83
	nop                                              ; $5036: $00
	ld   bc, $9802                                   ; $5037: $01 $02 $98
	add  d                                           ; $503a: $82
	jr   @-$7e                                       ; $503b: $18 $80

	sbc  b                                           ; $503d: $98
	ld   b, $9b                                      ; $503e: $06 $9b
	ld   [hl], b                                     ; $5040: $70
	ld   h, b                                        ; $5041: $60
	rst  $30                                         ; $5042: $f7
	sub  a                                           ; $5043: $97
	rst  $20                                         ; $5044: $e7
	ld   h, a                                        ; $5045: $67
	add  b                                           ; $5046: $80
	rst  $30                                         ; $5047: $f7
	add  b                                           ; $5048: $80
	rst  $20                                         ; $5049: $e7
	add  b                                           ; $504a: $80
	rst  $10                                         ; $504b: $d7
	add  b                                           ; $504c: $80
	and  a                                           ; $504d: $a7
	ld   b, $47                                      ; $504e: $06 $47
	or   c                                           ; $5050: $b1
	nop                                              ; $5051: $00
	ld   d, h                                        ; $5052: $54
	xor  b                                           ; $5053: $a8
	ld   d, b                                        ; $5054: $50
	ld   b, b                                        ; $5055: $40
	add  b                                           ; $5056: $80
	xor  b                                           ; $5057: $a8
	add  b                                           ; $5058: $80
	ld   b, b                                        ; $5059: $40
	inc  e                                           ; $505a: $1c
	ld   hl, sp+$28                                  ; $505b: $f8 $28
	db   $10                                         ; $505d: $10
	sub  b                                           ; $505e: $90
	xor  b                                           ; $505f: $a8
	jr   z, jr_07f_509c                              ; $5060: $28 $3a

	nop                                              ; $5062: $00
	inc  c                                           ; $5063: $0c
	nop                                              ; $5064: $00
	ld   [$ed08], a                                  ; $5065: $ea $08 $ed
	inc  b                                           ; $5068: $04
	sub  [hl]                                        ; $5069: $96
	ld   h, [hl]                                     ; $506a: $66
	ld   [bc], a                                     ; $506b: $02
	ld   a, d                                        ; $506c: $7a
	adc  a                                           ; $506d: $8f
	inc  bc                                          ; $506e: $03
	adc  c                                           ; $506f: $89
	ld   [hl], c                                     ; $5070: $71
	ei                                               ; $5071: $fb
	sbc  [hl]                                        ; $5072: $9e
	sub  d                                           ; $5073: $92
	ld   a, $2e                                      ; $5074: $3e $2e
	ld   a, [hl-]                                    ; $5076: $3a
	ld   a, [de]                                     ; $5077: $1a
	add  b                                           ; $5078: $80
	ld   [hl-], a                                    ; $5079: $32
	add  b                                           ; $507a: $80
	ld   h, $80                                      ; $507b: $26 $80
	adc  d                                           ; $507d: $8a
	add  b                                           ; $507e: $80
	sub  d                                           ; $507f: $92
	ld   bc, $38a6                                   ; $5080: $01 $a6 $38
	add  b                                           ; $5083: $80
	jr   jr_07f_5089                                 ; $5084: $18 $03

	inc  e                                           ; $5086: $1c
	ld   a, [bc]                                     ; $5087: $0a
	inc  c                                           ; $5088: $0c

jr_07f_5089:
	inc  l                                           ; $5089: $2c
	add  c                                           ; $508a: $81
	inc  c                                           ; $508b: $0c
	add  hl, bc                                      ; $508c: $09
	nop                                              ; $508d: $00
	ld   b, $14                                      ; $508e: $06 $14
	ld   b, $04                                      ; $5090: $06 $04
	ld   [hl], $17                                   ; $5092: $36 $17
	ld   e, b                                        ; $5094: $58
	add  hl, hl                                      ; $5095: $29
	jr   z, jr_07f_5018                              ; $5096: $28 $80

	ld   e, b                                        ; $5098: $58
	add  b                                           ; $5099: $80
	jr   z, @-$7e                                    ; $509a: $28 $80

jr_07f_509c:
	jr   jr_07f_501e                                 ; $509c: $18 $80

	jr   z, jr_07f_50a5                              ; $509e: $28 $05

	db   $10                                         ; $50a0: $10
	jr   jr_07f_50c3                                 ; $50a1: $18 $20

	jr   z, jr_07f_50fc                              ; $50a3: $28 $57

jr_07f_50a5:
	ld   d, b                                        ; $50a5: $50
	add  b                                           ; $50a6: $80
	jr   nc, jr_07f_50b5                             ; $50a7: $30 $0c

	ld   d, b                                        ; $50a9: $50
	db   $10                                         ; $50aa: $10
	ret  nz                                          ; $50ab: $c0

	nop                                              ; $50ac: $00
	ld   b, b                                        ; $50ad: $40
	nop                                              ; $50ae: $00
	ld   h, b                                        ; $50af: $60
	nop                                              ; $50b0: $00
	ld   b, b                                        ; $50b1: $40
	nop                                              ; $50b2: $00
	stop                                             ; $50b3: $10 $00

jr_07f_50b5:
	db   $fd                                         ; $50b5: $fd
	add  e                                           ; $50b6: $83
	nop                                              ; $50b7: $00
	add  b                                           ; $50b8: $80
	ld   [$1080], sp                                 ; $50b9: $08 $80 $10
	add  b                                           ; $50bc: $80
	nop                                              ; $50bd: $00
	add  b                                           ; $50be: $80
	ld   d, b                                        ; $50bf: $50
	add  b                                           ; $50c0: $80
	nop                                              ; $50c1: $00
	inc  b                                           ; $50c2: $04

jr_07f_50c3:
	rst  $10                                         ; $50c3: $d7
	ld   a, [bc]                                     ; $50c4: $0a
	ld   a, [hl+]                                    ; $50c5: $2a
	ld   a, [bc]                                     ; $50c6: $0a
	ld   h, d                                        ; $50c7: $62
	add  c                                           ; $50c8: $81
	ld   a, [bc]                                     ; $50c9: $0a
	ld   [$0a6e], sp                                 ; $50ca: $08 $6e $0a
	ldh  [c], a                                      ; $50cd: $e2
	ld   [bc], a                                     ; $50ce: $02
	ld   [hl+], a                                    ; $50cf: $22
	ld   [bc], a                                     ; $50d0: $02
	ldh  [rP1], a                                    ; $50d1: $e0 $00
	dec  hl                                          ; $50d3: $2b
	adc  l                                           ; $50d4: $8d
	ld   a, $00                                      ; $50d5: $3e $00
	pop  bc                                          ; $50d7: $c1
	cp   l                                           ; $50d8: $bd
	nop                                              ; $50d9: $00
	inc  b                                           ; $50da: $04
	rst  $38                                         ; $50db: $ff
	add  b                                           ; $50dc: $80
	ldh  [$9f], a                                    ; $50dd: $e0 $9f
	rst  $38                                         ; $50df: $ff
	add  c                                           ; $50e0: $81
	add  b                                           ; $50e1: $80
	inc  bc                                          ; $50e2: $03
	ccf                                              ; $50e3: $3f
	nop                                              ; $50e4: $00
	cp   a                                           ; $50e5: $bf
	add  b                                           ; $50e6: $80
	add  b                                           ; $50e7: $80
	nop                                              ; $50e8: $00
	nop                                              ; $50e9: $00
	add  c                                           ; $50ea: $81
	add  b                                           ; $50eb: $80
	add  b                                           ; $50ec: $80
	inc  bc                                          ; $50ed: $03
	nop                                              ; $50ee: $00
	ld   [bc], a                                     ; $50ef: $02
	ld   hl, sp-$06                                  ; $50f0: $f8 $fa
	add  c                                           ; $50f2: $81
	nop                                              ; $50f3: $00
	ld   [$08f0], sp                                 ; $50f4: $08 $f0 $08
	and  b                                           ; $50f7: $a0
	ld   [$19f0], sp                                 ; $50f8: $08 $f0 $19
	ret                                              ; $50fb: $c9


jr_07f_50fc:
	ld   [$8089], sp                                 ; $50fc: $08 $89 $80
	add  a                                           ; $50ff: $87
	add  d                                           ; $5100: $82
	rlca                                             ; $5101: $07
	ld   a, [bc]                                     ; $5102: $0a
	scf                                              ; $5103: $37
	rst  $20                                         ; $5104: $e7
	rst  $30                                         ; $5105: $f7
	ld   [hl], a                                     ; $5106: $77
	ld   d, a                                        ; $5107: $57
	rla                                              ; $5108: $17
	rst  $20                                         ; $5109: $e7
	rlca                                             ; $510a: $07
	rst  $30                                         ; $510b: $f7
	dec  c                                           ; $510c: $0d
	nop                                              ; $510d: $00
	add  b                                           ; $510e: $80
	xor  b                                           ; $510f: $a8
	add  b                                           ; $5110: $80
	nop                                              ; $5111: $00
	add  b                                           ; $5112: $80
	add  b                                           ; $5113: $80
	add  [hl]                                        ; $5114: $86
	nop                                              ; $5115: $00
	inc  b                                           ; $5116: $04
	ld   [hl], e                                     ; $5117: $73
	ld   [hl], b                                     ; $5118: $70
	ld   b, $00                                      ; $5119: $06 $00
	rst  $38                                         ; $511b: $ff
	add  c                                           ; $511c: $81
	nop                                              ; $511d: $00
	add  hl, bc                                      ; $511e: $09
	ld   b, [hl]                                     ; $511f: $46
	nop                                              ; $5120: $00
	ld   [$6402], a                                  ; $5121: $ea $02 $64
	inc  b                                           ; $5124: $04
	inc  l                                           ; $5125: $2c
	inc  c                                           ; $5126: $0c
	ldh  [$b0], a                                    ; $5127: $e0 $b0
	add  c                                           ; $5129: $81

jr_07f_512a:
	add  b                                           ; $512a: $80
	dec  b                                           ; $512b: $05
	nop                                              ; $512c: $00
	add  b                                           ; $512d: $80

jr_07f_512e:
	nop                                              ; $512e: $00
	ld   b, $00                                      ; $512f: $06 $00
	sbc  b                                           ; $5131: $98

jr_07f_5132:
	add  e                                           ; $5132: $83
	sub  h                                           ; $5133: $94
	inc  bc                                          ; $5134: $03
	ld   sp, $3a3b                                   ; $5135: $31 $3b $3a
	dec  sp                                          ; $5138: $3b
	add  d                                           ; $5139: $82
	ld   bc, $041a                                   ; $513a: $01 $1a $04

jr_07f_513d:
	nop                                              ; $513d: $00

jr_07f_513e:
	ld   b, h                                        ; $513e: $44
	nop                                              ; $513f: $00
	rst  $38                                         ; $5140: $ff
	nop                                              ; $5141: $00
	rst  $38                                         ; $5142: $ff
	nop                                              ; $5143: $00
	sbc  a                                           ; $5144: $9f
	jr   jr_07f_51bf                                 ; $5145: $18 $78

	add  b                                           ; $5147: $80
	nop                                              ; $5148: $00
	ret  nz                                          ; $5149: $c0

	add  b                                           ; $514a: $80
	ldh  [rP1], a                                    ; $514b: $e0 $00
	ldh  a, [$3c]                                    ; $514d: $f0 $3c
	db   $10                                         ; $514f: $10
	db   $fc                                         ; $5150: $fc
	nop                                              ; $5151: $00
	add  b                                           ; $5152: $80
	nop                                              ; $5153: $00
	add  [hl]                                        ; $5154: $86
	nop                                              ; $5155: $00
	inc  b                                           ; $5156: $04
	add  c                                           ; $5157: $81
	nop                                              ; $5158: $00
	dec  bc                                          ; $5159: $0b
	dec  b                                           ; $515a: $05
	nop                                              ; $515b: $00
	rlca                                             ; $515c: $07
	nop                                              ; $515d: $00
	rlca                                             ; $515e: $07
	nop                                              ; $515f: $00
	rlca                                             ; $5160: $07
	nop                                              ; $5161: $00
	ld   bc, $ab00                                   ; $5162: $01 $00 $ab
	ld   b, b                                        ; $5165: $40
	add  b                                           ; $5166: $80
	nop                                              ; $5167: $00
	inc  e                                           ; $5168: $1c
	ret  nz                                          ; $5169: $c0

	nop                                              ; $516a: $00
	stop                                             ; $516b: $10 $00
	jr   nc, jr_07f_516f                             ; $516d: $30 $00

jr_07f_516f:
	pop  af                                          ; $516f: $f1
	nop                                              ; $5170: $00
	ei                                               ; $5171: $fb
	nop                                              ; $5172: $00
	db   $fc                                         ; $5173: $fc
	nop                                              ; $5174: $00
	scf                                              ; $5175: $37
	nop                                              ; $5176: $00
	jr   nz, jr_07f_5179                             ; $5177: $20 $00

jr_07f_5179:
	ldh  [c], a                                      ; $5179: $e2
	nop                                              ; $517a: $00
	db   $e3                                         ; $517b: $e3
	nop                                              ; $517c: $00
	ld   [$ff00], a                                  ; $517d: $ea $00 $ff
	nop                                              ; $5180: $00
	rst  $38                                         ; $5181: $ff
	nop                                              ; $5182: $00
	ld   bc, $3f00                                   ; $5183: $01 $00 $3f
	add  l                                           ; $5186: $85
	nop                                              ; $5187: $00
	ld   [$ffe5], sp                                 ; $5188: $08 $e5 $ff
	ld   e, e                                        ; $518b: $5b
	rst  $38                                         ; $518c: $ff
	dec  de                                          ; $518d: $1b
	cp   a                                           ; $518e: $bf
	add  hl, hl                                      ; $518f: $29
	rra                                              ; $5190: $1f
	db   $ed                                         ; $5191: $ed
	cp   l                                           ; $5192: $bd
	nop                                              ; $5193: $00

jr_07f_5194:
	nop                                              ; $5194: $00
	rst  $38                                         ; $5195: $ff
	add  c                                           ; $5196: $81
	add  b                                           ; $5197: $80
	inc  bc                                          ; $5198: $03
	jr   nz, jr_07f_519b                             ; $5199: $20 $00

jr_07f_519b:
	sub  d                                           ; $519b: $92
	add  b                                           ; $519c: $80
	add  b                                           ; $519d: $80
	nop                                              ; $519e: $00
	ld   bc, $9098                                   ; $519f: $01 $98 $90
	add  d                                           ; $51a2: $82
	jr   jr_07f_51a6                                 ; $51a3: $18 $01

	ld   d, e                                        ; $51a5: $53

jr_07f_51a6:
	jr   @-$7e                                       ; $51a6: $18 $80

	jr   z, jr_07f_512a                              ; $51a8: $28 $80

	ld   e, b                                        ; $51aa: $58
	add  b                                           ; $51ab: $80
	jr   z, jr_07f_512e                              ; $51ac: $28 $80

	ld   e, b                                        ; $51ae: $58
	add  b                                           ; $51af: $80
	jr   z, jr_07f_5132                              ; $51b0: $28 $80

	ld   e, b                                        ; $51b2: $58
	add  b                                           ; $51b3: $80
	jr   z, jr_07f_51b6                              ; $51b4: $28 $00

jr_07f_51b6:
	ld   d, $81                                      ; $51b6: $16 $81
	stop                                             ; $51b8: $10 $00
	jr   nc, jr_07f_513d                             ; $51ba: $30 $81

	jr   nz, jr_07f_513e                             ; $51bc: $20 $80

	ld   b, b                                        ; $51be: $40

jr_07f_51bf:
	ld   bc, $a0b0                                   ; $51bf: $01 $b0 $a0
	add  b                                           ; $51c2: $80
	ld   b, b                                        ; $51c3: $40
	add  b                                           ; $51c4: $80
	or   b                                           ; $51c5: $b0
	nop                                              ; $51c6: $00
	dec  c                                           ; $51c7: $0d
	adc  l                                           ; $51c8: $8d
	nop                                              ; $51c9: $00
	ld   a, [bc]                                     ; $51ca: $0a
	sub  [hl]                                        ; $51cb: $96
	add  b                                           ; $51cc: $80
	adc  [hl]                                        ; $51cd: $8e
	adc  h                                           ; $51ce: $8c
	ld   l, d                                        ; $51cf: $6a
	ld   [$8280], a                                  ; $51d0: $ea $80 $82
	dec  [hl]                                        ; $51d3: $35
	and  $b2                                         ; $51d4: $e6 $b2
	add  c                                           ; $51d6: $81
	ld   b, $0a                                      ; $51d7: $06 $0a
	ld   a, [hl+]                                    ; $51d9: $2a
	ld   c, $0b                                      ; $51da: $0e $0b
	sub  b                                           ; $51dc: $90
	add  h                                           ; $51dd: $84
	adc  h                                           ; $51de: $8c
	cp   h                                           ; $51df: $bc
	add  b                                           ; $51e0: $80
	ld   a, $00                                      ; $51e1: $3e $00
	add  b                                           ; $51e3: $80
	add  l                                           ; $51e4: $85
	nop                                              ; $51e5: $00
	nop                                              ; $51e6: $00
	pop  bc                                          ; $51e7: $c1
	rst  $38                                         ; $51e8: $ff
	nop                                              ; $51e9: $00
	rst  $38                                         ; $51ea: $ff
	nop                                              ; $51eb: $00
	rst  $38                                         ; $51ec: $ff
	nop                                              ; $51ed: $00
	rst  $38                                         ; $51ee: $ff
	nop                                              ; $51ef: $00
	rst  $38                                         ; $51f0: $ff
	nop                                              ; $51f1: $00
	rst  $38                                         ; $51f2: $ff
	nop                                              ; $51f3: $00
	rst  $38                                         ; $51f4: $ff
	nop                                              ; $51f5: $00
	sub  [hl]                                        ; $51f6: $96
	nop                                              ; $51f7: $00
	inc  h                                           ; $51f8: $24
	ld   bc, $0f00                                   ; $51f9: $01 $00 $0f
	add  c                                           ; $51fc: $81
	nop                                              ; $51fd: $00

jr_07f_51fe:
	add  b                                           ; $51fe: $80
	rrca                                             ; $51ff: $0f
	adc  b                                           ; $5200: $88
	nop                                              ; $5201: $00
	nop                                              ; $5202: $00
	ldh  a, [$81]                                    ; $5203: $f0 $81
	nop                                              ; $5205: $00
	ld   [bc], a                                     ; $5206: $02
	ret  nz                                          ; $5207: $c0

	rst  ToBoot                                         ; $5208: $c7
	ld   b, a                                        ; $5209: $47
	add  c                                           ; $520a: $81
	ld   b, b                                        ; $520b: $40
	nop                                              ; $520c: $00

jr_07f_520d:
	nop                                              ; $520d: $00
	add  e                                           ; $520e: $83
	jr   nz, jr_07f_5212                             ; $520f: $20 $01

jr_07f_5211:
	nop                                              ; $5211: $00

jr_07f_5212:
	jr   nz, jr_07f_5194                             ; $5212: $20 $80

	nop                                              ; $5214: $00
	ld   [bc], a                                     ; $5215: $02
	cpl                                              ; $5216: $2f
	rst  $38                                         ; $5217: $ff
	ret  nc                                          ; $5218: $d0

	adc  e                                           ; $5219: $8b
	nop                                              ; $521a: $00
	ld   [bc], a                                     ; $521b: $02
	ldh  [$e3], a                                    ; $521c: $e0 $e3
	inc  hl                                          ; $521e: $23
	add  c                                           ; $521f: $81
	jr   nz, jr_07f_5222                             ; $5220: $20 $00

jr_07f_5222:
	nop                                              ; $5222: $00
	add  e                                           ; $5223: $83

jr_07f_5224:
	db   $10                                         ; $5224: $10
	ld   bc, $2030                                   ; $5225: $01 $30 $20
	add  b                                           ; $5228: $80
	nop                                              ; $5229: $00
	ld   [bc], a                                     ; $522a: $02
	rla                                              ; $522b: $17
	rst  $38                                         ; $522c: $ff
	add  sp, -$75                                    ; $522d: $e8 $8b
	nop                                              ; $522f: $00
	ld   [bc], a                                     ; $5230: $02
	ldh  a, [$f1]                                    ; $5231: $f0 $f1
	ld   de, $1081                                   ; $5233: $11 $81 $10
	nop                                              ; $5236: $00
	nop                                              ; $5237: $00
	add  e                                           ; $5238: $83
	ld   [$4801], sp                                 ; $5239: $08 $01 $48
	ld   b, b                                        ; $523c: $40
	add  b                                           ; $523d: $80
	nop                                              ; $523e: $00
	ld   [bc], a                                     ; $523f: $02
	dec  bc                                          ; $5240: $0b
	rst  $38                                         ; $5241: $ff
	db   $f4                                         ; $5242: $f4
	add  a                                           ; $5243: $87
	nop                                              ; $5244: $00
	add  b                                           ; $5245: $80
	ld   bc, $0080                                   ; $5246: $01 $80 $00
	add  b                                           ; $5249: $80
	ld   hl, sp-$7e                                  ; $524a: $f8 $82
	ld   [$0480], sp                                 ; $524c: $08 $80 $04
	add  b                                           ; $524f: $80
	dec  b                                           ; $5250: $05
	ld   a, [bc]                                     ; $5251: $0a
	inc  b                                           ; $5252: $04
	dec  b                                           ; $5253: $05
	ld   bc, $8707                                   ; $5254: $01 $07 $87
	and  a                                           ; $5257: $a7
	rst  $20                                         ; $5258: $e7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5259: $cf
	adc  a                                           ; $525a: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $525b: $cf
	ld   c, a                                        ; $525c: $4f
	add  d                                           ; $525d: $82
	rra                                              ; $525e: $1f
	add  d                                           ; $525f: $82
	ccf                                              ; $5260: $3f
	adc  l                                           ; $5261: $8d
	rst  $38                                         ; $5262: $ff
	ld   bc, $040b                                   ; $5263: $01 $0b $04
	add  b                                           ; $5266: $80
	ld   [$0104], sp                            ; $5267: $08 $04 $01
	inc  bc                                          ; $526a: $03
	nop                                              ; $526b: $00
	ld   b, $04                                      ; $526c: $06 $04
	add  c                                           ; $526e: $81
	nop                                              ; $526f: $00
	add  b                                           ; $5270: $80
	inc  bc                                          ; $5271: $03
	add  b                                           ; $5272: $80
	nop                                              ; $5273: $00
	ld   bc, $08f8                                   ; $5274: $01 $f8 $08
	add  b                                           ; $5277: $80
	db   $10                                         ; $5278: $10
	add  b                                           ; $5279: $80
	add  b                                           ; $527a: $80
	add  b                                           ; $527b: $80
	jr   jr_07f_51fe                                 ; $527c: $18 $80

	inc  h                                           ; $527e: $24
	add  b                                           ; $527f: $80
	nop                                              ; $5280: $00
	add  b                                           ; $5281: $80
	ld   b, $80                                      ; $5282: $06 $80
	adc  b                                           ; $5284: $88
	dec  b                                           ; $5285: $05
	jr   nc, jr_07f_52f8                             ; $5286: $30 $70

	ld   b, c                                        ; $5288: $41
	add  c                                           ; $5289: $81
	or   b                                           ; $528a: $b0
	jr   nc, jr_07f_520d                             ; $528b: $30 $80

jr_07f_528d:
	ld   b, b                                        ; $528d: $40
	add  b                                           ; $528e: $80
	jr   jr_07f_5211                                 ; $528f: $18 $80

	jr   nz, jr_07f_5298                             ; $5291: $20 $05

	ld   bc, $0203                                   ; $5293: $01 $03 $02
	inc  b                                           ; $5296: $04
	push bc                                          ; $5297: $c5

jr_07f_5298:
	pop  bc                                          ; $5298: $c1
	add  b                                           ; $5299: $80
	ld   [bc], a                                     ; $529a: $02
	add  b                                           ; $529b: $80
	ld   h, b                                        ; $529c: $60
	add  b                                           ; $529d: $80
	add  b                                           ; $529e: $80
	add  b                                           ; $529f: $80
	inc  c                                           ; $52a0: $0c
	add  b                                           ; $52a1: $80
	jr   jr_07f_5224                                 ; $52a2: $18 $80

	add  c                                           ; $52a4: $81
	add  b                                           ; $52a5: $80
	ld   b, d                                        ; $52a6: $42
	rlca                                             ; $52a7: $07
	add  b                                           ; $52a8: $80
	add  h                                           ; $52a9: $84
	inc  b                                           ; $52aa: $04
	add  hl, bc                                      ; $52ab: $09
	ld   bc, $6b29                                   ; $52ac: $01 $29 $6b
	ld   c, d                                        ; $52af: $4a
	add  b                                           ; $52b0: $80
	rlca                                             ; $52b1: $07
	add  b                                           ; $52b2: $80
	dec  bc                                          ; $52b3: $0b
	add  b                                           ; $52b4: $80
	adc  e                                           ; $52b5: $8b
	add  b                                           ; $52b6: $80
	nop                                              ; $52b7: $00
	add  b                                           ; $52b8: $80
	ld   b, c                                        ; $52b9: $41
	add  b                                           ; $52ba: $80
	ld   [bc], a                                     ; $52bb: $02
	add  b                                           ; $52bc: $80
	ld   h, b                                        ; $52bd: $60
	add  b                                           ; $52be: $80
	ld   bc, $1805                                   ; $52bf: $01 $05 $18
	jr   c, jr_07f_52c8                              ; $52c2: $38 $04

	ld   h, h                                        ; $52c4: $64
	nop                                              ; $52c5: $00
	ld   b, b                                        ; $52c6: $40
	add  b                                           ; $52c7: $80

jr_07f_52c8:
	nop                                              ; $52c8: $00
	add  b                                           ; $52c9: $80
	add  e                                           ; $52ca: $83
	add  b                                           ; $52cb: $80
	inc  b                                           ; $52cc: $04
	add  hl, bc                                      ; $52cd: $09
	ld   h, b                                        ; $52ce: $60
	ldh  [$80], a                                    ; $52cf: $e0 $80
	nop                                              ; $52d1: $00
	inc  d                                           ; $52d2: $14
	inc  e                                           ; $52d3: $1c
	ld   [hl+], a                                    ; $52d4: $22
	ld   a, [hl-]                                    ; $52d5: $3a
	jr   nc, jr_07f_52f8                             ; $52d6: $30 $20

	add  b                                           ; $52d8: $80
	nop                                              ; $52d9: $00
	add  b                                           ; $52da: $80
	inc  bc                                          ; $52db: $03
	add  b                                           ; $52dc: $80
	ld   b, $80                                      ; $52dd: $06 $80
	ld   h, b                                        ; $52df: $60
	add  b                                           ; $52e0: $80
	sub  b                                           ; $52e1: $90
	add  d                                           ; $52e2: $82
	nop                                              ; $52e3: $00
	dec  b                                           ; $52e4: $05
	jr   @+$3a                                       ; $52e5: $18 $38

	inc  h                                           ; $52e7: $24
	ld   b, h                                        ; $52e8: $44
	ld   b, d                                        ; $52e9: $42
	ld   [bc], a                                     ; $52ea: $02
	add  b                                           ; $52eb: $80
	sbc  b                                           ; $52ec: $98
	add  b                                           ; $52ed: $80
	inc  h                                           ; $52ee: $24
	add  b                                           ; $52ef: $80
	nop                                              ; $52f0: $00
	add  b                                           ; $52f1: $80
	ld   h, b                                        ; $52f2: $60
	add  b                                           ; $52f3: $80

jr_07f_52f4:
	jp   nc, $9380                                   ; $52f4: $d2 $80 $93

	add  b                                           ; $52f7: $80

jr_07f_52f8:
	dec  c                                           ; $52f8: $0d
	add  b                                           ; $52f9: $80
	db   $10                                         ; $52fa: $10
	dec  b                                           ; $52fb: $05
	inc  hl                                          ; $52fc: $23
	daa                                              ; $52fd: $27
	nop                                              ; $52fe: $00
	inc  c                                           ; $52ff: $0c
	nop                                              ; $5300: $00
	ld   [$4380], sp                                 ; $5301: $08 $80 $43
	add  b                                           ; $5304: $80
	ld   b, d                                        ; $5305: $42
	add  b                                           ; $5306: $80
	ret  z                                           ; $5307: $c8

	add  b                                           ; $5308: $80
	cp   b                                           ; $5309: $b8

jr_07f_530a:
	add  b                                           ; $530a: $80
	jr   nc, jr_07f_528d                             ; $530b: $30 $80

	ld   b, c                                        ; $530d: $41
	inc  bc                                          ; $530e: $03
	inc  b                                           ; $530f: $04
	inc  c                                           ; $5310: $0c
	jr   jr_07f_5323                                 ; $5311: $18 $10

	add  c                                           ; $5313: $81
	nop                                              ; $5314: $00
	ld   b, $0c                                      ; $5315: $06 $0c
	ld   a, [bc]                                     ; $5317: $0a
	ld   e, $10                                      ; $5318: $1e $10
	jr   c, @-$0e                                    ; $531a: $38 $f0

	ret  nz                                          ; $531c: $c0

	add  b                                           ; $531d: $80
	ld   bc, $0805                                   ; $531e: $01 $05 $08
	jr   jr_07f_5323                                 ; $5321: $18 $00

jr_07f_5323:
	jr   nc, jr_07f_5327                             ; $5323: $30 $02

	ld   [hl+], a                                    ; $5325: $22
	add  b                                           ; $5326: $80

jr_07f_5327:
	inc  b                                           ; $5327: $04
	add  d                                           ; $5328: $82
	nop                                              ; $5329: $00
	add  b                                           ; $532a: $80
	jp   $0480                                       ; $532b: $c3 $80 $04


	add  b                                           ; $532e: $80
	ld   [hl], b                                     ; $532f: $70
	inc  bc                                          ; $5330: $03
	nop                                              ; $5331: $00
	ld   b, b                                        ; $5332: $40
	ld   b, [hl]                                     ; $5333: $46
	ld   b, $80                                      ; $5334: $06 $80
	dec  c                                           ; $5336: $0d
	dec  b                                           ; $5337: $05
	ld   [$6068], sp                                 ; $5338: $08 $68 $60
	add  b                                           ; $533b: $80
	add  [hl]                                        ; $533c: $86
	ld   b, $80                                      ; $533d: $06 $80
	add  hl, bc                                      ; $533f: $09

jr_07f_5340:
	add  b                                           ; $5340: $80
	ld   h, b                                        ; $5341: $60
	add  b                                           ; $5342: $80
	add  b                                           ; $5343: $80
	dec  b                                           ; $5344: $05
	ld   b, $0e                                      ; $5345: $06 $0e
	ld   bc, $0019                                   ; $5347: $01 $19 $00
	db   $10                                         ; $534a: $10
	add  b                                           ; $534b: $80
	nop                                              ; $534c: $00
	add  b                                           ; $534d: $80
	inc  bc                                          ; $534e: $03
	add  b                                           ; $534f: $80
	inc  b                                           ; $5350: $04
	add  d                                           ; $5351: $82
	nop                                              ; $5352: $00
	inc  b                                           ; $5353: $04
	ld   b, $0e                                      ; $5354: $06 $0e
	jr   jr_07f_5368                                 ; $5356: $18 $10

	nop                                              ; $5358: $00
	add  b                                           ; $5359: $80
	jr   c, jr_07f_5368                              ; $535a: $38 $0c

	ld   b, b                                        ; $535c: $40
	ld   [hl], $56                                   ; $535d: $36 $56
	ld   d, b                                        ; $535f: $50
	jr   nc, jr_07f_5398                             ; $5360: $30 $36

	halt                                             ; $5362: $76
	ld   [hl], b                                     ; $5363: $70
	jr   nc, @+$75                                   ; $5364: $30 $73

	ld   [hl], a                                     ; $5366: $77
	inc  a                                           ; $5367: $3c

jr_07f_5368:
	ld   a, b                                        ; $5368: $78
	add  c                                           ; $5369: $81
	nop                                              ; $536a: $00
	ld   [bc], a                                     ; $536b: $02
	add  hl, sp                                      ; $536c: $39
	ld   bc, $8038                                   ; $536d: $01 $38 $80
	nop                                              ; $5370: $00
	add  b                                           ; $5371: $80
	jr   nc, jr_07f_52f4                             ; $5372: $30 $80

	ld   b, c                                        ; $5374: $41
	inc  b                                           ; $5375: $04
	inc  b                                           ; $5376: $04
	inc  c                                           ; $5377: $0c
	ld   [de], a                                     ; $5378: $12
	ld   a, [de]                                     ; $5379: $1a
	nop                                              ; $537a: $00
	add  b                                           ; $537b: $80
	ldh  [rSC], a                                    ; $537c: $e0 $02
	db   $10                                         ; $537e: $10
	ld   l, a                                        ; $537f: $6f
	ld   [hl], b                                     ; $5380: $70
	add  b                                           ; $5381: $80
	nop                                              ; $5382: $00
	add  b                                           ; $5383: $80
	ret  nz                                          ; $5384: $c0

	add  b                                           ; $5385: $80
	nop                                              ; $5386: $00
	add  b                                           ; $5387: $80
	jr   nc, jr_07f_530a                             ; $5388: $30 $80

	ld   b, b                                        ; $538a: $40
	add  c                                           ; $538b: $81

jr_07f_538c:
	nop                                              ; $538c: $00
	ld   [bc], a                                     ; $538d: $02
	ld   [hl], b                                     ; $538e: $70
	add  a                                           ; $538f: $87
	ld   [$0081], sp                                 ; $5390: $08 $81 $00
	nop                                              ; $5393: $00
	ld   [bc], a                                     ; $5394: $02
	add  c                                           ; $5395: $81
	nop                                              ; $5396: $00
	inc  bc                                          ; $5397: $03

jr_07f_5398:
	inc  b                                           ; $5398: $04
	ld   a, [bc]                                     ; $5399: $0a
	nop                                              ; $539a: $00
	inc  c                                           ; $539b: $0c
	add  c                                           ; $539c: $81
	rrca                                             ; $539d: $0f
	inc  bc                                          ; $539e: $03
	cp   $00                                         ; $539f: $fe $00
	ld   [bc], a                                     ; $53a1: $02
	ld   bc, $f980                                   ; $53a2: $01 $80 $f9
	add  b                                           ; $53a5: $80
	nop                                              ; $53a6: $00
	dec  b                                           ; $53a7: $05
	ld   b, $01                                      ; $53a8: $06 $01
	dec  b                                           ; $53aa: $05
	inc  bc                                          ; $53ab: $03
	inc  e                                           ; $53ac: $1c
	rra                                              ; $53ad: $1f
	add  b                                           ; $53ae: $80
	add  b                                           ; $53af: $80
	add  b                                           ; $53b0: $80
	ldh  [$80], a                                    ; $53b1: $e0 $80
	add  b                                           ; $53b3: $80
	dec  b                                           ; $53b4: $05
	inc  a                                           ; $53b5: $3c
	inc  c                                           ; $53b6: $0c
	ld   d, d                                        ; $53b7: $52
	ld   a, [hl-]                                    ; $53b8: $3a
	ld   a, [de]                                     ; $53b9: $1a
	ld   [hl], d                                     ; $53ba: $72
	add  b                                           ; $53bb: $80
	ld   [hl], b                                     ; $53bc: $70
	nop                                              ; $53bd: $00
	jr   nc, jr_07f_5340                             ; $53be: $30 $80

	ld   [hl], b                                     ; $53c0: $70
	add  e                                           ; $53c1: $83
	nop                                              ; $53c2: $00
	inc  b                                           ; $53c3: $04
	ldh  a, [c]                                      ; $53c4: $f2
	ldh  a, [rAUD1ENV]                               ; $53c5: $f0 $12
	stop                                             ; $53c7: $10 $00
	add  b                                           ; $53c9: $80
	ld   bc, $0302                                   ; $53ca: $01 $02 $03
	inc  a                                           ; $53cd: $3c
	ccf                                              ; $53ce: $3f
	add  b                                           ; $53cf: $80
	nop                                              ; $53d0: $00
	add  hl, bc                                      ; $53d1: $09
	ld   c, $00                                      ; $53d2: $0e $00
	ld   de, $290f                                   ; $53d4: $11 $0f $29
	add  hl, de                                      ; $53d7: $19
	jr   jr_07f_5412                                 ; $53d8: $18 $38

	jr   nc, jr_07f_538c                             ; $53da: $30 $b0

	add  b                                           ; $53dc: $80
	sub  b                                           ; $53dd: $90
	ld   [$c040], sp                                 ; $53de: $08 $40 $c0
	nop                                              ; $53e1: $00
	rrca                                             ; $53e2: $0f
	ld   [$0f00], sp                                 ; $53e3: $08 $00 $0f
	nop                                              ; $53e6: $00
	adc  b                                           ; $53e7: $88
	add  e                                           ; $53e8: $83
	add  b                                           ; $53e9: $80
	inc  bc                                          ; $53ea: $03
	nop                                              ; $53eb: $00
	rrca                                             ; $53ec: $0f
	ld   [hl], b                                     ; $53ed: $70
	ld   a, a                                        ; $53ee: $7f
	add  b                                           ; $53ef: $80
	nop                                              ; $53f0: $00
	add  b                                           ; $53f1: $80
	rrca                                             ; $53f2: $0f
	inc  b                                           ; $53f3: $04
	sub  b                                           ; $53f4: $90
	adc  a                                           ; $53f5: $8f
	cp   a                                           ; $53f6: $bf
	sbc  a                                           ; $53f7: $9f
	rra                                              ; $53f8: $1f
	add  b                                           ; $53f9: $80
	ccf                                              ; $53fa: $3f
	ld   [bc], a                                     ; $53fb: $02
	ld   l, $0e                                      ; $53fc: $2e $0e
	nop                                              ; $53fe: $00
	add  b                                           ; $53ff: $80
	add  b                                           ; $5400: $80
	inc  bc                                          ; $5401: $03
	nop                                              ; $5402: $00
	ld   bc, $8081                                   ; $5403: $01 $81 $80
	add  b                                           ; $5406: $80
	ld   b, b                                        ; $5407: $40
	rrca                                             ; $5408: $0f
	dec  b                                           ; $5409: $05
	ld   bc, $000c                                   ; $540a: $01 $0c $00
	ld   d, b                                        ; $540d: $50
	jr   jr_07f_542c                                 ; $540e: $18 $1c

	ld   e, $1c                                      ; $5410: $1e $1c

jr_07f_5412:
	rra                                              ; $5412: $1f
	ret  nz                                          ; $5413: $c0

	ld   bc, $24a4                                   ; $5414: $01 $a4 $24
	jr   z, @+$6a                                    ; $5417: $28 $68

	add  b                                           ; $5419: $80
	ld   d, a                                        ; $541a: $57
	ld   a, [bc]                                     ; $541b: $0a
	ld   d, h                                        ; $541c: $54
	inc  d                                           ; $541d: $14
	inc  b                                           ; $541e: $04
	add  h                                           ; $541f: $84
	ld   [$1898], sp                                 ; $5420: $08 $98 $18
	ret  c                                           ; $5423: $d8

	ret  nc                                          ; $5424: $d0

	ret  z                                           ; $5425: $c8

	db   $fc                                         ; $5426: $fc
	add  c                                           ; $5427: $81
	ld   [de], a                                     ; $5428: $12
	ld   [de], a                                     ; $5429: $12
	ld   d, $10                                      ; $542a: $16 $10

jr_07f_542c:
	ld   l, $00                                      ; $542c: $2e $00
	ld   l, $1f                                      ; $542e: $2e $1f
	ld   a, a                                        ; $5430: $7f
	ccf                                              ; $5431: $3f
	ld   h, b                                        ; $5432: $60
	rst  $38                                         ; $5433: $ff
	ldh  [$80], a                                    ; $5434: $e0 $80
	cp   h                                           ; $5436: $bc
	inc  a                                           ; $5437: $3c
	ld   b, d                                        ; $5438: $42
	ld   a, [hl]                                     ; $5439: $7e
	ld   a, l                                        ; $543a: $7d
	ld   [hl], c                                     ; $543b: $71
	ld   [hl], b                                     ; $543c: $70
	add  b                                           ; $543d: $80
	ld   h, c                                        ; $543e: $61
	ld   b, $20                                      ; $543f: $06 $20
	nop                                              ; $5441: $00
	and  b                                           ; $5442: $a0
	ldh  [rSTAT], a                                  ; $5443: $e0 $41
	rra                                              ; $5445: $1f
	ld   a, [hl]                                     ; $5446: $7e
	add  b                                           ; $5447: $80
	nop                                              ; $5448: $00
	nop                                              ; $5449: $00
	ld   [$0081], sp                                 ; $544a: $08 $81 $00
	rlca                                             ; $544d: $07
	jr   jr_07f_5450                                 ; $544e: $18 $00

jr_07f_5450:
	inc  d                                           ; $5450: $14
	ld   a, b                                        ; $5451: $78
	ld   a, [hl]                                     ; $5452: $7e
	db   $fc                                         ; $5453: $fc
	ld   bc, $80ff                                   ; $5454: $01 $ff $80
	nop                                              ; $5457: $00

jr_07f_5458:
	add  b                                           ; $5458: $80
	inc  a                                           ; $5459: $3c
	ld   bc, $7e42                                   ; $545a: $01 $42 $7e
	add  b                                           ; $545d: $80
	ld   a, h                                        ; $545e: $7c
	nop                                              ; $545f: $00
	inc  a                                           ; $5460: $3c
	add  b                                           ; $5461: $80
	ld   a, h                                        ; $5462: $7c
	add  b                                           ; $5463: $80
	ld   a, c                                        ; $5464: $79
	ld   [bc], a                                     ; $5465: $02
	ld   sp, $0130                                   ; $5466: $31 $30 $01
	add  b                                           ; $5469: $80
	inc  [hl]                                        ; $546a: $34
	add  b                                           ; $546b: $80
	nop                                              ; $546c: $00
	nop                                              ; $546d: $00
	ld   b, b                                        ; $546e: $40
	add  c                                           ; $546f: $81
	nop                                              ; $5470: $00
	rlca                                             ; $5471: $07
	ld   b, b                                        ; $5472: $40
	ld   a, b                                        ; $5473: $78
	ld   hl, sp+$7e                                  ; $5474: $f8 $7e
	cp   $ff                                         ; $5476: $fe $ff
	nop                                              ; $5478: $00
	rst  $38                                         ; $5479: $ff
	add  b                                           ; $547a: $80
	nop                                              ; $547b: $00
	ld   b, $44                                      ; $547c: $06 $44
	ld   a, h                                        ; $547e: $7c
	cp   d                                           ; $547f: $ba
	jp   nz, $8040                                   ; $5480: $c2 $40 $80

	ret  nz                                          ; $5483: $c0

	add  c                                           ; $5484: $81
	nop                                              ; $5485: $00
	inc  bc                                          ; $5486: $03
	ld   h, b                                        ; $5487: $60
	ld   b, b                                        ; $5488: $40
	ld   e, [hl]                                     ; $5489: $5e
	ld   a, $80                                      ; $548a: $3e $80
	rst  $38                                         ; $548c: $ff
	add  h                                           ; $548d: $84
	stop                                             ; $548e: $10 $00
	nop                                              ; $5490: $00
	add  b                                           ; $5491: $80
	ret  nz                                          ; $5492: $c0

	add  b                                           ; $5493: $80
	ldh  a, [$80]                                    ; $5494: $f0 $80
	ld   hl, sp-$80                                  ; $5496: $f8 $80
	db   $fc                                         ; $5498: $fc
	ld   [bc], a                                     ; $5499: $02
	nop                                              ; $549a: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $549b: $cf
	ldh  a, [$80]                                    ; $549c: $f0 $80
	or   b                                           ; $549e: $b0
	add  c                                           ; $549f: $81
	jr   nc, @+$0b                                   ; $54a0: $30 $09

	add  b                                           ; $54a2: $80
	nop                                              ; $54a3: $00
	add  b                                           ; $54a4: $80
	ld   b, b                                        ; $54a5: $40
	nop                                              ; $54a6: $00
	ld   b, b                                        ; $54a7: $40
	ldh  a, [rSVBK]                                  ; $54a8: $f0 $70
	ldh  a, [$8f]                                    ; $54aa: $f0 $8f
	add  c                                           ; $54ac: $81
	rrca                                             ; $54ad: $0f
	ld   bc, $0f00                                   ; $54ae: $01 $00 $0f
	adc  b                                           ; $54b1: $88
	nop                                              ; $54b2: $00
	nop                                              ; $54b3: $00
	ldh  a, [$80]                                    ; $54b4: $f0 $80
	ret  nz                                          ; $54b6: $c0

	inc  bc                                          ; $54b7: $03
	ldh  [rAUD4LEN], a                               ; $54b8: $e0 $20
	rst  ToBoot                                         ; $54ba: $c7
	ld   b, a                                        ; $54bb: $47
	add  c                                           ; $54bc: $81
	ld   b, b                                        ; $54bd: $40
	nop                                              ; $54be: $00
	nop                                              ; $54bf: $00
	add  e                                           ; $54c0: $83
	jr   nz, jr_07f_54c6                             ; $54c1: $20 $03

	ld   e, $00                                      ; $54c3: $1e $00
	pop  bc                                          ; $54c5: $c1

jr_07f_54c6:
	nop                                              ; $54c6: $00
	add  c                                           ; $54c7: $81
	rst  $38                                         ; $54c8: $ff
	adc  c                                           ; $54c9: $89
	nop                                              ; $54ca: $00
	inc  b                                           ; $54cb: $04
	add  b                                           ; $54cc: $80
	nop                                              ; $54cd: $00
	ldh  [$e3], a                                    ; $54ce: $e0 $e3
	and  e                                           ; $54d0: $a3
	add  c                                           ; $54d1: $81
	jr   nz, jr_07f_5458                             ; $54d2: $20 $84

	db   $10                                         ; $54d4: $10
	dec  b                                           ; $54d5: $05
	jr   nz, jr_07f_54f7                             ; $54d6: $20 $1f

	cp   a                                           ; $54d8: $bf
	ld   a, a                                        ; $54d9: $7f
	nop                                              ; $54da: $00
	rst  $38                                         ; $54db: $ff
	adc  b                                           ; $54dc: $88
	nop                                              ; $54dd: $00
	ld   b, $20                                      ; $54de: $06 $20
	ret  nz                                          ; $54e0: $c0

	ldh  a, [$e0]                                    ; $54e1: $f0 $e0
	nop                                              ; $54e3: $00
	ld   sp, hl                                      ; $54e4: $f9
	add  hl, de                                      ; $54e5: $19
	add  c                                           ; $54e6: $81
	jr   jr_07f_54e9                                 ; $54e7: $18 $00

jr_07f_54e9:
	nop                                              ; $54e9: $00
	add  e                                           ; $54ea: $83
	inc  c                                           ; $54eb: $0c
	ld   bc, $3f3b                                   ; $54ec: $01 $3b $3f
	add  b                                           ; $54ef: $80
	ld   a, a                                        ; $54f0: $7f
	nop                                              ; $54f1: $00
	nop                                              ; $54f2: $00
	add  b                                           ; $54f3: $80
	rst  $38                                         ; $54f4: $ff
	add  a                                           ; $54f5: $87
	nop                                              ; $54f6: $00

jr_07f_54f7:
	add  b                                           ; $54f7: $80
	pop  bc                                          ; $54f8: $c1
	add  b                                           ; $54f9: $80
	ldh  a, [rSC]                                    ; $54fa: $f0 $02
	nop                                              ; $54fc: $00
	ld   hl, sp-$04                                  ; $54fd: $f8 $fc
	add  c                                           ; $54ff: $81
	inc  c                                           ; $5500: $0c
	ld   bc, $0408                                   ; $5501: $01 $08 $04
	add  b                                           ; $5504: $80
	dec  b                                           ; $5505: $05
	rlca                                             ; $5506: $07
	inc  b                                           ; $5507: $04
	dec  b                                           ; $5508: $05
	add  e                                           ; $5509: $83
	add  c                                           ; $550a: $81
	rlca                                             ; $550b: $07
	rra                                              ; $550c: $1f
	nop                                              ; $550d: $00
	ccf                                              ; $550e: $3f
	add  c                                           ; $550f: $81
	jr   nc, jr_07f_5514                             ; $5510: $30 $02

	ld   [hl], b                                     ; $5512: $70
	ld   b, b                                        ; $5513: $40

jr_07f_5514:
	ld   h, b                                        ; $5514: $60
	add  d                                           ; $5515: $82
	ldh  [rSB], a                                    ; $5516: $e0 $01
	ld   b, c                                        ; $5518: $41
	cp   $80                                         ; $5519: $fe $80
	rst  $38                                         ; $551b: $ff
	ld   bc, $ff00                                   ; $551c: $01 $00 $ff
	adc  b                                           ; $551f: $88
	nop                                              ; $5520: $00
	ld   b, $81                                      ; $5521: $06 $81
	add  b                                           ; $5523: $80
	add  $c0                                         ; $5524: $c6 $c0
	rlca                                             ; $5526: $07
	adc  a                                           ; $5527: $8f
	sbc  a                                           ; $5528: $9f
	add  c                                           ; $5529: $81
	ld   [$1800], sp                                 ; $552a: $08 $00 $18
	add  e                                           ; $552d: $83
	stop                                             ; $552e: $10 $00
	rst  $20                                         ; $5530: $e7
	add  b                                           ; $5531: $80
	ld   [hl], $01                                   ; $5532: $36 $01
	nop                                              ; $5534: $00
	rst  $30                                         ; $5535: $f7
	add  b                                           ; $5536: $80
	rst  $38                                         ; $5537: $ff
	add  a                                           ; $5538: $87
	nop                                              ; $5539: $00
	inc  b                                           ; $553a: $04
	inc  bc                                          ; $553b: $03
	ld   bc, $0385                                   ; $553c: $01 $85 $03
	adc  h                                           ; $553f: $8c
	add  b                                           ; $5540: $80
	rst  ToBoot                                         ; $5541: $c7
	nop                                              ; $5542: $00
	inc  c                                           ; $5543: $0c
	add  b                                           ; $5544: $80
	inc  e                                           ; $5545: $1c
	nop                                              ; $5546: $00
	inc  d                                           ; $5547: $14
	add  e                                           ; $5548: $83
	jr   jr_07f_554b                                 ; $5549: $18 $00

jr_07f_554b:
	rst  $30                                         ; $554b: $f7
	add  c                                           ; $554c: $81
	rst  $38                                         ; $554d: $ff
	nop                                              ; $554e: $00
	nop                                              ; $554f: $00
	add  b                                           ; $5550: $80
	rst  $38                                         ; $5551: $ff
	add  a                                           ; $5552: $87
	nop                                              ; $5553: $00
	add  b                                           ; $5554: $80
	add  c                                           ; $5555: $81
	inc  b                                           ; $5556: $04
	ret  nz                                          ; $5557: $c0

	jp   $e703                                       ; $5558: $c3 $03 $e7


	push hl                                          ; $555b: $e5
	add  b                                           ; $555c: $80
	ld   b, $01                                      ; $555d: $06 $01
	ld   c, $08                                      ; $555f: $0e $08
	add  e                                           ; $5561: $83
	inc  c                                           ; $5562: $0c
	nop                                              ; $5563: $00
	rlca                                             ; $5564: $07
	add  h                                           ; $5565: $84
	ldh  a, [$87]                                    ; $5566: $f0 $87
	nop                                              ; $5568: $00
	nop                                              ; $5569: $00
	ldh  a, [rIE]                                    ; $556a: $f0 $ff
	nop                                              ; $556c: $00
	rst  $38                                         ; $556d: $ff
	nop                                              ; $556e: $00
	rst  $38                                         ; $556f: $ff
	nop                                              ; $5570: $00
	rst  $38                                         ; $5571: $ff
	nop                                              ; $5572: $00
	rst  $38                                         ; $5573: $ff
	nop                                              ; $5574: $00
	rst  $38                                         ; $5575: $ff
	nop                                              ; $5576: $00
	rst  $38                                         ; $5577: $ff
	nop                                              ; $5578: $00
	rst  $38                                         ; $5579: $ff
	nop                                              ; $557a: $00
	and  l                                           ; $557b: $a5
	nop                                              ; $557c: $00
	ld   l, h                                        ; $557d: $6c
	ld   bc, $0000                                   ; $557e: $01 $00 $00
	adc  c                                           ; $5581: $89
	rrca                                             ; $5582: $0f
	inc  b                                           ; $5583: $04
	dec  c                                           ; $5584: $0d
	rrca                                             ; $5585: $0f
	ld   [$0a0f], sp                                 ; $5586: $08 $0f $0a
	adc  c                                           ; $5589: $89
	rst  $38                                         ; $558a: $ff
	inc  b                                           ; $558b: $04
	ld   [hl], b                                     ; $558c: $70
	rst  $38                                         ; $558d: $ff
	adc  a                                           ; $558e: $8f
	rst  $38                                         ; $558f: $ff
	nop                                              ; $5590: $00
	add  l                                           ; $5591: $85
	rst  $38                                         ; $5592: $ff
	dec  b                                           ; $5593: $05
	db   $fc                                         ; $5594: $fc
	rst  $38                                         ; $5595: $ff
	sub  e                                           ; $5596: $93
	rst  $38                                         ; $5597: $ff
	ld   l, [hl]                                     ; $5598: $6e
	cp   $80                                         ; $5599: $fe $80
	add  b                                           ; $559b: $80
	nop                                              ; $559c: $00
	nop                                              ; $559d: $00
	add  e                                           ; $559e: $83
	rst  $38                                         ; $559f: $ff
	inc  bc                                          ; $55a0: $03
	and  h                                           ; $55a1: $a4
	rst  $38                                         ; $55a2: $ff
	ld   e, e                                        ; $55a3: $5b
	rst  $38                                         ; $55a4: $ff
	add  b                                           ; $55a5: $80
	ldh  a, [$80]                                    ; $55a6: $f0 $80
	add  b                                           ; $55a8: $80
	add  b                                           ; $55a9: $80
	inc  c                                           ; $55aa: $0c
	add  hl, bc                                      ; $55ab: $09
	nop                                              ; $55ac: $00
	rst  $38                                         ; $55ad: $ff
	rst  $10                                         ; $55ae: $d7
	cp   $17                                         ; $55af: $fe $17
	ret  nz                                          ; $55b1: $c0

	db   $fd                                         ; $55b2: $fd
	add  b                                           ; $55b3: $80
	add  e                                           ; $55b4: $83
	add  b                                           ; $55b5: $80
	add  b                                           ; $55b6: $80
	nop                                              ; $55b7: $00
	ld   bc, $c040                                   ; $55b8: $01 $40 $c0
	add  b                                           ; $55bb: $80
	cp   $80                                         ; $55bc: $fe $80
	add  $09                                         ; $55be: $c6 $09
	ret  nz                                          ; $55c0: $c0

	nop                                              ; $55c1: $00
	ldh  a, [rIF]                                    ; $55c2: $f0 $0f
	rst  $38                                         ; $55c4: $ff
	nop                                              ; $55c5: $00
	rst  $38                                         ; $55c6: $ff
	nop                                              ; $55c7: $00
	ld   a, $01                                      ; $55c8: $3e $01
	add  b                                           ; $55ca: $80
	nop                                              ; $55cb: $00
	add  b                                           ; $55cc: $80
	ld   bc, $5f0b                                   ; $55cd: $01 $0b $5f
	ret  nz                                          ; $55d0: $c0

	and  b                                           ; $55d1: $a0
	inc  l                                           ; $55d2: $2c
	ld   l, h                                        ; $55d3: $6c
	or   b                                           ; $55d4: $b0
	jr   nc, @-$3b                                   ; $55d5: $30 $c3

	ret  nz                                          ; $55d7: $c0

	inc  a                                           ; $55d8: $3c
	inc  bc                                          ; $55d9: $03
	jp   $3f80                                       ; $55da: $c3 $80 $3f


	inc  bc                                          ; $55dd: $03
	db   $fc                                         ; $55de: $fc
	rst  $38                                         ; $55df: $ff
	cp   $02                                         ; $55e0: $fe $02
	add  c                                           ; $55e2: $81
	nop                                              ; $55e3: $00
	ld   [bc], a                                     ; $55e4: $02
	inc  e                                           ; $55e5: $1c
	ld   bc, $80e1                                   ; $55e6: $01 $e1 $80
	inc  e                                           ; $55e9: $1c
	rlca                                             ; $55ea: $07
	ld   hl, sp-$04                                  ; $55eb: $f8 $fc
	call nz, $21fd                                   ; $55ed: $c4 $fd $21
	cp   $1a                                         ; $55f0: $fe $1a
	inc  b                                           ; $55f2: $04
	add  b                                           ; $55f3: $80
	ld   b, c                                        ; $55f4: $41
	add  b                                           ; $55f5: $80
	ld   [$8080], sp                                 ; $55f6: $08 $80 $80
	nop                                              ; $55f9: $00
	nop                                              ; $55fa: $00
	add  b                                           ; $55fb: $80
	ld   bc, $1e80                                   ; $55fc: $01 $80 $1e
	add  b                                           ; $55ff: $80
	pop  hl                                          ; $5600: $e1
	add  b                                           ; $5601: $80
	ld   c, $00                                      ; $5602: $0e $00
	nop                                              ; $5604: $00
	add  b                                           ; $5605: $80
	adc  b                                           ; $5606: $88
	ld   [bc], a                                     ; $5607: $02
	ret  nz                                          ; $5608: $c0

	pop  bc                                          ; $5609: $c1
	ld   bc, $1e80                                   ; $560a: $01 $80 $1e
	add  b                                           ; $560d: $80
	db   $e3                                         ; $560e: $e3
	add  b                                           ; $560f: $80
	inc  e                                           ; $5610: $1c
	add  b                                           ; $5611: $80
	rst  $20                                         ; $5612: $e7
	inc  bc                                          ; $5613: $03
	ld   bc, $8381                                   ; $5614: $01 $81 $83
	inc  bc                                          ; $5617: $03
	add  b                                           ; $5618: $80
	inc  e                                           ; $5619: $1c
	add  b                                           ; $561a: $80
	db   $e3                                         ; $561b: $e3
	add  b                                           ; $561c: $80
	inc  a                                           ; $561d: $3c
	add  b                                           ; $561e: $80
	ret  nz                                          ; $561f: $c0

	add  b                                           ; $5620: $80
	inc  bc                                          ; $5621: $03
	add  b                                           ; $5622: $80
	inc  a                                           ; $5623: $3c
	add  b                                           ; $5624: $80
	ret  nz                                          ; $5625: $c0

	rlca                                             ; $5626: $07
	rst  ToBoot                                         ; $5627: $c7
	add  $79                                         ; $5628: $c6 $79
	ld   a, b                                        ; $562a: $78
	add  b                                           ; $562b: $80
	ld   b, b                                        ; $562c: $40
	rst  $28                                         ; $562d: $ef
	cpl                                              ; $562e: $2f
	add  b                                           ; $562f: $80
	ld   [hl], b                                     ; $5630: $70
	add  b                                           ; $5631: $80
	add  b                                           ; $5632: $80
	add  d                                           ; $5633: $82
	nop                                              ; $5634: $00
	dec  b                                           ; $5635: $05
	inc  bc                                          ; $5636: $03
	jp   $1fdc                                       ; $5637: $c3 $dc $1f


	db   $e3                                         ; $563a: $e3
	ldh  [$85], a                                    ; $563b: $e0 $85
	nop                                              ; $563d: $00
	add  b                                           ; $563e: $80
	inc  b                                           ; $563f: $04
	nop                                              ; $5640: $00
	nop                                              ; $5641: $00
	add  b                                           ; $5642: $80
	ret  nz                                          ; $5643: $c0

	adc  a                                           ; $5644: $8f
	nop                                              ; $5645: $00
	add  b                                           ; $5646: $80

jr_07f_5647:
	db   $10                                         ; $5647: $10
	add  [hl]                                        ; $5648: $86
	nop                                              ; $5649: $00
	add  b                                           ; $564a: $80
	ld   [$008e], sp                                 ; $564b: $08 $8e $00

jr_07f_564e:
	add  b                                           ; $564e: $80
	rrca                                             ; $564f: $0f
	add  b                                           ; $5650: $80
	dec  c                                           ; $5651: $0d
	add  b                                           ; $5652: $80
	ld   c, $88                                      ; $5653: $0e $88
	nop                                              ; $5655: $00
	add  b                                           ; $5656: $80
	db   $fc                                         ; $5657: $fc
	add  b                                           ; $5658: $80

jr_07f_5659:
	ld   b, a                                        ; $5659: $47
	add  b                                           ; $565a: $80
	jr   @-$74                                       ; $565b: $18 $8a

	nop                                              ; $565d: $00
	add  b                                           ; $565e: $80
	inc  b                                           ; $565f: $04
	add  d                                           ; $5660: $82
	nop                                              ; $5661: $00
	add  b                                           ; $5662: $80
	ld   [bc], a                                     ; $5663: $02
	add  b                                           ; $5664: $80
	db   $10                                         ; $5665: $10
	add  b                                           ; $5666: $80
	nop                                              ; $5667: $00
	add  b                                           ; $5668: $80
	ld   b, $80                                      ; $5669: $06 $80
	nop                                              ; $566b: $00
	add  b                                           ; $566c: $80
	sbc  b                                           ; $566d: $98
	add  b                                           ; $566e: $80
	nop                                              ; $566f: $00
	add  b                                           ; $5670: $80
	ld   h, e                                        ; $5671: $63
	add  b                                           ; $5672: $80
	nop                                              ; $5673: $00
	add  b                                           ; $5674: $80
	ld   c, $81                                      ; $5675: $0e $81
	nop                                              ; $5677: $00
	ld   b, $0f                                      ; $5678: $06 $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $567a: $cf
	rst  $38                                         ; $567b: $ff
	ld   c, e                                        ; $567c: $4b

jr_07f_567d:
	ld   a, a                                        ; $567d: $7f
	inc  d                                           ; $567e: $14
	rra                                              ; $567f: $1f
	add  b                                           ; $5680: $80
	add  c                                           ; $5681: $81
	add  b                                           ; $5682: $80
	jr   nc, jr_07f_5685                             ; $5683: $30 $00

jr_07f_5685:
	nop                                              ; $5685: $00
	add  b                                           ; $5686: $80
	rrca                                             ; $5687: $0f
	add  b                                           ; $5688: $80
	ldh  a, [$09]                                    ; $5689: $f0 $09
	nop                                              ; $568b: $00
	ld   e, $e1                                      ; $568c: $1e $e1
	ld   e, d                                        ; $568e: $5a
	rst  $38                                         ; $568f: $ff
	ld   de, $44ff                                   ; $5690: $11 $ff $44
	rst  $38                                         ; $5693: $ff
	rrca                                             ; $5694: $0f
	add  b                                           ; $5695: $80
	ldh  a, [$80]                                    ; $5696: $f0 $80
	inc  bc                                          ; $5698: $03
	rlca                                             ; $5699: $07
	ld   a, $3c                                      ; $569a: $3e $3c
	jp   $fffe                                       ; $569c: $c3 $fe $ff


	jr   nc, @+$01                                   ; $569f: $30 $ff

	rrca                                             ; $56a1: $0f
	add  b                                           ; $56a2: $80
	ldh  a, [$80]                                    ; $56a3: $f0 $80
	rlca                                             ; $56a5: $07
	add  b                                           ; $56a6: $80
	jr   c, @-$7e                                    ; $56a7: $38 $80

	ret  nz                                          ; $56a9: $c0

	add  b                                           ; $56aa: $80
	nop                                              ; $56ab: $00
	add  b                                           ; $56ac: $80
	inc  bc                                          ; $56ad: $03
	add  b                                           ; $56ae: $80
	ldh  [$80], a                                    ; $56af: $e0 $80
	rrca                                             ; $56b1: $0f
	add  b                                           ; $56b2: $80
	ld   [hl], b                                     ; $56b3: $70
	add  b                                           ; $56b4: $80
	add  b                                           ; $56b5: $80
	add  b                                           ; $56b6: $80
	pop  af                                          ; $56b7: $f1
	add  b                                           ; $56b8: $80
	ld   e, $80                                      ; $56b9: $1e $80
	ldh  [$80], a                                    ; $56bb: $e0 $80
	nop                                              ; $56bd: $00
	add  b                                           ; $56be: $80
	ldh  a, [$80]                                    ; $56bf: $f0 $80
	inc  e                                           ; $56c1: $1c
	add  b                                           ; $56c2: $80
	rlca                                             ; $56c3: $07
	add  b                                           ; $56c4: $80
	jr   c, jr_07f_5647                              ; $56c5: $38 $80

	ret  nz                                          ; $56c7: $c0

	nop                                              ; $56c8: $00
	nop                                              ; $56c9: $00
	add  b                                           ; $56ca: $80
	jr   nz, jr_07f_564e                             ; $56cb: $20 $81

	nop                                              ; $56cd: $00
	add  b                                           ; $56ce: $80
	ld   c, $80                                      ; $56cf: $0e $80
	ld   [hl], b                                     ; $56d1: $70
	add  b                                           ; $56d2: $80
	add  b                                           ; $56d3: $80
	add  a                                           ; $56d4: $87
	nop                                              ; $56d5: $00
	add  b                                           ; $56d6: $80
	jr   nz, jr_07f_5659                             ; $56d7: $20 $80

	nop                                              ; $56d9: $00
	add  b                                           ; $56da: $80
	ld   bc, $0086                                   ; $56db: $01 $86 $00
	add  b                                           ; $56de: $80
	adc  b                                           ; $56df: $88
	add  [hl]                                        ; $56e0: $86
	nop                                              ; $56e1: $00
	add  b                                           ; $56e2: $80
	inc  b                                           ; $56e3: $04
	sub  b                                           ; $56e4: $90
	nop                                              ; $56e5: $00
	add  b                                           ; $56e6: $80
	add  b                                           ; $56e7: $80
	add  [hl]                                        ; $56e8: $86
	nop                                              ; $56e9: $00
	add  b                                           ; $56ea: $80
	ld   [$0084], sp                                 ; $56eb: $08 $84 $00
	add  b                                           ; $56ee: $80
	jr   nz, jr_07f_567d                             ; $56ef: $20 $8c

	nop                                              ; $56f1: $00
	add  b                                           ; $56f2: $80

jr_07f_56f3:
	ld   [bc], a                                     ; $56f3: $02
	add  d                                           ; $56f4: $82
	nop                                              ; $56f5: $00
	add  b                                           ; $56f6: $80

jr_07f_56f7:
	inc  b                                           ; $56f7: $04
	add  h                                           ; $56f8: $84
	nop                                              ; $56f9: $00
	add  b                                           ; $56fa: $80
	ld   [$008b], sp                                 ; $56fb: $08 $8b $00
	ld   [bc], a                                     ; $56fe: $02
	rrca                                             ; $56ff: $0f
	inc  c                                           ; $5700: $0c
	db   $fc                                         ; $5701: $fc
	add  b                                           ; $5702: $80
	ld   bc, $ff00                                   ; $5703: $01 $00 $ff
	add  [hl]                                        ; $5706: $86
	nop                                              ; $5707: $00
	ld   [bc], a                                     ; $5708: $02
	ccf                                              ; $5709: $3f
	jr   c, @-$06                                    ; $570a: $38 $f8

	add  b                                           ; $570c: $80
	dec  b                                           ; $570d: $05
	add  b                                           ; $570e: $80
	ld   d, l                                        ; $570f: $55
	nop                                              ; $5710: $00
	rst  $38                                         ; $5711: $ff
	add  l                                           ; $5712: $85
	nop                                              ; $5713: $00
	ld   bc, $f00f                                   ; $5714: $01 $0f $f0
	add  b                                           ; $5717: $80
	dec  b                                           ; $5718: $05
	add  b                                           ; $5719: $80
	ld   d, l                                        ; $571a: $55
	add  b                                           ; $571b: $80
	ld   d, b                                        ; $571c: $50
	nop                                              ; $571d: $00
	rst  $38                                         ; $571e: $ff
	add  l                                           ; $571f: $85
	nop                                              ; $5720: $00
	ld   bc, $00f0                                   ; $5721: $01 $f0 $00
	add  b                                           ; $5724: $80
	ld   d, b                                        ; $5725: $50
	add  b                                           ; $5726: $80
	db   $10                                         ; $5727: $10
	add  b                                           ; $5728: $80
	ld   [hl], b                                     ; $5729: $70
	ld   [bc], a                                     ; $572a: $02
	rrca                                             ; $572b: $0f
	rst  $38                                         ; $572c: $ff
	nop                                              ; $572d: $00
	add  l                                           ; $572e: $85
	rst  $38                                         ; $572f: $ff
	add  b                                           ; $5730: $80
	nop                                              ; $5731: $00
	add  b                                           ; $5732: $80
	add  [hl]                                        ; $5733: $86
	dec  b                                           ; $5734: $05
	add  d                                           ; $5735: $82
	add  [hl]                                        ; $5736: $86
	dec  de                                          ; $5737: $1b
	rst  $38                                         ; $5738: $ff
	ld   e, $fe                                      ; $5739: $1e $fe
	add  b                                           ; $573b: $80
	db   $fc                                         ; $573c: $fc
	add  b                                           ; $573d: $80
	cp   $80                                         ; $573e: $fe $80
	ld   bc, $0380                                   ; $5740: $01 $80 $03
	add  d                                           ; $5743: $82
	nop                                              ; $5744: $00
	add  b                                           ; $5745: $80
	ld   d, e                                        ; $5746: $53
	add  b                                           ; $5747: $80
	adc  a                                           ; $5748: $8f
	add  b                                           ; $5749: $80
	inc  bc                                          ; $574a: $03
	add  b                                           ; $574b: $80
	sbc  $80                                         ; $574c: $de $80
	ld   [hl-], a                                    ; $574e: $32
	add  b                                           ; $574f: $80
	and  b                                           ; $5750: $a0
	add  b                                           ; $5751: $80
	add  sp, -$80                                    ; $5752: $e8 $80
	add  b                                           ; $5754: $80
	ld   bc, $d0df                                   ; $5755: $01 $df $d0
	add  b                                           ; $5758: $80
	db   $10                                         ; $5759: $10
	add  b                                           ; $575a: $80
	add  b                                           ; $575b: $80
	add  b                                           ; $575c: $80
	ld   h, b                                        ; $575d: $60
	add  b                                           ; $575e: $80
	nop                                              ; $575f: $00
	add  b                                           ; $5760: $80
	ld   d, b                                        ; $5761: $50
	add  d                                           ; $5762: $82
	nop                                              ; $5763: $00
	nop                                              ; $5764: $00
	rrca                                             ; $5765: $0f
	adc  l                                           ; $5766: $8d
	nop                                              ; $5767: $00
	add  b                                           ; $5768: $80
	rra                                              ; $5769: $1f
	add  b                                           ; $576a: $80
	dec  bc                                          ; $576b: $0b
	add  b                                           ; $576c: $80
	ld   b, l                                        ; $576d: $45
	add  b                                           ; $576e: $80
	inc  e                                           ; $576f: $1c
	add  b                                           ; $5770: $80
	jr   c, jr_07f_56f3                              ; $5771: $38 $80

	ld   h, h                                        ; $5773: $64
	add  b                                           ; $5774: $80
	jr   nz, jr_07f_56f7                             ; $5775: $20 $80

	ld   d, b                                        ; $5777: $50
	add  b                                           ; $5778: $80
	nop                                              ; $5779: $00
	add  b                                           ; $577a: $80
	and  b                                           ; $577b: $a0
	add  b                                           ; $577c: $80
	inc  b                                           ; $577d: $04
	add  b                                           ; $577e: $80
	db   $10                                         ; $577f: $10
	add  b                                           ; $5780: $80
	ld   bc, $0280                                   ; $5781: $01 $80 $02
	add  b                                           ; $5784: $80
	inc  bc                                          ; $5785: $03
	add  b                                           ; $5786: $80
	ld   b, b                                        ; $5787: $40
	nop                                              ; $5788: $00
	rrca                                             ; $5789: $0f
	add  c                                           ; $578a: $81
	nop                                              ; $578b: $00
	add  b                                           ; $578c: $80
	ld   b, b                                        ; $578d: $40
	add  b                                           ; $578e: $80
	nop                                              ; $578f: $00
	add  b                                           ; $5790: $80
	ret  nz                                          ; $5791: $c0

	add  b                                           ; $5792: $80
	add  b                                           ; $5793: $80
	add  b                                           ; $5794: $80
	ld   b, b                                        ; $5795: $40
	add  b                                           ; $5796: $80
	add  b                                           ; $5797: $80
	rlca                                             ; $5798: $07
	adc  l                                           ; $5799: $8d
	cp   $15                                         ; $579a: $fe $15
	rst  $38                                         ; $579c: $ff
	inc  h                                           ; $579d: $24
	di                                               ; $579e: $f3
	and  c                                           ; $579f: $a1
	ldh  [$80], a                                    ; $57a0: $e0 $80
	nop                                              ; $57a2: $00
	dec  c                                           ; $57a3: $0d
	pop  af                                          ; $57a4: $f1
	cp   $00                                         ; $57a5: $fe $00
	ld   [hl], c                                     ; $57a7: $71
	ld   bc, $f08f                                   ; $57a8: $01 $8f $f0
	nop                                              ; $57ab: $00
	db   $10                                         ; $57ac: $10
	ldh  a, [$b4]                                    ; $57ad: $f0 $b4
	db   $f4                                         ; $57af: $f4
	ret  c                                           ; $57b0: $d8

	ld   a, b                                        ; $57b1: $78
	add  b                                           ; $57b2: $80
	ld   l, [hl]                                     ; $57b3: $6e
	add  b                                           ; $57b4: $80
	call nc, $e080                                   ; $57b5: $d4 $80 $e0
	add  b                                           ; $57b8: $80
	ld   [hl], b                                     ; $57b9: $70
	add  b                                           ; $57ba: $80
	ld   h, d                                        ; $57bb: $62
	add  b                                           ; $57bc: $80
	inc  b                                           ; $57bd: $04
	adc  d                                           ; $57be: $8a
	nop                                              ; $57bf: $00
	nop                                              ; $57c0: $00
	rrca                                             ; $57c1: $0f
	adc  l                                           ; $57c2: $8d
	nop                                              ; $57c3: $00
	ld   bc, $555a                                   ; $57c4: $01 $5a $55
	add  b                                           ; $57c7: $80
	ld   d, h                                        ; $57c8: $54
	add  b                                           ; $57c9: $80
	inc  bc                                          ; $57ca: $03
	add  b                                           ; $57cb: $80
	rst  $38                                         ; $57cc: $ff
	add  b                                           ; $57cd: $80
	ldh  [$80], a                                    ; $57ce: $e0 $80
	rra                                              ; $57d0: $1f
	add  d                                           ; $57d1: $82
	rst  $38                                         ; $57d2: $ff

jr_07f_57d3:
	add  b                                           ; $57d3: $80
	ld   d, b                                        ; $57d4: $50
	add  b                                           ; $57d5: $80
	rlca                                             ; $57d6: $07
	add  b                                           ; $57d7: $80
	rst  $38                                         ; $57d8: $ff
	add  b                                           ; $57d9: $80
	ldh  [$80], a                                    ; $57da: $e0 $80
	rra                                              ; $57dc: $1f
	add  d                                           ; $57dd: $82
	rst  $38                                         ; $57de: $ff
	inc  bc                                          ; $57df: $03
	ldh  [rIE], a                                    ; $57e0: $e0 $ff
	db   $10                                         ; $57e2: $10
	rrca                                             ; $57e3: $0f
	add  b                                           ; $57e4: $80
	rst  $38                                         ; $57e5: $ff
	add  b                                           ; $57e6: $80
	ldh  [$80], a                                    ; $57e7: $e0 $80
	ld   e, $80                                      ; $57e9: $1e $80
	ldh  a, [$80]                                    ; $57eb: $f0 $80
	ret  nz                                          ; $57ed: $c0

	add  b                                           ; $57ee: $80
	ldh  [$03], a                                    ; $57ef: $e0 $03
	jr   nz, jr_07f_57d3                             ; $57f1: $20 $e0

	cpl                                              ; $57f3: $2f
	ldh  [$80], a                                    ; $57f4: $e0 $80
	and  b                                           ; $57f6: $a0
	add  b                                           ; $57f7: $80
	sub  b                                           ; $57f8: $90
	add  b                                           ; $57f9: $80
	add  b                                           ; $57fa: $80
	add  d                                           ; $57fb: $82
	nop                                              ; $57fc: $00

jr_07f_57fd:
	add  b                                           ; $57fd: $80
	add  b                                           ; $57fe: $80
	add  b                                           ; $57ff: $80
	ret  nz                                          ; $5800: $c0

	nop                                              ; $5801: $00
	adc  l                                           ; $5802: $8d
	add  c                                           ; $5803: $81
	add  [hl]                                        ; $5804: $86
	ld   bc, $fffb                                   ; $5805: $01 $fb $ff
	add  b                                           ; $5808: $80
	add  b                                           ; $5809: $80
	nop                                              ; $580a: $00
	nop                                              ; $580b: $00
	add  b                                           ; $580c: $80
	ld   a, [hl+]                                    ; $580d: $2a
	add  b                                           ; $580e: $80
	xor  d                                           ; $580f: $aa
	ld   [bc], a                                     ; $5810: $02

jr_07f_5811:
	rst  $38                                         ; $5811: $ff
	nop                                              ; $5812: $00
	rst  $38                                         ; $5813: $ff
	add  b                                           ; $5814: $80
	dec  b                                           ; $5815: $05
	add  b                                           ; $5816: $80
	ld   a, [bc]                                     ; $5817: $0a
	add  b                                           ; $5818: $80
	or   $80                                         ; $5819: $f6 $80
	ld   a, [de]                                     ; $581b: $1a
	ld   bc, $b818                                   ; $581c: $01 $18 $b8
	add  c                                           ; $581f: $81
	xor  h                                           ; $5820: $ac
	ld   [bc], a                                     ; $5821: $02
	db   $ec                                         ; $5822: $ec
	jr   c, jr_07f_57fd                              ; $5823: $38 $d8

	add  b                                           ; $5825: $80
	nop                                              ; $5826: $00
	add  b                                           ; $5827: $80
	inc  bc                                          ; $5828: $03
	add  b                                           ; $5829: $80
	dec  b                                           ; $582a: $05
	add  b                                           ; $582b: $80
	ld   b, b                                        ; $582c: $40
	add  b                                           ; $582d: $80
	adc  b                                           ; $582e: $88
	add  b                                           ; $582f: $80
	ld   [bc], a                                     ; $5830: $02
	add  b                                           ; $5831: $80
	inc  b                                           ; $5832: $04
	add  b                                           ; $5833: $80
	ret  nz                                          ; $5834: $c0

	ld   bc, $404f                                   ; $5835: $01 $4f $40
	add  b                                           ; $5838: $80
	and  b                                           ; $5839: $a0
	add  b                                           ; $583a: $80
	jr   nz, @-$76                                   ; $583b: $20 $88

	nop                                              ; $583d: $00
	nop                                              ; $583e: $00
	rrca                                             ; $583f: $0f
	adc  h                                           ; $5840: $8c
	nop                                              ; $5841: $00
	ld   [bc], a                                     ; $5842: $02
	jr   nc, jr_07f_58ab                             ; $5843: $30 $66

	ld   d, [hl]                                     ; $5845: $56
	add  b                                           ; $5846: $80
	ldh  a, [c]                                      ; $5847: $f2
	add  b                                           ; $5848: $80
	inc  a                                           ; $5849: $3c
	add  b                                           ; $584a: $80
	ld   a, [de]                                     ; $584b: $1a
	add  b                                           ; $584c: $80
	inc  [hl]                                        ; $584d: $34
	add  b                                           ; $584e: $80
	ld   e, a                                        ; $584f: $5f
	add  b                                           ; $5850: $80
	add  hl, hl                                      ; $5851: $29
	add  b                                           ; $5852: $80
	ld   h, b                                        ; $5853: $60
	add  b                                           ; $5854: $80
	ld   bc, $0680                                   ; $5855: $01 $80 $06
	add  b                                           ; $5858: $80
	ld   a, [hl+]                                    ; $5859: $2a
	add  b                                           ; $585a: $80
	ld   b, b                                        ; $585b: $40
	add  b                                           ; $585c: $80

jr_07f_585d:
	adc  b                                           ; $585d: $88
	add  b                                           ; $585e: $80
	jr   z, @-$7e                                    ; $585f: $28 $80

	ld   b, h                                        ; $5861: $44
	add  b                                           ; $5862: $80
	ld   l, $00                                      ; $5863: $2e $00
	adc  a                                           ; $5865: $8f
	add  c                                           ; $5866: $81
	add  b                                           ; $5867: $80
	add  b                                           ; $5868: $80
	ld   b, b                                        ; $5869: $40
	adc  b                                           ; $586a: $88
	nop                                              ; $586b: $00
	nop                                              ; $586c: $00
	ldh  a, [$80]                                    ; $586d: $f0 $80
	ld   [hl], b                                     ; $586f: $70
	add  b                                           ; $5870: $80
	add  c                                           ; $5871: $81
	adc  b                                           ; $5872: $88
	nop                                              ; $5873: $00
	ld   [bc], a                                     ; $5874: $02
	ld   bc, $a856                                   ; $5875: $01 $56 $a8
	add  b                                           ; $5878: $80
	ld   d, b                                        ; $5879: $50
	dec  b                                           ; $587a: $05
	ret  c                                           ; $587b: $d8

	sbc  b                                           ; $587c: $98
	or   b                                           ; $587d: $b0
	db   $10                                         ; $587e: $10
	ld   [$8028], sp                                 ; $587f: $08 $28 $80
	ld   a, $03                                      ; $5882: $3e $03
	ld   l, l                                        ; $5884: $6d
	dec  l                                           ; $5885: $2d
	ld   d, l                                        ; $5886: $55
	push de                                          ; $5887: $d5
	add  b                                           ; $5888: $80
	jr   nz, jr_07f_5811                             ; $5889: $20 $86

	nop                                              ; $588b: $00
	add  b                                           ; $588c: $80
	and  b                                           ; $588d: $a0
	add  b                                           ; $588e: $80
	ldh  [$80], a                                    ; $588f: $e0 $80
	ret  nz                                          ; $5891: $c0

	nop                                              ; $5892: $00
	rrca                                             ; $5893: $0f
	adc  l                                           ; $5894: $8d
	nop                                              ; $5895: $00
	nop                                              ; $5896: $00
	ldh  a, [$80]                                    ; $5897: $f0 $80
	inc  bc                                          ; $5899: $03
	inc  bc                                          ; $589a: $03
	ld   bc, $0200                                   ; $589b: $01 $00 $02
	inc  bc                                          ; $589e: $03
	add  b                                           ; $589f: $80
	rlca                                             ; $58a0: $07
	add  b                                           ; $58a1: $80
	inc  bc                                          ; $58a2: $03
	add  c                                           ; $58a3: $81
	rlca                                             ; $58a4: $07
	inc  bc                                          ; $58a5: $03
	ld   b, $02                                      ; $58a6: $06 $02
	cp   d                                           ; $58a8: $ba
	ld   b, [hl]                                     ; $58a9: $46
	add  b                                           ; $58aa: $80

jr_07f_58ab:
	ld   a, [$f280]                                  ; $58ab: $fa $80 $f2
	add  b                                           ; $58ae: $80
	sub  b                                           ; $58af: $90
	add  b                                           ; $58b0: $80
	ld   b, d                                        ; $58b1: $42
	add  b                                           ; $58b2: $80
	pop  hl                                          ; $58b3: $e1
	add  b                                           ; $58b4: $80
	pop  bc                                          ; $58b5: $c1
	add  b                                           ; $58b6: $80
	nop                                              ; $58b7: $00
	add  b                                           ; $58b8: $80
	ld   d, b                                        ; $58b9: $50
	add  b                                           ; $58ba: $80
	inc  c                                           ; $58bb: $0c
	add  b                                           ; $58bc: $80
	ld   de, $0a80                                   ; $58bd: $11 $80 $0a
	add  b                                           ; $58c0: $80
	ld   l, $80                                      ; $58c1: $2e $80
	ld   a, h                                        ; $58c3: $7c
	add  b                                           ; $58c4: $80
	db   $fc                                         ; $58c5: $fc
	add  b                                           ; $58c6: $80
	ldh  a, [rP1]                                    ; $58c7: $f0 $00
	rra                                              ; $58c9: $1f
	add  c                                           ; $58ca: $81
	db   $10                                         ; $58cb: $10
	add  b                                           ; $58cc: $80
	ld   b, b                                        ; $58cd: $40
	add  b                                           ; $58ce: $80
	ret  nz                                          ; $58cf: $c0

	add  b                                           ; $58d0: $80
	db   $10                                         ; $58d1: $10
	add  h                                           ; $58d2: $84
	nop                                              ; $58d3: $00
	nop                                              ; $58d4: $00
	ldh  a, [$85]                                    ; $58d5: $f0 $85
	nop                                              ; $58d7: $00
	add  b                                           ; $58d8: $80
	jr   nz, jr_07f_585d                             ; $58d9: $20 $82

	nop                                              ; $58db: $00
	add  b                                           ; $58dc: $80
	db   $10                                         ; $58dd: $10
	inc  bc                                          ; $58de: $03
	inc  e                                           ; $58df: $1c
	and  e                                           ; $58e0: $a3
	and  d                                           ; $58e1: $a2
	ld   [bc], a                                     ; $58e2: $02
	add  b                                           ; $58e3: $80
	nop                                              ; $58e4: $00
	ld   [bc], a                                     ; $58e5: $02
	ld   d, $06                                      ; $58e6: $16 $06
	inc  c                                           ; $58e8: $0c
	add  c                                           ; $58e9: $81
	inc  a                                           ; $58ea: $3c
	ld   bc, $7d3d                                   ; $58eb: $01 $3d $7d
	add  c                                           ; $58ee: $81
	ld   a, a                                        ; $58ef: $7f
	rst  $38                                         ; $58f0: $ff
	nop                                              ; $58f1: $00
	rst  $38                                         ; $58f2: $ff
	nop                                              ; $58f3: $00
	rst  $38                                         ; $58f4: $ff
	nop                                              ; $58f5: $00
	rst  $38                                         ; $58f6: $ff
	nop                                              ; $58f7: $00
	rst  $38                                         ; $58f8: $ff
	nop                                              ; $58f9: $00
	rst  $38                                         ; $58fa: $ff
	nop                                              ; $58fb: $00
	rst  $38                                         ; $58fc: $ff
	nop                                              ; $58fd: $00
	sub  [hl]                                        ; $58fe: $96
	nop                                              ; $58ff: $00
	inc  de                                          ; $5900: $13
	ld   bc, $0d80                                   ; $5901: $01 $80 $0d
	add  b                                           ; $5904: $80
	rrca                                             ; $5905: $0f
	add  b                                           ; $5906: $80
	dec  c                                           ; $5907: $0d
	add  b                                           ; $5908: $80
	rrca                                             ; $5909: $0f
	add  b                                           ; $590a: $80
	dec  c                                           ; $590b: $0d
	add  h                                           ; $590c: $84
	rrca                                             ; $590d: $0f
	nop                                              ; $590e: $00
	ldh  [c], a                                      ; $590f: $e2
	add  b                                           ; $5910: $80
	push hl                                          ; $5911: $e5
	add  c                                           ; $5912: $81
	pop  hl                                          ; $5913: $e1
	add  b                                           ; $5914: $80
	pop  de                                          ; $5915: $d1
	add  b                                           ; $5916: $80
	pop  hl                                          ; $5917: $e1
	add  b                                           ; $5918: $80
	pop  de                                          ; $5919: $d1
	add  b                                           ; $591a: $80
	pop  hl                                          ; $591b: $e1
	add  b                                           ; $591c: $80
	pop  de                                          ; $591d: $d1
	inc  b                                           ; $591e: $04
	inc  l                                           ; $591f: $2c
	ldh  a, [rAUDVOL]                                ; $5920: $f0 $24
	ei                                               ; $5922: $fb
	add  h                                           ; $5923: $84
	add  c                                           ; $5924: $81
	rst  $38                                         ; $5925: $ff
	ld   [bc], a                                     ; $5926: $02
	and  h                                           ; $5927: $a4
	rst  JumpTable                                         ; $5928: $df
	and  b                                           ; $5929: $a0
	add  c                                           ; $592a: $81
	rst  $38                                         ; $592b: $ff
	ld   [bc], a                                     ; $592c: $02
	and  b                                           ; $592d: $a0
	rst  $38                                         ; $592e: $ff
	pop  af                                          ; $592f: $f1
	add  b                                           ; $5930: $80
	ld   [de], a                                     ; $5931: $12
	ld   bc, $02f2                                   ; $5932: $01 $f2 $02
	add  c                                           ; $5935: $81
	ldh  [c], a                                      ; $5936: $e2
	ld   [bc], a                                     ; $5937: $02
	ld   b, d                                        ; $5938: $42
	and  d                                           ; $5939: $a2
	ld   b, d                                        ; $593a: $42
	add  b                                           ; $593b: $80
	ldh  [c], a                                      ; $593c: $e2
	ld   c, $ee                                      ; $593d: $0e $ee
	ld   d, d                                        ; $593f: $52
	cp   $53                                         ; $5940: $fe $53
	cp   a                                           ; $5942: $bf
	rrca                                             ; $5943: $0f
	rst  $38                                         ; $5944: $ff
	rrca                                             ; $5945: $0f
	xor  a                                           ; $5946: $af
	rrca                                             ; $5947: $0f
	rst  JumpTable                                         ; $5948: $df
	ccf                                              ; $5949: $3f
	cp   a                                           ; $594a: $bf
	rra                                              ; $594b: $1f

jr_07f_594c:
	rrca                                             ; $594c: $0f
	add  b                                           ; $594d: $80
	rst  $38                                         ; $594e: $ff
	add  b                                           ; $594f: $80
	nop                                              ; $5950: $00
	dec  bc                                          ; $5951: $0b
	ld   d, h                                        ; $5952: $54
	ld   e, l                                        ; $5953: $5d
	dec  b                                           ; $5954: $05
	ld   a, l                                        ; $5955: $7d
	dec  b                                           ; $5956: $05
	ld   d, l                                        ; $5957: $55
	dec  b                                           ; $5958: $05
	ld   l, l                                        ; $5959: $6d
	dec  e                                           ; $595a: $1d
	ld   e, l                                        ; $595b: $5d
	inc  c                                           ; $595c: $0c
	dec  b                                           ; $595d: $05
	add  b                                           ; $595e: $80
	db   $fc                                         ; $595f: $fc
	add  b                                           ; $5960: $80
	dec  b                                           ; $5961: $05
	nop                                              ; $5962: $00
	nop                                              ; $5963: $00
	add  a                                           ; $5964: $87
	rst  $38                                         ; $5965: $ff
	rlca                                             ; $5966: $07
	ld   a, e                                        ; $5967: $7b
	add  a                                           ; $5968: $87
	inc  b                                           ; $5969: $04
	rlca                                             ; $596a: $07
	db   $f4                                         ; $596b: $f4
	rst  $30                                         ; $596c: $f7
	dec  sp                                          ; $596d: $3b
	rst  ToBoot                                         ; $596e: $c7
	add  b                                           ; $596f: $80
	and  e                                           ; $5970: $a3
	add  b                                           ; $5971: $80
	ld   b, e                                        ; $5972: $43
	add  b                                           ; $5973: $80
	and  e                                           ; $5974: $a3
	add  b                                           ; $5975: $80
	ld   b, e                                        ; $5976: $43
	rlca                                             ; $5977: $07
	and  c                                           ; $5978: $a1
	and  b                                           ; $5979: $a0
	pop  bc                                          ; $597a: $c1
	inc  bc                                          ; $597b: $03
	jr   nz, @+$12                                   ; $597c: $20 $10

	ld   c, h                                        ; $597e: $4c
	cp   a                                           ; $597f: $bf
	add  b                                           ; $5980: $80
	rst  JumpTable                                         ; $5981: $df
	dec  b                                           ; $5982: $05
	db   $fc                                         ; $5983: $fc
	rst  $38                                         ; $5984: $ff
	rst  ToBoot                                         ; $5985: $c7
	ei                                               ; $5986: $fb
	inc  bc                                          ; $5987: $03
	jp   $3b80                                       ; $5988: $c3 $80 $3b


	inc  b                                           ; $598b: $04
	ret  nz                                          ; $598c: $c0

	jp   $3b0b                                       ; $598d: $c3 $0b $3b


	adc  $81                                         ; $5990: $ce $81
	dec  b                                           ; $5992: $05
	ld   [bc], a                                     ; $5993: $02
	ld   b, c                                        ; $5994: $41
	add  c                                           ; $5995: $81
	and  a                                           ; $5996: $a7
	add  b                                           ; $5997: $80
	add  a                                           ; $5998: $87
	add  c                                           ; $5999: $81
	sbc  a                                           ; $599a: $9f
	inc  b                                           ; $599b: $04
	ld   b, e                                        ; $599c: $43
	rst  JumpTable                                         ; $599d: $df
	call c, $70df                                    ; $599e: $dc $df $70
	adc  c                                           ; $59a1: $89
	rst  $28                                         ; $59a2: $ef
	rlca                                             ; $59a3: $07
	ret  nz                                          ; $59a4: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59a5: $cf
	rrca                                             ; $59a6: $0f
	rst  $38                                         ; $59a7: $ff
	ld   d, b                                        ; $59a8: $50
	cpl                                              ; $59a9: $2f
	jr   nz, jr_07f_594c                             ; $59aa: $20 $a0

	add  b                                           ; $59ac: $80
	xor  a                                           ; $59ad: $af
	add  b                                           ; $59ae: $80
	and  b                                           ; $59af: $a0
	ld   [bc], a                                     ; $59b0: $02
	xor  h                                           ; $59b1: $ac
	xor  a                                           ; $59b2: $af
	and  e                                           ; $59b3: $a3
	add  c                                           ; $59b4: $81
	xor  a                                           ; $59b5: $af
	inc  bc                                          ; $59b6: $03
	xor  b                                           ; $59b7: $a8
	xor  a                                           ; $59b8: $af
	push af                                          ; $59b9: $f5
	db   $fd                                         ; $59ba: $fd
	add  b                                           ; $59bb: $80
	dec  b                                           ; $59bc: $05
	add  b                                           ; $59bd: $80
	db   $fc                                         ; $59be: $fc
	nop                                              ; $59bf: $00
	inc  b                                           ; $59c0: $04
	add  b                                           ; $59c1: $80
	dec  b                                           ; $59c2: $05
	inc  b                                           ; $59c3: $04
	dec  e                                           ; $59c4: $1d
	ld   b, l                                        ; $59c5: $45
	ld   e, l                                        ; $59c6: $5d
	ld   e, h                                        ; $59c7: $5c
	ld   e, l                                        ; $59c8: $5d
	add  b                                           ; $59c9: $80
	db   $dd                                         ; $59ca: $dd
	ld   bc, $f7c8                                   ; $59cb: $01 $c8 $f7
	add  b                                           ; $59ce: $80
	scf                                              ; $59cf: $37
	add  b                                           ; $59d0: $80
	daa                                              ; $59d1: $27
	add  h                                           ; $59d2: $84
	xor  a                                           ; $59d3: $af
	nop                                              ; $59d4: $00
	adc  a                                           ; $59d5: $8f
	add  c                                           ; $59d6: $81
	xor  a                                           ; $59d7: $af
	ld   bc, $dd33                                   ; $59d8: $01 $33 $dd
	add  c                                           ; $59db: $81
	call c, $dd01                                    ; $59dc: $dc $01 $dd
	db   $fc                                         ; $59df: $fc
	add  l                                           ; $59e0: $85
	db   $fd                                         ; $59e1: $fd
	add  b                                           ; $59e2: $80
	db   $fc                                         ; $59e3: $fc
	ld   [bc], a                                     ; $59e4: $02
	xor  d                                           ; $59e5: $aa
	rst  $10                                         ; $59e6: $d7
	rlca                                             ; $59e7: $07
	add  b                                           ; $59e8: $80
	cp   a                                           ; $59e9: $bf
	dec  bc                                          ; $59ea: $0b
	ld   a, a                                        ; $59eb: $7f
	ccf                                              ; $59ec: $3f
	cp   a                                           ; $59ed: $bf
	rlca                                             ; $59ee: $07
	rst  $10                                         ; $59ef: $d7
	sub  a                                           ; $59f0: $97
	rst  $38                                         ; $59f1: $ff
	sub  a                                           ; $59f2: $97
	rst  $10                                         ; $59f3: $d7
	rlca                                             ; $59f4: $07
	cp   a                                           ; $59f5: $bf
	call nz, $0f8d                                   ; $59f6: $c4 $8d $0f
	ld   bc, $e3e0                                   ; $59f9: $01 $e0 $e3
	add  b                                           ; $59fc: $80
	db   $d3                                         ; $59fd: $d3
	ld   bc, $e9ea                                   ; $59fe: $01 $ea $e9
	add  b                                           ; $5a01: $80
	pop  de                                          ; $5a02: $d1
	add  b                                           ; $5a03: $80
	jp   hl                                          ; $5a04: $e9


	add  b                                           ; $5a05: $80
	pop  de                                          ; $5a06: $d1
	add  b                                           ; $5a07: $80
	jp   hl                                          ; $5a08: $e9


	add  b                                           ; $5a09: $80
	pop  de                                          ; $5a0a: $d1
	nop                                              ; $5a0b: $00
	add  h                                           ; $5a0c: $84
	add  c                                           ; $5a0d: $81
	rst  $38                                         ; $5a0e: $ff
	ld   bc, $0084                                   ; $5a0f: $01 $84 $00
	add  b                                           ; $5a12: $80
	rst  $38                                         ; $5a13: $ff
	nop                                              ; $5a14: $00
	nop                                              ; $5a15: $00
	add  l                                           ; $5a16: $85
	rst  $38                                         ; $5a17: $ff
	nop                                              ; $5a18: $00
	ld   bc, $fe81                                   ; $5a19: $01 $81 $fe
	add  b                                           ; $5a1c: $80
	ld   [bc], a                                     ; $5a1d: $02
	add  b                                           ; $5a1e: $80
	cp   $00                                         ; $5a1f: $fe $00
	ld   [bc], a                                     ; $5a21: $02
	add  l                                           ; $5a22: $85
	cp   $01                                         ; $5a23: $fe $01
	inc  bc                                          ; $5a25: $03
	rst  $38                                         ; $5a26: $ff
	add  b                                           ; $5a27: $80
	nop                                              ; $5a28: $00
	add  b                                           ; $5a29: $80
	sbc  a                                           ; $5a2a: $9f
	ld   b, $80                                      ; $5a2b: $06 $80
	sbc  a                                           ; $5a2d: $9f
	rra                                              ; $5a2e: $1f
	sbc  a                                           ; $5a2f: $9f
	add  b                                           ; $5a30: $80
	sbc  a                                           ; $5a31: $9f
	rra                                              ; $5a32: $1f
	add  c                                           ; $5a33: $81
	sbc  a                                           ; $5a34: $9f
	add  b                                           ; $5a35: $80
	db   $fc                                         ; $5a36: $fc
	ld   b, $04                                      ; $5a37: $06 $04
	dec  b                                           ; $5a39: $05
	add  l                                           ; $5a3a: $85
	cp   l                                           ; $5a3b: $bd
	cp   h                                           ; $5a3c: $bc
	cp   l                                           ; $5a3d: $bd
	add  l                                           ; $5a3e: $85
	add  l                                           ; $5a3f: $85
	cp   l                                           ; $5a40: $bd
	add  b                                           ; $5a41: $80
	rlca                                             ; $5a42: $07
	ld   bc, $e700                                   ; $5a43: $01 $00 $e7
	add  b                                           ; $5a46: $80
	rst  $30                                         ; $5a47: $f7
	ld   [bc], a                                     ; $5a48: $02
	rla                                              ; $5a49: $17
	rst  $30                                         ; $5a4a: $f7
	ldh  a, [$85]                                    ; $5a4b: $f0 $85
	rst  $30                                         ; $5a4d: $f7
	nop                                              ; $5a4e: $00
	add  h                                           ; $5a4f: $84
	add  b                                           ; $5a50: $80
	sbc  c                                           ; $5a51: $99
	add  e                                           ; $5a52: $83
	sbc  l                                           ; $5a53: $9d
	nop                                              ; $5a54: $00
	add  h                                           ; $5a55: $84
	add  l                                           ; $5a56: $85
	sbc  l                                           ; $5a57: $9d
	nop                                              ; $5a58: $00
	ld   [$fb85], sp                                 ; $5a59: $08 $85 $fb
	inc  bc                                          ; $5a5c: $03
	dec  bc                                          ; $5a5d: $0b
	ei                                               ; $5a5e: $fb
	ldh  a, [$f3]                                    ; $5a5f: $f0 $f3
	add  d                                           ; $5a61: $82
	rst  $38                                         ; $5a62: $ff
	nop                                              ; $5a63: $00
	ld   b, b                                        ; $5a64: $40
	add  a                                           ; $5a65: $87
	rst  JumpTable                                         ; $5a66: $df
	ld   b, $40                                      ; $5a67: $06 $40
	rst  JumpTable                                         ; $5a69: $df
	sbc  [hl]                                        ; $5a6a: $9e
	sbc  a                                           ; $5a6b: $9f
	pop  af                                          ; $5a6c: $f1
	rst  $38                                         ; $5a6d: $ff
	rrca                                             ; $5a6e: $0f
	add  a                                           ; $5a6f: $87
	rst  $38                                         ; $5a70: $ff
	ld   [bc], a                                     ; $5a71: $02
	ld   a, a                                        ; $5a72: $7f
	rst  $38                                         ; $5a73: $ff
	ld   a, a                                        ; $5a74: $7f
	add  c                                           ; $5a75: $81
	rst  $38                                         ; $5a76: $ff
	nop                                              ; $5a77: $00
	ld   d, b                                        ; $5a78: $50
	add  c                                           ; $5a79: $81
	xor  a                                           ; $5a7a: $af
	inc  bc                                          ; $5a7b: $03
	inc  hl                                          ; $5a7c: $23
	rst  $28                                         ; $5a7d: $ef
	db   $e3                                         ; $5a7e: $e3
	rst  $28                                         ; $5a7f: $ef
	add  b                                           ; $5a80: $80

jr_07f_5a81:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a81: $cf
	ld   [bc], a                                     ; $5a82: $02
	pop  bc                                          ; $5a83: $c1
	rst  $38                                         ; $5a84: $ff

jr_07f_5a85:
	cp   $81                                         ; $5a85: $fe $81
	rst  $38                                         ; $5a87: $ff
	ld   bc, $9d62                                   ; $5a88: $01 $62 $9d
	add  h                                           ; $5a8b: $84
	db   $fd                                         ; $5a8c: $fd
	add  b                                           ; $5a8d: $80
	ld   sp, hl                                      ; $5a8e: $f9
	ld   [bc], a                                     ; $5a8f: $02
	cp   $ff                                         ; $5a90: $fe $ff
	ld   bc, $ff81                                   ; $5a92: $01 $81 $ff
	ld   bc, $2fcf                                   ; $5a95: $01 $cf $2f
	add  c                                           ; $5a98: $81
	rst  $28                                         ; $5a99: $ef
	nop                                              ; $5a9a: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a9b: $cf
	add  d                                           ; $5a9c: $82
	rst  JumpTable                                         ; $5a9d: $df
	nop                                              ; $5a9e: $00
	rra                                              ; $5a9f: $1f
	add  d                                           ; $5aa0: $82
	rst  JumpTable                                         ; $5aa1: $df
	inc  bc                                          ; $5aa2: $03
	sbc  $f3                                         ; $5aa3: $de $f3
	db   $fd                                         ; $5aa5: $fd
	db   $fc                                         ; $5aa6: $fc
	add  l                                           ; $5aa7: $85
	db   $fd                                         ; $5aa8: $fd
	add  c                                           ; $5aa9: $81
	db   $fc                                         ; $5aaa: $fc
	rrca                                             ; $5aab: $0f
	ld   a, l                                        ; $5aac: $7d
	inc  c                                           ; $5aad: $0c
	ld   a, l                                        ; $5aae: $7d
	adc  d                                           ; $5aaf: $8a
	ld   a, a                                        ; $5ab0: $7f
	ccf                                              ; $5ab1: $3f
	cp   a                                           ; $5ab2: $bf
	rlca                                             ; $5ab3: $07
	rst  $10                                         ; $5ab4: $d7
	sub  a                                           ; $5ab5: $97
	rst  $38                                         ; $5ab6: $ff
	sbc  a                                           ; $5ab7: $9f
	rst  JumpTable                                         ; $5ab8: $df
	rlca                                             ; $5ab9: $07
	cp   a                                           ; $5aba: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5abb: $cf
	add  b                                           ; $5abc: $80
	rrca                                             ; $5abd: $0f
	ld   bc, $8b8f                                   ; $5abe: $01 $8f $8b
	add  l                                           ; $5ac1: $85
	nop                                              ; $5ac2: $00
	add  b                                           ; $5ac3: $80
	rst  $38                                         ; $5ac4: $ff
	dec  b                                           ; $5ac5: $05
	ld   hl, sp-$01                                  ; $5ac6: $f8 $ff
	rst  $30                                         ; $5ac8: $f7
	ld   hl, sp-$10                                  ; $5ac9: $f8 $f0
	ld   hl, sp-$7a                                  ; $5acb: $f8 $86
	nop                                              ; $5acd: $00
	add  b                                           ; $5ace: $80
	rst  $38                                         ; $5acf: $ff
	add  hl, bc                                      ; $5ad0: $09
	ccf                                              ; $5ad1: $3f
	rst  $38                                         ; $5ad2: $ff
	rst  JumpTable                                         ; $5ad3: $df
	ccf                                              ; $5ad4: $3f
	rra                                              ; $5ad5: $1f
	ccf                                              ; $5ad6: $3f
	and  l                                           ; $5ad7: $a5
	reti                                             ; $5ad8: $d9


	ld   e, c                                        ; $5ad9: $59
	ld   sp, hl                                      ; $5ada: $f9
	add  b                                           ; $5adb: $80
	ld   e, c                                        ; $5adc: $59
	ld   [bc], a                                     ; $5add: $02
	dec  de                                          ; $5ade: $1b

Jump_07f_5adf:
	ei                                               ; $5adf: $fb
	db   $db                                         ; $5ae0: $db
	add  c                                           ; $5ae1: $81
	ei                                               ; $5ae2: $fb
	dec  b                                           ; $5ae3: $05
	db   $db                                         ; $5ae4: $db
	ei                                               ; $5ae5: $fb
	dec  de                                          ; $5ae6: $1b
	ld   e, e                                        ; $5ae7: $5b
	or   e                                           ; $5ae8: $b3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ae9: $cf
	add  b                                           ; $5aea: $80
	rst  $10                                         ; $5aeb: $d7
	add  b                                           ; $5aec: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5aed: $cf
	add  b                                           ; $5aee: $80
	rst  JumpTable                                         ; $5aef: $df
	add  b                                           ; $5af0: $80
	rst  $28                                         ; $5af1: $ef
	add  b                                           ; $5af2: $80
	rst  JumpTable                                         ; $5af3: $df
	add  d                                           ; $5af4: $82
	rst  $38                                         ; $5af5: $ff
	add  b                                           ; $5af6: $80
	or   b                                           ; $5af7: $b0
	add  b                                           ; $5af8: $80
	sub  b                                           ; $5af9: $90
	add  b                                           ; $5afa: $80
	or   b                                           ; $5afb: $b0
	add  b                                           ; $5afc: $80
	sub  b                                           ; $5afd: $90
	add  b                                           ; $5afe: $80
	jr   nc, jr_07f_5a81                             ; $5aff: $30 $80

	ld   d, b                                        ; $5b01: $50
	add  b                                           ; $5b02: $80
	jr   nc, jr_07f_5a85                             ; $5b03: $30 $80

	ld   [hl], b                                     ; $5b05: $70
	nop                                              ; $5b06: $00
	nop                                              ; $5b07: $00
	adc  e                                           ; $5b08: $8b
	rst  $38                                         ; $5b09: $ff
	add  b                                           ; $5b0a: $80
	cp   $8c                                         ; $5b0b: $fe $8c
	rst  $38                                         ; $5b0d: $ff
	add  b                                           ; $5b0e: $80
	nop                                              ; $5b0f: $00
	nop                                              ; $5b10: $00
	rst  $38                                         ; $5b11: $ff
	adc  e                                           ; $5b12: $8b
	ldh  a, [$80]                                    ; $5b13: $f0 $80
	jr   nc, jr_07f_5b23                             ; $5b15: $30 $0c

	ld   [$d4ff], sp                                 ; $5b17: $08 $ff $d4
	rst  $38                                         ; $5b1a: $ff
	adc  h                                           ; $5b1b: $8c
	ld   hl, sp+$5a                                  ; $5b1c: $f8 $5a
	ldh  a, [c]                                      ; $5b1e: $f2
	add  l                                           ; $5b1f: $85
	push af                                          ; $5b20: $f5
	ld   a, a                                        ; $5b21: $7f
	rst  $38                                         ; $5b22: $ff

jr_07f_5b23:
	nop                                              ; $5b23: $00
	add  c                                           ; $5b24: $81
	rst  $38                                         ; $5b25: $ff
	ld   [$ffbf], sp                                 ; $5b26: $08 $bf $ff
	ld   a, a                                        ; $5b29: $7f
	rst  $38                                         ; $5b2a: $ff
	ld   e, a                                        ; $5b2b: $5f
	ld   a, a                                        ; $5b2c: $7f
	cp   [hl]                                        ; $5b2d: $be
	cp   a                                           ; $5b2e: $bf
	rst  $28                                         ; $5b2f: $ef
	add  c                                           ; $5b30: $81
	rst  $38                                         ; $5b31: $ff
	ld   h, $0e                                      ; $5b32: $26 $0e
	rst  $38                                         ; $5b34: $ff
	db   $f4                                         ; $5b35: $f4
	rst  $38                                         ; $5b36: $ff
	db   $f4                                         ; $5b37: $f4
	rst  $38                                         ; $5b38: $ff
	add  a                                           ; $5b39: $87
	rst  $38                                         ; $5b3a: $ff
	ld   a, e                                        ; $5b3b: $7b
	rst  $38                                         ; $5b3c: $ff
	db   $ed                                         ; $5b3d: $ed
	rst  $38                                         ; $5b3e: $ff
	push bc                                          ; $5b3f: $c5
	rst  $38                                         ; $5b40: $ff
	add  c                                           ; $5b41: $81
	rst  $38                                         ; $5b42: $ff
	add  c                                           ; $5b43: $81
	rst  $38                                         ; $5b44: $ff
	add  c                                           ; $5b45: $81
	rst  $38                                         ; $5b46: $ff
	ld   e, e                                        ; $5b47: $5b
	rst  $30                                         ; $5b48: $f7
	or   $f7                                         ; $5b49: $f6 $f7
	or   $f7                                         ; $5b4b: $f6 $f7
	db   $f4                                         ; $5b4d: $f4
	or   $f0                                         ; $5b4e: $f6 $f0
	push af                                          ; $5b50: $f5
	rst  $30                                         ; $5b51: $f7
	push af                                          ; $5b52: $f5
	ldh  a, [$f6]                                    ; $5b53: $f0 $f6
	db   $f4                                         ; $5b55: $f4
	rst  $30                                         ; $5b56: $f7
	ld   b, $fd                                      ; $5b57: $06 $fd
	ld   b, $82                                      ; $5b59: $06 $82
	db   $fd                                         ; $5b5b: $fd
	nop                                              ; $5b5c: $00
	db   $fc                                         ; $5b5d: $fc
	add  b                                           ; $5b5e: $80
	db   $fd                                         ; $5b5f: $fd
	nop                                              ; $5b60: $00
	ld   hl, sp-$80                                  ; $5b61: $f8 $80
	nop                                              ; $5b63: $00
	nop                                              ; $5b64: $00
	rst  $38                                         ; $5b65: $ff
	add  b                                           ; $5b66: $80
	ldh  a, [rSC]                                    ; $5b67: $f0 $02
	add  b                                           ; $5b69: $80
	ld   a, a                                        ; $5b6a: $7f
	ld   [$ff80], sp                                 ; $5b6b: $08 $80 $ff
	rrca                                             ; $5b6e: $0f
	ldh  a, [$5c]                                    ; $5b6f: $f0 $5c
	and  e                                           ; $5b71: $a3
	db   $e3                                         ; $5b72: $e3
	ei                                               ; $5b73: $fb
	add  hl, de                                      ; $5b74: $19
	dec  de                                          ; $5b75: $1b
	add  hl, de                                      ; $5b76: $19
	ei                                               ; $5b77: $fb
	dec  bc                                          ; $5b78: $0b
	ld   [$fb03], sp                                 ; $5b79: $08 $03 $fb
	inc  b                                           ; $5b7c: $04
	di                                               ; $5b7d: $f3
	ei                                               ; $5b7e: $fb
	add  b                                           ; $5b7f: $80
	inc  bc                                          ; $5b80: $03
	ld   [$f3f4], sp                                 ; $5b81: $08 $f4 $f3
	rst  $30                                         ; $5b84: $f7
	rst  $10                                         ; $5b85: $d7
	rst  $30                                         ; $5b86: $f7
	sub  a                                           ; $5b87: $97
	rst  $30                                         ; $5b88: $f7
	cp   b                                           ; $5b89: $b8
	nop                                              ; $5b8a: $00
	add  b                                           ; $5b8b: $80
	ldh  a, [rP1]                                    ; $5b8c: $f0 $00
	nop                                              ; $5b8e: $00
	add  d                                           ; $5b8f: $82
	ldh  a, [rP1]                                    ; $5b90: $f0 $00
	nop                                              ; $5b92: $00
	add  h                                           ; $5b93: $84
	ldh  a, [$80]                                    ; $5b94: $f0 $80
	nop                                              ; $5b96: $00
	add  d                                           ; $5b97: $82
	ld   hl, sp-$80                                  ; $5b98: $f8 $80
	db   $fc                                         ; $5b9a: $fc
	add  b                                           ; $5b9b: $80
	rst  $38                                         ; $5b9c: $ff
	nop                                              ; $5b9d: $00
	nop                                              ; $5b9e: $00
	add  c                                           ; $5b9f: $81
	rst  $38                                         ; $5ba0: $ff
	add  b                                           ; $5ba1: $80
	nop                                              ; $5ba2: $00
	add  b                                           ; $5ba3: $80
	rst  $38                                         ; $5ba4: $ff
	nop                                              ; $5ba5: $00
	ret  nz                                          ; $5ba6: $c0

	add  c                                           ; $5ba7: $81
	ccf                                              ; $5ba8: $3f
	add  b                                           ; $5ba9: $80
	ld   a, a                                        ; $5baa: $7f
	inc  bc                                          ; $5bab: $03
	ldh  [rIE], a                                    ; $5bac: $e0 $ff
	rra                                              ; $5bae: $1f
	rst  $38                                         ; $5baf: $ff
	add  b                                           ; $5bb0: $80
	db   $fc                                         ; $5bb1: $fc
	add  b                                           ; $5bb2: $80
	inc  bc                                          ; $5bb3: $03
	add  b                                           ; $5bb4: $80
	rst  $38                                         ; $5bb5: $ff
	nop                                              ; $5bb6: $00
	nop                                              ; $5bb7: $00
	add  e                                           ; $5bb8: $83
	rst  $38                                         ; $5bb9: $ff
	nop                                              ; $5bba: $00

jr_07f_5bbb:
	nop                                              ; $5bbb: $00
	add  c                                           ; $5bbc: $81
	rst  $38                                         ; $5bbd: $ff
	add  b                                           ; $5bbe: $80
	nop                                              ; $5bbf: $00
	add  d                                           ; $5bc0: $82
	rst  $38                                         ; $5bc1: $ff
	nop                                              ; $5bc2: $00
	rrca                                             ; $5bc3: $0f
	add  c                                           ; $5bc4: $81
	ldh  a, [rSC]                                    ; $5bc5: $f0 $02
	add  b                                           ; $5bc7: $80
	ldh  a, [rSVBK]                                  ; $5bc8: $f0 $70
	add  c                                           ; $5bca: $81
	ldh  a, [$80]                                    ; $5bcb: $f0 $80
	nop                                              ; $5bcd: $00
	add  d                                           ; $5bce: $82
	ldh  a, [rP1]                                    ; $5bcf: $f0 $00
	rrca                                             ; $5bd1: $0f
	add  b                                           ; $5bd2: $80
	nop                                              ; $5bd3: $00
	add  e                                           ; $5bd4: $83
	rst  $38                                         ; $5bd5: $ff
	ld   a, [bc]                                     ; $5bd6: $0a
	sbc  [hl]                                        ; $5bd7: $9e
	sbc  a                                           ; $5bd8: $9f
	ld   a, h                                        ; $5bd9: $7c
	ld   a, a                                        ; $5bda: $7f
	cp   b                                           ; $5bdb: $b8
	cp   a                                           ; $5bdc: $bf
	ld   e, c                                        ; $5bdd: $59
	ld   e, a                                        ; $5bde: $5f
	db   $fd                                         ; $5bdf: $fd
	ld   bc, $8100                                   ; $5be0: $01 $00 $81
	rst  $38                                         ; $5be3: $ff
	ld   a, [de]                                     ; $5be4: $1a
	ld   e, a                                        ; $5be5: $5f
	rst  $38                                         ; $5be6: $ff
	dec  bc                                          ; $5be7: $0b
	rst  $38                                         ; $5be8: $ff
	ld   bc, $00ff                                   ; $5be9: $01 $ff $00
	rst  $38                                         ; $5bec: $ff
	ld   b, c                                        ; $5bed: $41
	rst  $38                                         ; $5bee: $ff
	ld   bc, $e0ff                                   ; $5bef: $01 $ff $e0
	rst  $38                                         ; $5bf2: $ff
	ldh  a, [rIE]                                    ; $5bf3: $f0 $ff
	ldh  a, [rIE]                                    ; $5bf5: $f0 $ff
	ldh  [rIE], a                                    ; $5bf7: $e0 $ff
	ret  nz                                          ; $5bf9: $c0

	rst  $38                                         ; $5bfa: $ff
	add  b                                           ; $5bfb: $80
	rst  $38                                         ; $5bfc: $ff
	ld   b, c                                        ; $5bfd: $41
	rst  $38                                         ; $5bfe: $ff
	dec  hl                                          ; $5bff: $2b
	adc  l                                           ; $5c00: $8d
	jr   nc, jr_07f_5c04                             ; $5c01: $30 $01

	rrca                                             ; $5c03: $0f

jr_07f_5c04:
	rst  $38                                         ; $5c04: $ff
	add  d                                           ; $5c05: $82
	nop                                              ; $5c06: $00
	ld   b, $07                                      ; $5c07: $06 $07
	inc  b                                           ; $5c09: $04
	ei                                               ; $5c0a: $fb
	ld   [bc], a                                     ; $5c0b: $02
	ld   a, [$fffd]                                  ; $5c0c: $fa $fd $ff
	add  b                                           ; $5c0f: $80
	push af                                          ; $5c10: $f5
	ld   [bc], a                                     ; $5c11: $02
	add  sp, $15                                     ; $5c12: $e8 $15
	rst  $38                                         ; $5c14: $ff
	add  b                                           ; $5c15: $80
	ld   bc, $1f80                                   ; $5c16: $01 $80 $1f
	ld   bc, $00ff                                   ; $5c19: $01 $ff $00
	add  e                                           ; $5c1c: $83
	rst  $38                                         ; $5c1d: $ff
	add  b                                           ; $5c1e: $80
	ld   a, a                                        ; $5c1f: $7f
	inc  bc                                          ; $5c20: $03
	rst  $38                                         ; $5c21: $ff
	cp   $ff                                         ; $5c22: $fe $ff
	ld   bc, $ff82                                   ; $5c24: $01 $82 $ff
	nop                                              ; $5c27: $00
	nop                                              ; $5c28: $00
	add  c                                           ; $5c29: $81
	rst  $38                                         ; $5c2a: $ff
	add  b                                           ; $5c2b: $80
	rst  $30                                         ; $5c2c: $f7
	inc  bc                                          ; $5c2d: $03
	ei                                               ; $5c2e: $fb
	rst  $38                                         ; $5c2f: $ff
	db   $eb                                         ; $5c30: $eb
	cpl                                              ; $5c31: $2f
	add  l                                           ; $5c32: $85
	jr   nc, jr_07f_5bbb                             ; $5c33: $30 $86

	ldh  a, [rP1]                                    ; $5c35: $f0 $00
	ld   hl, sp-$80                                  ; $5c37: $f8 $80
	ldh  a, [c]                                      ; $5c39: $f2
	add  b                                           ; $5c3a: $80
	pop  af                                          ; $5c3b: $f1
	add  b                                           ; $5c3c: $80
	ldh  a, [$0e]                                    ; $5c3d: $f0 $0e
	pop  af                                          ; $5c3f: $f1
	db   $f4                                         ; $5c40: $f4
	or   $f0                                         ; $5c41: $f6 $f0

jr_07f_5c43:
	push af                                          ; $5c43: $f5
	rst  $30                                         ; $5c44: $f7
	push af                                          ; $5c45: $f5
	ldh  a, [$f6]                                    ; $5c46: $f0 $f6
	cp   $38                                         ; $5c48: $fe $38
	jr   jr_07f_5ca4                                 ; $5c4a: $18 $58

	ld   a, b                                        ; $5c4c: $78
	ret  c                                           ; $5c4d: $d8

	add  b                                           ; $5c4e: $80
	ld   e, b                                        ; $5c4f: $58
	inc  bc                                          ; $5c50: $03
	jr   @-$06                                       ; $5c51: $18 $f8

	ret  c                                           ; $5c53: $d8

	ld   hl, sp-$80                                  ; $5c54: $f8 $80
	ld   sp, hl                                      ; $5c56: $f9
	ld   [bc], a                                     ; $5c57: $02
	ret  c                                           ; $5c58: $d8

	ld   hl, sp+$3c                                  ; $5c59: $f8 $3c
	add  a                                           ; $5c5b: $87
	nop                                              ; $5c5c: $00
	add  b                                           ; $5c5d: $80
	rst  ToBoot                                         ; $5c5e: $c7
	add  b                                           ; $5c5f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c60: $cf
	add  b                                           ; $5c61: $80
	rst  $10                                         ; $5c62: $d7
	adc  b                                           ; $5c63: $88
	nop                                              ; $5c64: $00
	add  h                                           ; $5c65: $84
	ret  nc                                          ; $5c66: $d0

	rst  $38                                         ; $5c67: $ff
	nop                                              ; $5c68: $00
	rst  $38                                         ; $5c69: $ff
	nop                                              ; $5c6a: $00
	rst  $38                                         ; $5c6b: $ff
	nop                                              ; $5c6c: $00
	rst  $38                                         ; $5c6d: $ff
	nop                                              ; $5c6e: $00
	rst  $38                                         ; $5c6f: $ff
	nop                                              ; $5c70: $00
	rst  $38                                         ; $5c71: $ff
	nop                                              ; $5c72: $00
	rst  $38                                         ; $5c73: $ff
	nop                                              ; $5c74: $00
	rst  $30                                         ; $5c75: $f7
	nop                                              ; $5c76: $00
	adc  $00                                         ; $5c77: $ce $00
	nop                                              ; $5c79: $00
	ld   bc, $0e81                                   ; $5c7a: $01 $81 $0e
	add  b                                           ; $5c7d: $80
	ld   [bc], a                                     ; $5c7e: $02
	add  h                                           ; $5c7f: $84
	ld   c, $80                                      ; $5c80: $0e $80
	inc  c                                           ; $5c82: $0c
	add  b                                           ; $5c83: $80
	nop                                              ; $5c84: $00
	nop                                              ; $5c85: $00
	call z, $3c81                                    ; $5c86: $cc $81 $3c
	add  [hl]                                        ; $5c89: $86
	ccf                                              ; $5c8a: $3f
	add  d                                           ; $5c8b: $82
	inc  a                                           ; $5c8c: $3c
	add  c                                           ; $5c8d: $81
	nop                                              ; $5c8e: $00
	add  b                                           ; $5c8f: $80
	ld   bc, $ff84                                   ; $5c90: $01 $84 $ff
	add  b                                           ; $5c93: $80
	add  b                                           ; $5c94: $80
	inc  bc                                          ; $5c95: $03
	nop                                              ; $5c96: $00
	rst  $38                                         ; $5c97: $ff
	inc  bc                                          ; $5c98: $03
	db   $fc                                         ; $5c99: $fc
	add  b                                           ; $5c9a: $80
	nop                                              ; $5c9b: $00
	add  h                                           ; $5c9c: $84
	rst  $38                                         ; $5c9d: $ff
	add  b                                           ; $5c9e: $80
	ret  nz                                          ; $5c9f: $c0

	dec  b                                           ; $5ca0: $05
	nop                                              ; $5ca1: $00
	ld   a, a                                        ; $5ca2: $7f
	ld   a, b                                        ; $5ca3: $78

jr_07f_5ca4:
	ld   hl, sp-$10                                  ; $5ca4: $f8 $f0
	rrca                                             ; $5ca6: $0f
	add  b                                           ; $5ca7: $80
	ld   a, a                                        ; $5ca8: $7f
	add  d                                           ; $5ca9: $82
	rst  $38                                         ; $5caa: $ff
	add  b                                           ; $5cab: $80
	ldh  [$03], a                                    ; $5cac: $e0 $03
	nop                                              ; $5cae: $00
	ccf                                              ; $5caf: $3f

jr_07f_5cb0:
	ld   [bc], a                                     ; $5cb0: $02
	jp   nz, $0780                                   ; $5cb1: $c2 $80 $07

	ld   bc, $c03f                                   ; $5cb4: $01 $3f $c0

jr_07f_5cb7:
	add  d                                           ; $5cb7: $82
	rst  $38                                         ; $5cb8: $ff
	add  b                                           ; $5cb9: $80
	ldh  [$03], a                                    ; $5cba: $e0 $03
	nop                                              ; $5cbc: $00
	ccf                                              ; $5cbd: $3f
	jr   nc, jr_07f_5cb0                             ; $5cbe: $30 $f0

	add  b                                           ; $5cc0: $80
	jr   nc, jr_07f_5c43                             ; $5cc1: $30 $80

	ret  nz                                          ; $5cc3: $c0

	ld   bc, $03fc                                   ; $5cc4: $01 $fc $03
	add  b                                           ; $5cc7: $80
	rst  $38                                         ; $5cc8: $ff
	add  b                                           ; $5cc9: $80
	ldh  a, [$03]                                    ; $5cca: $f0 $03
	nop                                              ; $5ccc: $00
	rra                                              ; $5ccd: $1f
	nop                                              ; $5cce: $00
	ldh  [$80], a                                    ; $5ccf: $e0 $80
	ld   bc, $1f80                                   ; $5cd1: $01 $80 $1f
	add  b                                           ; $5cd4: $80
	ld   a, a                                        ; $5cd5: $7f
	ld   bc, $c03f                                   ; $5cd6: $01 $3f $c0
	add  b                                           ; $5cd9: $80
	ld   hl, sp+$00                                  ; $5cda: $f8 $00
	nop                                              ; $5cdc: $00
	add  b                                           ; $5cdd: $80
	rrca                                             ; $5cde: $0f
	nop                                              ; $5cdf: $00
	rst  $38                                         ; $5ce0: $ff
	add  b                                           ; $5ce1: $80
	ld   h, b                                        ; $5ce2: $60
	add  b                                           ; $5ce3: $80
	db   $fc                                         ; $5ce4: $fc
	add  b                                           ; $5ce5: $80
	rst  $38                                         ; $5ce6: $ff
	add  b                                           ; $5ce7: $80
	ldh  a, [rAUDENA]                                ; $5ce8: $f0 $26
	ld   b, c                                        ; $5cea: $41
	cp   [hl]                                        ; $5ceb: $be
	nop                                              ; $5cec: $00
	dec  bc                                          ; $5ced: $0b
	dec  b                                           ; $5cee: $05
	ei                                               ; $5cef: $fb
	jp   z, $37d4                                    ; $5cf0: $ca $d4 $37

	dec  hl                                          ; $5cf3: $2b
	res  2, [hl]                                     ; $5cf4: $cb $96
	ld   d, l                                        ; $5cf6: $55
	ld   a, [hl-]                                    ; $5cf7: $3a
	cp   d                                           ; $5cf8: $ba
	cp   h                                           ; $5cf9: $bc
	db   $fd                                         ; $5cfa: $fd
	ccf                                              ; $5cfb: $3f
	ld   [bc], a                                     ; $5cfc: $02
	ld   sp, hl                                      ; $5cfd: $f9
	push af                                          ; $5cfe: $f5
	ldh  a, [$f8]                                    ; $5cff: $f0 $f8
	db   $fd                                         ; $5d01: $fd
	push hl                                          ; $5d02: $e5
	ld   [$b5eb], a                                  ; $5d03: $ea $eb $b5
	ld   d, a                                        ; $5d06: $57
	jp   $00ff                                       ; $5d07: $c3 $ff $00


	rst  $38                                         ; $5d0a: $ff
	pop  hl                                          ; $5d0b: $e1
	ld   a, $5e                                      ; $5d0c: $3e $5e
	ld   b, [hl]                                     ; $5d0e: $46
	xor  [hl]                                        ; $5d0f: $ae
	xor  b                                           ; $5d10: $a8
	add  b                                           ; $5d11: $80
	ld   d, h                                        ; $5d12: $54
	nop                                              ; $5d13: $00
	ld   bc, $ff81                                   ; $5d14: $01 $81 $ff
	rlca                                             ; $5d17: $07
	db   $fc                                         ; $5d18: $fc
	rst  $38                                         ; $5d19: $ff
	add  e                                           ; $5d1a: $83
	rst  $38                                         ; $5d1b: $ff
	scf                                              ; $5d1c: $37
	ld   b, c                                        ; $5d1d: $41
	ld   c, b                                        ; $5d1e: $48
	ld   [$4180], sp                                 ; $5d1f: $08 $80 $41
	dec  bc                                          ; $5d22: $0b
	jr   nc, jr_07f_5d9e                             ; $5d23: $30 $79

	add  hl, de                                      ; $5d25: $19
	ld   sp, hl                                      ; $5d26: $f9
	rst  $20                                         ; $5d27: $e7
	rst  $38                                         ; $5d28: $ff
	ld   hl, sp-$01                                  ; $5d29: $f8 $ff
	rst  ToBoot                                         ; $5d2b: $c7
	rst  $38                                         ; $5d2c: $ff
	ldh  [c], a                                      ; $5d2d: $e2
	ld   bc, $2482                                   ; $5d2e: $01 $82 $24
	ld   [bc], a                                     ; $5d31: $02
	inc  b                                           ; $5d32: $04
	inc  h                                           ; $5d33: $24
	jr   c, jr_07f_5cb7                              ; $5d34: $38 $81

	inc  a                                           ; $5d36: $3c
	db   $10                                         ; $5d37: $10
	rra                                              ; $5d38: $1f
	rst  $38                                         ; $5d39: $ff
	ldh  [rIE], a                                    ; $5d3a: $e0 $ff
	and  $1f                                         ; $5d3c: $e6 $1f
	dec  d                                           ; $5d3e: $15
	sbc  a                                           ; $5d3f: $9f
	xor  a                                           ; $5d40: $af
	cp   a                                           ; $5d41: $bf
	sbc  d                                           ; $5d42: $9a
	sbc  a                                           ; $5d43: $9f
	ld   e, h                                        ; $5d44: $5c
	rst  $38                                         ; $5d45: $ff
	ldh  a, [c]                                      ; $5d46: $f2
	rst  $38                                         ; $5d47: $ff
	scf                                              ; $5d48: $37
	add  c                                           ; $5d49: $81
	rst  $38                                         ; $5d4a: $ff
	rla                                              ; $5d4b: $17
	ld   d, c                                        ; $5d4c: $51
	xor  $0d                                         ; $5d4d: $ee $0d
	db   $dd                                         ; $5d4f: $dd
	adc  c                                           ; $5d50: $89
	cp   e                                           ; $5d51: $bb
	or   d                                           ; $5d52: $b2
	ld   [hl], a                                     ; $5d53: $77
	ld   b, h                                        ; $5d54: $44
	rst  $28                                         ; $5d55: $ef
	add  d                                           ; $5d56: $82
	sbc  $91                                         ; $5d57: $de $91
	rst  $38                                         ; $5d59: $ff
	ldh  [$fe], a                                    ; $5d5a: $e0 $fe
	ld   bc, $82e1                                   ; $5d5c: $01 $e1 $82
	adc  [hl]                                        ; $5d5f: $8e
	ld   b, h                                        ; $5d60: $44
	ld   a, b                                        ; $5d61: $78
	sub  $e6                                         ; $5d62: $d6 $e6
	add  b                                           ; $5d64: $80
	sbc  b                                           ; $5d65: $98
	add  b                                           ; $5d66: $80
	ld   h, b                                        ; $5d67: $60
	add  b                                           ; $5d68: $80
	adc  h                                           ; $5d69: $8c
	inc  bc                                          ; $5d6a: $03
	add  hl, hl                                      ; $5d6b: $29
	add  hl, sp                                      ; $5d6c: $39
	ldh  [rP1], a                                    ; $5d6d: $e0 $00
	add  h                                           ; $5d6f: $84
	rrca                                             ; $5d70: $0f
	inc  b                                           ; $5d71: $04
	ld   [bc], a                                     ; $5d72: $02
	rrca                                             ; $5d73: $0f
	ld   bc, $030f                                   ; $5d74: $01 $0f $03
	add  c                                           ; $5d77: $81
	rrca                                             ; $5d78: $0f
	ld   [bc], a                                     ; $5d79: $02
	rra                                              ; $5d7a: $1f
	rst  $38                                         ; $5d7b: $ff
	rst  $20                                         ; $5d7c: $e7
	add  c                                           ; $5d7d: $81
	rst  $38                                         ; $5d7e: $ff
	jr   nz, @-$77                                   ; $5d7f: $20 $87

	rst  $38                                         ; $5d81: $ff
	ld   a, [hl]                                     ; $5d82: $7e
	rst  $38                                         ; $5d83: $ff
	db   $fc                                         ; $5d84: $fc
	rst  $38                                         ; $5d85: $ff
	ldh  a, [c]                                      ; $5d86: $f2
	rst  $38                                         ; $5d87: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d88: $cf
	rst  $38                                         ; $5d89: $ff
	adc  $ff                                         ; $5d8a: $ce $ff
	pop  hl                                          ; $5d8c: $e1
	rst  $38                                         ; $5d8d: $ff
	ldh  [rIE], a                                    ; $5d8e: $e0 $ff
	ldh  a, [rIE]                                    ; $5d90: $f0 $ff
	rra                                              ; $5d92: $1f
	rst  $38                                         ; $5d93: $ff
	rrca                                             ; $5d94: $0f
	rst  $38                                         ; $5d95: $ff
	rrca                                             ; $5d96: $0f
	rst  $38                                         ; $5d97: $ff
	ld   e, $ff                                      ; $5d98: $1e $ff
	sbc  $ff                                         ; $5d9a: $de $ff
	cp   a                                           ; $5d9c: $bf
	rst  $38                                         ; $5d9d: $ff

jr_07f_5d9e:
	rra                                              ; $5d9e: $1f
	rst  $38                                         ; $5d9f: $ff
	ld   a, a                                        ; $5da0: $7f
	add  e                                           ; $5da1: $83
	rst  $38                                         ; $5da2: $ff
	ld   a, [bc]                                     ; $5da3: $0a
	add  c                                           ; $5da4: $81
	rst  $38                                         ; $5da5: $ff
	ld   a, [hl]                                     ; $5da6: $7e
	rst  $38                                         ; $5da7: $ff
	ccf                                              ; $5da8: $3f
	rst  $38                                         ; $5da9: $ff
	rst  ToBoot                                         ; $5daa: $c7
	rst  $38                                         ; $5dab: $ff
	ei                                               ; $5dac: $fb
	rst  $38                                         ; $5dad: $ff
	db   $fc                                         ; $5dae: $fc
	add  l                                           ; $5daf: $85
	rst  $38                                         ; $5db0: $ff
	ld   [de], a                                     ; $5db1: $12
	ld   a, a                                        ; $5db2: $7f
	rst  $38                                         ; $5db3: $ff
	db   $fd                                         ; $5db4: $fd
	rst  $38                                         ; $5db5: $ff
	ld   [hl], e                                     ; $5db6: $73
	rst  $38                                         ; $5db7: $ff
	ld   bc, $0fff                                   ; $5db8: $01 $ff $0f
	rst  $38                                         ; $5dbb: $ff
	cp   $ff                                         ; $5dbc: $fe $ff
	ldh  a, [rIE]                                    ; $5dbe: $f0 $ff
	pop  hl                                          ; $5dc0: $e1
	rst  $38                                         ; $5dc1: $ff
	ldh  [rIE], a                                    ; $5dc2: $e0 $ff
	ldh  a, [$83]                                    ; $5dc4: $f0 $83
	rst  $38                                         ; $5dc6: $ff
	inc  c                                           ; $5dc7: $0c
	ret  nz                                          ; $5dc8: $c0

	rst  $38                                         ; $5dc9: $ff
	ccf                                              ; $5dca: $3f
	rst  $38                                         ; $5dcb: $ff
	ld   c, $ff                                      ; $5dcc: $0e $ff
	add  c                                           ; $5dce: $81
	rst  $38                                         ; $5dcf: $ff
	rrca                                             ; $5dd0: $0f
	rst  $38                                         ; $5dd1: $ff
	ld   bc, $81ff                                   ; $5dd2: $01 $ff $81
	add  c                                           ; $5dd5: $81
	rst  $38                                         ; $5dd6: $ff
	inc  b                                           ; $5dd7: $04
	db   $fc                                         ; $5dd8: $fc
	rst  $38                                         ; $5dd9: $ff
	ld   a, h                                        ; $5dda: $7c
	rst  $38                                         ; $5ddb: $ff
	ld   a, a                                        ; $5ddc: $7f
	add  e                                           ; $5ddd: $83
	rst  $38                                         ; $5dde: $ff
	inc  b                                           ; $5ddf: $04
	db   $fd                                         ; $5de0: $fd
	rst  $38                                         ; $5de1: $ff
	db   $fc                                         ; $5de2: $fc
	rst  $38                                         ; $5de3: $ff
	cp   $81                                         ; $5de4: $fe $81
	rst  $38                                         ; $5de6: $ff
	inc  b                                           ; $5de7: $04
	pop  hl                                          ; $5de8: $e1
	rst  $38                                         ; $5de9: $ff
	db   $dd                                         ; $5dea: $dd
	rst  $38                                         ; $5deb: $ff
	jp   $ff81                                       ; $5dec: $c3 $81 $ff


	inc  b                                           ; $5def: $04
	db   $fc                                         ; $5df0: $fc
	rst  $38                                         ; $5df1: $ff
	nop                                              ; $5df2: $00
	rst  $38                                         ; $5df3: $ff
	inc  bc                                          ; $5df4: $03
	add  c                                           ; $5df5: $81
	rst  $38                                         ; $5df6: $ff
	ld   b, $fe                                      ; $5df7: $06 $fe
	rst  $38                                         ; $5df9: $ff
	db   $fc                                         ; $5dfa: $fc
	rst  $38                                         ; $5dfb: $ff
	db   $fc                                         ; $5dfc: $fc
	rst  $38                                         ; $5dfd: $ff
	cp   $85                                         ; $5dfe: $fe $85
	rst  $38                                         ; $5e00: $ff
	ld   c, $81                                      ; $5e01: $0e $81
	rst  $38                                         ; $5e03: $ff
	ld   a, l                                        ; $5e04: $7d
	rst  $38                                         ; $5e05: $ff
	inc  de                                          ; $5e06: $13
	rst  $38                                         ; $5e07: $ff
	rrca                                             ; $5e08: $0f
	rst  $38                                         ; $5e09: $ff
	rra                                              ; $5e0a: $1f
	rst  $38                                         ; $5e0b: $ff
	adc  a                                           ; $5e0c: $8f
	rst  $38                                         ; $5e0d: $ff
	adc  [hl]                                        ; $5e0e: $8e
	rst  $38                                         ; $5e0f: $ff
	cp   $89                                         ; $5e10: $fe $89
	rst  $38                                         ; $5e12: $ff
	ld   b, $0f                                      ; $5e13: $06 $0f
	rst  $38                                         ; $5e15: $ff
	rra                                              ; $5e16: $1f

jr_07f_5e17:
	rst  $38                                         ; $5e17: $ff
	rrca                                             ; $5e18: $0f
	rst  $38                                         ; $5e19: $ff
	rra                                              ; $5e1a: $1f
	adc  c                                           ; $5e1b: $89
	rst  $38                                         ; $5e1c: $ff
	ld   [$fffc], sp                                 ; $5e1d: $08 $fc $ff
	db   $fc                                         ; $5e20: $fc
	rst  $38                                         ; $5e21: $ff
	cp   $ff                                         ; $5e22: $fe $ff
	db   $fc                                         ; $5e24: $fc
	cp   $fc                                         ; $5e25: $fe $fc
	add  b                                           ; $5e27: $80
	db   $fd                                         ; $5e28: $fd
	add  c                                           ; $5e29: $81
	rst  $38                                         ; $5e2a: $ff
	ld   bc, $e718                                   ; $5e2b: $01 $18 $e7
	add  b                                           ; $5e2e: $80
	dec  e                                           ; $5e2f: $1d
	ld   de, $eb6b                                   ; $5e30: $11 $6b $eb
	ld   d, $96                                      ; $5e33: $16 $96
	inc  l                                           ; $5e35: $2c
	ld   l, h                                        ; $5e36: $6c
	dec  bc                                          ; $5e37: $0b
	db   $db                                         ; $5e38: $db
	ld   b, $b6                                      ; $5e39: $06 $b6
	inc  [hl]                                        ; $5e3b: $34
	ld   [hl], l                                     ; $5e3c: $75
	jp   Jump_07f_62e2                               ; $5e3d: $c3 $e2 $62


	and  d                                           ; $5e40: $a2
	sub  h                                           ; $5e41: $94
	inc  d                                           ; $5e42: $14
	add  b                                           ; $5e43: $80
	ld   h, h                                        ; $5e44: $64
	add  b                                           ; $5e45: $80
	ret                                              ; $5e46: $c9


	add  b                                           ; $5e47: $80
	adc  c                                           ; $5e48: $89
	add  b                                           ; $5e49: $80
	ld   e, b                                        ; $5e4a: $58
	ld   [bc], a                                     ; $5e4b: $02
	ld   d, b                                        ; $5e4c: $50
	ret  nc                                          ; $5e4d: $d0

	ld   a, a                                        ; $5e4e: $7f
	add  l                                           ; $5e4f: $85
	nop                                              ; $5e50: $00
	ld   bc, $f00f                                   ; $5e51: $01 $0f $f0
	add  b                                           ; $5e54: $80
	sbc  l                                           ; $5e55: $9d
	add  b                                           ; $5e56: $80
	cp   e                                           ; $5e57: $bb
	add  b                                           ; $5e58: $80
	ld   h, [hl]                                     ; $5e59: $66
	nop                                              ; $5e5a: $00
	rst  $38                                         ; $5e5b: $ff
	add  l                                           ; $5e5c: $85
	nop                                              ; $5e5d: $00
	ld   bc, $01fe                                   ; $5e5e: $01 $fe $01
	add  b                                           ; $5e61: $80
	sub  c                                           ; $5e62: $91
	add  b                                           ; $5e63: $80
	ld   h, e                                        ; $5e64: $63
	add  b                                           ; $5e65: $80
	sub  $80                                         ; $5e66: $d6 $80
	ld   h, b                                        ; $5e68: $60
	add  b                                           ; $5e69: $80
	sbc  h                                           ; $5e6a: $9c
	add  b                                           ; $5e6b: $80
	ld   bc, $f280                                   ; $5e6c: $01 $80 $f2
	add  b                                           ; $5e6f: $80
	rlca                                             ; $5e70: $07
	add  b                                           ; $5e71: $80
	db   $ec                                         ; $5e72: $ec
	add  b                                           ; $5e73: $80
	ld   a, [bc]                                     ; $5e74: $0a
	add  b                                           ; $5e75: $80
	sub  c                                           ; $5e76: $91
	rrca                                             ; $5e77: $0f
	ld   h, h                                        ; $5e78: $64
	ld   h, [hl]                                     ; $5e79: $66
	sub  c                                           ; $5e7a: $91
	sbc  e                                           ; $5e7b: $9b
	pop  hl                                          ; $5e7c: $e1
	db   $ed                                         ; $5e7d: $ed
	ld   [hl+], a                                    ; $5e7e: $22
	ld   [hl], $82                                   ; $5e7f: $36 $82
	sbc  d                                           ; $5e81: $9a
	add  b                                           ; $5e82: $80
	ret  z                                           ; $5e83: $c8

	inc  b                                           ; $5e84: $04
	ld   h, h                                        ; $5e85: $64
	ld   [de], a                                     ; $5e86: $12
	ld   [hl-], a                                    ; $5e87: $32
	add  b                                           ; $5e88: $80
	ld   hl, $0007                                   ; $5e89: $21 $07 $00
	db   $10                                         ; $5e8c: $10
	jr   jr_07f_5e17                                 ; $5e8d: $18 $88

	and  h                                           ; $5e8f: $a4
	ld   h, h                                        ; $5e90: $64
	ld   [hl], d                                     ; $5e91: $72
	ld   [hl-], a                                    ; $5e92: $32
	add  b                                           ; $5e93: $80
	ret  z                                           ; $5e94: $c8

	add  b                                           ; $5e95: $80
	ld   h, b                                        ; $5e96: $60
	add  b                                           ; $5e97: $80
	db   $10                                         ; $5e98: $10
	add  b                                           ; $5e99: $80
	sub  c                                           ; $5e9a: $91
	add  b                                           ; $5e9b: $80
	inc  b                                           ; $5e9c: $04
	add  b                                           ; $5e9d: $80
	add  hl, bc                                      ; $5e9e: $09
	add  b                                           ; $5e9f: $80
	ld   [bc], a                                     ; $5ea0: $02
	add  d                                           ; $5ea1: $82
	nop                                              ; $5ea2: $00
	add  b                                           ; $5ea3: $80
	ld   h, b                                        ; $5ea4: $60
	add  hl, bc                                      ; $5ea5: $09
	inc  d                                           ; $5ea6: $14
	inc  e                                           ; $5ea7: $1c
	inc  hl                                          ; $5ea8: $23
	dec  hl                                          ; $5ea9: $2b
	inc  h                                           ; $5eaa: $24
	daa                                              ; $5eab: $27
	add  e                                           ; $5eac: $83
	adc  h                                           ; $5ead: $8c
	rra                                              ; $5eae: $1f
	inc  de                                          ; $5eaf: $13
	add  b                                           ; $5eb0: $80
	inc  b                                           ; $5eb1: $04
	add  hl, bc                                      ; $5eb2: $09
	nop                                              ; $5eb3: $00
	inc  bc                                          ; $5eb4: $03
	daa                                              ; $5eb5: $27
	inc  a                                           ; $5eb6: $3c
	ld   hl, sp-$20                                  ; $5eb7: $f8 $e0
	rlca                                             ; $5eb9: $07
	rst  $38                                         ; $5eba: $ff
	ei                                               ; $5ebb: $fb
	inc  bc                                          ; $5ebc: $03
	add  b                                           ; $5ebd: $80
	ccf                                              ; $5ebe: $3f
	dec  bc                                          ; $5ebf: $0b

jr_07f_5ec0:
	and  d                                           ; $5ec0: $a2
	ld   h, e                                        ; $5ec1: $63
	db   $e4                                         ; $5ec2: $e4
	daa                                              ; $5ec3: $27

jr_07f_5ec4:
	ret  z                                           ; $5ec4: $c8

	adc  $1a                                         ; $5ec5: $ce $1a
	ld   e, $22                                      ; $5ec7: $1e $22
	ld   [hl-], a                                    ; $5ec9: $32
	sbc  c                                           ; $5eca: $99
	adc  c                                           ; $5ecb: $89
	add  b                                           ; $5ecc: $80
	db   $10                                         ; $5ecd: $10
	add  b                                           ; $5ece: $80
	ld   h, $80                                      ; $5ecf: $26 $80
	inc  hl                                          ; $5ed1: $23
	jr   jr_07f_5f14                                 ; $5ed2: $18 $40

	ld   b, c                                        ; $5ed4: $41
	adc  c                                           ; $5ed5: $89
	adc  b                                           ; $5ed6: $88
	add  b                                           ; $5ed7: $80
	add  h                                           ; $5ed8: $84
	nop                                              ; $5ed9: $00
	ld   b, $53                                      ; $5eda: $06 $53
	ld   e, l                                        ; $5edc: $5d
	add  h                                           ; $5edd: $84
	adc  h                                           ; $5ede: $8c
	ld   [bc], a                                     ; $5edf: $02
	ld   b, [hl]                                     ; $5ee0: $46
	ld   b, e                                        ; $5ee1: $43
	inc  hl                                          ; $5ee2: $23
	ld   bc, wSaveScreenPopUpTopRowSpriteSpecIdxUsed                                   ; $5ee3: $01 $b1 $c8
	ret  c                                           ; $5ee6: $d8

	inc  l                                           ; $5ee7: $2c
	db   $ec                                         ; $5ee8: $ec
	jr   nc, jr_07f_5f5b                             ; $5ee9: $30 $70

	rst  $38                                         ; $5eeb: $ff
	add  [hl]                                        ; $5eec: $86
	nop                                              ; $5eed: $00
	add  [hl]                                        ; $5eee: $86
	rst  $38                                         ; $5eef: $ff
	add  l                                           ; $5ef0: $85
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	ldh  a, [$85]                                    ; $5ef3: $f0 $85
	nop                                              ; $5ef5: $00
	nop                                              ; $5ef6: $00
	ldh  a, [$8d]                                    ; $5ef7: $f0 $8d
	rst  $38                                         ; $5ef9: $ff
	nop                                              ; $5efa: $00
	rrca                                             ; $5efb: $0f
	adc  l                                           ; $5efc: $8d
	nop                                              ; $5efd: $00
	ld   hl, $fff0                                   ; $5efe: $21 $f0 $ff
	cp   [hl]                                        ; $5f01: $be
	rst  $38                                         ; $5f02: $ff
	or   [hl]                                        ; $5f03: $b6
	rst  $38                                         ; $5f04: $ff
	and  d                                           ; $5f05: $a2
	rst  $38                                         ; $5f06: $ff
	nop                                              ; $5f07: $00
	rst  $38                                         ; $5f08: $ff
	nop                                              ; $5f09: $00
	rst  $38                                         ; $5f0a: $ff
	nop                                              ; $5f0b: $00
	rst  $38                                         ; $5f0c: $ff
	nop                                              ; $5f0d: $00
	rst  $38                                         ; $5f0e: $ff
	nop                                              ; $5f0f: $00
	rst  $38                                         ; $5f10: $ff
	jr   z, @+$01                                    ; $5f11: $28 $ff

	ld   a, b                                        ; $5f13: $78

jr_07f_5f14:
	rst  $38                                         ; $5f14: $ff
	ld   a, b                                        ; $5f15: $78
	ld   a, a                                        ; $5f16: $7f
	inc  e                                           ; $5f17: $1c
	rra                                              ; $5f18: $1f
	inc  c                                           ; $5f19: $0c
	rrca                                             ; $5f1a: $0f
	inc  e                                           ; $5f1b: $1c
	rra                                              ; $5f1c: $1f
	ld   a, h                                        ; $5f1d: $7c
	ld   a, a                                        ; $5f1e: $7f
	add  hl, hl                                      ; $5f1f: $29
	call nc, $a980                                   ; $5f20: $d4 $80 $a9
	add  b                                           ; $5f23: $80
	ld   a, [hl+]                                    ; $5f24: $2a
	add  b                                           ; $5f25: $80
	ld   d, d                                        ; $5f26: $52
	add  b                                           ; $5f27: $80
	ld   d, h                                        ; $5f28: $54
	add  b                                           ; $5f29: $80
	sub  e                                           ; $5f2a: $93
	add  b                                           ; $5f2b: $80
	add  b                                           ; $5f2c: $80
	add  b                                           ; $5f2d: $80
	rrca                                             ; $5f2e: $0f
	add  b                                           ; $5f2f: $80
	xor  l                                           ; $5f30: $ad
	add  b                                           ; $5f31: $80
	ld   c, b                                        ; $5f32: $48
	add  b                                           ; $5f33: $80
	ld   [hl], b                                     ; $5f34: $70
	add  b                                           ; $5f35: $80
	add  hl, de                                      ; $5f36: $19
	add  b                                           ; $5f37: $80
	ld   b, $80                                      ; $5f38: $06 $80
	call z, $1380                                    ; $5f3a: $cc $80 $13
	nop                                              ; $5f3d: $00
	jr   z, jr_07f_5ec0                              ; $5f3e: $28 $80

jr_07f_5f40:
	inc  l                                           ; $5f40: $2c
	nop                                              ; $5f41: $00
	jr   z, jr_07f_5ec4                              ; $5f42: $28 $80

	ld   h, $03                                      ; $5f44: $26 $03
	ld   d, d                                        ; $5f46: $52
	ld   d, e                                        ; $5f47: $53
	ld   c, h                                        ; $5f48: $4c
	ld   c, l                                        ; $5f49: $4d
	add  b                                           ; $5f4a: $80
	and  [hl]                                        ; $5f4b: $a6
	rlca                                             ; $5f4c: $07
	ld   [bc], a                                     ; $5f4d: $02
	ld   [de], a                                     ; $5f4e: $12
	ld   d, c                                        ; $5f4f: $51
	ld   c, c                                        ; $5f50: $49
	ld   c, [hl]                                     ; $5f51: $4e
	ld   h, [hl]                                     ; $5f52: $66
	or   h                                           ; $5f53: $b4
	sub  h                                           ; $5f54: $94
	add  d                                           ; $5f55: $82
	ld   b, b                                        ; $5f56: $40
	dec  c                                           ; $5f57: $0d
	nop                                              ; $5f58: $00
	add  b                                           ; $5f59: $80
	ld   b, c                                        ; $5f5a: $41

jr_07f_5f5b:
	pop  bc                                          ; $5f5b: $c1
	ld   h, c                                        ; $5f5c: $61
	ld   h, e                                        ; $5f5d: $63
	nop                                              ; $5f5e: $00
	ld   b, $0c                                      ; $5f5f: $06 $0c
	ld   [$c848], sp                                 ; $5f61: $08 $48 $c8
	pop  hl                                          ; $5f64: $e1
	ld   h, c                                        ; $5f65: $61
	add  b                                           ; $5f66: $80
	sub  c                                           ; $5f67: $91
	add  b                                           ; $5f68: $80
	add  h                                           ; $5f69: $84
	add  b                                           ; $5f6a: $80
	ld   d, d                                        ; $5f6b: $52
	add  b                                           ; $5f6c: $80
	adc  d                                           ; $5f6d: $8a
	add  b                                           ; $5f6e: $80
	ret  z                                           ; $5f6f: $c8

	add  b                                           ; $5f70: $80
	ld   b, b                                        ; $5f71: $40
	ld   de, $0f09                                   ; $5f72: $11 $09 $0f
	ld   b, $01                                      ; $5f75: $06 $01
	ld   de, $301c                                   ; $5f77: $11 $1c $30
	ccf                                              ; $5f7a: $3f
	ld   [bc], a                                     ; $5f7b: $02
	ld   bc, $7c70                                   ; $5f7c: $01 $70 $7c
	dec  bc                                          ; $5f7f: $0b
	rlca                                             ; $5f80: $07
	ld   h, b                                        ; $5f81: $60
	ld   [hl], b                                     ; $5f82: $70
	rla                                              ; $5f83: $17
	rlca                                             ; $5f84: $07
	add  b                                           ; $5f85: $80
	ld   a, b                                        ; $5f86: $78
	add  b                                           ; $5f87: $80
	add  d                                           ; $5f88: $82
	dec  b                                           ; $5f89: $05
	inc  e                                           ; $5f8a: $1c
	dec  e                                           ; $5f8b: $1d
	ld   [hl-], a                                    ; $5f8c: $32
	di                                               ; $5f8d: $f3
	jp   nz, $8002                                   ; $5f8e: $c2 $02 $80

	inc  d                                           ; $5f91: $14
	add  b                                           ; $5f92: $80
	ld   l, b                                        ; $5f93: $68
	rra                                              ; $5f94: $1f
	jp   $2ee3                                       ; $5f95: $c3 $e3 $2e


	ld   c, [hl]                                     ; $5f98: $4e
	ld   c, h                                        ; $5f99: $4c
	adc  [hl]                                        ; $5f9a: $8e
	or   [hl]                                        ; $5f9b: $b6
	scf                                              ; $5f9c: $37
	ld   d, c                                        ; $5f9d: $51
	ld   e, e                                        ; $5f9e: $5b
	ld   l, b                                        ; $5f9f: $68
	ld   l, l                                        ; $5fa0: $6d
	xor  h                                           ; $5fa1: $ac
	or   [hl]                                        ; $5fa2: $b6
	ld   b, [hl]                                     ; $5fa3: $46
	ld   e, d                                        ; $5fa4: $5a
	jr   c, jr_07f_5fda                              ; $5fa5: $38 $33

	ld   [$0619], sp                                 ; $5fa7: $08 $19 $06
	ld   e, $ce                                      ; $5faa: $1e $ce
	add  $06                                         ; $5fac: $c6 $06
	ld   h, [hl]                                     ; $5fae: $66
	db   $eb                                         ; $5faf: $eb
	cp   e                                           ; $5fb0: $bb
	push af                                          ; $5fb1: $f5
	call Call_07f_747c                               ; $5fb2: $cd $7c $74
	add  b                                           ; $5fb5: $80
	ld   a, [hl-]                                    ; $5fb6: $3a
	add  b                                           ; $5fb7: $80
	adc  b                                           ; $5fb8: $88
	add  b                                           ; $5fb9: $80
	call nz, Call_07f_6080                           ; $5fba: $c4 $80 $60
	add  b                                           ; $5fbd: $80
	jr   nc, jr_07f_5f40                             ; $5fbe: $30 $80

	db   $10                                         ; $5fc0: $10
	add  b                                           ; $5fc1: $80
	ret  z                                           ; $5fc2: $c8

	add  b                                           ; $5fc3: $80
	ret  c                                           ; $5fc4: $d8

	ld   a, [bc]                                     ; $5fc5: $0a
	dec  b                                           ; $5fc6: $05
	rst  $38                                         ; $5fc7: $ff
	ld   d, b                                        ; $5fc8: $50
	rst  $38                                         ; $5fc9: $ff
	nop                                              ; $5fca: $00
	rst  $38                                         ; $5fcb: $ff
	ld   d, l                                        ; $5fcc: $55
	rst  $38                                         ; $5fcd: $ff
	sbc  $ff                                         ; $5fce: $de $ff
	sbc  $84                                         ; $5fd0: $de $84
	rst  $38                                         ; $5fd2: $ff
	rst  $38                                         ; $5fd3: $ff
	nop                                              ; $5fd4: $00
	rst  $38                                         ; $5fd5: $ff
	nop                                              ; $5fd6: $00
	rst  $38                                         ; $5fd7: $ff
	nop                                              ; $5fd8: $00
	rst  $38                                         ; $5fd9: $ff

jr_07f_5fda:
	nop                                              ; $5fda: $00
	rst  $38                                         ; $5fdb: $ff
	nop                                              ; $5fdc: $00
	rst  $38                                         ; $5fdd: $ff
	nop                                              ; $5fde: $00
	rst  $38                                         ; $5fdf: $ff
	nop                                              ; $5fe0: $00
	rst  $38                                         ; $5fe1: $ff
	nop                                              ; $5fe2: $00
	push bc                                          ; $5fe3: $c5
	nop                                              ; $5fe4: $00
	ld   a, [bc]                                     ; $5fe5: $0a
	ld   bc, $0c00                                   ; $5fe6: $01 $00 $0c
	add  l                                           ; $5fe9: $85
	rlca                                             ; $5fea: $07
	inc  b                                           ; $5feb: $04
	inc  bc                                          ; $5fec: $03
	rlca                                             ; $5fed: $07
	dec  b                                           ; $5fee: $05
	rlca                                             ; $5fef: $07
	ld   [bc], a                                     ; $5ff0: $02
	add  c                                           ; $5ff1: $81
	rlca                                             ; $5ff2: $07
	nop                                              ; $5ff3: $00
	sbc  d                                           ; $5ff4: $9a
	add  l                                           ; $5ff5: $85
	rst  $38                                         ; $5ff6: $ff
	ld   [$ff5f], sp                                 ; $5ff7: $08 $5f $ff
	ret                                              ; $5ffa: $c9


	rst  $38                                         ; $5ffb: $ff
	or   h                                           ; $5ffc: $b4
	rst  $38                                         ; $5ffd: $ff
	ld   l, a                                        ; $5ffe: $6f
	rst  $38                                         ; $5fff: $ff
	or   l                                           ; $6000: $b5
	add  c                                           ; $6001: $81
	rst  $38                                         ; $6002: $ff
	ld   b, b                                        ; $6003: $40
	ld   a, l                                        ; $6004: $7d
	rst  $38                                         ; $6005: $ff
	rst  $30                                         ; $6006: $f7
	rst  $38                                         ; $6007: $ff
	pop  hl                                          ; $6008: $e1
	rst  $38                                         ; $6009: $ff
	cp   [hl]                                        ; $600a: $be
	rst  $38                                         ; $600b: $ff
	rst  $10                                         ; $600c: $d7
	rst  $38                                         ; $600d: $ff
	ei                                               ; $600e: $fb
	rst  $38                                         ; $600f: $ff
	ld   sp, $f6ff                                   ; $6010: $31 $ff $f6
	rst  $38                                         ; $6013: $ff
	ld   a, b                                        ; $6014: $78
	rst  $38                                         ; $6015: $ff
	rst  $28                                         ; $6016: $ef
	rst  $38                                         ; $6017: $ff
	db   $e3                                         ; $6018: $e3
	rst  $38                                         ; $6019: $ff
	rst  JumpTable                                         ; $601a: $df
	rst  $38                                         ; $601b: $ff
	dec  [hl]                                        ; $601c: $35
	rst  $38                                         ; $601d: $ff
	db   $eb                                         ; $601e: $eb
	rst  $38                                         ; $601f: $ff
	adc  l                                           ; $6020: $8d
	rst  $38                                         ; $6021: $ff
	cp   $ff                                         ; $6022: $fe $ff
	or   $ff                                         ; $6024: $f6 $ff
	ei                                               ; $6026: $fb
	rst  $38                                         ; $6027: $ff
	ei                                               ; $6028: $fb
	rst  $38                                         ; $6029: $ff
	ld   e, b                                        ; $602a: $58
	rst  $38                                         ; $602b: $ff
	scf                                              ; $602c: $37
	rst  $38                                         ; $602d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $602e: $cf
	rst  $38                                         ; $602f: $ff
	sub  c                                           ; $6030: $91
	rst  $38                                         ; $6031: $ff
	adc  a                                           ; $6032: $8f
	rst  $38                                         ; $6033: $ff
	cp   c                                           ; $6034: $b9
	rst  $38                                         ; $6035: $ff
	ei                                               ; $6036: $fb
	rst  $38                                         ; $6037: $ff
	ld   a, [$ddff]                                  ; $6038: $fa $ff $dd
	rst  $38                                         ; $603b: $ff
	add  l                                           ; $603c: $85
	rst  $38                                         ; $603d: $ff
	ei                                               ; $603e: $fb
	rst  $38                                         ; $603f: $ff
	or   l                                           ; $6040: $b5
	rst  $38                                         ; $6041: $ff
	db   $fd                                         ; $6042: $fd
	rst  $38                                         ; $6043: $ff
	db   $db                                         ; $6044: $db
	add  c                                           ; $6045: $81
	rst  $38                                         ; $6046: $ff
	dec  b                                           ; $6047: $05
	ld   a, d                                        ; $6048: $7a
	rst  $38                                         ; $6049: $ff

jr_07f_604a:
	add  sp, -$01                                    ; $604a: $e8 $ff
	inc  sp                                          ; $604c: $33
	rst  $38                                         ; $604d: $ff
	add  b                                           ; $604e: $80
	cp   $14                                         ; $604f: $fe $14
	db   $10                                         ; $6051: $10
	rst  $38                                         ; $6052: $ff
	db   $eb                                         ; $6053: $eb
	rst  $38                                         ; $6054: $ff
	sub  b                                           ; $6055: $90
	rst  $38                                         ; $6056: $ff
	xor  d                                           ; $6057: $aa
	rst  $38                                         ; $6058: $ff
	adc  a                                           ; $6059: $8f
	rst  $38                                         ; $605a: $ff
	db   $fd                                         ; $605b: $fd
	rst  $38                                         ; $605c: $ff
	push bc                                          ; $605d: $c5
	rst  $38                                         ; $605e: $ff
	ld   b, e                                        ; $605f: $43
	ccf                                              ; $6060: $3f
	dec  [hl]                                        ; $6061: $35
	sbc  $16                                         ; $6062: $de $16
	sbc  $1a                                         ; $6064: $de $1a
	add  e                                           ; $6066: $83
	rst  $38                                         ; $6067: $ff
	nop                                              ; $6068: $00
	cp   $81                                         ; $6069: $fe $81
	rst  $38                                         ; $606b: $ff
	inc  de                                          ; $606c: $13
	ld   sp, hl                                      ; $606d: $f9
	rst  $38                                         ; $606e: $ff
	add  sp, -$10                                    ; $606f: $e8 $f0
	db   $e4                                         ; $6071: $e4
	call nz, $eec8                                   ; $6072: $c4 $c8 $ee
	ldh  [$fe], a                                    ; $6075: $e0 $fe
	db   $fc                                         ; $6077: $fc
	rst  $38                                         ; $6078: $ff
	ld   c, d                                        ; $6079: $4a
	rst  $38                                         ; $607a: $ff
	or   d                                           ; $607b: $b2
	ld   e, a                                        ; $607c: $5f
	ld   e, h                                        ; $607d: $5c
	ld   [hl], e                                     ; $607e: $73
	ld   [hl], b                                     ; $607f: $70

Call_07f_6080:
	db   $fc                                         ; $6080: $fc
	add  b                                           ; $6081: $80
	rst  $38                                         ; $6082: $ff
	add  b                                           ; $6083: $80
	ccf                                              ; $6084: $3f
	dec  bc                                          ; $6085: $0b
	rra                                              ; $6086: $1f
	sbc  a                                           ; $6087: $9f
	adc  a                                           ; $6088: $8f
	rst  $28                                         ; $6089: $ef
	ld   l, a                                        ; $608a: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $608b: $cf
	ld   b, a                                        ; $608c: $47
	rst  $30                                         ; $608d: $f7
	rla                                              ; $608e: $17
	rst  $30                                         ; $608f: $f7
	ld   l, $3e                                      ; $6090: $2e $3e
	adc  h                                           ; $6092: $8c
	rst  $38                                         ; $6093: $ff
	add  b                                           ; $6094: $80
	ld   a, [hl]                                     ; $6095: $7e
	nop                                              ; $6096: $00
	ld   hl, sp-$7e                                  ; $6097: $f8 $82
	ei                                               ; $6099: $fb
	add  a                                           ; $609a: $87
	ld   hl, sp+$01                                  ; $609b: $f8 $01
	xor  h                                           ; $609d: $ac
	db   $ec                                         ; $609e: $ec
	add  b                                           ; $609f: $80
	ld   h, b                                        ; $60a0: $60
	nop                                              ; $60a1: $00
	ld   [hl], b                                     ; $60a2: $70
	add  b                                           ; $60a3: $80
	scf                                              ; $60a4: $37
	ld   bc, $cfff                                   ; $60a5: $01 $ff $cf
	add  b                                           ; $60a8: $80
	rrca                                             ; $60a9: $0f
	ld   bc, $8fff                                   ; $60aa: $01 $ff $8f
	add  b                                           ; $60ad: $80
	ld   [hl], a                                     ; $60ae: $77
	rlca                                             ; $60af: $07
	ld   [hl], c                                     ; $60b0: $71
	ld   [bc], a                                     ; $60b1: $02
	nop                                              ; $60b2: $00
	ld   [bc], a                                     ; $60b3: $02
	inc  c                                           ; $60b4: $0c
	dec  c                                           ; $60b5: $0d
	ld   c, $08                                      ; $60b6: $0e $08
	add  c                                           ; $60b8: $81
	ld   c, $00                                      ; $60b9: $0e $00
	ld   d, $80                                      ; $60bb: $16 $80
	sbc  [hl]                                        ; $60bd: $9e
	nop                                              ; $60be: $00
	sbc  $80                                         ; $60bf: $de $80
	db   $ec                                         ; $60c1: $ec
	nop                                              ; $60c2: $00
	cp   a                                           ; $60c3: $bf
	add  b                                           ; $60c4: $80
	jr   nz, jr_07f_604a                             ; $60c5: $20 $83

	inc  h                                           ; $60c7: $24
	ld   [$2426], sp                                 ; $60c8: $08 $26 $24
	daa                                              ; $60cb: $27
	inc  a                                           ; $60cc: $3c
	jr   c, @+$22                                    ; $60cd: $38 $20

	ld   b, h                                        ; $60cf: $44
	ld   bc, $8aef                                   ; $60d0: $01 $ef $8a
	rlca                                             ; $60d3: $07
	nop                                              ; $60d4: $00
	nop                                              ; $60d5: $00
	add  b                                           ; $60d6: $80
	rrca                                             ; $60d7: $0f
	ld   [bc], a                                     ; $60d8: $02
	ld   d, b                                        ; $60d9: $50
	rst  $38                                         ; $60da: $ff
	cp   $81                                         ; $60db: $fe $81
	rst  $38                                         ; $60dd: $ff
	ld   bc, $fffd                                   ; $60de: $01 $fd $ff
	add  b                                           ; $60e1: $80
	cp   $03                                         ; $60e2: $fe $03
	ld   c, b                                        ; $60e4: $48
	inc  a                                           ; $60e5: $3c
	db   $eb                                         ; $60e6: $eb
	jp   $ff80                                       ; $60e7: $c3 $80 $ff


	nop                                              ; $60ea: $00
	inc  sp                                          ; $60eb: $33
	add  e                                           ; $60ec: $83
	rst  $38                                         ; $60ed: $ff
	ld   bc, $feec                                   ; $60ee: $01 $ec $fe
	add  b                                           ; $60f1: $80
	sbc  $03                                         ; $60f2: $de $03
	sbc  [hl]                                        ; $60f4: $9e
	ld   d, b                                        ; $60f5: $50
	ld   d, $06                                      ; $60f6: $16 $06
	add  b                                           ; $60f8: $80
	rst  $38                                         ; $60f9: $ff
	nop                                              ; $60fa: $00
	ld   hl, $ff85                                   ; $60fb: $21 $85 $ff
	add  b                                           ; $60fe: $80

Jump_07f_60ff:
	cp   $03                                         ; $60ff: $fe $03
	ld   e, [hl]                                     ; $6101: $5e
	sbc  h                                           ; $6102: $9c
	dec  e                                           ; $6103: $1d
	ld   bc, $ff80                                   ; $6104: $01 $80 $ff
	nop                                              ; $6107: $00
	inc  b                                           ; $6108: $04
	add  e                                           ; $6109: $83
	rst  $38                                         ; $610a: $ff
	ld   bc, $ff7d                                   ; $610b: $01 $7d $ff
	add  b                                           ; $610e: $80
	ld   a, a                                        ; $610f: $7f
	inc  bc                                          ; $6110: $03
	ld   [hl], l                                     ; $6111: $75
	inc  e                                           ; $6112: $1c
	pop  de                                          ; $6113: $d1
	pop  bc                                          ; $6114: $c1

jr_07f_6115:
	add  b                                           ; $6115: $80
	rst  $38                                         ; $6116: $ff
	nop                                              ; $6117: $00
	ld   bc, $ff81                                   ; $6118: $01 $81 $ff
	ld   bc, $ffbf                                   ; $611b: $01 $bf $ff
	add  d                                           ; $611e: $82
	cp   $03                                         ; $611f: $fe $03
	adc  [hl]                                        ; $6121: $8e
	jr   c, @-$76                                    ; $6122: $38 $88

	add  b                                           ; $6124: $80
	add  b                                           ; $6125: $80
	rst  $38                                         ; $6126: $ff
	inc  bc                                          ; $6127: $03
	ld   [de], a                                     ; $6128: $12
	cp   $de                                         ; $6129: $fe $de
	ld   a, [$e880]                                  ; $612b: $fa $80 $e8
	nop                                              ; $612e: $00
	ret  z                                           ; $612f: $c8

	add  d                                           ; $6130: $82
	ret  nz                                          ; $6131: $c0

	nop                                              ; $6132: $00
	nop                                              ; $6133: $00
	add  d                                           ; $6134: $82
	rst  $38                                         ; $6135: $ff
	add  hl, bc                                      ; $6136: $09
	ld   c, $7f                                      ; $6137: $0e $7f
	ld   b, d                                        ; $6139: $42
	rst  $38                                         ; $613a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $613b: $cf
	rra                                              ; $613c: $1f
	add  hl, de                                      ; $613d: $19
	ccf                                              ; $613e: $3f
	daa                                              ; $613f: $27
	rra                                              ; $6140: $1f
	add  b                                           ; $6141: $80
	inc  bc                                          ; $6142: $03
	ld   bc, $0002                                   ; $6143: $01 $02 $00
	add  b                                           ; $6146: $80
	ld   hl, sp+$0c                                  ; $6147: $f8 $0c
	rlca                                             ; $6149: $07
	db   $fc                                         ; $614a: $fc
	ld   hl, sp-$01                                  ; $614b: $f8 $ff
	dec  sp                                          ; $614d: $3b
	db   $fc                                         ; $614e: $fc
	call nz, Call_07f_47fd                           ; $614f: $c4 $fd $47
	db   $ed                                         ; $6152: $ed
	xor  h                                           ; $6153: $ac
	xor  $ea                                         ; $6154: $ee $ea
	add  b                                           ; $6156: $80
	ld   l, a                                        ; $6157: $6f
	dec  b                                           ; $6158: $05
	inc  bc                                          ; $6159: $03
	db   $fd                                         ; $615a: $fd
	sbc  a                                           ; $615b: $9f
	sbc  l                                           ; $615c: $9d
	sub  c                                           ; $615d: $91
	sub  l                                           ; $615e: $95
	add  b                                           ; $615f: $80
	jp   hl                                          ; $6160: $e9


	dec  bc                                          ; $6161: $0b
	and  b                                           ; $6162: $a0
	ld   d, b                                        ; $6163: $50
	ld   c, $06                                      ; $6164: $0e $06
	ld   [hl], $7f                                   ; $6166: $36 $7f
	ld   a, l                                        ; $6168: $7d
	scf                                              ; $6169: $37
	ld   h, e                                        ; $616a: $63
	ld   l, a                                        ; $616b: $6f
	cpl                                              ; $616c: $2f
	ccf                                              ; $616d: $3f
	add  c                                           ; $616e: $81
	rst  JumpTable                                         ; $616f: $df
	ld   bc, $7fbf                                   ; $6170: $01 $bf $7f
	sub  [hl]                                        ; $6173: $96
	rst  $38                                         ; $6174: $ff
	add  b                                           ; $6175: $80
	ld   hl, sp-$80                                  ; $6176: $f8 $80
	cp   $8a                                         ; $6178: $fe $8a
	rst  $38                                         ; $617a: $ff
	inc  b                                           ; $617b: $04
	nop                                              ; $617c: $00
	rra                                              ; $617d: $1f
	rrca                                             ; $617e: $0f
	rra                                              ; $617f: $1f
	db   $10                                         ; $6180: $10
	add  c                                           ; $6181: $81
	rra                                              ; $6182: $1f
	add  b                                           ; $6183: $80
	ret  nz                                          ; $6184: $c0

	add  b                                           ; $6185: $80
	ldh  a, [$82]                                    ; $6186: $f0 $82
	rst  $38                                         ; $6188: $ff
	inc  bc                                          ; $6189: $03
	ld   h, b                                        ; $618a: $60
	ldh  [$60], a                                    ; $618b: $e0 $60
	ldh  [$80], a                                    ; $618d: $e0 $80
	ret  nz                                          ; $618f: $c0

	add  b                                           ; $6190: $80
	nop                                              ; $6191: $00
	add  b                                           ; $6192: $80
	jr   jr_07f_6115                                 ; $6193: $18 $80

	ld   a, a                                        ; $6195: $7f
	add  d                                           ; $6196: $82
	rst  $38                                         ; $6197: $ff
	add  b                                           ; $6198: $80
	nop                                              ; $6199: $00
	add  b                                           ; $619a: $80
	ld   hl, sp-$80                                  ; $619b: $f8 $80
	ld   a, b                                        ; $619d: $78
	ld   bc, $9d98                                   ; $619e: $01 $98 $9d
	add  b                                           ; $61a1: $80
	ld   h, l                                        ; $61a2: $65
	ld   bc, $191d                                   ; $61a3: $01 $1d $19
	add  b                                           ; $61a6: $80
	push hl                                          ; $61a7: $e5
	ld   [bc], a                                     ; $61a8: $02
	ld   sp, hl                                      ; $61a9: $f9
	ld   hl, sp-$01                                  ; $61aa: $f8 $ff
	add  l                                           ; $61ac: $85
	nop                                              ; $61ad: $00
	inc  b                                           ; $61ae: $04
	rrca                                             ; $61af: $0f
	ldh  a, [$82]                                    ; $61b0: $f0 $82
	add  l                                           ; $61b2: $85
	dec  b                                           ; $61b3: $05
	add  b                                           ; $61b4: $80
	dec  a                                           ; $61b5: $3d
	nop                                              ; $61b6: $00
	db   $fd                                         ; $61b7: $fd
	add  [hl]                                        ; $61b8: $86
	nop                                              ; $61b9: $00
	add  [hl]                                        ; $61ba: $86
	db   $fd                                         ; $61bb: $fd
	add  [hl]                                        ; $61bc: $86
	nop                                              ; $61bd: $00
	add  [hl]                                        ; $61be: $86
	cp   $86                                         ; $61bf: $fe $86
	nop                                              ; $61c1: $00
	add  [hl]                                        ; $61c2: $86
	ldh  a, [rDIV]                                   ; $61c3: $f0 $04
	dec  e                                           ; $61c5: $1d
	db   $fd                                         ; $61c6: $fd
	push hl                                          ; $61c7: $e5
	db   $fd                                         ; $61c8: $fd
	rlca                                             ; $61c9: $07
	add  b                                           ; $61ca: $80
	nop                                              ; $61cb: $00
	inc  bc                                          ; $61cc: $03
	rst  $38                                         ; $61cd: $ff
	nop                                              ; $61ce: $00
	rst  $38                                         ; $61cf: $ff
	ld   bc, $ff82                                   ; $61d0: $01 $82 $ff
	ld   bc, $7c7f                                   ; $61d3: $01 $7f $7c
	add  c                                           ; $61d6: $81
	db   $fd                                         ; $61d7: $fd
	nop                                              ; $61d8: $00
	cp   l                                           ; $61d9: $bd
	adc  c                                           ; $61da: $89
	ld   a, l                                        ; $61db: $7d
	nop                                              ; $61dc: $00
	ld   a, $8d                                      ; $61dd: $3e $8d
	cp   $8e                                         ; $61df: $fe $8e
	ldh  a, [rSC]                                    ; $61e1: $f0 $02
	xor  $f7                                         ; $61e3: $ee $f7
	rst  $20                                         ; $61e5: $e7
	add  e                                           ; $61e6: $83
	rst  $30                                         ; $61e7: $f7
	ld   [bc], a                                     ; $61e8: $02
	ld   [hl], a                                     ; $61e9: $77
	rst  $30                                         ; $61ea: $f7
	ld   [hl], a                                     ; $61eb: $77
	add  e                                           ; $61ec: $83
	rst  $30                                         ; $61ed: $f7
	nop                                              ; $61ee: $00
	or   h                                           ; $61ef: $b4
	add  e                                           ; $61f0: $83
	ld   a, c                                        ; $61f1: $79
	add  b                                           ; $61f2: $80
	ld   a, b                                        ; $61f3: $78
	ld   [bc], a                                     ; $61f4: $02
	ld   a, e                                        ; $61f5: $7b
	ld   a, b                                        ; $61f6: $78
	ld   a, d                                        ; $61f7: $7a
	add  b                                           ; $61f8: $80
	ld   a, h                                        ; $61f9: $7c
	add  c                                           ; $61fa: $81
	ld   a, l                                        ; $61fb: $7d
	nop                                              ; $61fc: $00
	cp   [hl]                                        ; $61fd: $be
	add  l                                           ; $61fe: $85
	ld   e, $00                                      ; $61ff: $1e $00
	sbc  [hl]                                        ; $6201: $9e
	add  d                                           ; $6202: $82
	ld   e, $81                                      ; $6203: $1e $81
	cp   $8e                                         ; $6205: $fe $8e
	ldh  a, [rSB]                                    ; $6207: $f0 $01
	push af                                          ; $6209: $f5
	ld   a, [hl-]                                    ; $620a: $3a
	add  b                                           ; $620b: $80
	cp   b                                           ; $620c: $b8
	ld   bc, $4777                                   ; $620d: $01 $77 $47
	add  d                                           ; $6210: $82
	sbc  [hl]                                        ; $6211: $9e
	add  b                                           ; $6212: $80
	adc  b                                           ; $6213: $88
	add  b                                           ; $6214: $80
	or   h                                           ; $6215: $b4
	ld   b, $f4                                      ; $6216: $06 $f4
	push af                                          ; $6218: $f5
	ld   bc, $9818                                   ; $6219: $01 $18 $98
	cp   [hl]                                        ; $621c: $be
	inc  a                                           ; $621d: $3c
	add  b                                           ; $621e: $80
	ld   a, $06                                      ; $621f: $3e $06
	ld   e, [hl]                                     ; $6221: $5e
	ld   e, a                                        ; $6222: $5f
	rst  $28                                         ; $6223: $ef
	jp   $aeef                                       ; $6224: $c3 $ef $ae


	ld   l, [hl]                                     ; $6227: $6e
	add  b                                           ; $6228: $80
	nop                                              ; $6229: $00
	nop                                              ; $622a: $00
	ld   bc, $7e80                                   ; $622b: $01 $80 $7e
	add  b                                           ; $622e: $80
	cp   [hl]                                        ; $622f: $be
	add  d                                           ; $6230: $82
	sbc  [hl]                                        ; $6231: $9e
	add  b                                           ; $6232: $80
	ld   c, $01                                      ; $6233: $0e $01
	nop                                              ; $6235: $00
	ld   bc, $0081                                   ; $6236: $01 $81 $00
	nop                                              ; $6239: $00
	rrca                                             ; $623a: $0f
	adc  d                                           ; $623b: $8a
	ldh  a, [$80]                                    ; $623c: $f0 $80
	jr   nc, jr_07f_6241                             ; $623e: $30 $01

	nop                                              ; $6240: $00

jr_07f_6241:
	dec  c                                           ; $6241: $0d
	sbc  l                                           ; $6242: $9d
	db   $fd                                         ; $6243: $fd

jr_07f_6244:
	adc  [hl]                                        ; $6244: $8e
	cp   $8e                                         ; $6245: $fe $8e
	ldh  a, [rAUD1SWEEP]                             ; $6247: $f0 $10
	cp   $9f                                         ; $6249: $fe $9f
	ld   e, a                                        ; $624b: $5f
	rst  $20                                         ; $624c: $e7
	ld   b, a                                        ; $624d: $47
	rst  $30                                         ; $624e: $f7
	and  a                                           ; $624f: $a7
	rst  $30                                         ; $6250: $f7
	rst  $10                                         ; $6251: $d7
	rst  $30                                         ; $6252: $f7
	rst  $20                                         ; $6253: $e7
	rst  $30                                         ; $6254: $f7
	rst  $20                                         ; $6255: $e7

jr_07f_6256:
	rst  $30                                         ; $6256: $f7
	rst  $20                                         ; $6257: $e7
	rst  $30                                         ; $6258: $f7
	or   h                                           ; $6259: $b4
	add  c                                           ; $625a: $81
	ld   a, l                                        ; $625b: $7d
	nop                                              ; $625c: $00
	ld   a, a                                        ; $625d: $7f
	add  c                                           ; $625e: $81
	ld   a, b                                        ; $625f: $78
	nop                                              ; $6260: $00
	ld   a, e                                        ; $6261: $7b
	add  c                                           ; $6262: $81
	ld   a, b                                        ; $6263: $78
	add  d                                           ; $6264: $82
	ld   a, c                                        ; $6265: $79
	nop                                              ; $6266: $00
	ld   a, [hl-]                                    ; $6267: $3a
	add  d                                           ; $6268: $82
	cp   $81                                         ; $6269: $fe $81
	ld   e, $00                                      ; $626b: $1e $00
	sbc  [hl]                                        ; $626d: $9e
	add  l                                           ; $626e: $85
	ld   e, $00                                      ; $626f: $1e $00
	sub  b                                           ; $6271: $90
	adc  l                                           ; $6272: $8d
	ldh  a, [rSC]                                    ; $6273: $f0 $02
	ld   a, $f7                                      ; $6275: $3e $f7
	scf                                              ; $6277: $37
	add  b                                           ; $6278: $80
	rst  $30                                         ; $6279: $f7
	inc  bc                                          ; $627a: $03
	rst  $20                                         ; $627b: $e7
	and  $d0                                         ; $627c: $e6 $d0
	jp   nc, $ce80                                   ; $627e: $d2 $80 $ce

	ld   bc, $df5e                                   ; $6281: $01 $5e $df
	add  b                                           ; $6284: $80
	adc  a                                           ; $6285: $8f
	ld   bc, $76b7                                   ; $6286: $01 $b7 $76
	add  e                                           ; $6289: $83
	ld   a, l                                        ; $628a: $7d
	nop                                              ; $628b: $00
	cp   l                                           ; $628c: $bd
	add  c                                           ; $628d: $81
	sbc  l                                           ; $628e: $9d
	ld   bc, $cddd                                   ; $628f: $01 $dd $cd
	add  b                                           ; $6292: $80
	ld   c, l                                        ; $6293: $4d
	add  b                                           ; $6294: $80
	dec  c                                           ; $6295: $0d
	nop                                              ; $6296: $00
	ld   c, $8d                                      ; $6297: $0e $8d
	cp   $8e                                         ; $6299: $fe $8e
	ldh  a, [rAUD1SWEEP]                             ; $629b: $f0 $10
	inc  de                                          ; $629d: $13
	db   $ed                                         ; $629e: $ed
	ld   bc, $8303                                   ; $629f: $01 $03 $83
	add  a                                           ; $62a2: $87
	rst  $20                                         ; $62a3: $e7
	db   $e3                                         ; $62a4: $e3
	ld   h, e                                        ; $62a5: $63
	ld   h, c                                        ; $62a6: $61
	jp   nz, Jump_07f_5adf                           ; $62a7: $c2 $df $5a

	ld   e, [hl]                                     ; $62aa: $5e
	inc  e                                           ; $62ab: $1c
	dec  e                                           ; $62ac: $1d
	ld   a, [de]                                     ; $62ad: $1a
	add  b                                           ; $62ae: $80
	jp   $fb04                                       ; $62af: $c3 $04 $fb


	jp   $bbfb                                       ; $62b2: $c3 $fb $bb


	ei                                               ; $62b5: $fb
	add  b                                           ; $62b6: $80
	ld   hl, sp+$07                                  ; $62b7: $f8 $07
	add  d                                           ; $62b9: $82
	ld   [bc], a                                     ; $62ba: $02
	ld   c, $fe                                      ; $62bb: $0e $fe
	adc  $fe                                         ; $62bd: $ce $fe
	ret  nz                                          ; $62bf: $c0

	nop                                              ; $62c0: $00
	add  b                                           ; $62c1: $80
	jr   nz, jr_07f_6244                             ; $62c2: $20 $80

	inc  c                                           ; $62c4: $0c
	add  b                                           ; $62c5: $80
	jr   nz, @-$7c                                   ; $62c6: $20 $82

	inc  c                                           ; $62c8: $0c
	add  b                                           ; $62c9: $80
	inc  l                                           ; $62ca: $2c
	add  b                                           ; $62cb: $80
	ld   l, h                                        ; $62cc: $6c
	nop                                              ; $62cd: $00
	rrca                                             ; $62ce: $0f
	add  e                                           ; $62cf: $83
	nop                                              ; $62d0: $00

Call_07f_62d1:
	add  b                                           ; $62d1: $80
	ret  nz                                          ; $62d2: $c0

	add  b                                           ; $62d3: $80
	jr   nc, jr_07f_6256                             ; $62d4: $30 $80

	add  b                                           ; $62d6: $80
	add  b                                           ; $62d7: $80
	ldh  [$80], a                                    ; $62d8: $e0 $80
	ldh  a, [$08]                                    ; $62da: $f0 $08
	xor  e                                           ; $62dc: $ab
	dec  l                                           ; $62dd: $2d
	add  hl, bc                                      ; $62de: $09
	ld   bc, $0041                                   ; $62df: $01 $41 $00

Jump_07f_62e2:
	db   $10                                         ; $62e2: $10
	ld   b, b                                        ; $62e3: $40
	ld   l, a                                        ; $62e4: $6f
	add  b                                           ; $62e5: $80
	xor  c                                           ; $62e6: $a9
	add  d                                           ; $62e7: $82
	add  hl, hl                                      ; $62e8: $29
	inc  b                                           ; $62e9: $04
	ld   l, c                                        ; $62ea: $69
	ld   [$70fc], a                                  ; $62eb: $ea $fc $70
	ldh  a, [$80]                                    ; $62ee: $f0 $80
	nop                                              ; $62f0: $00
	ld   [bc], a                                     ; $62f1: $02
	rst  JumpTable                                         ; $62f2: $df
	inc  b                                           ; $62f3: $04
	inc  h                                           ; $62f4: $24
	add  b                                           ; $62f5: $80
	inc  b                                           ; $62f6: $04
	add  c                                           ; $62f7: $81
	inc  d                                           ; $62f8: $14
	inc  bc                                          ; $62f9: $03
	inc  e                                           ; $62fa: $1c
	inc  d                                           ; $62fb: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62fc: $cf
	inc  l                                           ; $62fd: $2c
	add  b                                           ; $62fe: $80
	inc  c                                           ; $62ff: $0c
	ld   [bc], a                                     ; $6300: $02
	inc  l                                           ; $6301: $2c
	call z, $8214                                    ; $6302: $cc $14 $82
	inc  b                                           ; $6305: $04
	add  e                                           ; $6306: $83
	add  h                                           ; $6307: $84
	nop                                              ; $6308: $00
	cp   a                                           ; $6309: $bf
	adc  e                                           ; $630a: $8b
	ret  nz                                          ; $630b: $c0

	add  b                                           ; $630c: $80
	add  b                                           ; $630d: $80
	inc  b                                           ; $630e: $04
	adc  a                                           ; $630f: $8f
	nop                                              ; $6310: $00
	add  b                                           ; $6311: $80
	rrca                                             ; $6312: $0f
	ld   l, a                                        ; $6313: $6f
	add  b                                           ; $6314: $80
	ld   a, a                                        ; $6315: $7f
	add  e                                           ; $6316: $83
	rst  $38                                         ; $6317: $ff
	ld   [bc], a                                     ; $6318: $02
	ldh  [rIE], a                                    ; $6319: $e0 $ff
	add  b                                           ; $631b: $80
	add  d                                           ; $631c: $82
	nop                                              ; $631d: $00
	ld   bc, $0908                                   ; $631e: $01 $08 $09
	add  l                                           ; $6321: $85
	rst  $38                                         ; $6322: $ff
	ld   bc, $ff01                                   ; $6323: $01 $01 $ff
	add  b                                           ; $6326: $80
	inc  b                                           ; $6327: $04
	add  b                                           ; $6328: $80
	nop                                              ; $6329: $00
	nop                                              ; $632a: $00
	sub  b                                           ; $632b: $90
	adc  c                                           ; $632c: $89
	ret  nc                                          ; $632d: $d0

	ld   [bc], a                                     ; $632e: $02
	ld   b, b                                        ; $632f: $40
	nop                                              ; $6330: $00
	rrca                                             ; $6331: $0f
	add  e                                           ; $6332: $83
	nop                                              ; $6333: $00
	add  d                                           ; $6334: $82
	add  b                                           ; $6335: $80
	add  b                                           ; $6336: $80
	nop                                              ; $6337: $00
	add  b                                           ; $6338: $80
	add  b                                           ; $6339: $80
	add  b                                           ; $633a: $80

jr_07f_633b:
	sub  b                                           ; $633b: $90
	nop                                              ; $633c: $00
	ldh  a, [rIE]                                    ; $633d: $f0 $ff
	nop                                              ; $633f: $00
	rst  $38                                         ; $6340: $ff
	nop                                              ; $6341: $00
	rst  $38                                         ; $6342: $ff

jr_07f_6343:
	nop                                              ; $6343: $00
	rst  $38                                         ; $6344: $ff
	nop                                              ; $6345: $00
	rst  $38                                         ; $6346: $ff
	nop                                              ; $6347: $00
	rst  $38                                         ; $6348: $ff
	nop                                              ; $6349: $00
	rst  $30                                         ; $634a: $f7
	nop                                              ; $634b: $00
	inc  sp                                          ; $634c: $33
	ld   bc, $0000                                   ; $634d: $01 $00 $00
	add  b                                           ; $6350: $80
	inc  bc                                          ; $6351: $03
	add  h                                           ; $6352: $84
	rrca                                             ; $6353: $0f
	add  b                                           ; $6354: $80
	inc  c                                           ; $6355: $0c
	add  d                                           ; $6356: $82
	rrca                                             ; $6357: $0f
	add  b                                           ; $6358: $80
	ld   c, $80                                      ; $6359: $0e $80
	rst  $38                                         ; $635b: $ff
	add  b                                           ; $635c: $80
	ld   [hl], l                                     ; $635d: $75
	add  b                                           ; $635e: $80
	ld   [hl], a                                     ; $635f: $77
	add  b                                           ; $6360: $80
	ld   a, $80                                      ; $6361: $3e $80
	ld   h, [hl]                                     ; $6363: $66
	add  b                                           ; $6364: $80

jr_07f_6365:
	ld   e, [hl]                                     ; $6365: $5e
	add  b                                           ; $6366: $80
	inc  a                                           ; $6367: $3c
	ld   bc, $4fb5                                   ; $6368: $01 $b5 $4f
	add  l                                           ; $636b: $85
	rrca                                             ; $636c: $0f
	nop                                              ; $636d: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $636e: $cf
	add  c                                           ; $636f: $81
	rrca                                             ; $6370: $0f
	inc  b                                           ; $6371: $04
	dec  c                                           ; $6372: $0d

jr_07f_6373:
	rrca                                             ; $6373: $0f
	ld   [bc], a                                     ; $6374: $02
	rrca                                             ; $6375: $0f
	ld   a, [hl-]                                    ; $6376: $3a
	add  c                                           ; $6377: $81
	ld   e, a                                        ; $6378: $5f
	add  c                                           ; $6379: $81
	rst  $38                                         ; $637a: $ff
	ld   [bc], a                                     ; $637b: $02
	ld   e, a                                        ; $637c: $5f
	rrca                                             ; $637d: $0f
	nop                                              ; $637e: $00
	add  b                                           ; $637f: $80
	ld   d, b                                        ; $6380: $50
	add  hl, bc                                      ; $6381: $09
	ret  nc                                          ; $6382: $d0

	rst  $10                                         ; $6383: $d7
	add  a                                           ; $6384: $87
	adc  b                                           ; $6385: $88

jr_07f_6386:
	ld   l, b                                        ; $6386: $68
	or   l                                           ; $6387: $b5
	dec  h                                           ; $6388: $25
	or   l                                           ; $6389: $b5
	pop  hl                                          ; $638a: $e1
	xor  e                                           ; $638b: $ab
	add  b                                           ; $638c: $80
	ld   bc, $a080                                   ; $638d: $01 $80 $a0
	inc  bc                                          ; $6390: $03
	rrca                                             ; $6391: $0f
	nop                                              ; $6392: $00
	di                                               ; $6393: $f3
	inc  bc                                          ; $6394: $03
	add  b                                           ; $6395: $80
	inc  e                                           ; $6396: $1c
	ld   [bc], a                                     ; $6397: $02
	jr   nz, @+$01                                   ; $6398: $20 $ff

	rst  JumpTable                                         ; $639a: $df
	add  b                                           ; $639b: $80
	ret  nz                                          ; $639c: $c0

	inc  b                                           ; $639d: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $639e: $cf
	rrca                                             ; $639f: $0f
	jr   nc, jr_07f_63b1                             ; $63a0: $30 $0f

	rst  $38                                         ; $63a2: $ff
	add  b                                           ; $63a3: $80
	ld   [hl], b                                     ; $63a4: $70
	add  b                                           ; $63a5: $80
	add  b                                           ; $63a6: $80
	add  b                                           ; $63a7: $80
	nop                                              ; $63a8: $00
	ld   bc, $7efe                                   ; $63a9: $01 $fe $7e
	add  b                                           ; $63ac: $80
	ld   [hl], e                                     ; $63ad: $73
	ld   [bc], a                                     ; $63ae: $02
	ld   a, h                                        ; $63af: $7c
	ld   l, h                                        ; $63b0: $6c

jr_07f_63b1:
	ld   [hl], b                                     ; $63b1: $70
	add  b                                           ; $63b2: $80
	nop                                              ; $63b3: $00
	nop                                              ; $63b4: $00
	ldh  [$80], a                                    ; $63b5: $e0 $80
	inc  c                                           ; $63b7: $0c
	add  b                                           ; $63b8: $80
	jr   nc, jr_07f_633b                             ; $63b9: $30 $80

	nop                                              ; $63bb: $00
	add  b                                           ; $63bc: $80
	ld   [hl], b                                     ; $63bd: $70
	add  b                                           ; $63be: $80
	rst  $20                                         ; $63bf: $e7
	add  b                                           ; $63c0: $80
	jr   jr_07f_6343                                 ; $63c1: $18 $80

	ld   h, b                                        ; $63c3: $60
	add  b                                           ; $63c4: $80
	add  b                                           ; $63c5: $80
	add  h                                           ; $63c6: $84
	nop                                              ; $63c7: $00
	add  b                                           ; $63c8: $80
	jp   nz, $0f80                                   ; $63c9: $c2 $80 $0f

	add  b                                           ; $63cc: $80
	db   $10                                         ; $63cd: $10
	add  b                                           ; $63ce: $80
	ld   h, b                                        ; $63cf: $60
	add  b                                           ; $63d0: $80
	add  b                                           ; $63d1: $80
	add  h                                           ; $63d2: $84
	nop                                              ; $63d3: $00
	add  b                                           ; $63d4: $80
	rrca                                             ; $63d5: $0f
	add  d                                           ; $63d6: $82
	db   $10                                         ; $63d7: $10
	adc  b                                           ; $63d8: $88
	nop                                              ; $63d9: $00
	add  b                                           ; $63da: $80
	db   $10                                         ; $63db: $10
	add  d                                           ; $63dc: $82
	ld   [$0088], sp                                 ; $63dd: $08 $88 $00
	add  b                                           ; $63e0: $80
	ld   c, a                                        ; $63e1: $4f
	add  b                                           ; $63e2: $80
	jr   nc, jr_07f_6365                             ; $63e3: $30 $80

	ld   [$0680], sp                                 ; $63e5: $08 $80 $06
	add  b                                           ; $63e8: $80
	ld   bc, $0084                                   ; $63e9: $01 $84 $00
	add  b                                           ; $63ec: $80
	ld   c, $80                                      ; $63ed: $0e $80
	pop  hl                                          ; $63ef: $e1
	add  b                                           ; $63f0: $80
	jr   jr_07f_6373                                 ; $63f1: $18 $80

	ld   b, $80                                      ; $63f3: $06 $80
	ld   bc, $0084                                   ; $63f5: $01 $84 $00
	add  b                                           ; $63f8: $80
	ld   a, e                                        ; $63f9: $7b
	add  b                                           ; $63fa: $80
	rst  ToBoot                                         ; $63fb: $c7
	add  b                                           ; $63fc: $80
	dec  sp                                          ; $63fd: $3b
	inc  bc                                          ; $63fe: $03
	rlca                                             ; $63ff: $07
	inc  b                                           ; $6400: $04
	jp   $80c0                                       ; $6401: $c3 $c0 $80


	jr   nc, jr_07f_6386                             ; $6404: $30 $80

	inc  c                                           ; $6406: $0c
	add  b                                           ; $6407: $80
	inc  bc                                          ; $6408: $03
	nop                                              ; $6409: $00
	xor  l                                           ; $640a: $ad
	add  c                                           ; $640b: $81
	ld   d, a                                        ; $640c: $57
	add  b                                           ; $640d: $80
	rlca                                             ; $640e: $07
	dec  b                                           ; $640f: $05
	ld   [bc], a                                     ; $6410: $02
	ld   [hl], a                                     ; $6411: $77
	ld   a, a                                        ; $6412: $7f
	ld   [hl], b                                     ; $6413: $70
	adc  [hl]                                        ; $6414: $8e
	ld   c, $80                                      ; $6415: $0e $80
	ld   bc, $8080                                   ; $6417: $01 $80 $80
	dec  b                                           ; $641a: $05
	ccf                                              ; $641b: $3f
	ld   hl, sp-$46                                  ; $641c: $f8 $ba
	ld   a, [$f6fe]                                  ; $641e: $fa $fe $f6
	add  b                                           ; $6421: $80
	ldh  a, [$80]                                    ; $6422: $f0 $80
	or   $06                                         ; $6424: $f6 $06
	ld   [hl], b                                     ; $6426: $70
	ldh  a, [$f7]                                    ; $6427: $f0 $f7
	scf                                              ; $6429: $37
	rst  $30                                         ; $642a: $f7
	rlca                                             ; $642b: $07
	ccf                                              ; $642c: $3f
	add  b                                           ; $642d: $80
	inc  c                                           ; $642e: $0c
	add  b                                           ; $642f: $80
	dec  c                                           ; $6430: $0d
	add  c                                           ; $6431: $81
	rrca                                             ; $6432: $0f
	add  b                                           ; $6433: $80
	inc  c                                           ; $6434: $0c
	inc  bc                                          ; $6435: $03
	inc  bc                                          ; $6436: $03
	nop                                              ; $6437: $00
	inc  bc                                          ; $6438: $03
	rrca                                             ; $6439: $0f
	add  c                                           ; $643a: $81
	nop                                              ; $643b: $00
	add  b                                           ; $643c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $643d: $cf
	nop                                              ; $643e: $00
	rst  $38                                         ; $643f: $ff
	add  b                                           ; $6440: $80
	db   $fc                                         ; $6441: $fc
	dec  b                                           ; $6442: $05
	jp   $3cc0                                       ; $6443: $c3 $c0 $3c


	nop                                              ; $6446: $00
	ret  nz                                          ; $6447: $c0

	nop                                              ; $6448: $00
	add  b                                           ; $6449: $80
	rst  $38                                         ; $644a: $ff
	add  b                                           ; $644b: $80
	inc  c                                           ; $644c: $0c
	ld   [bc], a                                     ; $644d: $02
	dec  e                                           ; $644e: $1d
	rrca                                             ; $644f: $0f
	rra                                              ; $6450: $1f
	add  d                                           ; $6451: $82
	rst  $30                                         ; $6452: $f7
	inc  b                                           ; $6453: $04

jr_07f_6454:
	halt                                             ; $6454: $76
	ld   [hl], l                                     ; $6455: $75
	db   $10                                         ; $6456: $10
	ld   h, [hl]                                     ; $6457: $66
	ld   a, b                                        ; $6458: $78
	add  b                                           ; $6459: $80
	add  b                                           ; $645a: $80
	add  b                                           ; $645b: $80
	nop                                              ; $645c: $00
	ld   bc, $ff7f                                   ; $645d: $01 $7f $ff
	add  b                                           ; $6460: $80
	add  a                                           ; $6461: $87
	add  b                                           ; $6462: $80
	cp   b                                           ; $6463: $b8
	add  b                                           ; $6464: $80
	ld   b, b                                        ; $6465: $40
	nop                                              ; $6466: $00
	add  b                                           ; $6467: $80
	add  l                                           ; $6468: $85
	nop                                              ; $6469: $00
	add  b                                           ; $646a: $80
	ldh  [$9c], a                                    ; $646b: $e0 $9c
	nop                                              ; $646d: $00
	inc  b                                           ; $646e: $04
	db   $e3                                         ; $646f: $e3
	rra                                              ; $6470: $1f
	call nz, $dcdf                                   ; $6471: $c4 $df $dc
	add  c                                           ; $6474: $81
	rst  JumpTable                                         ; $6475: $df
	add  b                                           ; $6476: $80
	rra                                              ; $6477: $1f
	ld   a, [bc]                                     ; $6478: $0a
	rst  ToBoot                                         ; $6479: $c7
	rst  JumpTable                                         ; $647a: $df
	inc  b                                           ; $647b: $04
	rra                                              ; $647c: $1f
	db   $e4                                         ; $647d: $e4
	rst  JumpTable                                         ; $647e: $df
	xor  c                                           ; $647f: $a9
	rst  $38                                         ; $6480: $ff
	and  a                                           ; $6481: $a7
	rst  $38                                         ; $6482: $ff
	cp   b                                           ; $6483: $b8
	add  l                                           ; $6484: $85
	rst  $38                                         ; $6485: $ff
	inc  b                                           ; $6486: $04
	cp   a                                           ; $6487: $bf
	rst  $38                                         ; $6488: $ff
	or   a                                           ; $6489: $b7
	rst  $38                                         ; $648a: $ff
	ret  z                                           ; $648b: $c8

	add  c                                           ; $648c: $81
	rst  $38                                         ; $648d: $ff
	ld   [bc], a                                     ; $648e: $02
	rra                                              ; $648f: $1f
	rst  $38                                         ; $6490: $ff
	ldh  [$87], a                                    ; $6491: $e0 $87
	rst  $38                                         ; $6493: $ff
	ld   bc, $c025                                   ; $6494: $01 $25 $c0
	add  b                                           ; $6497: $80
	ret  nc                                          ; $6498: $d0

	add  b                                           ; $6499: $80
	ret  nz                                          ; $649a: $c0

	nop                                              ; $649b: $00
	ld   [hl], b                                     ; $649c: $70
	add  a                                           ; $649d: $87
	or   b                                           ; $649e: $b0
	inc  bc                                          ; $649f: $03
	ld   [hl], b                                     ; $64a0: $70
	inc  bc                                          ; $64a1: $03
	db   $e3                                         ; $64a2: $e3
	ldh  [$80], a                                    ; $64a3: $e0 $80
	inc  e                                           ; $64a5: $1c
	add  b                                           ; $64a6: $80
	inc  bc                                          ; $64a7: $03
	add  [hl]                                        ; $64a8: $86
	nop                                              ; $64a9: $00
	ld   [bc], a                                     ; $64aa: $02
	ld   e, b                                        ; $64ab: $58
	rst  $38                                         ; $64ac: $ff
	ldh  a, [c]                                      ; $64ad: $f2
	add  c                                           ; $64ae: $81
	ld   a, a                                        ; $64af: $7f
	add  b                                           ; $64b0: $80
	rst  $38                                         ; $64b1: $ff
	db   $10                                         ; $64b2: $10
	ld   e, a                                        ; $64b3: $5f
	rrca                                             ; $64b4: $0f
	ld   [hl], l                                     ; $64b5: $75
	ld   bc, $000f                                   ; $64b6: $01 $0f $00
	ld   bc, $aa00                                   ; $64b9: $01 $00 $aa
	rst  $38                                         ; $64bc: $ff
	ld   e, a                                        ; $64bd: $5f
	rst  $38                                         ; $64be: $ff
	sub  a                                           ; $64bf: $97
	rst  $38                                         ; $64c0: $ff
	call $faff                                       ; $64c1: $cd $ff $fa
	add  c                                           ; $64c4: $81
	rst  $38                                         ; $64c5: $ff
	inc  b                                           ; $64c6: $04
	ld   a, a                                        ; $64c7: $7f
	ccf                                              ; $64c8: $3f
	rst  JumpTable                                         ; $64c9: $df
	rrca                                             ; $64ca: $0f
	ld   a, [$b083]                                  ; $64cb: $fa $83 $b0
	ld   bc, $0080                                   ; $64ce: $01 $80 $00
	add  b                                           ; $64d1: $80
	jr   nc, jr_07f_6454                             ; $64d2: $30 $80

	ld   b, b                                        ; $64d4: $40
	add  d                                           ; $64d5: $82
	ld   [hl], b                                     ; $64d6: $70
	nop                                              ; $64d7: $00
	ld   e, d                                        ; $64d8: $5a
	add  c                                           ; $64d9: $81
	rst  $38                                         ; $64da: $ff
	ld   [bc], a                                     ; $64db: $02
	rrca                                             ; $64dc: $0f
	rst  $38                                         ; $64dd: $ff
	ldh  a, [$87]                                    ; $64de: $f0 $87
	rst  $38                                         ; $64e0: $ff
	nop                                              ; $64e1: $00
	ld   a, [de]                                     ; $64e2: $1a
	add  d                                           ; $64e3: $82
	ldh  [rSB], a                                    ; $64e4: $e0 $01
	ret  nz                                          ; $64e6: $c0

	nop                                              ; $64e7: $00
	add  e                                           ; $64e8: $83
	ret  nz                                          ; $64e9: $c0

	add  d                                           ; $64ea: $82
	ret  nc                                          ; $64eb: $d0

	nop                                              ; $64ec: $00
	or   b                                           ; $64ed: $b0
	add  l                                           ; $64ee: $85
	nop                                              ; $64ef: $00
	ld   bc, $03fc                                   ; $64f0: $01 $fc $03
	add  b                                           ; $64f3: $80
	ld   [bc], a                                     ; $64f4: $02
	add  b                                           ; $64f5: $80
	xor  a                                           ; $64f6: $af
	add  b                                           ; $64f7: $80
	cp   $00                                         ; $64f8: $fe $00
	rst  $38                                         ; $64fa: $ff
	add  l                                           ; $64fb: $85
	nop                                              ; $64fc: $00
	ld   bc, $f40b                                   ; $64fd: $01 $0b $f4
	add  b                                           ; $6500: $80
	xor  c                                           ; $6501: $a9
	add  b                                           ; $6502: $80
	ld   d, e                                        ; $6503: $53
	add  b                                           ; $6504: $80
	and  e                                           ; $6505: $a3
	nop                                              ; $6506: $00
	rst  $38                                         ; $6507: $ff
	add  l                                           ; $6508: $85
	nop                                              ; $6509: $00
	ld   bc, $51ae                                   ; $650a: $01 $ae $51
	add  b                                           ; $650d: $80
	ld   l, d                                        ; $650e: $6a
	add  b                                           ; $650f: $80
	rst  $30                                         ; $6510: $f7
	add  b                                           ; $6511: $80
	ei                                               ; $6512: $fb
	nop                                              ; $6513: $00
	rst  $38                                         ; $6514: $ff
	add  l                                           ; $6515: $85
	nop                                              ; $6516: $00
	ld   bc, $50a0                                   ; $6517: $01 $a0 $50
	add  b                                           ; $651a: $80
	ldh  [$80], a                                    ; $651b: $e0 $80
	ldh  a, [$80]                                    ; $651d: $f0 $80
	ldh  [rSB], a                                    ; $651f: $e0 $01
	dec  l                                           ; $6521: $2d
	ld   [hl+], a                                    ; $6522: $22
	add  b                                           ; $6523: $80
	push de                                          ; $6524: $d5
	add  b                                           ; $6525: $80
	xor  d                                           ; $6526: $aa
	add  b                                           ; $6527: $80
	pop  de                                          ; $6528: $d1
	add  b                                           ; $6529: $80
	add  d                                           ; $652a: $82
	add  b                                           ; $652b: $80
	ld   c, l                                        ; $652c: $4d
	add  d                                           ; $652d: $82
	ret  nz                                          ; $652e: $c0

	add  d                                           ; $652f: $82
	rlca                                             ; $6530: $07
	add  b                                           ; $6531: $80
	add  e                                           ; $6532: $83
	add  b                                           ; $6533: $80
	inc  bc                                          ; $6534: $03
	add  b                                           ; $6535: $80
	xor  a                                           ; $6536: $af
	add  b                                           ; $6537: $80
	ld   h, a                                        ; $6538: $67
	add  b                                           ; $6539: $80
	ld   a, [hl]                                     ; $653a: $7e
	add  b                                           ; $653b: $80
	push af                                          ; $653c: $f5
	add  b                                           ; $653d: $80
	and  b                                           ; $653e: $a0
	add  b                                           ; $653f: $80
	db   $fc                                         ; $6540: $fc
	add  b                                           ; $6541: $80
	and  d                                           ; $6542: $a2
	add  b                                           ; $6543: $80
	ld   d, b                                        ; $6544: $50
	add  b                                           ; $6545: $80
	add  b                                           ; $6546: $80
	add  b                                           ; $6547: $80
	nop                                              ; $6548: $00
	dec  b                                           ; $6549: $05
	add  b                                           ; $654a: $80
	add  c                                           ; $654b: $81
	ld   b, c                                        ; $654c: $41
	ld   b, [hl]                                     ; $654d: $46
	add  hl, de                                      ; $654e: $19
	db   $10                                         ; $654f: $10
	add  l                                           ; $6550: $85
	nop                                              ; $6551: $00
	add  b                                           ; $6552: $80
	db   $10                                         ; $6553: $10
	add  b                                           ; $6554: $80
	ld   h, b                                        ; $6555: $60
	add  b                                           ; $6556: $80
	add  b                                           ; $6557: $80
	inc  bc                                          ; $6558: $03
	nop                                              ; $6559: $00
	ld   c, $18                                      ; $655a: $0e $18
	db   $10                                         ; $655c: $10
	add  b                                           ; $655d: $80
	ld   h, h                                        ; $655e: $64
	dec  bc                                          ; $655f: $0b
	add  h                                           ; $6560: $84
	push bc                                          ; $6561: $c5
	inc  h                                           ; $6562: $24
	inc  l                                           ; $6563: $2c
	inc  hl                                          ; $6564: $23
	ld   l, a                                        ; $6565: $6f
	rrca                                             ; $6566: $0f
	ld   [bc], a                                     ; $6567: $02
	ccf                                              ; $6568: $3f
	ld   a, [de]                                     ; $6569: $1a
	ld   a, h                                        ; $656a: $7c
	ld   a, b                                        ; $656b: $78
	add  b                                           ; $656c: $80
	sub  h                                           ; $656d: $94
	dec  e                                           ; $656e: $1d
	add  a                                           ; $656f: $87
	and  l                                           ; $6570: $a5
	sbc  a                                           ; $6571: $9f
	ld   d, c                                        ; $6572: $51
	rst  $38                                         ; $6573: $ff
	ld   d, e                                        ; $6574: $53
	rst  $38                                         ; $6575: $ff
	sbc  a                                           ; $6576: $9f
	pop  af                                          ; $6577: $f1
	ld   a, a                                        ; $6578: $7f
	adc  a                                           ; $6579: $8f
	ld   a, a                                        ; $657a: $7f
	ld   l, a                                        ; $657b: $6f
	sbc  e                                           ; $657c: $9b
	ld   a, a                                        ; $657d: $7f
	rst  JumpTable                                         ; $657e: $df
	rst  $38                                         ; $657f: $ff
	ld   a, a                                        ; $6580: $7f
	rst  $38                                         ; $6581: $ff
	ld   hl, sp-$01                                  ; $6582: $f8 $ff
	push hl                                          ; $6584: $e5
	rst  $38                                         ; $6585: $ff
	or   l                                           ; $6586: $b5
	rst  $38                                         ; $6587: $ff
	rst  $10                                         ; $6588: $d7
	rst  $38                                         ; $6589: $ff
	ld   a, a                                        ; $658a: $7f
	rst  $38                                         ; $658b: $ff
	dec  b                                           ; $658c: $05
	add  c                                           ; $658d: $81
	ldh  a, [rDIV]                                   ; $658e: $f0 $04
	ldh  [$f0], a                                    ; $6590: $e0 $f0
	or   b                                           ; $6592: $b0
	ldh  a, [$50]                                    ; $6593: $f0 $50
	add  l                                           ; $6595: $85
	ldh  a, [rP1]                                    ; $6596: $f0 $00
	xor  a                                           ; $6598: $af
	add  c                                           ; $6599: $81
	nop                                              ; $659a: $00
	add  d                                           ; $659b: $82
	ld   b, b                                        ; $659c: $40
	add  d                                           ; $659d: $82
	ld   d, b                                        ; $659e: $50
	add  b                                           ; $659f: $80
	ld   d, h                                        ; $65a0: $54
	inc  b                                           ; $65a1: $04
	ld   [hl], h                                     ; $65a2: $74
	ld   b, d                                        ; $65a3: $42
	ld   [hl-], a                                    ; $65a4: $32
	inc  bc                                          ; $65a5: $03
	dec  b                                           ; $65a6: $05
	add  c                                           ; $65a7: $81
	rlca                                             ; $65a8: $07
	ld   [bc], a                                     ; $65a9: $02
	ld   b, $07                                      ; $65aa: $06 $07
	ld   bc, $0f83                                   ; $65ac: $01 $83 $0f
	add  b                                           ; $65af: $80
	rst  $38                                         ; $65b0: $ff
	ld   b, $00                                      ; $65b1: $06 $00
	rst  $38                                         ; $65b3: $ff
	ld   a, a                                        ; $65b4: $7f
	rst  $38                                         ; $65b5: $ff
	ldh  [rIE], a                                    ; $65b6: $e0 $ff
	ccf                                              ; $65b8: $3f
	add  a                                           ; $65b9: $87
	rst  $38                                         ; $65ba: $ff
	nop                                              ; $65bb: $00
	dec  b                                           ; $65bc: $05
	add  c                                           ; $65bd: $81
	ldh  a, [rP1]                                    ; $65be: $f0 $00
	db   $10                                         ; $65c0: $10
	adc  c                                           ; $65c1: $89
	ldh  [rSB], a                                    ; $65c2: $e0 $01
	ld   d, d                                        ; $65c4: $52
	db   $fd                                         ; $65c5: $fd
	add  b                                           ; $65c6: $80
	cp   $80                                         ; $65c7: $fe $80
	ld   [hl], l                                     ; $65c9: $75
	add  b                                           ; $65ca: $80
	ld   [$b580], a                                  ; $65cb: $ea $80 $b5
	add  h                                           ; $65ce: $84
	nop                                              ; $65cf: $00
	add  b                                           ; $65d0: $80
	ld   b, a                                        ; $65d1: $47
	add  b                                           ; $65d2: $80
	add  a                                           ; $65d3: $87
	add  b                                           ; $65d4: $80
	dec  bc                                          ; $65d5: $0b
	add  b                                           ; $65d6: $80
	add  a                                           ; $65d7: $87
	add  b                                           ; $65d8: $80
	inc  c                                           ; $65d9: $0c
	add  b                                           ; $65da: $80
	ld   bc, $0580                                   ; $65db: $01 $80 $05
	add  b                                           ; $65de: $80
	rlca                                             ; $65df: $07
	add  h                                           ; $65e0: $84
	rst  $38                                         ; $65e1: $ff
	add  b                                           ; $65e2: $80
	db   $eb                                         ; $65e3: $eb
	add  b                                           ; $65e4: $80
	ld   d, l                                        ; $65e5: $55
	add  b                                           ; $65e6: $80
	ld   [$d480], a                                  ; $65e7: $ea $80 $d4
	add  b                                           ; $65ea: $80
	adc  d                                           ; $65eb: $8a
	ld   bc, $d0df                                   ; $65ec: $01 $df $d0
	add  b                                           ; $65ef: $80
	and  b                                           ; $65f0: $a0
	add  b                                           ; $65f1: $80
	ret  nc                                          ; $65f2: $d0

	add  b                                           ; $65f3: $80
	sub  b                                           ; $65f4: $90
	add  b                                           ; $65f5: $80
	nop                                              ; $65f6: $00
	add  b                                           ; $65f7: $80
	add  b                                           ; $65f8: $80
	add  b                                           ; $65f9: $80
	nop                                              ; $65fa: $00
	add  b                                           ; $65fb: $80
	db   $10                                         ; $65fc: $10
	ld   bc, $030c                                   ; $65fd: $01 $0c $03
	add  b                                           ; $6600: $80
	ld   bc, $2080                                   ; $6601: $01 $80 $20
	add  b                                           ; $6604: $80
	inc  d                                           ; $6605: $14
	add  b                                           ; $6606: $80
	xor  b                                           ; $6607: $a8
	add  b                                           ; $6608: $80
	ld   d, h                                        ; $6609: $54
	dec  b                                           ; $660a: $05
	and  b                                           ; $660b: $a0
	and  c                                           ; $660c: $a1
	ld   b, c                                        ; $660d: $41
	ld   b, [hl]                                     ; $660e: $46
	call nc, $81d2                                   ; $660f: $d4 $d2 $81
	nop                                              ; $6612: $00
	add  b                                           ; $6613: $80
	dec  b                                           ; $6614: $05
	add  b                                           ; $6615: $80
	ld   b, $01                                      ; $6616: $06 $01
	inc  e                                           ; $6618: $1c
	dec  e                                           ; $6619: $1d
	add  b                                           ; $661a: $80
	ld   h, h                                        ; $661b: $64
	inc  bc                                          ; $661c: $03
	sub  h                                           ; $661d: $94
	or   h                                           ; $661e: $b4
	inc  d                                           ; $661f: $14
	dec  [hl]                                        ; $6620: $35
	add  b                                           ; $6621: $80
	jr   jr_07f_6629                                 ; $6622: $18 $05

	ld   h, b                                        ; $6624: $60
	ld   l, b                                        ; $6625: $68
	add  b                                           ; $6626: $80
	sub  b                                           ; $6627: $90
	inc  b                                           ; $6628: $04

jr_07f_6629:
	add  h                                           ; $6629: $84
	add  b                                           ; $662a: $80
	inc  b                                           ; $662b: $04
	rlca                                             ; $662c: $07
	ld   b, h                                        ; $662d: $44
	ld   d, h                                        ; $662e: $54
	ld   b, e                                        ; $662f: $43
	add  hl, bc                                      ; $6630: $09
	rra                                              ; $6631: $1f
	sub  d                                           ; $6632: $92
	nop                                              ; $6633: $00
	add  b                                           ; $6634: $80
	add  e                                           ; $6635: $83
	jr   nz, jr_07f_6644                             ; $6636: $20 $0c

	and  b                                           ; $6638: $a0
	db   $10                                         ; $6639: $10

jr_07f_663a:
	ld   d, b                                        ; $663a: $50
	ld   [hl], b                                     ; $663b: $70
	ld   d, b                                        ; $663c: $50
	ldh  a, [rSVBK]                                  ; $663d: $f0 $70
	ldh  a, [$5c]                                    ; $663f: $f0 $5c
	db   $e3                                         ; $6641: $e3
	rst  $38                                         ; $6642: $ff
	dec  de                                          ; $6643: $1b

jr_07f_6644:
	ei                                               ; $6644: $fb
	add  b                                           ; $6645: $80
	pop  hl                                          ; $6646: $e1
	add  b                                           ; $6647: $80
	and  c                                           ; $6648: $a1
	ld   [bc], a                                     ; $6649: $02
	xor  d                                           ; $664a: $aa
	and  l                                           ; $664b: $a5
	ldh  a, [$82]                                    ; $664c: $f0 $82
	nop                                              ; $664e: $00
	nop                                              ; $664f: $00
	cp   $80                                         ; $6650: $fe $80
	and  a                                           ; $6652: $a7
	ld   bc, $0d0f                                   ; $6653: $01 $0f $0d
	add  b                                           ; $6656: $80
	xor  a                                           ; $6657: $af
	ld   [bc], a                                     ; $6658: $02
	adc  a                                           ; $6659: $8f
	di                                               ; $665a: $f3
	add  e                                           ; $665b: $83
	add  b                                           ; $665c: $80
	ld   [bc], a                                     ; $665d: $02
	nop                                              ; $665e: $00
	ld   b, $81                                      ; $665f: $06 $81
	ld   [bc], a                                     ; $6661: $02
	rlca                                             ; $6662: $07
	ld   d, d                                        ; $6663: $52
	rst  $38                                         ; $6664: $ff
	db   $ed                                         ; $6665: $ed
	db   $fd                                         ; $6666: $fd
	sub  h                                           ; $6667: $94
	push de                                          ; $6668: $d5
	ld   e, [hl]                                     ; $6669: $5e
	ld   e, d                                        ; $666a: $5a
	add  h                                           ; $666b: $84
	xor  d                                           ; $666c: $aa
	rlca                                             ; $666d: $07
	rst  $20                                         ; $666e: $e7
	rst  $28                                         ; $666f: $ef
	jr   z, @+$72                                    ; $6670: $28 $70

	ld   b, b                                        ; $6672: $40
	ld   d, b                                        ; $6673: $50
	jr   nc, jr_07f_66e6                             ; $6674: $30 $70

	add  d                                           ; $6676: $82
	or   b                                           ; $6677: $b0
	ld   bc, $b090                                   ; $6678: $01 $90 $b0
	add  b                                           ; $667b: $80
	ldh  a, [rSC]                                    ; $667c: $f0 $02
	ld   [hl], b                                     ; $667e: $70
	ldh  a, [$1f]                                    ; $667f: $f0 $1f
	add  c                                           ; $6681: $81
	halt                                             ; $6682: $76
	ld   bc, $01ec                                   ; $6683: $01 $ec $01
	add  e                                           ; $6686: $83
	db   $db                                         ; $6687: $db
	ld   b, $ff                                      ; $6688: $06 $ff
	db   $e3                                         ; $668a: $e3
	rra                                              ; $668b: $1f
	call nz, $eddf                                   ; $668c: $c4 $df $ed
	rst  $38                                         ; $668f: $ff
	add  b                                           ; $6690: $80
	rrca                                             ; $6691: $0f
	nop                                              ; $6692: $00
	ldh  [$85], a                                    ; $6693: $e0 $85
	rst  $38                                         ; $6695: $ff
	inc  b                                           ; $6696: $04
	rra                                              ; $6697: $1f
	rst  $38                                         ; $6698: $ff
	rra                                              ; $6699: $1f
	rst  $38                                         ; $669a: $ff
	ld   [$00ff], a                                  ; $669b: $ea $ff $00
	rst  $38                                         ; $669e: $ff
	nop                                              ; $669f: $00
	rst  $38                                         ; $66a0: $ff
	nop                                              ; $66a1: $00
	rst  $38                                         ; $66a2: $ff
	nop                                              ; $66a3: $00
	rst  $38                                         ; $66a4: $ff
	nop                                              ; $66a5: $00
	rst  $38                                         ; $66a6: $ff

jr_07f_66a7:
	nop                                              ; $66a7: $00
	rst  $38                                         ; $66a8: $ff
	nop                                              ; $66a9: $00
	rst  $38                                         ; $66aa: $ff
	nop                                              ; $66ab: $00
	sub  l                                           ; $66ac: $95
	nop                                              ; $66ad: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66ae: $cf
	nop                                              ; $66af: $00
	add  b                                           ; $66b0: $80
	nop                                              ; $66b1: $00
	add  b                                           ; $66b2: $80
	ld   [hl], b                                     ; $66b3: $70
	inc  bc                                          ; $66b4: $03
	jr   nc, jr_07f_66a7                             ; $66b5: $30 $f0

	nop                                              ; $66b7: $00
	jr   nc, jr_07f_663a                             ; $66b8: $30 $80

	db   $10                                         ; $66ba: $10
	ld   b, $e0                                      ; $66bb: $06 $e0
	ldh  a, [$30]                                    ; $66bd: $f0 $30
	ldh  a, [$b0]                                    ; $66bf: $f0 $b0
	sub  b                                           ; $66c1: $90
	rst  $38                                         ; $66c2: $ff
	add  c                                           ; $66c3: $81
	nop                                              ; $66c4: $00
	add  d                                           ; $66c5: $82
	add  b                                           ; $66c6: $80
	add  b                                           ; $66c7: $80
	ld   b, a                                        ; $66c8: $47
	ld   b, $bc                                      ; $66c9: $06 $bc
	cp   a                                           ; $66cb: $bf
	ld   a, l                                        ; $66cc: $7d
	rst  $38                                         ; $66cd: $ff
	sub  c                                           ; $66ce: $91
	rst  $38                                         ; $66cf: $ff
	rst  $28                                         ; $66d0: $ef
	add  e                                           ; $66d1: $83
	nop                                              ; $66d2: $00
	add  b                                           ; $66d3: $80
	ld   a, b                                        ; $66d4: $78
	add  hl, bc                                      ; $66d5: $09
	rst  JumpTable                                         ; $66d6: $df
	rst  $38                                         ; $66d7: $ff

jr_07f_66d8:
	inc  h                                           ; $66d8: $24
	rst  $38                                         ; $66d9: $ff
	di                                               ; $66da: $f3
	rst  $38                                         ; $66db: $ff
	dec  bc                                          ; $66dc: $0b
	rst  $38                                         ; $66dd: $ff
	inc  bc                                          ; $66de: $03
	nop                                              ; $66df: $00
	add  b                                           ; $66e0: $80
	ld   bc, $0380                                   ; $66e1: $01 $80 $03
	ld   a, [bc]                                     ; $66e4: $0a
	adc  [hl]                                        ; $66e5: $8e

jr_07f_66e6:
	adc  a                                           ; $66e6: $8f
	db   $fd                                         ; $66e7: $fd
	rst  $38                                         ; $66e8: $ff
	inc  c                                           ; $66e9: $0c
	rst  $38                                         ; $66ea: $ff
	db   $f4                                         ; $66eb: $f4
	rst  $38                                         ; $66ec: $ff
	di                                               ; $66ed: $f3
	rst  $38                                         ; $66ee: $ff
	add  sp, -$7f                                    ; $66ef: $e8 $81
	db   $10                                         ; $66f1: $10
	add  b                                           ; $66f2: $80
	ldh  a, [$0a]                                    ; $66f3: $f0 $0a
	ld   [hl], b                                     ; $66f5: $70
	ldh  a, [$90]                                    ; $66f6: $f0 $90
	ldh  a, [rAUD1SWEEP]                             ; $66f8: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $66fa: $f0 $10
	ldh  a, [$e0]                                    ; $66fc: $f0 $e0
	ldh  a, [$fe]                                    ; $66fe: $f0 $fe
	add  e                                           ; $6700: $83
	rst  $38                                         ; $6701: $ff
	dec  c                                           ; $6702: $0d
	db   $fc                                         ; $6703: $fc
	rst  $38                                         ; $6704: $ff
	ld   hl, sp-$03                                  ; $6705: $f8 $fd
	db   $f4                                         ; $6707: $f4
	cp   $e2                                         ; $6708: $fe $e2
	ld   sp, hl                                      ; $670a: $f9
	push de                                          ; $670b: $d5
	ld   a, [$c006]                                  ; $670c: $fa $06 $c0
	ld   h, b                                        ; $670f: $60
	ldh  [$80], a                                    ; $6710: $e0 $80
	ret  nz                                          ; $6712: $c0

	ld   bc, $e060                                   ; $6713: $01 $60 $e0
	add  b                                           ; $6716: $80
	ret  nz                                          ; $6717: $c0

	add  b                                           ; $6718: $80
	nop                                              ; $6719: $00
	ld   [$ff7f], sp                                 ; $671a: $08 $7f $ff
	add  b                                           ; $671d: $80
	nop                                              ; $671e: $00
	inc  bc                                          ; $671f: $03
	ld   a, a                                        ; $6720: $7f
	ld   [hl], e                                     ; $6721: $73
	ld   a, h                                        ; $6722: $7c
	ld   c, h                                        ; $6723: $4c
	add  b                                           ; $6724: $80
	ld   [hl], e                                     ; $6725: $73
	stop                                             ; $6726: $10 $00
	inc  bc                                          ; $6728: $03
	jr   nc, jr_07f_67a2                             ; $6729: $30 $77

	ld   a, e                                        ; $672b: $7b
	adc  e                                           ; $672c: $8b
	sbc  e                                           ; $672d: $9b
	ld   [hl], l                                     ; $672e: $75
	ld   h, h                                        ; $672f: $64
	rst  $38                                         ; $6730: $ff
	add  b                                           ; $6731: $80
	add  a                                           ; $6732: $87
	ld   bc, $873f                                   ; $6733: $01 $3f $87
	ld   a, a                                        ; $6736: $7f
	ccf                                              ; $6737: $3f
	add  b                                           ; $6738: $80
	db   $fc                                         ; $6739: $fc
	add  b                                           ; $673a: $80
	cp   $80                                         ; $673b: $fe $80
	rst  $38                                         ; $673d: $ff
	ld   b, $df                                      ; $673e: $06 $df
	ccf                                              ; $6740: $3f
	inc  sp                                          ; $6741: $33
	db   $d3                                         ; $6742: $d3
	sub  e                                           ; $6743: $93
	sub  d                                           ; $6744: $92
	ld   hl, $2081                                   ; $6745: $21 $81 $20
	add  b                                           ; $6748: $80
	nop                                              ; $6749: $00
	add  b                                           ; $674a: $80
	ld   bc, $ff82                                   ; $674b: $01 $82 $ff
	add  b                                           ; $674e: $80
	add  b                                           ; $674f: $80
	inc  b                                           ; $6750: $04
	rst  $38                                         ; $6751: $ff
	ccf                                              ; $6752: $3f
	cp   a                                           ; $6753: $bf
	ld   c, a                                        ; $6754: $4f
	jr   nc, jr_07f_66d8                             ; $6755: $30 $81

	nop                                              ; $6757: $00
	inc  b                                           ; $6758: $04
	ldh  [$e4], a                                    ; $6759: $e0 $e4
	add  h                                           ; $675b: $84
	adc  b                                           ; $675c: $88
	ld   [$7080], sp                                 ; $675d: $08 $80 $70
	inc  bc                                          ; $6760: $03
	nop                                              ; $6761: $00
	rlca                                             ; $6762: $07
	rst  $38                                         ; $6763: $ff
	ld   hl, sp-$7c                                  ; $6764: $f8 $84
	nop                                              ; $6766: $00
	inc  bc                                          ; $6767: $03
	ccf                                              ; $6768: $3f
	ld   a, $7f                                      ; $6769: $3e $7f
	ld   a, [hl]                                     ; $676b: $7e
	add  b                                           ; $676c: $80
	nop                                              ; $676d: $00
	ld   [bc], a                                     ; $676e: $02
	ccf                                              ; $676f: $3f
	pop  bc                                          ; $6770: $c1
	cp   $82                                         ; $6771: $fe $82
	nop                                              ; $6773: $00
	dec  b                                           ; $6774: $05
	ret  c                                           ; $6775: $d8

	rst  $38                                         ; $6776: $ff
	ld   e, b                                        ; $6777: $58
	rst  $38                                         ; $6778: $ff
	ld   b, b                                        ; $6779: $40
	ret  nz                                          ; $677a: $c0

	add  b                                           ; $677b: $80
	nop                                              ; $677c: $00
	ld   [bc], a                                     ; $677d: $02
	ld   h, a                                        ; $677e: $67
	rst  $38                                         ; $677f: $ff
	sbc  b                                           ; $6780: $98
	add  c                                           ; $6781: $81
	nop                                              ; $6782: $00
	rlca                                             ; $6783: $07
	rst  $20                                         ; $6784: $e7
	rst  $38                                         ; $6785: $ff
	inc  d                                           ; $6786: $14
	rst  $38                                         ; $6787: $ff
	call $c0fe                                       ; $6788: $cd $fe $c0
	nop                                              ; $678b: $00
	add  b                                           ; $678c: $80
	ld   bc, $c080                                   ; $678d: $01 $80 $c0
	add  b                                           ; $6790: $80
	nop                                              ; $6791: $00
	rlca                                             ; $6792: $07
	ld   sp, $fc3f                                   ; $6793: $31 $3f $fc
	rst  $38                                         ; $6796: $ff
	nop                                              ; $6797: $00
	db   $fd                                         ; $6798: $fd
	ldh  a, [c]                                      ; $6799: $f2
	ld   [bc], a                                     ; $679a: $02
	add  b                                           ; $679b: $80
	ld   bc, $e00b                                   ; $679c: $01 $0b $e0
	rst  $38                                         ; $679f: $ff
	rra                                              ; $67a0: $1f
	nop                                              ; $67a1: $00

jr_07f_67a2:
	jr   c, @+$3e                                    ; $67a2: $38 $3c

	inc  bc                                          ; $67a4: $03
	rst  $38                                         ; $67a5: $ff
	ld   a, [$a9fe]                                  ; $67a6: $fa $fe $a9
	ld   d, l                                        ; $67a9: $55
	add  b                                           ; $67aa: $80
	xor  d                                           ; $67ab: $aa
	dec  b                                           ; $67ac: $05
	ld   d, b                                        ; $67ad: $50
	ld   e, a                                        ; $67ae: $5f
	cpl                                              ; $67af: $2f
	rst  $38                                         ; $67b0: $ff
	and  b                                           ; $67b1: $a0
	add  b                                           ; $67b2: $80
	add  b                                           ; $67b3: $80
	inc  c                                           ; $67b4: $0c
	inc  bc                                          ; $67b5: $03
	db   $e4                                         ; $67b6: $e4
	rst  $38                                         ; $67b7: $ff
	nop                                              ; $67b8: $00
	db   $e4                                         ; $67b9: $e4
	add  d                                           ; $67ba: $82
	nop                                              ; $67bb: $00
	ld   b, $2e                                      ; $67bc: $06 $2e
	ld   a, a                                        ; $67be: $7f
	ldh  a, [c]                                      ; $67bf: $f2
	ld   e, h                                        ; $67c0: $5c
	rst  $38                                         ; $67c1: $ff
	nop                                              ; $67c2: $00
	rst  $38                                         ; $67c3: $ff
	add  c                                           ; $67c4: $81
	nop                                              ; $67c5: $00
	add  hl, bc                                      ; $67c6: $09
	inc  b                                           ; $67c7: $04
	rlca                                             ; $67c8: $07
	inc  b                                           ; $67c9: $04
	nop                                              ; $67ca: $00
	add  $3e                                         ; $67cb: $c6 $3e
	ld   bc, $46ff                                   ; $67cd: $01 $ff $46
	ld   b, a                                        ; $67d0: $47
	adc  d                                           ; $67d1: $8a
	rst  $38                                         ; $67d2: $ff
	inc  b                                           ; $67d3: $04
	db   $fc                                         ; $67d4: $fc
	rst  $38                                         ; $67d5: $ff
	di                                               ; $67d6: $f3
	db   $fc                                         ; $67d7: $fc
	di                                               ; $67d8: $f3
	add  e                                           ; $67d9: $83
	rst  $38                                         ; $67da: $ff
	dec  l                                           ; $67db: $2d
	cp   $ff                                         ; $67dc: $fe $ff
	pop  af                                          ; $67de: $f1
	cp   $8e                                         ; $67df: $fe $8e
	ldh  a, [rPCM34]                                 ; $67e1: $f0 $77
	add  a                                           ; $67e3: $87
	cp   a                                           ; $67e4: $bf
	ccf                                              ; $67e5: $3f
	cp   $ff                                         ; $67e6: $fe $ff
	ld   sp, hl                                      ; $67e8: $f9
	cp   $c6                                         ; $67e9: $fe $c6
	ld   hl, sp+$38                                  ; $67eb: $f8 $38
	ret  nz                                          ; $67ed: $c0

	add  [hl]                                        ; $67ee: $86
	ld   a, [hl]                                     ; $67ef: $7e
	ret  nz                                          ; $67f0: $c0

	rst  $38                                         ; $67f1: $ff
	pop  bc                                          ; $67f2: $c1
	rst  $38                                         ; $67f3: $ff
	ld   b, $ff                                      ; $67f4: $06 $ff
	pop  bc                                          ; $67f6: $c1
	rst  $38                                         ; $67f7: $ff
	ld   a, [hl]                                     ; $67f8: $7e
	rst  $38                                         ; $67f9: $ff
	rra                                              ; $67fa: $1f
	ld   a, a                                        ; $67fb: $7f
	ld   c, $2e                                      ; $67fc: $0e $2e
	ld   sp, $e4c1                                   ; $67fe: $31 $c1 $e4
	ld   a, [hl+]                                    ; $6801: $2a
	ld   d, [hl]                                     ; $6802: $56
	ld   d, a                                        ; $6803: $57
	rrca                                             ; $6804: $0f
	rst  $28                                         ; $6805: $ef
	inc  d                                           ; $6806: $14
	rst  $38                                         ; $6807: $ff
	inc  e                                           ; $6808: $1c
	add  sp, -$80                                    ; $6809: $e8 $80
	call nc, $a880                                   ; $680b: $d4 $80 $a8
	add  b                                           ; $680e: $80
	ld   d, h                                        ; $680f: $54
	add  b                                           ; $6810: $80
	nop                                              ; $6811: $00
	dec  b                                           ; $6812: $05
	ld   c, $ff                                      ; $6813: $0e $ff
	jp   hl                                          ; $6815: $e9


	rst  $38                                         ; $6816: $ff
	ld   l, e                                        ; $6817: $6b
	adc  h                                           ; $6818: $8c
	add  b                                           ; $6819: $80
	inc  b                                           ; $681a: $04
	add  e                                           ; $681b: $83
	nop                                              ; $681c: $00
	add  hl, bc                                      ; $681d: $09
	inc  bc                                          ; $681e: $03
	ld   b, e                                        ; $681f: $43
	ld   a, a                                        ; $6820: $7f
	inc  bc                                          ; $6821: $03
	rst  $38                                         ; $6822: $ff
	ret  nz                                          ; $6823: $c0

	rst  $38                                         ; $6824: $ff
	add  b                                           ; $6825: $80
	ld   h, e                                        ; $6826: $63
	rra                                              ; $6827: $1f
	add  c                                           ; $6828: $81
	nop                                              ; $6829: $00
	add  b                                           ; $682a: $80
	ld   bc, $000a                                   ; $682b: $01 $0a $00
	rst  $38                                         ; $682e: $ff
	db   $fc                                         ; $682f: $fc
	rst  $38                                         ; $6830: $ff
	ldh  a, [rIE]                                    ; $6831: $f0 $ff
	inc  bc                                          ; $6833: $03
	rst  $38                                         ; $6834: $ff
	scf                                              ; $6835: $37
	ld   hl, sp-$40                                  ; $6836: $f8 $c0
	add  c                                           ; $6838: $81
	nop                                              ; $6839: $00
	ld   b, $b0                                      ; $683a: $06 $b0
	rst  $38                                         ; $683c: $ff
	or   a                                           ; $683d: $b7
	rst  $38                                         ; $683e: $ff
	nop                                              ; $683f: $00
	rst  $38                                         ; $6840: $ff
	ld   hl, sp-$7e                                  ; $6841: $f8 $82
	rst  $38                                         ; $6843: $ff
	add  c                                           ; $6844: $81
	nop                                              ; $6845: $00
	inc  d                                           ; $6846: $14
	ld   h, c                                        ; $6847: $61
	ld   a, a                                        ; $6848: $7f
	ld   e, $ff                                      ; $6849: $1e $ff
	db   $fc                                         ; $684b: $fc
	rst  $38                                         ; $684c: $ff
	ld   [hl], b                                     ; $684d: $70
	rst  $38                                         ; $684e: $ff
	ld   c, e                                        ; $684f: $4b
	rst  $38                                         ; $6850: $ff
	add  e                                           ; $6851: $83
	rst  $38                                         ; $6852: $ff
	cp   e                                           ; $6853: $bb
	nop                                              ; $6854: $00
	jr   jr_07f_6876                                 ; $6855: $18 $1f

	rst  $30                                         ; $6857: $f7
	rst  $38                                         ; $6858: $ff
	add  b                                           ; $6859: $80

jr_07f_685a:
	rst  $38                                         ; $685a: $ff
	ld   [hl], b                                     ; $685b: $70
	add  c                                           ; $685c: $81
	rst  $38                                         ; $685d: $ff
	db   $10                                         ; $685e: $10
	db   $fc                                         ; $685f: $fc
	rst  $38                                         ; $6860: $ff
	ld   hl, sp-$01                                  ; $6861: $f8 $ff
	ld   hl, sp+$03                                  ; $6863: $f8 $03
	rrca                                             ; $6865: $0f
	rst  $38                                         ; $6866: $ff
	ld   hl, sp-$01                                  ; $6867: $f8 $ff
	ld   h, a                                        ; $6869: $67
	rst  $38                                         ; $686a: $ff
	inc  de                                          ; $686b: $13
	rst  $38                                         ; $686c: $ff
	nop                                              ; $686d: $00
	rst  $38                                         ; $686e: $ff
	ld   a, h                                        ; $686f: $7c
	add  e                                           ; $6870: $83
	rst  $38                                         ; $6871: $ff
	ld   l, $7e                                      ; $6872: $2e $7e
	rst  $38                                         ; $6874: $ff
	nop                                              ; $6875: $00

jr_07f_6876:
	rst  $38                                         ; $6876: $ff
	adc  h                                           ; $6877: $8c
	rst  $38                                         ; $6878: $ff
	ld   [$07ff], a                                  ; $6879: $ea $ff $07
	rst  $38                                         ; $687c: $ff
	ld   b, b                                        ; $687d: $40
	rst  $38                                         ; $687e: $ff
	jr   nz, @+$01                                   ; $687f: $20 $ff

	ldh  [rIE], a                                    ; $6881: $e0 $ff
	ld   h, b                                        ; $6883: $60
	rst  $38                                         ; $6884: $ff
	cp   $ff                                         ; $6885: $fe $ff
	inc  c                                           ; $6887: $0c
	rst  $38                                         ; $6888: $ff
	ld   [bc], a                                     ; $6889: $02
	rst  $38                                         ; $688a: $ff
	ld   hl, sp-$01                                  ; $688b: $f8 $ff
	rst  $20                                         ; $688d: $e7
	rst  $38                                         ; $688e: $ff
	rra                                              ; $688f: $1f
	rst  $38                                         ; $6890: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6891: $cf
	rst  $38                                         ; $6892: $ff
	pop  bc                                          ; $6893: $c1
	rst  $38                                         ; $6894: $ff
	nop                                              ; $6895: $00
	rst  $38                                         ; $6896: $ff
	cp   $ff                                         ; $6897: $fe $ff
	ld   a, a                                        ; $6899: $7f
	rst  $38                                         ; $689a: $ff
	nop                                              ; $689b: $00
	rst  $38                                         ; $689c: $ff
	add  e                                           ; $689d: $83
	rst  $38                                         ; $689e: $ff
	cp   $ff                                         ; $689f: $fe $ff
	ld   [bc], a                                     ; $68a1: $02
	add  l                                           ; $68a2: $85
	nop                                              ; $68a3: $00
	ld   bc, $02fd                                   ; $68a4: $01 $fd $02
	add  b                                           ; $68a7: $80
	and  h                                           ; $68a8: $a4
	add  b                                           ; $68a9: $80
	ld   d, d                                        ; $68aa: $52
	add  b                                           ; $68ab: $80
	xor  b                                           ; $68ac: $a8
	nop                                              ; $68ad: $00
	rst  $38                                         ; $68ae: $ff

jr_07f_68af:
	add  l                                           ; $68af: $85
	nop                                              ; $68b0: $00
	inc  bc                                          ; $68b1: $03
	ld   a, a                                        ; $68b2: $7f
	rst  $38                                         ; $68b3: $ff
	cp   a                                           ; $68b4: $bf
	rst  $38                                         ; $68b5: $ff
	add  b                                           ; $68b6: $80
	ld   a, a                                        ; $68b7: $7f

jr_07f_68b8:
	ld   [bc], a                                     ; $68b8: $02
	cp   d                                           ; $68b9: $ba
	cp   a                                           ; $68ba: $bf
	push bc                                          ; $68bb: $c5

jr_07f_68bc:
	add  l                                           ; $68bc: $85
	nop                                              ; $68bd: $00
	add  [hl]                                        ; $68be: $86
	rst  $38                                         ; $68bf: $ff
	add  [hl]                                        ; $68c0: $86
	nop                                              ; $68c1: $00
	add  [hl]                                        ; $68c2: $86
	ldh  a, [rSC]                                    ; $68c3: $f0 $02
	ld   a, a                                        ; $68c5: $7f
	add  [hl]                                        ; $68c6: $86
	ld   b, $80                                      ; $68c7: $06 $80
	ld   e, [hl]                                     ; $68c9: $5e
	dec  b                                           ; $68ca: $05
	cp   $54                                         ; $68cb: $fe $54
	ld   [hl], h                                     ; $68cd: $74
	xor  d                                           ; $68ce: $aa
	ld   [$8060], a                                  ; $68cf: $ea $60 $80
	ld   [hl], b                                     ; $68d2: $70
	add  b                                           ; $68d3: $80
	ldh  a, [rSC]                                    ; $68d4: $f0 $02
	ld   hl, sp+$2e                                  ; $68d6: $f8 $2e
	jr   z, jr_07f_685a                              ; $68d8: $28 $80

	ld   a, $80                                      ; $68da: $3e $80
	ld   a, a                                        ; $68dc: $7f
	add  b                                           ; $68dd: $80
	ld   [hl], a                                     ; $68de: $77
	add  b                                           ; $68df: $80
	ld   a, [hl+]                                    ; $68e0: $2a
	add  b                                           ; $68e1: $80
	db   $10                                         ; $68e2: $10
	add  b                                           ; $68e3: $80
	nop                                              ; $68e4: $00
	inc  bc                                          ; $68e5: $03
	ld   b, d                                        ; $68e6: $42
	ld   [bc], a                                     ; $68e7: $02
	ld   l, h                                        ; $68e8: $6c
	dec  l                                           ; $68e9: $2d
	add  b                                           ; $68ea: $80
	ld   a, c                                        ; $68eb: $79
	ld   bc, $aba9                                   ; $68ec: $01 $a9 $ab
	add  b                                           ; $68ef: $80
	ld   b, e                                        ; $68f0: $43
	ld   bc, $2723                                   ; $68f1: $01 $23 $27
	add  b                                           ; $68f4: $80
	ld   b, a                                        ; $68f5: $47
	inc  b                                           ; $68f6: $04
	rlca                                             ; $68f7: $07
	rrca                                             ; $68f8: $0f
	adc  a                                           ; $68f9: $8f
	sbc  a                                           ; $68fa: $9f

jr_07f_68fb:
	db   $10                                         ; $68fb: $10
	add  b                                           ; $68fc: $80
	ret  nc                                          ; $68fd: $d0

	add  h                                           ; $68fe: $84
	add  b                                           ; $68ff: $80
	add  l                                           ; $6900: $85
	nop                                              ; $6901: $00
	ld   bc, $fff0                                   ; $6902: $01 $f0 $ff
	add  c                                           ; $6905: $81
	cp   $87                                         ; $6906: $fe $87
	nop                                              ; $6908: $00
	add  b                                           ; $6909: $80
	ld   [bc], a                                     ; $690a: $02
	ld   bc, $70f3                                   ; $690b: $01 $f3 $70
	add  h                                           ; $690e: $84
	nop                                              ; $690f: $00
	add  b                                           ; $6910: $80
	ld   bc, $0c03                                   ; $6911: $01 $03 $0c
	dec  c                                           ; $6914: $0d
	ld   [hl], e                                     ; $6915: $73
	ld   [hl], b                                     ; $6916: $70
	add  b                                           ; $6917: $80
	nop                                              ; $6918: $00
	ld   bc, $06a0                                   ; $6919: $01 $a0 $06
	add  b                                           ; $691c: $80
	rlca                                             ; $691d: $07
	add  b                                           ; $691e: $80
	ld   b, $06                                      ; $691f: $06 $06
	ld   e, $18                                      ; $6921: $1e $18
	ldh  [$c7], a                                    ; $6923: $e0 $c7
	ld   b, $f9                                      ; $6925: $06 $f9
	ld   hl, sp-$80                                  ; $6927: $f8 $80
	nop                                              ; $6929: $00
	ld   [bc], a                                     ; $692a: $02
	rst  $38                                         ; $692b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $692c: $cf
	jr   nc, jr_07f_68af                             ; $692d: $30 $80

	ret  nz                                          ; $692f: $c0

	add  b                                           ; $6930: $80
	nop                                              ; $6931: $00
	ld   [bc], a                                     ; $6932: $02
	ld   d, b                                        ; $6933: $50
	ld   [hl], b                                     ; $6934: $70
	jr   nz, jr_07f_68b8                             ; $6935: $20 $81

	ldh  a, [rSB]                                    ; $6937: $f0 $01
	ret  nz                                          ; $6939: $c0

	jr   nc, jr_07f_68bc                             ; $693a: $30 $80

	add  b                                           ; $693c: $80
	ld   b, $00                                      ; $693d: $06 $00
	add  hl, de                                      ; $693f: $19
	ld   a, [de]                                     ; $6940: $1a
	jr   nc, @-$2f                                   ; $6941: $30 $cf

	nop                                              ; $6943: $00
	db   $fc                                         ; $6944: $fc
	add  b                                           ; $6945: $80
	sbc  b                                           ; $6946: $98
	add  hl, de                                      ; $6947: $19
	ccf                                              ; $6948: $3f
	cp   a                                           ; $6949: $bf
	jp   $ff43                                       ; $694a: $c3 $43 $ff


	ret  c                                           ; $694d: $d8

	rst  $28                                         ; $694e: $ef
	ret  z                                           ; $694f: $c8

	adc  b                                           ; $6950: $88
	ld   c, b                                        ; $6951: $48
	add  hl, sp                                      ; $6952: $39
	ld   sp, hl                                      ; $6953: $f9
	ld   [hl+], a                                    ; $6954: $22
	ld   hl, $c4c7                                   ; $6955: $21 $c7 $c4
	rst  $38                                         ; $6958: $ff
	db   $10                                         ; $6959: $10
	rst  $38                                         ; $695a: $ff
	inc  de                                          ; $695b: $13
	rst  $38                                         ; $695c: $ff

jr_07f_695d:
	ld   h, d                                        ; $695d: $62
	rst  $38                                         ; $695e: $ff
	ld   h, c                                        ; $695f: $61

jr_07f_6960:
	adc  c                                           ; $6960: $89
	add  l                                           ; $6961: $85
	add  b                                           ; $6962: $80
	dec  e                                           ; $6963: $1d
	add  hl, bc                                      ; $6964: $09
	rra                                              ; $6965: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6966: $cf
	cp   $3b                                         ; $6967: $fe $3b
	rst  $38                                         ; $6969: $ff
	sub  $ff                                         ; $696a: $d6 $ff
	cp   h                                           ; $696c: $bc
	rst  $38                                         ; $696d: $ff
	adc  h                                           ; $696e: $8c

jr_07f_696f:
	add  b                                           ; $696f: $80
	rst  $38                                         ; $6970: $ff
	add  b                                           ; $6971: $80
	sub  b                                           ; $6972: $90
	nop                                              ; $6973: $00
	db   $10                                         ; $6974: $10
	add  b                                           ; $6975: $80
	jr   nc, jr_07f_6979                             ; $6976: $30 $01

	nop                                              ; $6978: $00

jr_07f_6979:
	jr   nc, jr_07f_68fb                             ; $6979: $30 $80

	ldh  a, [rTAC]                                   ; $697b: $f0 $07
	jr   nz, jr_07f_696f                             ; $697d: $20 $f0

	ld   b, b                                        ; $697f: $40
	ldh  a, [rLCDC]                                  ; $6980: $f0 $40
	ldh  a, [$5e]                                    ; $6982: $f0 $5e
	ld   d, c                                        ; $6984: $51
	add  b                                           ; $6985: $80
	add  b                                           ; $6986: $80
	add  b                                           ; $6987: $80
	ld   b, b                                        ; $6988: $40
	add  d                                           ; $6989: $82
	nop                                              ; $698a: $00
	add  b                                           ; $698b: $80
	ld   bc, $0080                                   ; $698c: $01 $80 $00
	add  b                                           ; $698f: $80
	ld   [bc], a                                     ; $6990: $02
	ld   bc, $7f5f                                   ; $6991: $01 $5f $7f
	add  b                                           ; $6994: $80
	ld   a, [hl]                                     ; $6995: $7e
	ld   bc, $7d5d                                   ; $6996: $01 $5d $7d
	add  b                                           ; $6999: $80
	ld   e, a                                        ; $699a: $5f
	add  b                                           ; $699b: $80
	cp   [hl]                                        ; $699c: $be
	add  b                                           ; $699d: $80
	ld   e, e                                        ; $699e: $5b
	add  b                                           ; $699f: $80
	xor  b                                           ; $69a0: $a8
	add  b                                           ; $69a1: $80
	ld   d, b                                        ; $69a2: $50
	nop                                              ; $69a3: $00
	add  b                                           ; $69a4: $80
	add  c                                           ; $69a5: $81
	rst  $38                                         ; $69a6: $ff
	inc  c                                           ; $69a7: $0c
	rst  JumpTable                                         ; $69a8: $df
	cp   a                                           ; $69a9: $bf
	ld   l, a                                        ; $69aa: $6f
	ld   a, a                                        ; $69ab: $7f
	and  a                                           ; $69ac: $a7
	xor  a                                           ; $69ad: $af
	ld   b, a                                        ; $69ae: $47
	ld   c, a                                        ; $69af: $4f
	add  a                                           ; $69b0: $87
	adc  a                                           ; $69b1: $8f
	ld   bc, $0e07                                   ; $69b2: $01 $07 $0e
	adc  l                                           ; $69b5: $8d
	ldh  a, [rP1]                                    ; $69b6: $f0 $00
	ld   bc, $f882                                   ; $69b8: $01 $82 $f8
	add  d                                           ; $69bb: $82
	db   $fc                                         ; $69bc: $fc
	add  b                                           ; $69bd: $80
	ldh  a, [$82]                                    ; $69be: $f0 $82
	jr   nz, @+$04                                   ; $69c0: $20 $02

	nop                                              ; $69c2: $00
	xor  $4a                                         ; $69c3: $ee $4a
	add  c                                           ; $69c5: $81
	ld   e, d                                        ; $69c6: $5a
	add  b                                           ; $69c7: $80
	ld   l, h                                        ; $69c8: $6c
	add  b                                           ; $69c9: $80
	ld   l, l                                        ; $69ca: $6d
	inc  b                                           ; $69cb: $04
	ld   [hl], l                                     ; $69cc: $75
	ld   b, h                                        ; $69cd: $44
	ld   c, b                                        ; $69ce: $48
	inc  c                                           ; $69cf: $0c
	ld   [$4080], sp                                 ; $69d0: $08 $80 $40
	inc  bc                                          ; $69d3: $03
	jr   z, jr_07f_6960                              ; $69d4: $28 $8a

	ld   d, a                                        ; $69d6: $57
	ld   d, c                                        ; $69d7: $51

jr_07f_69d8:
	add  [hl]                                        ; $69d8: $86
	nop                                              ; $69d9: $00
	add  b                                           ; $69da: $80
	jr   nz, jr_07f_695d                             ; $69db: $20 $80

	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00
	sub  $87                                         ; $69df: $d6 $87
	nop                                              ; $69e1: $00
	add  hl, bc                                      ; $69e2: $09
	ld   d, b                                        ; $69e3: $50
	nop                                              ; $69e4: $00
	ldh  a, [rP1]                                    ; $69e5: $f0 $00
	ld   d, b                                        ; $69e7: $50
	nop                                              ; $69e8: $00
	dec  e                                           ; $69e9: $1d
	inc  e                                           ; $69ea: $1c
	pop  hl                                          ; $69eb: $e1
	ldh  [$80], a                                    ; $69ec: $e0 $80
	nop                                              ; $69ee: $00
	add  b                                           ; $69ef: $80
	add  $80                                         ; $69f0: $c6 $80
	jr   c, @+$07                                    ; $69f2: $38 $05

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69f4: $cf
	ret  nz                                          ; $69f5: $c0

	rst  $38                                         ; $69f6: $ff
	nop                                              ; $69f7: $00
	ld   [hl], $c6                                   ; $69f8: $36 $c6
	rst  $38                                         ; $69fa: $ff
	nop                                              ; $69fb: $00
	rst  $38                                         ; $69fc: $ff
	nop                                              ; $69fd: $00
	rst  $38                                         ; $69fe: $ff
	nop                                              ; $69ff: $00
	rst  $38                                         ; $6a00: $ff
	nop                                              ; $6a01: $00
	rst  $38                                         ; $6a02: $ff
	nop                                              ; $6a03: $00
	rst  $38                                         ; $6a04: $ff
	nop                                              ; $6a05: $00
	rst  $38                                         ; $6a06: $ff
	nop                                              ; $6a07: $00
	rst  $38                                         ; $6a08: $ff
	nop                                              ; $6a09: $00
	and  $00                                         ; $6a0a: $e6 $00
	inc  e                                           ; $6a0c: $1c
	ld   bc, $e300                                   ; $6a0d: $01 $00 $e3
	add  e                                           ; $6a10: $83
	inc  b                                           ; $6a11: $04
	add  b                                           ; $6a12: $80
	rst  ToBoot                                         ; $6a13: $c7
	ld   [bc], a                                     ; $6a14: $02
	call nz, $07c7                                   ; $6a15: $c4 $c7 $07
	add  e                                           ; $6a18: $83
	rst  ToBoot                                         ; $6a19: $c7
	ld   bc, $9048                                   ; $6a1a: $01 $48 $90
	add  b                                           ; $6a1d: $80
	nop                                              ; $6a1e: $00
	ld   bc, $0001                                   ; $6a1f: $01 $01 $00
	add  b                                           ; $6a22: $80
	ret  nc                                          ; $6a23: $d0

	inc  b                                           ; $6a24: $04
	ld   d, b                                        ; $6a25: $50
	ret  nc                                          ; $6a26: $d0

	sub  b                                           ; $6a27: $90
	ret  nc                                          ; $6a28: $d0

	ret  nz                                          ; $6a29: $c0

	add  c                                           ; $6a2a: $81
	ret  nc                                          ; $6a2b: $d0

	nop                                              ; $6a2c: $00
	dec  a                                           ; $6a2d: $3d
	add  l                                           ; $6a2e: $85
	ld   h, b                                        ; $6a2f: $60
	add  b                                           ; $6a30: $80

jr_07f_6a31:
	ld   b, b                                        ; $6a31: $40
	add  d                                           ; $6a32: $82
	ld   [hl], b                                     ; $6a33: $70
	dec  c                                           ; $6a34: $0d
	ld   b, b                                        ; $6a35: $40
	ld   [hl], b                                     ; $6a36: $70
	ld   h, b                                        ; $6a37: $60
	ldh  [$ce], a                                    ; $6a38: $e0 $ce
	ld   c, $e0                                      ; $6a3a: $0e $e0
	jr   nz, @+$3e                                   ; $6a3c: $20 $3c

	call nz, $ffc0                                   ; $6a3e: $c4 $c0 $ff
	cp   b                                           ; $6a41: $b8
	cp   a                                           ; $6a42: $bf
	add  b                                           ; $6a43: $80
	ld   e, [hl]                                     ; $6a44: $5e
	add  b                                           ; $6a45: $80
	dec  d                                           ; $6a46: $15
	adc  h                                           ; $6a47: $8c
	nop                                              ; $6a48: $00
	add  b                                           ; $6a49: $80
	jr   jr_07f_69d8                                 ; $6a4a: $18 $8c

	nop                                              ; $6a4c: $00
	add  b                                           ; $6a4d: $80
	jr   nc, jr_07f_6a53                             ; $6a4e: $30 $03

	ld   h, [hl]                                     ; $6a50: $66
	ld   h, a                                        ; $6a51: $67

jr_07f_6a52:
	dec  c                                           ; $6a52: $0d

jr_07f_6a53:
	inc  c                                           ; $6a53: $0c
	add  b                                           ; $6a54: $80
	inc  hl                                          ; $6a55: $23
	add  b                                           ; $6a56: $80
	ld   [$7f03], sp                                 ; $6a57: $08 $03 $7f
	add  b                                           ; $6a5a: $80
	ld   e, h                                        ; $6a5b: $5c
	and  b                                           ; $6a5c: $a0
	add  b                                           ; $6a5d: $80
	jp   Jump_07f_4380                               ; $6a5e: $c3 $80 $43


	dec  b                                           ; $6a61: $05
	inc  de                                          ; $6a62: $13
	db   $10                                         ; $6a63: $10
	add  b                                           ; $6a64: $80
	ret  nz                                          ; $6a65: $c0

	ld   e, h                                        ; $6a66: $5c
	inc  e                                           ; $6a67: $1c
	add  b                                           ; $6a68: $80
	ld   b, b                                        ; $6a69: $40
	inc  bc                                          ; $6a6a: $03
	rst  $38                                         ; $6a6b: $ff
	nop                                              ; $6a6c: $00
	cp   $01                                         ; $6a6d: $fe $01
	add  b                                           ; $6a6f: $80
	inc  bc                                          ; $6a70: $03
	add  b                                           ; $6a71: $80
	rrca                                             ; $6a72: $0f
	ld   [bc], a                                     ; $6a73: $02
	inc  bc                                          ; $6a74: $03
	inc  c                                           ; $6a75: $0c
	ld   c, $80                                      ; $6a76: $0e $80
	ld   [bc], a                                     ; $6a78: $02
	ld   b, $0c                                      ; $6a79: $06 $0c
	add  [hl]                                        ; $6a7b: $86
	ldh  a, [$f2]                                    ; $6a7c: $f0 $f2
	nop                                              ; $6a7e: $00
	ret  nc                                          ; $6a7f: $d0

	ld   d, b                                        ; $6a80: $50
	add  d                                           ; $6a81: $82
	ldh  a, [rSC]                                    ; $6a82: $f0 $02
	ld   [$07c7], a                                  ; $6a84: $ea $c7 $07
	add  b                                           ; $6a87: $80
	rst  ToBoot                                         ; $6a88: $c7
	inc  bc                                          ; $6a89: $03
	rlca                                             ; $6a8a: $07
	scf                                              ; $6a8b: $37
	rlca                                             ; $6a8c: $07
	db   $eb                                         ; $6a8d: $eb
	add  b                                           ; $6a8e: $80
	inc  bc                                          ; $6a8f: $03
	add  e                                           ; $6a90: $83
	db   $db                                         ; $6a91: $db
	ld   [bc], a                                     ; $6a92: $02
	reti                                             ; $6a93: $d9


	ret  nc                                          ; $6a94: $d0

jr_07f_6a95:
	ret  z                                           ; $6a95: $c8

	add  b                                           ; $6a96: $80
	jp   c, $c005                                    ; $6a97: $da $05 $c0

	ret  nc                                          ; $6a9a: $d0

	ret  nz                                          ; $6a9b: $c0

	jp   c, $c8c0                                    ; $6a9c: $da $c0 $c8

	add  e                                           ; $6a9f: $83
	jp   nz, $1500                                   ; $6aa0: $c2 $00 $15

	add  d                                           ; $6aa3: $82
	ld   [hl], b                                     ; $6aa4: $70
	ld   bc, $b0f0                                   ; $6aa5: $01 $f0 $b0
	add  b                                           ; $6aa8: $80
	jr   nc, jr_07f_6aac                             ; $6aa9: $30 $01

	or   b                                           ; $6aab: $b0

jr_07f_6aac:
	jr   nc, jr_07f_6a31                             ; $6aac: $30 $83

	or   b                                           ; $6aae: $b0
	nop                                              ; $6aaf: $00
	ld   b, b                                        ; $6ab0: $40
	add  a                                           ; $6ab1: $87
	nop                                              ; $6ab2: $00
	add  b                                           ; $6ab3: $80
	rlca                                             ; $6ab4: $07
	dec  b                                           ; $6ab5: $05
	ld   a, h                                        ; $6ab6: $7c
	ld   a, a                                        ; $6ab7: $7f
	add  e                                           ; $6ab8: $83
	rst  $38                                         ; $6ab9: $ff

jr_07f_6aba:
	ld   a, c                                        ; $6aba: $79
	ld   [bc], a                                     ; $6abb: $02
	add  b                                           ; $6abc: $80
	nop                                              ; $6abd: $00
	ld   [bc], a                                     ; $6abe: $02
	ld   [bc], a                                     ; $6abf: $02
	ld   bc, $8109                                   ; $6ac0: $01 $09 $81
	ld   a, [bc]                                     ; $6ac3: $0a
	rlca                                             ; $6ac4: $07
	ld   a, [$34f6]                                  ; $6ac5: $fa $f6 $34
	call z, $bc8c                                    ; $6ac8: $cc $8c $bc
	pop  bc                                          ; $6acb: $c1
	add  c                                           ; $6acc: $81
	add  d                                           ; $6acd: $82
	add  b                                           ; $6ace: $80
	add  b                                           ; $6acf: $80
	jr   z, jr_07f_6a52                              ; $6ad0: $28 $80

	ld   [hl], h                                     ; $6ad2: $74
	rlca                                             ; $6ad3: $07
	cp   $3e                                         ; $6ad4: $fe $3e
	ld   [hl], c                                     ; $6ad6: $71
	rrca                                             ; $6ad7: $0f
	ld   [hl], $07                                   ; $6ad8: $36 $07
	halt                                             ; $6ada: $76
	ld   [hl], b                                     ; $6adb: $70
	add  b                                           ; $6adc: $80
	ld   d, b                                        ; $6add: $50
	add  c                                           ; $6ade: $81
	nop                                              ; $6adf: $00
	inc  b                                           ; $6ae0: $04
	ld   c, $00                                      ; $6ae1: $0e $00
	ld   b, $01                                      ; $6ae3: $06 $01
	nop                                              ; $6ae5: $00
	add  b                                           ; $6ae6: $80
	ldh  [$03], a                                    ; $6ae7: $e0 $03
	ld   [hl-], a                                    ; $6ae9: $32

Jump_07f_6aea:
	ldh  a, [c]                                      ; $6aea: $f2
	ccf                                              ; $6aeb: $3f
	db   $db                                         ; $6aec: $db
	add  b                                           ; $6aed: $80
	add  b                                           ; $6aee: $80
	rlca                                             ; $6aef: $07
	jr   jr_07f_6aba                                 ; $6af0: $18 $c8

	ldh  a, [c]                                      ; $6af2: $f2
	ld   a, [$7802]                                  ; $6af3: $fa $02 $78
	add  [hl]                                        ; $6af6: $86
	nop                                              ; $6af7: $00
	add  b                                           ; $6af8: $80
	ld   d, b                                        ; $6af9: $50
	add  b                                           ; $6afa: $80
	and  b                                           ; $6afb: $a0
	ld   bc, $c2e7                                   ; $6afc: $01 $e7 $c2
	add  b                                           ; $6aff: $80
	ld   b, d                                        ; $6b00: $42
	rlca                                             ; $6b01: $07
	nop                                              ; $6b02: $00
	ld   [bc], a                                     ; $6b03: $02
	ld   e, $26                                      ; $6b04: $1e $26
	nop                                              ; $6b06: $00
	ld   e, $01                                      ; $6b07: $1e $01
	nop                                              ; $6b09: $00
	add  b                                           ; $6b0a: $80
	ld   b, b                                        ; $6b0b: $40
	add  b                                           ; $6b0c: $80
	jr   z, jr_07f_6b0f                              ; $6b0d: $28 $00

jr_07f_6b0f:
	ldh  a, [$81]                                    ; $6b0f: $f0 $81
	or   b                                           ; $6b11: $b0
	nop                                              ; $6b12: $00
	jr   nc, jr_07f_6a95                             ; $6b13: $30 $80

	sub  b                                           ; $6b15: $90
	nop                                              ; $6b16: $00
	ldh  a, [$80]                                    ; $6b17: $f0 $80
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	add  b                                           ; $6b1b: $80
	add  e                                           ; $6b1c: $83
	nop                                              ; $6b1d: $00
	ld   b, $0f                                      ; $6b1e: $06 $0f
	ldh  a, [$0c]                                    ; $6b20: $f0 $0c
	rrca                                             ; $6b22: $0f
	add  e                                           ; $6b23: $83
	rst  $38                                         ; $6b24: $ff
	ld   a, a                                        ; $6b25: $7f
	add  l                                           ; $6b26: $85
	rst  $38                                         ; $6b27: $ff
	inc  b                                           ; $6b28: $04
	rst  $30                                         ; $6b29: $f7
	rst  $38                                         ; $6b2a: $ff
	sub  a                                           ; $6b2b: $97
	ld   a, a                                        ; $6b2c: $7f
	rra                                              ; $6b2d: $1f
	add  c                                           ; $6b2e: $81
	rst  $38                                         ; $6b2f: $ff
	ld   [bc], a                                     ; $6b30: $02
	cp   $ff                                         ; $6b31: $fe $ff
	cp   $81                                         ; $6b33: $fe $81
	rst  $38                                         ; $6b35: $ff
	add  b                                           ; $6b36: $80
	push af                                          ; $6b37: $f5
	add  b                                           ; $6b38: $80
	ret  nc                                          ; $6b39: $d0

	add  h                                           ; $6b3a: $84
	rst  $38                                         ; $6b3b: $ff
	dec  b                                           ; $6b3c: $05
	cp   a                                           ; $6b3d: $bf
	rst  $38                                         ; $6b3e: $ff
	rst  JumpTable                                         ; $6b3f: $df
	rst  $38                                         ; $6b40: $ff
	sbc  l                                           ; $6b41: $9d
	db   $fd                                         ; $6b42: $fd
	add  b                                           ; $6b43: $80
	and  b                                           ; $6b44: $a0
	add  b                                           ; $6b45: $80
	nop                                              ; $6b46: $00
	add  d                                           ; $6b47: $82
	rst  $38                                         ; $6b48: $ff
	inc  bc                                          ; $6b49: $03

jr_07f_6b4a:
	cp   $ff                                         ; $6b4a: $fe $ff
	cp   $ff                                         ; $6b4c: $fe $ff
	add  b                                           ; $6b4e: $80
	xor  a                                           ; $6b4f: $af
	add  b                                           ; $6b50: $80
	ld   b, b                                        ; $6b51: $40
	add  d                                           ; $6b52: $82
	nop                                              ; $6b53: $00
	add  d                                           ; $6b54: $82
	rst  $38                                         ; $6b55: $ff
	ld   [bc], a                                     ; $6b56: $02
	ld   a, a                                        ; $6b57: $7f
	rst  $38                                         ; $6b58: $ff
	ld   a, a                                        ; $6b59: $7f
	add  c                                           ; $6b5a: $81
	rst  $38                                         ; $6b5b: $ff
	dec  b                                           ; $6b5c: $05
	ld   e, l                                        ; $6b5d: $5d
	ld   e, a                                        ; $6b5e: $5f
	ld   a, $3f                                      ; $6b5f: $3e $3f
	ld   d, h                                        ; $6b61: $54
	ld   d, a                                        ; $6b62: $57
	adc  b                                           ; $6b63: $88
	rst  $38                                         ; $6b64: $ff
	inc  b                                           ; $6b65: $04
	ei                                               ; $6b66: $fb
	rst  $38                                         ; $6b67: $ff
	ld   sp, hl                                      ; $6b68: $f9
	rst  $38                                         ; $6b69: $ff
	db   $fd                                         ; $6b6a: $fd
	add  a                                           ; $6b6b: $87
	rst  $38                                         ; $6b6c: $ff
	ld   [bc], a                                     ; $6b6d: $02

jr_07f_6b6e:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b6e: $cf
	rst  $38                                         ; $6b6f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b70: $cf
	add  c                                           ; $6b71: $81
	rst  $38                                         ; $6b72: $ff
	add  b                                           ; $6b73: $80
	jp   nz, $ff82                                   ; $6b74: $c2 $82 $ff

	inc  bc                                          ; $6b77: $03
	ei                                               ; $6b78: $fb
	rst  $38                                         ; $6b79: $ff
	ei                                               ; $6b7a: $fb
	rst  $38                                         ; $6b7b: $ff
	add  b                                           ; $6b7c: $80
	db   $fd                                         ; $6b7d: $fd
	add  b                                           ; $6b7e: $80
	ret  nz                                          ; $6b7f: $c0

	add  b                                           ; $6b80: $80
	ret  nc                                          ; $6b81: $d0

	add  b                                           ; $6b82: $80
	xor  b                                           ; $6b83: $a8
	add  b                                           ; $6b84: $80
	rst  $38                                         ; $6b85: $ff
	ld   [bc], a                                     ; $6b86: $02
	cp   $ff                                         ; $6b87: $fe $ff
	cp   $81                                         ; $6b89: $fe $81
	rst  $38                                         ; $6b8b: $ff
	add  b                                           ; $6b8c: $80
	ld   a, a                                        ; $6b8d: $7f
	add  b                                           ; $6b8e: $80
	ld   a, [bc]                                     ; $6b8f: $0a
	add  d                                           ; $6b90: $82
	nop                                              ; $6b91: $00
	add  d                                           ; $6b92: $82
	rst  $38                                         ; $6b93: $ff
	add  b                                           ; $6b94: $80
	ld   d, l                                        ; $6b95: $55
	add  b                                           ; $6b96: $80
	nop                                              ; $6b97: $00
	add  b                                           ; $6b98: $80
	ret  nz                                          ; $6b99: $c0

	add  b                                           ; $6b9a: $80
	nop                                              ; $6b9b: $00
	rlca                                             ; $6b9c: $07
	jp   c, $cffa                                    ; $6b9d: $da $fa $cf

	rst  $38                                         ; $6ba0: $ff
	cp   b                                           ; $6ba1: $b8
	xor  [hl]                                        ; $6ba2: $ae
	db   $d3                                         ; $6ba3: $d3
	push de                                          ; $6ba4: $d5
	add  h                                           ; $6ba5: $84
	nop                                              ; $6ba6: $00
	add  b                                           ; $6ba7: $80
	ld   [bc], a                                     ; $6ba8: $02
	add  b                                           ; $6ba9: $80
	xor  l                                           ; $6baa: $ad
	add  b                                           ; $6bab: $80
	cp   $80                                         ; $6bac: $fe $80
	add  b                                           ; $6bae: $80
	add  b                                           ; $6baf: $80
	ld   b, b                                        ; $6bb0: $40
	add  c                                           ; $6bb1: $81
	ld   [$1802], sp                                 ; $6bb2: $08 $02 $18
	stop                                             ; $6bb5: $10 $00
	add  b                                           ; $6bb7: $80
	adc  b                                           ; $6bb8: $88
	add  b                                           ; $6bb9: $80
	ld   d, h                                        ; $6bba: $54
	add  b                                           ; $6bbb: $80
	xor  d                                           ; $6bbc: $aa
	add  b                                           ; $6bbd: $80
	nop                                              ; $6bbe: $00
	add  b                                           ; $6bbf: $80
	ld   [$1802], sp                                 ; $6bc0: $08 $02 $18
	jr   c, jr_07f_6be5                              ; $6bc3: $38 $20

	add  e                                           ; $6bc5: $83
	nop                                              ; $6bc6: $00
	add  b                                           ; $6bc7: $80
	jr   jr_07f_6b4a                                 ; $6bc8: $18 $80

	adc  h                                           ; $6bca: $8c
	adc  b                                           ; $6bcb: $88
	nop                                              ; $6bcc: $00
	add  b                                           ; $6bcd: $80
	inc  e                                           ; $6bce: $1c
	ld   b, $04                                      ; $6bcf: $06 $04
	inc  c                                           ; $6bd1: $0c
	ld   [$4000], sp                                 ; $6bd2: $08 $00 $40
	ret  nz                                          ; $6bd5: $c0

	add  b                                           ; $6bd6: $80
	add  c                                           ; $6bd7: $81
	nop                                              ; $6bd8: $00
	add  b                                           ; $6bd9: $80
	inc  b                                           ; $6bda: $04
	add  b                                           ; $6bdb: $80
	inc  c                                           ; $6bdc: $0c
	ld   [bc], a                                     ; $6bdd: $02
	inc  b                                           ; $6bde: $04
	inc  c                                           ; $6bdf: $0c
	ld   [$0081], sp                                 ; $6be0: $08 $81 $00
	add  b                                           ; $6be3: $80
	ld   [bc], a                                     ; $6be4: $02

jr_07f_6be5:
	add  b                                           ; $6be5: $80
	dec  d                                           ; $6be6: $15
	add  d                                           ; $6be7: $82
	nop                                              ; $6be8: $00
	add  b                                           ; $6be9: $80
	jr   jr_07f_6b6e                                 ; $6bea: $18 $82

	nop                                              ; $6bec: $00
	add  b                                           ; $6bed: $80
	ret  nz                                          ; $6bee: $c0

	add  b                                           ; $6bef: $80
	rst  $38                                         ; $6bf0: $ff
	add  b                                           ; $6bf1: $80
	ld   d, l                                        ; $6bf2: $55
	add  [hl]                                        ; $6bf3: $86
	nop                                              ; $6bf4: $00
	add  b                                           ; $6bf5: $80
	ldh  [$03], a                                    ; $6bf6: $e0 $03
	jr   nz, jr_07f_6c5a                             ; $6bf8: $20 $60

	xor  b                                           ; $6bfa: $a8
	add  sp, -$80                                    ; $6bfb: $e8 $80
	ld   b, b                                        ; $6bfd: $40
	add  b                                           ; $6bfe: $80
	nop                                              ; $6bff: $00
	add  b                                           ; $6c00: $80
	inc  bc                                          ; $6c01: $03
	add  b                                           ; $6c02: $80
	jr   nc, jr_07f_6c08                             ; $6c03: $30 $03

	cp   b                                           ; $6c05: $b8
	ld   hl, sp-$80                                  ; $6c06: $f8 $80

jr_07f_6c08:
	ret  nz                                          ; $6c08: $c0

	add  b                                           ; $6c09: $80
	nop                                              ; $6c0a: $00
	add  b                                           ; $6c0b: $80
	ld   bc, $0082                                   ; $6c0c: $01 $82 $00
	add  b                                           ; $6c0f: $80
	inc  e                                           ; $6c10: $1c
	nop                                              ; $6c11: $00
	nop                                              ; $6c12: $00
	add  b                                           ; $6c13: $80
	inc  c                                           ; $6c14: $0c
	add  e                                           ; $6c15: $83
	nop                                              ; $6c16: $00
	add  b                                           ; $6c17: $80
	ld   b, b                                        ; $6c18: $40
	add  [hl]                                        ; $6c19: $86
	nop                                              ; $6c1a: $00
	add  b                                           ; $6c1b: $80
	rlca                                             ; $6c1c: $07
	nop                                              ; $6c1d: $00
	nop                                              ; $6c1e: $00
	add  b                                           ; $6c1f: $80
	ld   bc, $0083                                   ; $6c20: $01 $83 $00
	ld   [bc], a                                     ; $6c23: $02
	inc  c                                           ; $6c24: $0c
	inc  e                                           ; $6c25: $1c
	db   $10                                         ; $6c26: $10
	add  b                                           ; $6c27: $80
	ld   [$0085], sp                                 ; $6c28: $08 $85 $00
	nop                                              ; $6c2b: $00
	rst  $38                                         ; $6c2c: $ff
	add  c                                           ; $6c2d: $81
	nop                                              ; $6c2e: $00
	add  b                                           ; $6c2f: $80
	rra                                              ; $6c30: $1f
	add  d                                           ; $6c31: $82
	cp   a                                           ; $6c32: $bf
	rlca                                             ; $6c33: $07
	or   e                                           ; $6c34: $b3
	cp   e                                           ; $6c35: $bb
	or   e                                           ; $6c36: $b3
	cp   e                                           ; $6c37: $bb
	or   e                                           ; $6c38: $b3
	cp   d                                           ; $6c39: $ba
	add  hl, bc                                      ; $6c3a: $09
	nop                                              ; $6c3b: $00
	add  b                                           ; $6c3c: $80
	ld   bc, $ef81                                   ; $6c3d: $01 $81 $ef
	ld   bc, $aeaf                                   ; $6c40: $01 $af $ae
	add  b                                           ; $6c43: $80
	rst  $28                                         ; $6c44: $ef
	db   $10                                         ; $6c45: $10
	xor  a                                           ; $6c46: $af
	xor  [hl]                                        ; $6c47: $ae
	ld   l, a                                        ; $6c48: $6f
	ld   l, [hl]                                     ; $6c49: $6e
	rst  $28                                         ; $6c4a: $ef
	or   d                                           ; $6c4b: $b2
	cp   e                                           ; $6c4c: $bb
	or   e                                           ; $6c4d: $b3
	cp   d                                           ; $6c4e: $ba
	or   d                                           ; $6c4f: $b2
	cp   b                                           ; $6c50: $b8
	cp   d                                           ; $6c51: $ba
	cp   b                                           ; $6c52: $b8
	adc  d                                           ; $6c53: $8a
	add  b                                           ; $6c54: $80
	add  d                                           ; $6c55: $82
	add  b                                           ; $6c56: $80
	add  d                                           ; $6c57: $82
	cp   [hl]                                        ; $6c58: $be
	inc  b                                           ; $6c59: $04

jr_07f_6c5a:
	rst  $28                                         ; $6c5a: $ef
	ld   l, a                                        ; $6c5b: $6f
	ld   l, [hl]                                     ; $6c5c: $6e
	rst  $28                                         ; $6c5d: $ef
	xor  $80                                         ; $6c5e: $ee $80
	ld   l, a                                        ; $6c60: $6f
	ld   bc, $e1ef                                   ; $6c61: $01 $ef $e1
	add  b                                           ; $6c64: $80
	ld   h, b                                        ; $6c65: $60
	ld   bc, $efe0                                   ; $6c66: $01 $e0 $ef
	add  b                                           ; $6c69: $80
	ld   l, a                                        ; $6c6a: $6f
	ld   bc, $2e2f                                   ; $6c6b: $01 $2f $2e
	add  b                                           ; $6c6e: $80
	ld   l, a                                        ; $6c6f: $6f
	add  c                                           ; $6c70: $81
	cpl                                              ; $6c71: $2f
	ld   [bc], a                                     ; $6c72: $02
	ld   l, $2f                                      ; $6c73: $2e $2f
	ld   l, $80                                      ; $6c75: $2e $80
	cpl                                              ; $6c77: $2f
	ld   a, [bc]                                     ; $6c78: $0a
	ld   l, a                                        ; $6c79: $6f
	ld   l, [hl]                                     ; $6c7a: $6e
	ld   l, a                                        ; $6c7b: $6f
	ld   l, [hl]                                     ; $6c7c: $6e
	ld   l, a                                        ; $6c7d: $6f

jr_07f_6c7e:
	jr   z, jr_07f_6c7e                              ; $6c7e: $28 $fe

	and  d                                           ; $6c80: $a2
	or   $58                                         ; $6c81: $f6 $58
	ld   e, d                                        ; $6c83: $5a
	add  b                                           ; $6c84: $80
	inc  b                                           ; $6c85: $04
	add  c                                           ; $6c86: $81
	cp   $0a                                         ; $6c87: $fe $0a
	rst  $38                                         ; $6c89: $ff
	ccf                                              ; $6c8a: $3f
	rst  $38                                         ; $6c8b: $ff
	ret  nz                                          ; $6c8c: $c0

	rst  $38                                         ; $6c8d: $ff
	ld   a, [de]                                     ; $6c8e: $1a
	ld   a, a                                        ; $6c8f: $7f
	ld   bc, $9bff                                   ; $6c90: $01 $ff $9b
	rst  $38                                         ; $6c93: $ff
	add  b                                           ; $6c94: $80
	ld   [bc], a                                     ; $6c95: $02
	add  h                                           ; $6c96: $84
	rst  $38                                         ; $6c97: $ff
	nop                                              ; $6c98: $00
	nop                                              ; $6c99: $00
	adc  c                                           ; $6c9a: $89
	rst  $38                                         ; $6c9b: $ff
	inc  bc                                          ; $6c9c: $03
	ld   e, h                                        ; $6c9d: $5c
	ld   e, a                                        ; $6c9e: $5f
	dec  sp                                          ; $6c9f: $3b
	ccf                                              ; $6ca0: $3f
	add  b                                           ; $6ca1: $80
	ld   d, a                                        ; $6ca2: $57
	nop                                              ; $6ca3: $00
	ld   hl, sp-$7d                                  ; $6ca4: $f8 $83
	rst  $38                                         ; $6ca6: $ff
	ld   a, [bc]                                     ; $6ca7: $0a
	sub  e                                           ; $6ca8: $93
	ei                                               ; $6ca9: $fb

jr_07f_6caa:
	ld   h, l                                        ; $6caa: $65
	db   $fd                                         ; $6cab: $fd
	adc  d                                           ; $6cac: $8a
	ld   a, [$fc2c]                                  ; $6cad: $fa $2c $fc
	ld   b, $fe                                      ; $6cb0: $06 $fe
	ld   d, a                                        ; $6cb2: $57
	add  a                                           ; $6cb3: $87
	rst  $38                                         ; $6cb4: $ff
	add  b                                           ; $6cb5: $80
	ld   a, a                                        ; $6cb6: $7f
	add  b                                           ; $6cb7: $80
	cp   a                                           ; $6cb8: $bf
	add  b                                           ; $6cb9: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cba: $cf
	ld   [bc], a                                     ; $6cbb: $02
	ld   [bc], a                                     ; $6cbc: $02
	rra                                              ; $6cbd: $1f
	dec  e                                           ; $6cbe: $1d
	add  d                                           ; $6cbf: $82
	ccf                                              ; $6cc0: $3f
	add  b                                           ; $6cc1: $80
	rrca                                             ; $6cc2: $0f
	add  b                                           ; $6cc3: $80
	ld   b, $83                                      ; $6cc4: $06 $83
	nop                                              ; $6cc6: $00
	inc  b                                           ; $6cc7: $04
	adc  d                                           ; $6cc8: $8a
	rst  $38                                         ; $6cc9: $ff
	ld   h, c                                        ; $6cca: $61
	rst  $38                                         ; $6ccb: $ff
	db   $eb                                         ; $6ccc: $eb
	add  b                                           ; $6ccd: $80
	rst  $38                                         ; $6cce: $ff
	add  b                                           ; $6ccf: $80
	ld   [hl], a                                     ; $6cd0: $77
	add  b                                           ; $6cd1: $80
	ld   [bc], a                                     ; $6cd2: $02
	add  e                                           ; $6cd3: $83
	nop                                              ; $6cd4: $00
	ld   [bc], a                                     ; $6cd5: $02
	add  sp, -$08                                    ; $6cd6: $e8 $f8
	db   $10                                         ; $6cd8: $10
	add  b                                           ; $6cd9: $80
	ld   hl, sp-$80                                  ; $6cda: $f8 $80
	ldh  [$80], a                                    ; $6cdc: $e0 $80
	ldh  a, [$85]                                    ; $6cde: $f0 $85
	nop                                              ; $6ce0: $00
	inc  bc                                          ; $6ce1: $03
	db   $fc                                         ; $6ce2: $fc
	ei                                               ; $6ce3: $fb
	ld   hl, sp-$04                                  ; $6ce4: $f8 $fc
	add  b                                           ; $6ce6: $80
	cp   $05                                         ; $6ce7: $fe $05
	push af                                          ; $6ce9: $f5
	ld   sp, hl                                      ; $6cea: $f9
	db   $e3                                         ; $6ceb: $e3
	di                                               ; $6cec: $f3
	ld   b, a                                        ; $6ced: $47
	ld   h, a                                        ; $6cee: $67
	add  b                                           ; $6cef: $80
	daa                                              ; $6cf0: $27
	rrca                                             ; $6cf1: $0f
	ld   a, [bc]                                     ; $6cf2: $0a
	ld   c, d                                        ; $6cf3: $4a
	or   b                                           ; $6cf4: $b0
	db   $fc                                         ; $6cf5: $fc
	inc  c                                           ; $6cf6: $0c
	sbc  [hl]                                        ; $6cf7: $9e
	ld   e, [hl]                                     ; $6cf8: $5e
	inc  e                                           ; $6cf9: $1c
	xor  h                                           ; $6cfa: $ac
	cp   b                                           ; $6cfb: $b8
	or   b                                           ; $6cfc: $b0
	sbc  b                                           ; $6cfd: $98
	add  sp, -$28                                    ; $6cfe: $e8 $d8
	ret  z                                           ; $6d00: $c8

	ret  c                                           ; $6d01: $d8

	add  b                                           ; $6d02: $80
	call z, $0000                                   ; $6d03: $cc $00 $00
	add  b                                           ; $6d06: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d07: $cf
	ld   a, [bc]                                     ; $6d08: $0a
	ccf                                              ; $6d09: $3f
	sbc  a                                           ; $6d0a: $9f
	rst  $38                                         ; $6d0b: $ff
	rlca                                             ; $6d0c: $07
	ld   a, a                                        ; $6d0d: $7f
	dec  bc                                          ; $6d0e: $0b
	rrca                                             ; $6d0f: $0f
	cpl                                              ; $6d10: $2f
	rra                                              ; $6d11: $1f
	dec  d                                           ; $6d12: $15
	rlca                                             ; $6d13: $07
	add  b                                           ; $6d14: $80
	dec  bc                                          ; $6d15: $0b
	nop                                              ; $6d16: $00
	cp   $86                                         ; $6d17: $fe $86
	nop                                              ; $6d19: $00
	ld   [bc], a                                     ; $6d1a: $02
	ld   bc, $0302                                   ; $6d1b: $01 $02 $03
	add  d                                           ; $6d1e: $82
	nop                                              ; $6d1f: $00
	inc  bc                                          ; $6d20: $03
	ld   a, e                                        ; $6d21: $7b
	inc  b                                           ; $6d22: $04
	ld   [$8088], sp                                 ; $6d23: $08 $88 $80
	inc  d                                           ; $6d26: $14
	add  b                                           ; $6d27: $80
	jr   z, jr_07f_6caa                              ; $6d28: $28 $80

	nop                                              ; $6d2a: $00
	add  b                                           ; $6d2b: $80
	ld   hl, sp+$01                                  ; $6d2c: $f8 $01
	ret  nz                                          ; $6d2e: $c0

	ccf                                              ; $6d2f: $3f
	add  b                                           ; $6d30: $80
	nop                                              ; $6d31: $00
	ld   bc, $ec13                                   ; $6d32: $01 $13 $ec
	add  b                                           ; $6d35: $80
	cp   $80                                         ; $6d36: $fe $80
	ld   d, [hl]                                     ; $6d38: $56
	add  b                                           ; $6d39: $80
	xor  d                                           ; $6d3a: $aa
	add  b                                           ; $6d3b: $80
	ld   d, c                                        ; $6d3c: $51
	inc  bc                                          ; $6d3d: $03
	ld   bc, $0006                                   ; $6d3e: $01 $06 $00
	ld   hl, sp-$80                                  ; $6d41: $f8 $80
	nop                                              ; $6d43: $00
	ld   bc, $15ea                                   ; $6d44: $01 $ea $15
	add  b                                           ; $6d47: $80
	ld   a, [bc]                                     ; $6d48: $0a
	add  b                                           ; $6d49: $80
	ld   bc, $0081                                   ; $6d4a: $01 $81 $00
	nop                                              ; $6d4d: $00
	rst  $38                                         ; $6d4e: $ff
	rst  $38                                         ; $6d4f: $ff
	nop                                              ; $6d50: $00
	rst  $38                                         ; $6d51: $ff
	nop                                              ; $6d52: $00
	rst  $38                                         ; $6d53: $ff
	nop                                              ; $6d54: $00
	rst  $38                                         ; $6d55: $ff
	nop                                              ; $6d56: $00
	rst  $38                                         ; $6d57: $ff
	nop                                              ; $6d58: $00
	rst  $38                                         ; $6d59: $ff
	nop                                              ; $6d5a: $00
	rst  $38                                         ; $6d5b: $ff
	nop                                              ; $6d5c: $00
	rst  $38                                         ; $6d5d: $ff
	nop                                              ; $6d5e: $00
	cp   h                                           ; $6d5f: $bc
	nop                                              ; $6d60: $00
	ld   d, l                                        ; $6d61: $55
	ld   bc, $0f8e                                   ; $6d62: $01 $8e $0f
	nop                                              ; $6d65: $00
	ldh  [$86], a                                    ; $6d66: $e0 $86
	sbc  a                                           ; $6d68: $9f
	add  hl, bc                                      ; $6d69: $09
	sbc  [hl]                                        ; $6d6a: $9e
	sbc  a                                           ; $6d6b: $9f
	sbc  b                                           ; $6d6c: $98
	sbc  [hl]                                        ; $6d6d: $9e
	sub  b                                           ; $6d6e: $90
	adc  b                                           ; $6d6f: $88
	add  b                                           ; $6d70: $80
	xor  e                                           ; $6d71: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d72: $cf
	jp   $cf81                                       ; $6d73: $c3 $81 $cf


	add  b                                           ; $6d76: $80
	adc  a                                           ; $6d77: $8f
	ld   [bc], a                                     ; $6d78: $02
	ld   l, a                                        ; $6d79: $6f
	rrca                                             ; $6d7a: $0f
	adc  a                                           ; $6d7b: $8f
	add  b                                           ; $6d7c: $80
	rra                                              ; $6d7d: $1f
	inc  bc                                          ; $6d7e: $03
	ld   e, a                                        ; $6d7f: $5f
	ld   e, [hl]                                     ; $6d80: $5e
	ld   c, [hl]                                     ; $6d81: $4e
	adc  c                                           ; $6d82: $89
	add  e                                           ; $6d83: $83
	ld   sp, hl                                      ; $6d84: $f9
	add  e                                           ; $6d85: $83
	ld   hl, sp+$07                                  ; $6d86: $f8 $07
	pop  hl                                          ; $6d88: $e1
	and  c                                           ; $6d89: $a1
	add  a                                           ; $6d8a: $87
	rlca                                             ; $6d8b: $07
	rra                                              ; $6d8c: $1f
	sub  a                                           ; $6d8d: $97
	ld   hl, sp-$10                                  ; $6d8e: $f8 $f0
	add  b                                           ; $6d90: $80
	ldh  [rP1], a                                    ; $6d91: $e0 $00
	add  b                                           ; $6d93: $80
	add  c                                           ; $6d94: $81
	nop                                              ; $6d95: $00
	add  b                                           ; $6d96: $80
	rlca                                             ; $6d97: $07
	dec  b                                           ; $6d98: $05
	rst  $38                                         ; $6d99: $ff
	cp   $ff                                         ; $6d9a: $fe $ff
	ld   hl, sp-$02                                  ; $6d9c: $f8 $fe
	ld   hl, sp-$7f                                  ; $6d9e: $f8 $81
	nop                                              ; $6da0: $00
	add  b                                           ; $6da1: $80
	inc  b                                           ; $6da2: $04
	dec  b                                           ; $6da3: $05
	add  hl, de                                      ; $6da4: $19
	ld   e, c                                        ; $6da5: $59
	ld   [hl], a                                     ; $6da6: $77
	rst  $30                                         ; $6da7: $f7
	ld   [bc], a                                     ; $6da8: $02
	jp   nz, $8080                                   ; $6da9: $c2 $80 $80

	add  c                                           ; $6dac: $81
	nop                                              ; $6dad: $00
	add  b                                           ; $6dae: $80
	ld   de, $0380                                   ; $6daf: $11 $80 $03
	add  b                                           ; $6db2: $80
	rst  JumpTable                                         ; $6db3: $df
	add  b                                           ; $6db4: $80
	rst  $38                                         ; $6db5: $ff
	add  b                                           ; $6db6: $80
	adc  a                                           ; $6db7: $8f
	add  b                                           ; $6db8: $80
	ld   bc, $3f80                                   ; $6db9: $01 $80 $3f
	ld   bc, $8606                                   ; $6dbc: $01 $06 $86
	add  c                                           ; $6dbf: $81
	ret  nz                                          ; $6dc0: $c0

	ld   bc, $8f4f                                   ; $6dc1: $01 $4f $8f
	add  b                                           ; $6dc4: $80
	sbc  a                                           ; $6dc5: $9f
	ld   b, $b6                                      ; $6dc6: $06 $b6
	rst  $30                                         ; $6dc8: $f7
	pop  de                                          ; $6dc9: $d1
	di                                               ; $6dca: $f3
	pop  hl                                          ; $6dcb: $e1
	rst  ToBoot                                         ; $6dcc: $c7
	push bc                                          ; $6dcd: $c5
	add  b                                           ; $6dce: $80
	ld   bc, $0080                                   ; $6dcf: $01 $80 $00
	ld   b, $07                                      ; $6dd2: $06 $07
	db   $e3                                         ; $6dd4: $e3
	rst  $20                                         ; $6dd5: $e7
	adc  l                                           ; $6dd6: $8d
	rst  $28                                         ; $6dd7: $ef
	ld   h, d                                        ; $6dd8: $62
	db   $e3                                         ; $6dd9: $e3
	add  b                                           ; $6dda: $80
	ldh  [rSC], a                                    ; $6ddb: $e0 $02
	rst  $28                                         ; $6ddd: $ef
	sbc  a                                           ; $6dde: $9f
	sub  b                                           ; $6ddf: $90
	add  b                                           ; $6de0: $80
	db   $fd                                         ; $6de1: $fd
	add  b                                           ; $6de2: $80
	nop                                              ; $6de3: $00
	add  b                                           ; $6de4: $80
	rst  ToBoot                                         ; $6de5: $c7
	ld   b, $ff                                      ; $6de6: $06 $ff
	cp   $ff                                         ; $6de8: $fe $ff

jr_07f_6dea:
	pop  af                                          ; $6dea: $f1
	rst  $38                                         ; $6deb: $ff
	ldh  a, [rP1]                                    ; $6dec: $f0 $00
	add  b                                           ; $6dee: $80
	ld   bc, $0000                                   ; $6def: $01 $00 $00
	add  b                                           ; $6df2: $80
	rst  $38                                         ; $6df3: $ff
	add  b                                           ; $6df4: $80
	nop                                              ; $6df5: $00
	nop                                              ; $6df6: $00
	add  b                                           ; $6df7: $80
	add  b                                           ; $6df8: $80
	rst  JumpTable                                         ; $6df9: $df
	inc  bc                                          ; $6dfa: $03
	ld   e, a                                        ; $6dfb: $5f
	rst  JumpTable                                         ; $6dfc: $df
	db   $10                                         ; $6dfd: $10
	rra                                              ; $6dfe: $1f
	add  b                                           ; $6dff: $80
	rrca                                             ; $6e00: $0f
	ld   [bc], a                                     ; $6e01: $02
	rst  $38                                         ; $6e02: $ff
	di                                               ; $6e03: $f3
	inc  bc                                          ; $6e04: $03
	add  b                                           ; $6e05: $80
	cp   a                                           ; $6e06: $bf
	add  c                                           ; $6e07: $81
	db   $10                                         ; $6e08: $10
	ld   b, $f2                                      ; $6e09: $06 $f2
	ldh  [c], a                                      ; $6e0b: $e2
	add  h                                           ; $6e0c: $84
	db   $e4                                         ; $6e0d: $e4
	ld   a, b                                        ; $6e0e: $78
	ld   hl, sp-$20                                  ; $6e0f: $f8 $e0
	add  b                                           ; $6e11: $80
	call nz, $c702                                   ; $6e12: $c4 $02 $c7
	add  $01                                         ; $6e15: $c6 $01
	add  b                                           ; $6e17: $80
	inc  b                                           ; $6e18: $04
	add  b                                           ; $6e19: $80
	ld   b, $80                                      ; $6e1a: $06 $80
	inc  bc                                          ; $6e1c: $03
	inc  bc                                          ; $6e1d: $03
	pop  hl                                          ; $6e1e: $e1
	db   $ed                                         ; $6e1f: $ed
	adc  h                                           ; $6e20: $8c
	cp   h                                           ; $6e21: $bc
	add  b                                           ; $6e22: $80
	ld   a, h                                        ; $6e23: $7c
	nop                                              ; $6e24: $00
	inc  a                                           ; $6e25: $3c
	add  b                                           ; $6e26: $80
	ldh  a, [rP1]                                    ; $6e27: $f0 $00
	nop                                              ; $6e29: $00
	add  b                                           ; $6e2a: $80
	ld   [bc], a                                     ; $6e2b: $02
	add  d                                           ; $6e2c: $82
	nop                                              ; $6e2d: $00
	dec  bc                                          ; $6e2e: $0b
	add  b                                           ; $6e2f: $80
	sbc  h                                           ; $6e30: $9c
	call c, Call_07f_6fcf                            ; $6e31: $dc $cf $6f
	ld   [hl], a                                     ; $6e34: $77
	daa                                              ; $6e35: $27
	dec  sp                                          ; $6e36: $3b
	inc  de                                          ; $6e37: $13
	dec  e                                           ; $6e38: $1d
	inc  e                                           ; $6e39: $1c
	add  hl, de                                      ; $6e3a: $19
	add  b                                           ; $6e3b: $80
	ld   bc, $0083                                   ; $6e3c: $01 $83 $00
	add  b                                           ; $6e3f: $80
	add  c                                           ; $6e40: $81
	add  b                                           ; $6e41: $80
	db   $ed                                         ; $6e42: $ed
	add  c                                           ; $6e43: $81
	rst  $38                                         ; $6e44: $ff
	ld   bc, $976f                                   ; $6e45: $01 $6f $97
	add  c                                           ; $6e48: $81
	rst  $30                                         ; $6e49: $f7
	add  b                                           ; $6e4a: $80
	pop  af                                          ; $6e4b: $f1
	add  hl, bc                                      ; $6e4c: $09
	ldh  a, [$36]                                    ; $6e4d: $f0 $36
	scf                                              ; $6e4f: $37
	rlca                                             ; $6e50: $07
	rst  ToBoot                                         ; $6e51: $c7
	jp   nz, $f0f3                                   ; $6e52: $c2 $f3 $f0

	ld   hl, sp+$08                                  ; $6e55: $f8 $08
	adc  h                                           ; $6e57: $8c
	rrca                                             ; $6e58: $0f
	ld   [bc], a                                     ; $6e59: $02
	ld   c, $f6                                      ; $6e5a: $0e $f6
	adc  b                                           ; $6e5c: $88
	add  b                                           ; $6e5d: $80
	cp   b                                           ; $6e5e: $b8
	ld   [bc], a                                     ; $6e5f: $02
	or   b                                           ; $6e60: $b0
	cp   b                                           ; $6e61: $b8
	adc  b                                           ; $6e62: $88
	add  d                                           ; $6e63: $82
	cp   b                                           ; $6e64: $b8
	add  b                                           ; $6e65: $80
	and  b                                           ; $6e66: $a0
	add  b                                           ; $6e67: $80
	jr   jr_07f_6dea                                 ; $6e68: $18 $80

	rst  ToBoot                                         ; $6e6a: $c7
	add  b                                           ; $6e6b: $80
	ld   [hl], b                                     ; $6e6c: $70
	add  b                                           ; $6e6d: $80
	ld   b, e                                        ; $6e6e: $43
	add  b                                           ; $6e6f: $80
	ld   b, h                                        ; $6e70: $44
	add  b                                           ; $6e71: $80
	rlca                                             ; $6e72: $07
	add  b                                           ; $6e73: $80
	nop                                              ; $6e74: $00
	dec  b                                           ; $6e75: $05
	ld   a, a                                        ; $6e76: $7f
	rlca                                             ; $6e77: $07
	ld   a, b                                        ; $6e78: $78
	ld   b, b                                        ; $6e79: $40
	rst  ToBoot                                         ; $6e7a: $c7
	add  a                                           ; $6e7b: $87
	add  b                                           ; $6e7c: $80
	ld   a, a                                        ; $6e7d: $7f
	add  b                                           ; $6e7e: $80
	rst  $38                                         ; $6e7f: $ff
	add  b                                           ; $6e80: $80
	ld   a, a                                        ; $6e81: $7f
	add  d                                           ; $6e82: $82
	ccf                                              ; $6e83: $3f
	add  b                                           ; $6e84: $80
	cp   a                                           ; $6e85: $bf
	add  b                                           ; $6e86: $80
	ld   a, a                                        ; $6e87: $7f
	ld   [bc], a                                     ; $6e88: $02
	rst  $38                                         ; $6e89: $ff
	ldh  [rIE], a                                    ; $6e8a: $e0 $ff
	add  c                                           ; $6e8c: $81
	ldh  [$89], a                                    ; $6e8d: $e0 $89
	rst  $38                                         ; $6e8f: $ff
	ld   bc, $ff00                                   ; $6e90: $01 $00 $ff
	add  c                                           ; $6e93: $81
	nop                                              ; $6e94: $00
	add  d                                           ; $6e95: $82
	rst  $38                                         ; $6e96: $ff
	add  d                                           ; $6e97: $82
	cp   $80                                         ; $6e98: $fe $80
	db   $fd                                         ; $6e9a: $fd
	ld   [bc], a                                     ; $6e9b: $02
	ei                                               ; $6e9c: $fb
	inc  b                                           ; $6e9d: $04
	rst  $38                                         ; $6e9e: $ff
	add  c                                           ; $6e9f: $81
	nop                                              ; $6ea0: $00
	add  b                                           ; $6ea1: $80
	cp   a                                           ; $6ea2: $bf
	add  b                                           ; $6ea3: $80
	ld   a, a                                        ; $6ea4: $7f
	add  b                                           ; $6ea5: $80
	rst  $38                                         ; $6ea6: $ff
	add  b                                           ; $6ea7: $80
	nop                                              ; $6ea8: $00
	add  c                                           ; $6ea9: $81
	rst  $38                                         ; $6eaa: $ff
	ld   bc, $ff00                                   ; $6eab: $01 $00 $ff
	add  c                                           ; $6eae: $81
	nop                                              ; $6eaf: $00
	add  h                                           ; $6eb0: $84
	rst  $38                                         ; $6eb1: $ff
	add  b                                           ; $6eb2: $80
	nop                                              ; $6eb3: $00
	add  c                                           ; $6eb4: $81
	rst  $38                                         ; $6eb5: $ff
	ld   bc, $ff00                                   ; $6eb6: $01 $00 $ff
	add  c                                           ; $6eb9: $81
	nop                                              ; $6eba: $00
	add  h                                           ; $6ebb: $84
	rst  $38                                         ; $6ebc: $ff
	add  b                                           ; $6ebd: $80
	nop                                              ; $6ebe: $00
	add  c                                           ; $6ebf: $81
	rst  $38                                         ; $6ec0: $ff
	ld   bc, $ff00                                   ; $6ec1: $01 $00 $ff
	add  c                                           ; $6ec4: $81
	nop                                              ; $6ec5: $00
	add  h                                           ; $6ec6: $84
	rst  $38                                         ; $6ec7: $ff
	add  b                                           ; $6ec8: $80
	nop                                              ; $6ec9: $00
	add  c                                           ; $6eca: $81
	rst  $38                                         ; $6ecb: $ff
	ld   bc, $ff00                                   ; $6ecc: $01 $00 $ff
	add  c                                           ; $6ecf: $81
	nop                                              ; $6ed0: $00
	add  h                                           ; $6ed1: $84
	rst  $38                                         ; $6ed2: $ff
	add  b                                           ; $6ed3: $80
	nop                                              ; $6ed4: $00
	add  c                                           ; $6ed5: $81
	rst  $38                                         ; $6ed6: $ff
	ld   bc, $ff00                                   ; $6ed7: $01 $00 $ff
	add  c                                           ; $6eda: $81
	nop                                              ; $6edb: $00
	add  h                                           ; $6edc: $84
	rst  $38                                         ; $6edd: $ff
	add  b                                           ; $6ede: $80
	nop                                              ; $6edf: $00
	add  c                                           ; $6ee0: $81
	rst  $38                                         ; $6ee1: $ff
	ld   bc, $ff00                                   ; $6ee2: $01 $00 $ff
	add  c                                           ; $6ee5: $81
	nop                                              ; $6ee6: $00
	add  h                                           ; $6ee7: $84
	rst  $38                                         ; $6ee8: $ff
	add  b                                           ; $6ee9: $80
	nop                                              ; $6eea: $00
	add  c                                           ; $6eeb: $81
	rst  $38                                         ; $6eec: $ff
	ld   [bc], a                                     ; $6eed: $02
	rlca                                             ; $6eee: $07
	cp   $06                                         ; $6eef: $fe $06
	add  b                                           ; $6ef1: $80
	rlca                                             ; $6ef2: $07
	add  h                                           ; $6ef3: $84
	rst  $38                                         ; $6ef4: $ff
	add  b                                           ; $6ef5: $80
	nop                                              ; $6ef6: $00
	add  h                                           ; $6ef7: $84
	rst  $38                                         ; $6ef8: $ff
	add  b                                           ; $6ef9: $80
	ld   a, a                                        ; $6efa: $7f
	add  b                                           ; $6efb: $80
	cp   a                                           ; $6efc: $bf
	add  b                                           ; $6efd: $80
	rst  JumpTable                                         ; $6efe: $df
	add  b                                           ; $6eff: $80
	rst  $28                                         ; $6f00: $ef
	add  b                                           ; $6f01: $80
	rlca                                             ; $6f02: $07
	add  b                                           ; $6f03: $80
	ei                                               ; $6f04: $fb
	add  b                                           ; $6f05: $80
	db   $fd                                         ; $6f06: $fd
	add  b                                           ; $6f07: $80
	cp   $8b                                         ; $6f08: $fe $8b
	rst  $38                                         ; $6f0a: $ff
	add  [hl]                                        ; $6f0b: $86
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	rst  $38                                         ; $6f0e: $ff
	add  b                                           ; $6f0f: $80
	ld   b, $80                                      ; $6f10: $06 $80
	ld   a, [de]                                     ; $6f12: $1a
	add  b                                           ; $6f13: $80
	dec  a                                           ; $6f14: $3d
	ld   bc, $827d                                   ; $6f15: $01 $7d $82
	add  l                                           ; $6f18: $85
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	rst  $38                                         ; $6f1b: $ff
	add  b                                           ; $6f1c: $80
	cp   $80                                         ; $6f1d: $fe $80
	rst  $38                                         ; $6f1f: $ff
	add  b                                           ; $6f20: $80
	ld   a, a                                        ; $6f21: $7f
	ld   bc, $817e                                   ; $6f22: $01 $7e $81
	add  l                                           ; $6f25: $85
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00
	rst  $38                                         ; $6f28: $ff
	add  b                                           ; $6f29: $80
	ld   c, b                                        ; $6f2a: $48
	add  b                                           ; $6f2b: $80
	ld   h, e                                        ; $6f2c: $63
	add  b                                           ; $6f2d: $80
	rrca                                             ; $6f2e: $0f
	ld   bc, $c03f                                   ; $6f2f: $01 $3f $c0
	add  l                                           ; $6f32: $85
	nop                                              ; $6f33: $00
	add  [hl]                                        ; $6f34: $86
	ldh  a, [$81]                                    ; $6f35: $f0 $81
	rst  $38                                         ; $6f37: $ff
	add  b                                           ; $6f38: $80
	db   $fc                                         ; $6f39: $fc
	add  b                                           ; $6f3a: $80
	ldh  a, [$80]                                    ; $6f3b: $f0 $80
	add  e                                           ; $6f3d: $83
	add  b                                           ; $6f3e: $80
	rra                                              ; $6f3f: $1f
	add  d                                           ; $6f40: $82
	ld   a, a                                        ; $6f41: $7f
	add  b                                           ; $6f42: $80
	ccf                                              ; $6f43: $3f
	add  b                                           ; $6f44: $80
	add  a                                           ; $6f45: $87
	add  b                                           ; $6f46: $80
	ccf                                              ; $6f47: $3f
	add  [hl]                                        ; $6f48: $86
	rst  $38                                         ; $6f49: $ff
	add  b                                           ; $6f4a: $80
	cp   $80                                         ; $6f4b: $fe $80
	ldh  [$86], a                                    ; $6f4d: $e0 $86
	rst  $38                                         ; $6f4f: $ff
	add  b                                           ; $6f50: $80
	cp   $80                                         ; $6f51: $fe $80
	ldh  [$81], a                                    ; $6f53: $e0 $81
	nop                                              ; $6f55: $00
	nop                                              ; $6f56: $00
	rrca                                             ; $6f57: $0f
	add  h                                           ; $6f58: $84
	ldh  a, [$80]                                    ; $6f59: $f0 $80
	ret  nz                                          ; $6f5b: $c0

	add  h                                           ; $6f5c: $84

jr_07f_6f5d:
	nop                                              ; $6f5d: $00
	ld   bc, $7770                                   ; $6f5e: $01 $70 $77
	add  c                                           ; $6f61: $81
	cp   $04                                         ; $6f62: $fe $04
	sbc  $7e                                         ; $6f64: $de $7e
	ld   e, [hl]                                     ; $6f66: $5e
	ld   e, $16                                      ; $6f67: $1e $16
	add  b                                           ; $6f69: $80
	ldh  [rSB], a                                    ; $6f6a: $e0 $01
	nop                                              ; $6f6c: $00
	ld   [$fe81], sp                                 ; $6f6d: $08 $81 $fe
	nop                                              ; $6f70: $00
	add  hl, bc                                      ; $6f71: $09
	add  l                                           ; $6f72: $85
	rst  $38                                         ; $6f73: $ff
	add  d                                           ; $6f74: $82
	ld   a, a                                        ; $6f75: $7f
	add  d                                           ; $6f76: $82
	rst  $38                                         ; $6f77: $ff
	add  d                                           ; $6f78: $82
	db   $fc                                         ; $6f79: $fc
	adc  d                                           ; $6f7a: $8a
	db   $fd                                         ; $6f7b: $fd
	ld   bc, $403f                                   ; $6f7c: $01 $3f $40
	add  d                                           ; $6f7f: $82
	ld   h, b                                        ; $6f80: $60
	adc  b                                           ; $6f81: $88
	ld   [hl], b                                     ; $6f82: $70
	ld   [bc], a                                     ; $6f83: $02
	ld   [hl], a                                     ; $6f84: $77
	cp   $f6                                         ; $6f85: $fe $f6
	add  b                                           ; $6f87: $80
	ldh  [rTIMA], a                                  ; $6f88: $e0 $05
	nop                                              ; $6f8a: $00
	ld   [$defe], sp                                 ; $6f8b: $08 $fe $de

jr_07f_6f8e:
	ld   a, [hl]                                     ; $6f8e: $7e
	ld   e, [hl]                                     ; $6f8f: $5e
	add  b                                           ; $6f90: $80
	ld   e, $81                                      ; $6f91: $1e $81
	cp   $01                                         ; $6f93: $fe $01
	add  hl, bc                                      ; $6f95: $09
	rst  $38                                         ; $6f96: $ff
	add  d                                           ; $6f97: $82
	ld   a, a                                        ; $6f98: $7f
	adc  b                                           ; $6f99: $88
	rst  $38                                         ; $6f9a: $ff
	adc  [hl]                                        ; $6f9b: $8e
	db   $fd                                         ; $6f9c: $fd
	nop                                              ; $6f9d: $00
	rrca                                             ; $6f9e: $0f
	adc  l                                           ; $6f9f: $8d
	ld   [hl], b                                     ; $6fa0: $70
	nop                                              ; $6fa1: $00
	ld   a, a                                        ; $6fa2: $7f
	add  b                                           ; $6fa3: $80
	ld   a, $80                                      ; $6fa4: $3e $80
	cp   [hl]                                        ; $6fa6: $be
	add  b                                           ; $6fa7: $80
	sbc  a                                           ; $6fa8: $9f
	add  b                                           ; $6fa9: $80
	ld   e, [hl]                                     ; $6faa: $5e
	add  b                                           ; $6fab: $80
	xor  b                                           ; $6fac: $a8
	add  b                                           ; $6fad: $80
	and  e                                           ; $6fae: $a3
	add  b                                           ; $6faf: $80
	adc  a                                           ; $6fb0: $8f
	add  b                                           ; $6fb1: $80
	ccf                                              ; $6fb2: $3f
	add  b                                           ; $6fb3: $80
	cp   b                                           ; $6fb4: $b8
	add  b                                           ; $6fb5: $80
	add  e                                           ; $6fb6: $83
	add  b                                           ; $6fb7: $80
	rrca                                             ; $6fb8: $0f
	add  b                                           ; $6fb9: $80
	ccf                                              ; $6fba: $3f
	add  d                                           ; $6fbb: $82
	rst  $38                                         ; $6fbc: $ff
	add  b                                           ; $6fbd: $80
	db   $fc                                         ; $6fbe: $fc
	add  b                                           ; $6fbf: $80
	ldh  [$82], a                                    ; $6fc0: $e0 $82
	rst  $38                                         ; $6fc2: $ff
	add  b                                           ; $6fc3: $80
	cp   $80                                         ; $6fc4: $fe $80
	ld   hl, sp-$80                                  ; $6fc6: $f8 $80
	ret  nz                                          ; $6fc8: $c0

	add  b                                           ; $6fc9: $80
	rlca                                             ; $6fca: $07
	add  b                                           ; $6fcb: $80
	ccf                                              ; $6fcc: $3f
	nop                                              ; $6fcd: $00
	rst  $38                                         ; $6fce: $ff

Call_07f_6fcf:
	add  c                                           ; $6fcf: $81
	ldh  a, [$80]                                    ; $6fd0: $f0 $80
	ret  nz                                          ; $6fd2: $c0

	add  b                                           ; $6fd3: $80
	nop                                              ; $6fd4: $00
	add  b                                           ; $6fd5: $80
	jr   nc, jr_07f_6f5d                             ; $6fd6: $30 $85

	ldh  a, [rP1]                                    ; $6fd8: $f0 $00
	rst  $38                                         ; $6fda: $ff
	add  b                                           ; $6fdb: $80
	ld   a, [hl]                                     ; $6fdc: $7e
	add  b                                           ; $6fdd: $80
	ld   h, b                                        ; $6fde: $60
	add  d                                           ; $6fdf: $82
	nop                                              ; $6fe0: $00
	add  b                                           ; $6fe1: $80
	inc  bc                                          ; $6fe2: $03
	add  b                                           ; $6fe3: $80
	ccf                                              ; $6fe4: $3f
	add  b                                           ; $6fe5: $80
	nop                                              ; $6fe6: $00
	add  b                                           ; $6fe7: $80
	ld   h, b                                        ; $6fe8: $60
	add  d                                           ; $6fe9: $82
	nop                                              ; $6fea: $00
	add  b                                           ; $6feb: $80
	rlca                                             ; $6fec: $07
	add  b                                           ; $6fed: $80
	ld   a, a                                        ; $6fee: $7f
	add  c                                           ; $6fef: $81
	rst  $38                                         ; $6ff0: $ff
	ld   bc, $3fc0                                   ; $6ff1: $01 $c0 $3f
	add  b                                           ; $6ff4: $80
	ld   a, a                                        ; $6ff5: $7f
	inc  bc                                          ; $6ff6: $03
	rrca                                             ; $6ff7: $0f
	nop                                              ; $6ff8: $00
	ldh  a, [rP1]                                    ; $6ff9: $f0 $00
	add  b                                           ; $6ffb: $80
	add  b                                           ; $6ffc: $80
	add  b                                           ; $6ffd: $80
	ret  nz                                          ; $6ffe: $c0

	add  b                                           ; $6fff: $80
	ldh  [$80], a                                    ; $7000: $e0 $80
	ldh  a, [rSB]                                    ; $7002: $f0 $01
	rlca                                             ; $7004: $07
	ld   hl, sp-$80                                  ; $7005: $f8 $80
	db   $fc                                         ; $7007: $fc
	ld   bc, $708f                                   ; $7008: $01 $8f $70
	add  b                                           ; $700b: $80
	jr   nc, jr_07f_6f8e                             ; $700c: $30 $80

	db   $10                                         ; $700e: $10
	add  h                                           ; $700f: $84
	nop                                              ; $7010: $00
	ld   bc, $0080                                   ; $7011: $01 $80 $00
	add  b                                           ; $7014: $80
	ld   b, b                                        ; $7015: $40
	ld   [bc], a                                     ; $7016: $02
	ld   d, a                                        ; $7017: $57
	ld   a, [hl]                                     ; $7018: $7e
	ld   e, [hl]                                     ; $7019: $5e
	add  b                                           ; $701a: $80
	ld   e, $01                                      ; $701b: $1e $01
	cp   $f6                                         ; $701d: $fe $f6
	add  b                                           ; $701f: $80
	ldh  [rTAC], a                                   ; $7020: $e0 $07
	nop                                              ; $7022: $00
	ld   [$defe], sp                                 ; $7023: $08 $fe $de
	ld   a, [hl]                                     ; $7026: $7e
	ld   e, [hl]                                     ; $7027: $5e
	ld   e, $e9                                      ; $7028: $1e $e9
	add  e                                           ; $702a: $83
	rst  $38                                         ; $702b: $ff
	add  d                                           ; $702c: $82
	ld   a, a                                        ; $702d: $7f
	add  h                                           ; $702e: $84
	rst  $38                                         ; $702f: $ff
	adc  [hl]                                        ; $7030: $8e
	db   $fd                                         ; $7031: $fd
	nop                                              ; $7032: $00
	rrca                                             ; $7033: $0f
	adc  l                                           ; $7034: $8d
	ld   [hl], b                                     ; $7035: $70
	nop                                              ; $7036: $00
	ld   a, a                                        ; $7037: $7f
	add  b                                           ; $7038: $80
	ldh  [rTIMA], a                                  ; $7039: $e0 $05
	nop                                              ; $703b: $00
	ld   [$defe], sp                                 ; $703c: $08 $fe $de
	ld   a, [hl]                                     ; $703f: $7e
	ld   e, [hl]                                     ; $7040: $5e
	add  b                                           ; $7041: $80
	ld   e, $81                                      ; $7042: $1e $81
	cp   $02                                         ; $7044: $fe $02
	or   $02                                         ; $7046: $f6 $02
	ld   a, l                                        ; $7048: $7d
	add  c                                           ; $7049: $81
	ld   a, a                                        ; $704a: $7f
	adc  d                                           ; $704b: $8a
	rst  $38                                         ; $704c: $ff
	adc  [hl]                                        ; $704d: $8e
	db   $fd                                         ; $704e: $fd
	nop                                              ; $704f: $00
	rrca                                             ; $7050: $0f
	adc  l                                           ; $7051: $8d
	ld   [hl], b                                     ; $7052: $70
	ld   [bc], a                                     ; $7053: $02
	ld   a, a                                        ; $7054: $7f
	nop                                              ; $7055: $00
	ld   [$3880], sp                                 ; $7056: $08 $80 $38
	add  b                                           ; $7059: $80
	ld   a, [hl]                                     ; $705a: $7e
	add  b                                           ; $705b: $80
	ld   a, $03                                      ; $705c: $3e $03
	ld   c, $06                                      ; $705e: $0e $06

jr_07f_7060:
	ld   h, b                                        ; $7060: $60
	ld   l, b                                        ; $7061: $68
	add  b                                           ; $7062: $80
	jr   c, @+$03                                    ; $7063: $38 $01

	ld   a, $49                                      ; $7065: $3e $49
	add  c                                           ; $7067: $81
	ld   a, a                                        ; $7068: $7f
	add  h                                           ; $7069: $84
	rst  $38                                         ; $706a: $ff
	add  d                                           ; $706b: $82
	ld   a, a                                        ; $706c: $7f
	add  b                                           ; $706d: $80
	rst  $38                                         ; $706e: $ff
	adc  [hl]                                        ; $706f: $8e
	db   $fd                                         ; $7070: $fd
	nop                                              ; $7071: $00
	rrca                                             ; $7072: $0f
	adc  l                                           ; $7073: $8d
	ld   [hl], b                                     ; $7074: $70
	nop                                              ; $7075: $00
	ld   [hl], a                                     ; $7076: $77
	add  b                                           ; $7077: $80
	ld   a, $01                                      ; $7078: $3e $01
	sbc  b                                           ; $707a: $98
	sub  b                                           ; $707b: $90
	add  b                                           ; $707c: $80
	ldh  [$80], a                                    ; $707d: $e0 $80
	ld   hl, sp-$80                                  ; $707f: $f8 $80
	cp   $83                                         ; $7081: $fe $83
	rst  $38                                         ; $7083: $ff
	nop                                              ; $7084: $00
	nop                                              ; $7085: $00
	add  l                                           ; $7086: $85
	rst  $38                                         ; $7087: $ff
	add  b                                           ; $7088: $80
	ld   a, a                                        ; $7089: $7f
	nop                                              ; $708a: $00
	nop                                              ; $708b: $00
	add  b                                           ; $708c: $80
	add  b                                           ; $708d: $80
	add  b                                           ; $708e: $80
	ld   hl, sp+$01                                  ; $708f: $f8 $01
	rst  $38                                         ; $7091: $ff
	ld   [bc], a                                     ; $7092: $02
	add  e                                           ; $7093: $83
	db   $fd                                         ; $7094: $fd
	add  d                                           ; $7095: $82
	db   $fc                                         ; $7096: $fc
	add  e                                           ; $7097: $83
	nop                                              ; $7098: $00
	ld   bc, $8f80                                   ; $7099: $01 $80 $8f
	adc  d                                           ; $709c: $8a
	ld   [hl], b                                     ; $709d: $70
	add  b                                           ; $709e: $80
	jr   nc, jr_07f_70a2                             ; $709f: $30 $01

	nop                                              ; $70a1: $00

jr_07f_70a2:
	ldh  a, [rIE]                                    ; $70a2: $f0 $ff
	nop                                              ; $70a4: $00
	rst  $38                                         ; $70a5: $ff
	nop                                              ; $70a6: $00
	rst  $38                                         ; $70a7: $ff
	nop                                              ; $70a8: $00
	rst  $38                                         ; $70a9: $ff
	nop                                              ; $70aa: $00
	rst  $38                                         ; $70ab: $ff
	nop                                              ; $70ac: $00
	rst  $38                                         ; $70ad: $ff
	nop                                              ; $70ae: $00
	rst  $30                                         ; $70af: $f7
	nop                                              ; $70b0: $00
	ld   c, d                                        ; $70b1: $4a
	ld   bc, $0800                                   ; $70b2: $01 $00 $08
	add  a                                           ; $70b5: $87
	rlca                                             ; $70b6: $07
	add  b                                           ; $70b7: $80
	ld   bc, $0382                                   ; $70b8: $01 $82 $03
	nop                                              ; $70bb: $00
	ld   h, d                                        ; $70bc: $62
	add  l                                           ; $70bd: $85
	sub  d                                           ; $70be: $92
	add  b                                           ; $70bf: $80
	ld   [hl-], a                                    ; $70c0: $32
	add  b                                           ; $70c1: $80
	inc  b                                           ; $70c2: $04
	add  b                                           ; $70c3: $80
	ld   c, a                                        ; $70c4: $4f
	add  b                                           ; $70c5: $80
	rst  JumpTable                                         ; $70c6: $df
	add  d                                           ; $70c7: $82
	sub  l                                           ; $70c8: $95
	add  b                                           ; $70c9: $80
	rla                                              ; $70ca: $17
	add  b                                           ; $70cb: $80
	rra                                              ; $70cc: $1f
	add  b                                           ; $70cd: $80
	ld   bc, $4080                                   ; $70ce: $01 $80 $40
	add  b                                           ; $70d1: $80
	ld   l, b                                        ; $70d2: $68
	add  b                                           ; $70d3: $80
	ld   l, h                                        ; $70d4: $6c
	add  b                                           ; $70d5: $80
	and  d                                           ; $70d6: $a2
	add  b                                           ; $70d7: $80
	xor  e                                           ; $70d8: $ab
	add  b                                           ; $70d9: $80
	inc  l                                           ; $70da: $2c
	add  b                                           ; $70db: $80
	inc  a                                           ; $70dc: $3c
	add  b                                           ; $70dd: $80
	jr   nz, jr_07f_7060                             ; $70de: $20 $80

	nop                                              ; $70e0: $00
	add  b                                           ; $70e1: $80
	jp   z, $de80                                    ; $70e2: $ca $80 $de

	add  b                                           ; $70e5: $80
	xor  h                                           ; $70e6: $ac
	add  b                                           ; $70e7: $80
	xor  l                                           ; $70e8: $ad
	add  b                                           ; $70e9: $80
	and  h                                           ; $70ea: $a4
	add  b                                           ; $70eb: $80
	and  b                                           ; $70ec: $a0
	add  b                                           ; $70ed: $80
	and  h                                           ; $70ee: $a4
	add  b                                           ; $70ef: $80
	inc  bc                                          ; $70f0: $03
	add  b                                           ; $70f1: $80
	res  0, b                                        ; $70f2: $cb $80
	ei                                               ; $70f4: $fb
	add  b                                           ; $70f5: $80
	sub  l                                           ; $70f6: $95
	add  b                                           ; $70f7: $80
	push hl                                          ; $70f8: $e5
	add  b                                           ; $70f9: $80
	and  e                                           ; $70fa: $a3
	add  b                                           ; $70fb: $80
	and  a                                           ; $70fc: $a7
	add  b                                           ; $70fd: $80
	and  d                                           ; $70fe: $a2
	add  b                                           ; $70ff: $80
	add  b                                           ; $7100: $80
	add  b                                           ; $7101: $80
	ld   a, [$fe80]                                  ; $7102: $fa $80 $fe
	add  d                                           ; $7105: $82
	or   h                                           ; $7106: $b4
	add  d                                           ; $7107: $82
	sub  d                                           ; $7108: $92
	add  b                                           ; $7109: $80
	rla                                              ; $710a: $17
	add  b                                           ; $710b: $80
	nop                                              ; $710c: $00
	add  d                                           ; $710d: $82
	call z, $dc14                                    ; $710e: $cc $14 $dc
	rst  $38                                         ; $7111: $ff
	db   $eb                                         ; $7112: $eb
	rst  $38                                         ; $7113: $ff
	sub  b                                           ; $7114: $90
	rst  $38                                         ; $7115: $ff
	xor  d                                           ; $7116: $aa
	rst  $38                                         ; $7117: $ff
	adc  a                                           ; $7118: $8f
	rst  $38                                         ; $7119: $ff
	db   $fd                                         ; $711a: $fd
	rst  $38                                         ; $711b: $ff
	push bc                                          ; $711c: $c5
	rst  $38                                         ; $711d: $ff
	ld   b, e                                        ; $711e: $43
	ccf                                              ; $711f: $3f
	dec  [hl]                                        ; $7120: $35
	sbc  $16                                         ; $7121: $de $16
	sbc  $1a                                         ; $7123: $de $1a
	add  e                                           ; $7125: $83
	rst  $38                                         ; $7126: $ff
	nop                                              ; $7127: $00
	cp   $81                                         ; $7128: $fe $81
	rst  $38                                         ; $712a: $ff
	ld   [de], a                                     ; $712b: $12
	ld   sp, hl                                      ; $712c: $f9
	rst  $38                                         ; $712d: $ff
	add  sp, -$10                                    ; $712e: $e8 $f0
	db   $e4                                         ; $7130: $e4
	call nz, $eec8                                   ; $7131: $c4 $c8 $ee
	ldh  [$fe], a                                    ; $7134: $e0 $fe
	db   $fc                                         ; $7136: $fc
	rst  $38                                         ; $7137: $ff
	ld   c, d                                        ; $7138: $4a
	rst  $38                                         ; $7139: $ff
	or   d                                           ; $713a: $b2
	ld   e, a                                        ; $713b: $5f
	ld   e, h                                        ; $713c: $5c
	ld   [hl], e                                     ; $713d: $73
	adc  h                                           ; $713e: $8c
	add  b                                           ; $713f: $80
	ld   hl, sp-$80                                  ; $7140: $f8 $80
	db   $fc                                         ; $7142: $fc
	add  b                                           ; $7143: $80
	ccf                                              ; $7144: $3f
	add  b                                           ; $7145: $80
	sbc  a                                           ; $7146: $9f
	rlca                                             ; $7147: $07
	rst  $28                                         ; $7148: $ef
	ld   l, a                                        ; $7149: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $714a: $cf
	ld   c, a                                        ; $714b: $4f
	rst  $30                                         ; $714c: $f7
	rla                                              ; $714d: $17
	rst  $30                                         ; $714e: $f7
	rla                                              ; $714f: $17
	add  [hl]                                        ; $7150: $86
	nop                                              ; $7151: $00
	add  b                                           ; $7152: $80
	add  b                                           ; $7153: $80
	add  b                                           ; $7154: $80
	add  sp, -$80                                    ; $7155: $e8 $80
	db   $fc                                         ; $7157: $fc
	add  b                                           ; $7158: $80
	rst  $38                                         ; $7159: $ff
	add  b                                           ; $715a: $80
	nop                                              ; $715b: $00
	add  d                                           ; $715c: $82
	inc  bc                                          ; $715d: $03
	add  b                                           ; $715e: $80
	jr   @-$7c                                       ; $715f: $18 $82

	ld   a, b                                        ; $7161: $78
	add  c                                           ; $7162: $81
	ld   hl, sp+$01                                  ; $7163: $f8 $01
	ld   d, h                                        ; $7165: $54
	db   $ec                                         ; $7166: $ec
	add  b                                           ; $7167: $80
	ld   h, b                                        ; $7168: $60
	nop                                              ; $7169: $00
	ld   [hl], b                                     ; $716a: $70
	add  b                                           ; $716b: $80
	scf                                              ; $716c: $37
	ld   bc, $cfff                                   ; $716d: $01 $ff $cf
	add  b                                           ; $7170: $80
	rrca                                             ; $7171: $0f
	ld   bc, $8fff                                   ; $7172: $01 $ff $8f
	add  b                                           ; $7175: $80
	ld   [hl], a                                     ; $7176: $77
	ld   bc, $0171                                   ; $7177: $01 $71 $01
	add  b                                           ; $717a: $80
	inc  bc                                          ; $717b: $03
	add  b                                           ; $717c: $80
	dec  c                                           ; $717d: $0d
	ld   bc, $080e                                   ; $717e: $01 $0e $08
	add  c                                           ; $7181: $81
	ld   c, $00                                      ; $7182: $0e $00
	ld   d, $80                                      ; $7184: $16 $80
	sbc  [hl]                                        ; $7186: $9e
	nop                                              ; $7187: $00
	sbc  $80                                         ; $7188: $de $80
	db   $ec                                         ; $718a: $ec
	ld   [bc], a                                     ; $718b: $02
	ldh  [$7f], a                                    ; $718c: $e0 $7f
	ld   a, e                                        ; $718e: $7b
	add  h                                           ; $718f: $84
	ld   a, a                                        ; $7190: $7f
	rlca                                             ; $7191: $07
	ld   a, l                                        ; $7192: $7d
	ld   h, l                                        ; $7193: $65
	ld   a, [hl]                                     ; $7194: $7e
	ld   h, d                                        ; $7195: $62
	ld   l, d                                        ; $7196: $6a
	ld   c, d                                        ; $7197: $4a
	rrca                                             ; $7198: $0f
	ld   hl, sp-$77                                  ; $7199: $f8 $89
	rlca                                             ; $719b: $07
	add  b                                           ; $719c: $80
	nop                                              ; $719d: $00
	add  b                                           ; $719e: $80
	rrca                                             ; $719f: $0f
	ld   bc, $5faf                                   ; $71a0: $01 $af $5f
	add  d                                           ; $71a3: $82
	ld   e, [hl]                                     ; $71a4: $5e
	add  d                                           ; $71a5: $82
	ld   e, h                                        ; $71a6: $5c
	add  b                                           ; $71a7: $80
	inc  a                                           ; $71a8: $3c
	add  b                                           ; $71a9: $80
	jp   $ff80                                       ; $71aa: $c3 $80 $ff


	add  h                                           ; $71ad: $84
	call z, $de82                                    ; $71ae: $cc $82 $de
	add  b                                           ; $71b1: $80
	ld   d, b                                        ; $71b2: $50
	add  b                                           ; $71b3: $80
	ld   b, $80                                      ; $71b4: $06 $80
	rst  $38                                         ; $71b6: $ff
	adc  b                                           ; $71b7: $88
	sbc  $80                                         ; $71b8: $de $80
	sbc  h                                           ; $71ba: $9c
	add  b                                           ; $71bb: $80
	ld   bc, $ff80                                   ; $71bc: $01 $80 $ff
	add  h                                           ; $71bf: $84
	ei                                               ; $71c0: $fb
	add  d                                           ; $71c1: $82
	ld   a, c                                        ; $71c2: $79
	add  b                                           ; $71c3: $80
	db   $10                                         ; $71c4: $10
	add  b                                           ; $71c5: $80
	pop  bc                                          ; $71c6: $c1
	add  b                                           ; $71c7: $80
	rst  $38                                         ; $71c8: $ff
	add  d                                           ; $71c9: $82
	cp   $84                                         ; $71ca: $fe $84
	cp   [hl]                                        ; $71cc: $be
	add  b                                           ; $71cd: $80
	ld   [$8080], sp                                 ; $71ce: $08 $80 $80
	add  b                                           ; $71d1: $80
	rst  $38                                         ; $71d2: $ff
	add  b                                           ; $71d3: $80
	db   $ec                                         ; $71d4: $ec
	add  d                                           ; $71d5: $82
	ret  z                                           ; $71d6: $c8

	add  d                                           ; $71d7: $82
	ret  nz                                          ; $71d8: $c0

	add  b                                           ; $71d9: $80
	nop                                              ; $71da: $00
	add  d                                           ; $71db: $82
	rst  $38                                         ; $71dc: $ff
	add  hl, bc                                      ; $71dd: $09
	ld   c, $7f                                      ; $71de: $0e $7f
	ld   b, d                                        ; $71e0: $42
	rst  $38                                         ; $71e1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71e2: $cf
	rra                                              ; $71e3: $1f
	add  hl, de                                      ; $71e4: $19
	ccf                                              ; $71e5: $3f
	daa                                              ; $71e6: $27
	rra                                              ; $71e7: $1f
	add  b                                           ; $71e8: $80
	inc  bc                                          ; $71e9: $03
	ld   bc, $0002                                   ; $71ea: $01 $02 $00
	add  b                                           ; $71ed: $80
	ld   hl, sp+$0c                                  ; $71ee: $f8 $0c
	rlca                                             ; $71f0: $07
	db   $fc                                         ; $71f1: $fc
	ld   hl, sp-$01                                  ; $71f2: $f8 $ff
	dec  sp                                          ; $71f4: $3b
	db   $fc                                         ; $71f5: $fc
	call nz, Call_07f_47fd                           ; $71f6: $c4 $fd $47
	db   $ed                                         ; $71f9: $ed
	xor  h                                           ; $71fa: $ac
	xor  $ea                                         ; $71fb: $ee $ea
	add  b                                           ; $71fd: $80
	ld   l, a                                        ; $71fe: $6f
	dec  b                                           ; $71ff: $05
	inc  bc                                          ; $7200: $03
	db   $fd                                         ; $7201: $fd
	sbc  a                                           ; $7202: $9f
	sbc  l                                           ; $7203: $9d
	sub  c                                           ; $7204: $91
	sub  l                                           ; $7205: $95
	add  b                                           ; $7206: $80
	jp   hl                                          ; $7207: $e9


	rlca                                             ; $7208: $07
	and  b                                           ; $7209: $a0
	ld   d, b                                        ; $720a: $50
	ld   c, $06                                      ; $720b: $0e $06
	ld   [hl], $7e                                   ; $720d: $36 $7e
	ld   a, l                                        ; $720f: $7d
	dec  [hl]                                        ; $7210: $35
	add  b                                           ; $7211: $80
	ld   h, e                                        ; $7212: $63
	add  b                                           ; $7213: $80
	cpl                                              ; $7214: $2f
	add  d                                           ; $7215: $82
	rst  JumpTable                                         ; $7216: $df
	add  b                                           ; $7217: $80
	ld   a, a                                        ; $7218: $7f
	sub  [hl]                                        ; $7219: $96
	rst  $38                                         ; $721a: $ff
	add  b                                           ; $721b: $80
	ld   hl, sp-$80                                  ; $721c: $f8 $80
	cp   $8a                                         ; $721e: $fe $8a
	rst  $38                                         ; $7220: $ff
	inc  bc                                          ; $7221: $03
	rra                                              ; $7222: $1f
	rrca                                             ; $7223: $0f
	rra                                              ; $7224: $1f
	db   $10                                         ; $7225: $10
	add  c                                           ; $7226: $81
	rra                                              ; $7227: $1f
	nop                                              ; $7228: $00
	nop                                              ; $7229: $00
	add  d                                           ; $722a: $82
	add  b                                           ; $722b: $80
	add  b                                           ; $722c: $80
	ldh  [rDIV], a                                   ; $722d: $e0 $04
	rst  $38                                         ; $722f: $ff
	sbc  a                                           ; $7230: $9f
	ldh  [$60], a                                    ; $7231: $e0 $60
	ldh  [$80], a                                    ; $7233: $e0 $80
	ret  nz                                          ; $7235: $c0

	add  a                                           ; $7236: $87
	nop                                              ; $7237: $00
	add  b                                           ; $7238: $80
	ret  nz                                          ; $7239: $c0

	ld   [bc], a                                     ; $723a: $02
	nop                                              ; $723b: $00
	ld   sp, hl                                      ; $723c: $f9
	db   $fd                                         ; $723d: $fd
	add  b                                           ; $723e: $80
	ld   a, l                                        ; $723f: $7d
	add  b                                           ; $7240: $80
	sbc  l                                           ; $7241: $9d
	ld   bc, $6561                                   ; $7242: $01 $61 $65
	add  b                                           ; $7245: $80
	add  hl, de                                      ; $7246: $19
	add  b                                           ; $7247: $80
	dec  b                                           ; $7248: $05
	add  b                                           ; $7249: $80
	ld   bc, $ff00                                   ; $724a: $01 $00 $ff
	add  l                                           ; $724d: $85
	nop                                              ; $724e: $00
	inc  b                                           ; $724f: $04
	adc  a                                           ; $7250: $8f
	ld   [hl], b                                     ; $7251: $70
	add  d                                           ; $7252: $82
	add  a                                           ; $7253: $87
	rlca                                             ; $7254: $07
	add  b                                           ; $7255: $80
	ccf                                              ; $7256: $3f
	ld   bc, $02ff                                   ; $7257: $01 $ff $02
	add  l                                           ; $725a: $85
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	db   $fd                                         ; $725d: $fd
	add  l                                           ; $725e: $85
	rst  $38                                         ; $725f: $ff
	nop                                              ; $7260: $00
	ld   [bc], a                                     ; $7261: $02
	add  l                                           ; $7262: $85
	nop                                              ; $7263: $00
	nop                                              ; $7264: $00
	cp   $85                                         ; $7265: $fe $85
	rst  $38                                         ; $7267: $ff
	nop                                              ; $7268: $00
	ld   bc, $0085                                   ; $7269: $01 $85 $00
	add  [hl]                                        ; $726c: $86
	ldh  a, [rP1]                                    ; $726d: $f0 $00
	db   $fd                                         ; $726f: $fd
	add  b                                           ; $7270: $80

jr_07f_7271:
	rra                                              ; $7271: $1f
	ld   [bc], a                                     ; $7272: $02
	rlca                                             ; $7273: $07
	dec  b                                           ; $7274: $05
	nop                                              ; $7275: $00
	add  b                                           ; $7276: $80
	rst  $38                                         ; $7277: $ff
	add  b                                           ; $7278: $80
	nop                                              ; $7279: $00
	add  d                                           ; $727a: $82
	rst  $38                                         ; $727b: $ff
	add  b                                           ; $727c: $80
	ld   a, a                                        ; $727d: $7f
	nop                                              ; $727e: $00
	ld   [bc], a                                     ; $727f: $02
	add  d                                           ; $7280: $82
	rst  $38                                         ; $7281: $ff
	adc  c                                           ; $7282: $89
	ccf                                              ; $7283: $3f
	ld   bc, $bf7c                                   ; $7284: $01 $7c $bf
	add  b                                           ; $7287: $80
	adc  a                                           ; $7288: $8f
	add  b                                           ; $7289: $80
	add  a                                           ; $728a: $87
	add  b                                           ; $728b: $80
	add  e                                           ; $728c: $83
	nop                                              ; $728d: $00
	add  b                                           ; $728e: $80
	add  l                                           ; $728f: $85
	add  c                                           ; $7290: $81
	adc  b                                           ; $7291: $88
	ldh  a, [$80]                                    ; $7292: $f0 $80
	ld   [hl], b                                     ; $7294: $70
	add  b                                           ; $7295: $80
	db   $10                                         ; $7296: $10
	add  b                                           ; $7297: $80
	nop                                              ; $7298: $00
	ld   bc, $e718                                   ; $7299: $01 $18 $e7
	add  h                                           ; $729c: $84
	rst  $30                                         ; $729d: $f7
	add  b                                           ; $729e: $80
	ld   [hl], a                                     ; $729f: $77
	add  h                                           ; $72a0: $84
	rst  $30                                         ; $72a1: $f7
	nop                                              ; $72a2: $00
	ld   [bc], a                                     ; $72a3: $02
	add  e                                           ; $72a4: $83
	add  hl, sp                                      ; $72a5: $39

jr_07f_72a6:
	add  b                                           ; $72a6: $80
	jr   c, @+$04                                    ; $72a7: $38 $02

	dec  sp                                          ; $72a9: $3b
	jr   c, jr_07f_72e6                              ; $72aa: $38 $3a

	add  b                                           ; $72ac: $80
	ld   a, $81                                      ; $72ad: $3e $81
	ccf                                              ; $72af: $3f
	nop                                              ; $72b0: $00
	and  e                                           ; $72b1: $a3
	add  l                                           ; $72b2: $85
	ld   bc, $8100                                   ; $72b3: $01 $00 $81
	add  c                                           ; $72b6: $81
	ld   bc, $6100                                   ; $72b7: $01 $00 $61
	add  c                                           ; $72ba: $81
	add  c                                           ; $72bb: $81
	adc  [hl]                                        ; $72bc: $8e
	nop                                              ; $72bd: $00
	ld   bc, $38c7                                   ; $72be: $01 $c7 $38
	add  b                                           ; $72c1: $80
	cp   b                                           ; $72c2: $b8
	add  b                                           ; $72c3: $80
	ld   b, e                                        ; $72c4: $43
	add  b                                           ; $72c5: $80
	add  [hl]                                        ; $72c6: $86
	add  b                                           ; $72c7: $80
	sbc  [hl]                                        ; $72c8: $9e
	add  b                                           ; $72c9: $80
	adc  b                                           ; $72ca: $88
	add  b                                           ; $72cb: $80
	or   h                                           ; $72cc: $b4
	ld   b, $f4                                      ; $72cd: $06 $f4
	push af                                          ; $72cf: $f5
	ld   bc, $9818                                   ; $72d0: $01 $18 $98
	cp   [hl]                                        ; $72d3: $be
	inc  a                                           ; $72d4: $3c
	add  b                                           ; $72d5: $80
	ld   a, $06                                      ; $72d6: $3e $06
	ld   e, [hl]                                     ; $72d8: $5e
	ld   e, a                                        ; $72d9: $5f
	rst  $28                                         ; $72da: $ef
	jp   $aeef                                       ; $72db: $c3 $ef $ae


	ld   l, [hl]                                     ; $72de: $6e
	add  b                                           ; $72df: $80
	nop                                              ; $72e0: $00
	inc  b                                           ; $72e1: $04
	ld   a, [hl]                                     ; $72e2: $7e
	ld   bc, $8141                                   ; $72e3: $01 $41 $81

jr_07f_72e6:
	and  c                                           ; $72e6: $a1
	add  c                                           ; $72e7: $81
	add  c                                           ; $72e8: $81
	dec  b                                           ; $72e9: $05
	sub  c                                           ; $72ea: $91
	ld   bc, $010d                                   ; $72eb: $01 $0d $01
	inc  sp                                          ; $72ee: $33
	jr   nc, jr_07f_7271                             ; $72ef: $30 $80

	ld   c, $00                                      ; $72f1: $0e $00
	rst  $38                                         ; $72f3: $ff
	adc  c                                           ; $72f4: $89
	nop                                              ; $72f5: $00
	inc  b                                           ; $72f6: $04
	add  b                                           ; $72f7: $80
	nop                                              ; $72f8: $00
	ld   [hl], b                                     ; $72f9: $70
	nop                                              ; $72fa: $00
	dec  c                                           ; $72fb: $0d
	sbc  l                                           ; $72fc: $9d
	rst  $38                                         ; $72fd: $ff
	nop                                              ; $72fe: $00
	db   $fc                                         ; $72ff: $fc
	adc  l                                           ; $7300: $8d
	rst  $38                                         ; $7301: $ff
	nop                                              ; $7302: $00
	pop  af                                          ; $7303: $f1
	adc  l                                           ; $7304: $8d
	ldh  a, [rSB]                                    ; $7305: $f0 $01
	ld   h, b                                        ; $7307: $60
	sbc  a                                           ; $7308: $9f
	add  b                                           ; $7309: $80
	daa                                              ; $730a: $27
	add  b                                           ; $730b: $80
	sub  a                                           ; $730c: $97
	add  b                                           ; $730d: $80
	rst  ToBoot                                         ; $730e: $c7
	add  b                                           ; $730f: $80
	rst  $20                                         ; $7310: $e7

jr_07f_7311:
	add  b                                           ; $7311: $80
	rst  $30                                         ; $7312: $f7
	add  b                                           ; $7313: $80
	rst  $20                                         ; $7314: $e7
	add  b                                           ; $7315: $80
	rst  $30                                         ; $7316: $f7
	nop                                              ; $7317: $00
	ld   [bc], a                                     ; $7318: $02
	add  c                                           ; $7319: $81
	ccf                                              ; $731a: $3f
	nop                                              ; $731b: $00
	dec  a                                           ; $731c: $3d
	add  c                                           ; $731d: $81
	jr   c, jr_07f_7320                              ; $731e: $38 $00

jr_07f_7320:
	dec  sp                                          ; $7320: $3b
	add  c                                           ; $7321: $81
	jr   c, jr_07f_72a6                              ; $7322: $38 $82

	add  hl, sp                                      ; $7324: $39
	nop                                              ; $7325: $00
	ld   b, l                                        ; $7326: $45
	add  c                                           ; $7327: $81
	add  c                                           ; $7328: $81
	nop                                              ; $7329: $00
	pop  hl                                          ; $732a: $e1
	add  c                                           ; $732b: $81
	ld   bc, $8100                                   ; $732c: $01 $00 $81
	add  l                                           ; $732f: $85
	ld   bc, $6000                                   ; $7330: $01 $00 $60
	adc  l                                           ; $7333: $8d
	nop                                              ; $7334: $00
	ld   bc, $37c8                                   ; $7335: $01 $c8 $37
	add  b                                           ; $7338: $80
	rst  $30                                         ; $7339: $f7
	add  b                                           ; $733a: $80
	rst  $20                                         ; $733b: $e7
	add  b                                           ; $733c: $80
	ret  nc                                          ; $733d: $d0

	add  b                                           ; $733e: $80
	adc  $80                                         ; $733f: $ce $80
	ld   e, [hl]                                     ; $7341: $5e
	add  b                                           ; $7342: $80
	adc  [hl]                                        ; $7343: $8e
	add  b                                           ; $7344: $80
	or   [hl]                                        ; $7345: $b6
	nop                                              ; $7346: $00
	ld   [bc], a                                     ; $7347: $02
	add  d                                           ; $7348: $82
	ccf                                              ; $7349: $3f
	ld   bc, $9f1f                                   ; $734a: $01 $1f $9f
	add  c                                           ; $734d: $81
	adc  a                                           ; $734e: $8f
	ld   bc, $c7cf                                   ; $734f: $01 $cf $c7
	add  b                                           ; $7352: $80
	ld   b, a                                        ; $7353: $47

jr_07f_7354:
	add  b                                           ; $7354: $80
	rlca                                             ; $7355: $07
	nop                                              ; $7356: $00
	ld   a, e                                        ; $7357: $7b
	adc  l                                           ; $7358: $8d
	add  c                                           ; $7359: $81
	adc  [hl]                                        ; $735a: $8e
	nop                                              ; $735b: $00
	db   $10                                         ; $735c: $10
	inc  de                                          ; $735d: $13
	db   $ed                                         ; $735e: $ed
	ld   bc, $8303                                   ; $735f: $01 $03 $83
	add  a                                           ; $7362: $87
	rst  $20                                         ; $7363: $e7
	db   $e3                                         ; $7364: $e3
	ld   h, e                                        ; $7365: $63
	ld   h, c                                        ; $7366: $61

jr_07f_7367:
	jp   nz, Jump_07f_5adf                           ; $7367: $c2 $df $5a

	ld   e, [hl]                                     ; $736a: $5e
	inc  e                                           ; $736b: $1c
	dec  e                                           ; $736c: $1d
	ld   a, [de]                                     ; $736d: $1a
	add  b                                           ; $736e: $80
	jp   $fb04                                       ; $736f: $c3 $04 $fb


	jp   $bbfb                                       ; $7372: $c3 $fb $bb


	ei                                               ; $7375: $fb
	add  b                                           ; $7376: $80
	ld   hl, sp+$07                                  ; $7377: $f8 $07
	add  d                                           ; $7379: $82
	ld   [bc], a                                     ; $737a: $02
	ld   c, $fe                                      ; $737b: $0e $fe
	adc  $fe                                         ; $737d: $ce $fe
	pop  bc                                          ; $737f: $c1
	ld   bc, $3080                                   ; $7380: $01 $80 $30
	add  b                                           ; $7383: $80
	ld   a, $80                                      ; $7384: $3e $80
	rrca                                             ; $7386: $0f
	add  b                                           ; $7387: $80
	rla                                              ; $7388: $17
	add  h                                           ; $7389: $84
	ld   d, $01                                      ; $738a: $16 $01
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $738c: $cf
	ret  nz                                          ; $738d: $c0

	add  b                                           ; $738e: $80
	jr   nc, jr_07f_7311                             ; $738f: $30 $80

	nop                                              ; $7391: $00
	add  b                                           ; $7392: $80
	ret  nz                                          ; $7393: $c0

	add  b                                           ; $7394: $80
	ldh  a, [$80]                                    ; $7395: $f0 $80
	ld   [hl], b                                     ; $7397: $70
	add  b                                           ; $7398: $80
	db   $10                                         ; $7399: $10
	add  b                                           ; $739a: $80
	nop                                              ; $739b: $00
	ld   [bc], a                                     ; $739c: $02
	dec  hl                                          ; $739d: $2b
	xor  l                                           ; $739e: $ad
	adc  c                                           ; $739f: $89
	add  b                                           ; $73a0: $80
	add  c                                           ; $73a1: $81
	inc  bc                                          ; $73a2: $03
	ret  nz                                          ; $73a3: $c0

	sub  b                                           ; $73a4: $90
	ret  nc                                          ; $73a5: $d0

	ld   d, [hl]                                     ; $73a6: $56
	add  l                                           ; $73a7: $85
	sub  $03                                         ; $73a8: $d6 $03
	ld   a, h                                        ; $73aa: $7c
	db   $fc                                         ; $73ab: $fc
	ld   [hl], b                                     ; $73ac: $70
	ldh  a, [$80]                                    ; $73ad: $f0 $80
	nop                                              ; $73af: $00
	add  b                                           ; $73b0: $80
	db   $db                                         ; $73b1: $db
	add  b                                           ; $73b2: $80
	ei                                               ; $73b3: $fb
	add  d                                           ; $73b4: $82
	db   $eb                                         ; $73b5: $eb
	add  b                                           ; $73b6: $80
	db   $e3                                         ; $73b7: $e3
	add  d                                           ; $73b8: $82
	ld   d, $80                                      ; $73b9: $16 $80
	add  [hl]                                        ; $73bb: $86
	add  b                                           ; $73bc: $80
	add  $80                                         ; $73bd: $c6 $80
	and  $82                                         ; $73bf: $e6 $82
	ld   h, [hl]                                     ; $73c1: $66
	add  b                                           ; $73c2: $80
	ld   h, d                                        ; $73c3: $62
	ld   bc, $000f                                   ; $73c4: $01 $0f $00
	add  b                                           ; $73c7: $80
	jr   nz, jr_07f_7354                             ; $73c8: $20 $8a

	jr   nc, jr_07f_73cd                             ; $73ca: $30 $01

	adc  a                                           ; $73cc: $8f

jr_07f_73cd:
	add  b                                           ; $73cd: $80
	add  b                                           ; $73ce: $80
	ld   [$7e80], sp                                 ; $73cf: $08 $80 $7e
	adc  b                                           ; $73d2: $88
	ld   a, a                                        ; $73d3: $7f
	add  b                                           ; $73d4: $80
	nop                                              ; $73d5: $00
	add  b                                           ; $73d6: $80
	inc  c                                           ; $73d7: $0c
	add  b                                           ; $73d8: $80
	ccf                                              ; $73d9: $3f
	adc  b                                           ; $73da: $88
	rst  $38                                         ; $73db: $ff
	add  b                                           ; $73dc: $80
	nop                                              ; $73dd: $00

jr_07f_73de:
	add  b                                           ; $73de: $80
	db   $10                                         ; $73df: $10
	adc  d                                           ; $73e0: $8a
	ret  nc                                          ; $73e1: $d0

	nop                                              ; $73e2: $00
	ccf                                              ; $73e3: $3f
	add  e                                           ; $73e4: $83
	jr   nc, jr_07f_7367                             ; $73e5: $30 $80

	ld   b, b                                        ; $73e7: $40
	add  b                                           ; $73e8: $80
	ld   [hl], b                                     ; $73e9: $70
	add  b                                           ; $73ea: $80
	sub  b                                           ; $73eb: $90
	add  b                                           ; $73ec: $80
	ldh  [$81], a                                    ; $73ed: $e0 $81
	ldh  a, [rIE]                                    ; $73ef: $f0 $ff
	nop                                              ; $73f1: $00
	rst  $38                                         ; $73f2: $ff
	nop                                              ; $73f3: $00
	rst  $38                                         ; $73f4: $ff
	nop                                              ; $73f5: $00
	rst  $38                                         ; $73f6: $ff
	nop                                              ; $73f7: $00
	rst  $38                                         ; $73f8: $ff
	nop                                              ; $73f9: $00
	rst  $38                                         ; $73fa: $ff
	nop                                              ; $73fb: $00
	rst  $30                                         ; $73fc: $f7
	nop                                              ; $73fd: $00
	ld   [$0101], sp                                 ; $73fe: $08 $01 $01
	rst  $38                                         ; $7401: $ff
	nop                                              ; $7402: $00
	add  b                                           ; $7403: $80
	rst  $38                                         ; $7404: $ff
	add  b                                           ; $7405: $80
	ld   bc, $008b                                   ; $7406: $01 $8b $00
	add  b                                           ; $7409: $80
	rlca                                             ; $740a: $07
	adc  e                                           ; $740b: $8b
	nop                                              ; $740c: $00
	ld   [bc], a                                     ; $740d: $02
	rlca                                             ; $740e: $07
	rst  $38                                         ; $740f: $ff
	ld   hl, sp-$75                                  ; $7410: $f8 $8b
	nop                                              ; $7412: $00
	add  b                                           ; $7413: $80
	ld   hl, sp-$80                                  ; $7414: $f8 $80
	ld   [$0982], sp                                 ; $7416: $08 $82 $09
	inc  bc                                          ; $7419: $03
	ld   a, [bc]                                     ; $741a: $0a
	dec  bc                                          ; $741b: $0b
	dec  b                                           ; $741c: $05
	rlca                                             ; $741d: $07
	add  b                                           ; $741e: $80
	inc  bc                                          ; $741f: $03
	inc  b                                           ; $7420: $04
	dec  hl                                          ; $7421: $2b
	inc  l                                           ; $7422: $2c
	inc  e                                           ; $7423: $1c
	ld   e, $06                                      ; $7424: $1e $06
	add  d                                           ; $7426: $82
	ld   c, $80                                      ; $7427: $0e $80
	adc  [hl]                                        ; $7429: $8e
	add  b                                           ; $742a: $80
	adc  h                                           ; $742b: $8c
	add  b                                           ; $742c: $80
	add  c                                           ; $742d: $81
	add  b                                           ; $742e: $80
	add  b                                           ; $742f: $80
	add  b                                           ; $7430: $80
	ld   b, b                                        ; $7431: $40
	add  b                                           ; $7432: $80

jr_07f_7433:
	nop                                              ; $7433: $00
	add  b                                           ; $7434: $80
	ccf                                              ; $7435: $3f
	add  h                                           ; $7436: $84
	nop                                              ; $7437: $00
	add  b                                           ; $7438: $80
	rst  $38                                         ; $7439: $ff
	add  h                                           ; $743a: $84
	nop                                              ; $743b: $00
	add  b                                           ; $743c: $80
	rst  $38                                         ; $743d: $ff
	add  h                                           ; $743e: $84
	nop                                              ; $743f: $00

jr_07f_7440:
	add  b                                           ; $7440: $80
	rst  $38                                         ; $7441: $ff
	dec  b                                           ; $7442: $05
	nop                                              ; $7443: $00
	cp   $00                                         ; $7444: $fe $00
	inc  b                                           ; $7446: $04
	ld   [$8102], sp                                 ; $7447: $08 $02 $81
	nop                                              ; $744a: $00
	add  b                                           ; $744b: $80
	inc  c                                           ; $744c: $0c
	add  b                                           ; $744d: $80
	ld   [bc], a                                     ; $744e: $02
	add  d                                           ; $744f: $82
	nop                                              ; $7450: $00
	ld   bc, $1c4e                                   ; $7451: $01 $4e $1c
	add  b                                           ; $7454: $80
	db   $10                                         ; $7455: $10
	ld   bc, $d173                                   ; $7456: $01 $73 $d1
	add  b                                           ; $7459: $80
	nop                                              ; $745a: $00
	add  b                                           ; $745b: $80
	jr   nc, jr_07f_73de                             ; $745c: $30 $80

	ld   h, b                                        ; $745e: $60
	add  hl, bc                                      ; $745f: $09
	ld   b, h                                        ; $7460: $44
	ld   c, h                                        ; $7461: $4c

jr_07f_7462:
	nop                                              ; $7462: $00
	jr   jr_07f_7462                                 ; $7463: $18 $fd

	inc  b                                           ; $7465: $04
	dec  b                                           ; $7466: $05
	inc  c                                           ; $7467: $0c
	add  hl, bc                                      ; $7468: $09
	jp   hl                                          ; $7469: $e9


	add  b                                           ; $746a: $80
	nop                                              ; $746b: $00
	inc  bc                                          ; $746c: $03
	add  hl, de                                      ; $746d: $19
	jr   jr_07f_74a3                                 ; $746e: $18 $33

	ld   sp, $0180                                   ; $7470: $31 $80 $01
	inc  bc                                          ; $7473: $03
	rst  $20                                         ; $7474: $e7
	ld   h, e                                        ; $7475: $63
	ld   b, a                                        ; $7476: $47
	ret  nz                                          ; $7477: $c0

	add  b                                           ; $7478: $80
	inc  c                                           ; $7479: $0c
	add  b                                           ; $747a: $80
	ret  nc                                          ; $747b: $d0

Call_07f_747c:
	add  b                                           ; $747c: $80
	nop                                              ; $747d: $00
	ld   [bc], a                                     ; $747e: $02
	add  b                                           ; $747f: $80
	ld   h, b                                        ; $7480: $60
	ldh  [$80], a                                    ; $7481: $e0 $80
	ldh  a, [rP1]                                    ; $7483: $f0 $00
	ld   hl, sp-$80                                  ; $7485: $f8 $80
	ei                                               ; $7487: $fb
	ld   bc, $00f8                                   ; $7488: $01 $f8 $00
	add  b                                           ; $748b: $80
	inc  c                                           ; $748c: $0c
	add  b                                           ; $748d: $80
	reti                                             ; $748e: $d9


	add  b                                           ; $748f: $80
	db   $10                                         ; $7490: $10
	add  b                                           ; $7491: $80
	nop                                              ; $7492: $00
	dec  b                                           ; $7493: $05
	jr   jr_07f_74ce                                 ; $7494: $18 $38

	inc  d                                           ; $7496: $14
	ld   [hl], h                                     ; $7497: $74
	jr   nz, jr_07f_74fa                             ; $7498: $20 $60

	add  b                                           ; $749a: $80
	nop                                              ; $749b: $00
	add  b                                           ; $749c: $80
	inc  bc                                          ; $749d: $03
	add  b                                           ; $749e: $80
	inc  b                                           ; $749f: $04
	add  b                                           ; $74a0: $80
	ld   h, h                                        ; $74a1: $64
	add  b                                           ; $74a2: $80

jr_07f_74a3:
	ret  nc                                          ; $74a3: $d0

	add  b                                           ; $74a4: $80
	add  b                                           ; $74a5: $80
	inc  b                                           ; $74a6: $04
	inc  e                                           ; $74a7: $1c
	nop                                              ; $74a8: $00
	ld   [hl+], a                                    ; $74a9: $22
	ld   e, $20                                      ; $74aa: $1e $20
	add  c                                           ; $74ac: $81
	nop                                              ; $74ad: $00
	add  b                                           ; $74ae: $80
	add  e                                           ; $74af: $83
	add  b                                           ; $74b0: $80
	jr   nc, jr_07f_7433                             ; $74b1: $30 $80

	ld   l, b                                        ; $74b3: $68
	add  b                                           ; $74b4: $80
	ld   b, b                                        ; $74b5: $40
	dec  b                                           ; $74b6: $05
	inc  c                                           ; $74b7: $0c
	inc  e                                           ; $74b8: $1c
	add  d                                           ; $74b9: $82
	or   d                                           ; $74ba: $b2
	jr   nz, jr_07f_74bd                             ; $74bb: $20 $00

jr_07f_74bd:
	add  b                                           ; $74bd: $80
	jr   nc, jr_07f_7440                             ; $74be: $30 $80

	ld   b, a                                        ; $74c0: $47
	add  b                                           ; $74c1: $80
	ld   b, b                                        ; $74c2: $40
	add  b                                           ; $74c3: $80
	nop                                              ; $74c4: $00
	dec  b                                           ; $74c5: $05
	inc  c                                           ; $74c6: $0c
	inc  e                                           ; $74c7: $1c
	nop                                              ; $74c8: $00
	jr   nc, @+$03                                   ; $74c9: $30 $01

	ld   hl, $0080                                   ; $74cb: $21 $80 $00

jr_07f_74ce:
	rlca                                             ; $74ce: $07
	db   $10                                         ; $74cf: $10
	ld   [$93bb], sp                                 ; $74d0: $08 $bb $93
	jr   nc, jr_07f_74f5                             ; $74d3: $30 $20

	sbc  $fe                                         ; $74d5: $de $fe
	add  b                                           ; $74d7: $80
	ld   [bc], a                                     ; $74d8: $02
	add  b                                           ; $74d9: $80
	inc  bc                                          ; $74da: $03
	inc  b                                           ; $74db: $04
	ld   [hl], b                                     ; $74dc: $70
	pop  af                                          ; $74dd: $f1
	ld   a, l                                        ; $74de: $7d
	inc  c                                           ; $74df: $0c
	nop                                              ; $74e0: $00
	add  b                                           ; $74e1: $80
	ld   c, $80                                      ; $74e2: $0e $80
	ld   b, $80                                      ; $74e4: $06 $80
	rlca                                             ; $74e6: $07
	add  b                                           ; $74e7: $80
	ld   bc, $0881                                   ; $74e8: $01 $81 $08
	add  b                                           ; $74eb: $80
	ld   a, [bc]                                     ; $74ec: $0a
	nop                                              ; $74ed: $00
	ld   sp, hl                                      ; $74ee: $f9
	add  b                                           ; $74ef: $80
	add  hl, de                                      ; $74f0: $19
	add  b                                           ; $74f1: $80

jr_07f_74f2:
	ld   de, $3980                                   ; $74f2: $11 $80 $39

jr_07f_74f5:
	nop                                              ; $74f5: $00
	ld   bc, $0080                                   ; $74f6: $01 $80 $00

jr_07f_74f9:
	ld   [bc], a                                     ; $74f9: $02

jr_07f_74fa:
	ld   b, b                                        ; $74fa: $40
	ld   b, a                                        ; $74fb: $47
	rlca                                             ; $74fc: $07
	add  c                                           ; $74fd: $81
	nop                                              ; $74fe: $00
	ld   bc, $e3e4                                   ; $74ff: $01 $e4 $e3
	add  b                                           ; $7502: $80
	db   $d3                                         ; $7503: $d3
	add  b                                           ; $7504: $80
	sub  e                                           ; $7505: $93
	ld   a, [bc]                                     ; $7506: $0a
	add  a                                           ; $7507: $87
	add  e                                           ; $7508: $83
	jp   $e0c0                                       ; $7509: $c3 $c0 $e0


	db   $e3                                         ; $750c: $e3
	dec  bc                                          ; $750d: $0b
	rrca                                             ; $750e: $0f
	rla                                              ; $750f: $17
	ccf                                              ; $7510: $3f
	cpl                                              ; $7511: $2f
	add  c                                           ; $7512: $81
	ldh  a, [$0c]                                    ; $7513: $f0 $0c
	rst  $30                                         ; $7515: $f7
	rst  $20                                         ; $7516: $e7
	ldh  a, [$c0]                                    ; $7517: $f0 $c0
	ldh  [rP1], a                                    ; $7519: $e0 $00
	rla                                              ; $751b: $17
	add  a                                           ; $751c: $87
	add  b                                           ; $751d: $80
	ldh  [$d0], a                                    ; $751e: $e0 $d0
	db   $fc                                         ; $7520: $fc
	db   $ec                                         ; $7521: $ec
	add  b                                           ; $7522: $80
	ld   b, b                                        ; $7523: $40
	dec  b                                           ; $7524: $05
	nop                                              ; $7525: $00
	sbc  c                                           ; $7526: $99
	add  c                                           ; $7527: $81
	ld   h, [hl]                                     ; $7528: $66
	nop                                              ; $7529: $00
	add  c                                           ; $752a: $81
	add  b                                           ; $752b: $80
	nop                                              ; $752c: $00
	nop                                              ; $752d: $00
	rst  $38                                         ; $752e: $ff
	add  d                                           ; $752f: $82
	nop                                              ; $7530: $00
	ld   [bc], a                                     ; $7531: $02
	jr   nz, jr_07f_7572                             ; $7532: $20 $3e

	ld   a, [hl]                                     ; $7534: $7e
	add  c                                           ; $7535: $81
	ld   a, $17                                      ; $7536: $3e $17
	ld   a, [hl]                                     ; $7538: $7e
	inc  a                                           ; $7539: $3c
	inc  e                                           ; $753a: $1c
	nop                                              ; $753b: $00
	ret  nz                                          ; $753c: $c0

	pop  bc                                          ; $753d: $c1
	dec  e                                           ; $753e: $1d
	inc  d                                           ; $753f: $14
	ld   [hl], a                                     ; $7540: $77
	ld   a, a                                        ; $7541: $7f
	jr   nz, jr_07f_757c                             ; $7542: $20 $38

	cp   b                                           ; $7544: $b8
	jr   c, jr_07f_755f                              ; $7545: $38 $18

	nop                                              ; $7547: $00
	sbc  b                                           ; $7548: $98
	ld   e, $26                                      ; $7549: $1e $26
	ccf                                              ; $754b: $3f
	db   $10                                         ; $754c: $10
	rst  $38                                         ; $754d: $ff
	ldh  a, [rP1]                                    ; $754e: $f0 $00
	add  b                                           ; $7550: $80
	ret  nz                                          ; $7551: $c0

	dec  b                                           ; $7552: $05
	inc  e                                           ; $7553: $1c
	inc  b                                           ; $7554: $04
	ld   a, [de]                                     ; $7555: $1a
	ld   a, [hl]                                     ; $7556: $7e
	add  e                                           ; $7557: $83
	rst  $38                                         ; $7558: $ff
	add  d                                           ; $7559: $82
	ld   bc, $e180                                   ; $755a: $01 $80 $e1
	add  d                                           ; $755d: $82
	inc  h                                           ; $755e: $24

jr_07f_755f:
	ld   bc, $08f7                                   ; $755f: $01 $f7 $08
	add  c                                           ; $7562: $81
	rrca                                             ; $7563: $0f
	adc  c                                           ; $7564: $89
	nop                                              ; $7565: $00
	ld   [bc], a                                     ; $7566: $02
	ld   [hl], b                                     ; $7567: $70
	add  b                                           ; $7568: $80
	nop                                              ; $7569: $00
	add  b                                           ; $756a: $80
	pop  hl                                          ; $756b: $e1
	inc  bc                                          ; $756c: $03
	jr   nz, @+$32                                   ; $756d: $20 $30

	db   $10                                         ; $756f: $10
	jr   jr_07f_74f2                                 ; $7570: $18 $80

jr_07f_7572:
	stop                                             ; $7572: $10 $00
	jr   jr_07f_74f9                                 ; $7574: $18 $83

	nop                                              ; $7576: $00
	add  d                                           ; $7577: $82
	rst  $38                                         ; $7578: $ff
	adc  d                                           ; $7579: $8a
	nop                                              ; $757a: $00
	add  b                                           ; $757b: $80

jr_07f_757c:
	db   $fc                                         ; $757c: $fc
	add  b                                           ; $757d: $80
	rst  $38                                         ; $757e: $ff
	add  b                                           ; $757f: $80
	ld   bc, $0089                                   ; $7580: $01 $89 $00
	add  b                                           ; $7583: $80
	inc  bc                                          ; $7584: $03
	add  c                                           ; $7585: $81
	nop                                              ; $7586: $00
	add  b                                           ; $7587: $80
	add  b                                           ; $7588: $80
	add  b                                           ; $7589: $80
	ret  nz                                          ; $758a: $c0

	add  b                                           ; $758b: $80
	ld   b, b                                        ; $758c: $40
	add  c                                           ; $758d: $81
	nop                                              ; $758e: $00
	add  b                                           ; $758f: $80
	rst  $38                                         ; $7590: $ff
	nop                                              ; $7591: $00
	nop                                              ; $7592: $00
	add  b                                           ; $7593: $80
	rst  $38                                         ; $7594: $ff
	adc  c                                           ; $7595: $89
	nop                                              ; $7596: $00
	add  b                                           ; $7597: $80
	ldh  [rP1], a                                    ; $7598: $e0 $00
	nop                                              ; $759a: $00
	add  b                                           ; $759b: $80
	ld   hl, sp+$00                                  ; $759c: $f8 $00
	ld   [$0d82], sp                                 ; $759e: $08 $82 $0d
	ld   [bc], a                                     ; $75a1: $02
	ld   c, $0f                                      ; $75a2: $0e $0f
	add  hl, bc                                      ; $75a4: $09
	add  b                                           ; $75a5: $80
	rlca                                             ; $75a6: $07
	dec  b                                           ; $75a7: $05
	inc  bc                                          ; $75a8: $03
	dec  hl                                          ; $75a9: $2b
	inc  l                                           ; $75aa: $2c
	inc  e                                           ; $75ab: $1c
	ld   e, $06                                      ; $75ac: $1e $06
	add  d                                           ; $75ae: $82
	ld   c, $80                                      ; $75af: $0e $80
	adc  [hl]                                        ; $75b1: $8e
	add  b                                           ; $75b2: $80
	adc  h                                           ; $75b3: $8c
	add  b                                           ; $75b4: $80
	add  c                                           ; $75b5: $81
	add  b                                           ; $75b6: $80
	add  b                                           ; $75b7: $80
	rrca                                             ; $75b8: $0f
	nop                                              ; $75b9: $00

Jump_07f_75ba:
	db   $10                                         ; $75ba: $10
	ld   [$d9f9], sp                                 ; $75bb: $08 $f9 $d9
	ld   a, [de]                                     ; $75be: $1a

jr_07f_75bf:
	db   $10                                         ; $75bf: $10
	ld   c, [hl]                                     ; $75c0: $4e
	ei                                               ; $75c1: $fb
	jp   Jump_07f_46c2                               ; $75c2: $c3 $c2 $46


	call nz, $8f0a                                   ; $75c5: $c4 $0a $8f
	add  c                                           ; $75c8: $81
	add  c                                           ; $75c9: $81
	nop                                              ; $75ca: $00
	add  b                                           ; $75cb: $80
	adc  $02                                         ; $75cc: $ce $02
	jr   nc, jr_07f_75d0                             ; $75ce: $30 $00

jr_07f_75d0:
	ld   c, h                                        ; $75d0: $4c
	add  b                                           ; $75d1: $80
	db   $10                                         ; $75d2: $10
	ld   b, $54                                      ; $75d3: $06 $54
	inc  b                                           ; $75d5: $04
	ld   e, $a2                                      ; $75d6: $1e $a2
	adc  [hl]                                        ; $75d8: $8e
	ld   e, $00                                      ; $75d9: $1e $00
	add  b                                           ; $75db: $80
	ld   h, b                                        ; $75dc: $60
	add  b                                           ; $75dd: $80
	add  e                                           ; $75de: $83
	add  b                                           ; $75df: $80
	add  [hl]                                        ; $75e0: $86
	ld   [$3202], sp                                 ; $75e1: $08 $02 $32
	jr   z, jr_07f_765e                              ; $75e4: $28 $78

	ld   d, h                                        ; $75e6: $54
	db   $f4                                         ; $75e7: $f4
	add  b                                           ; $75e8: $80

jr_07f_75e9:
	ldh  a, [$b0]                                    ; $75e9: $f0 $b0
	add  d                                           ; $75eb: $82
	nop                                              ; $75ec: $00
	add  b                                           ; $75ed: $80
	sbc  [hl]                                        ; $75ee: $9e
	add  b                                           ; $75ef: $80
	nop                                              ; $75f0: $00
	ld   [$7b03], sp                                 ; $75f1: $08 $03 $7b
	ld   a, b                                        ; $75f4: $78
	db   $e4                                         ; $75f5: $e4
	db   $fc                                         ; $75f6: $fc
	jp   c, $3cfe                                    ; $75f7: $da $fe $3c

	nop                                              ; $75fa: $00
	add  b                                           ; $75fb: $80
	ld   h, b                                        ; $75fc: $60
	add  b                                           ; $75fd: $80
	adc  [hl]                                        ; $75fe: $8e
	add  b                                           ; $75ff: $80
	add  b                                           ; $7600: $80
	add  c                                           ; $7601: $81
	nop                                              ; $7602: $00
	dec  b                                           ; $7603: $05
	inc  e                                           ; $7604: $1c
	ld   [bc], a                                     ; $7605: $02
	ld   a, $1c                                      ; $7606: $3e $1c
	inc  a                                           ; $7608: $3c
	nop                                              ; $7609: $00
	add  b                                           ; $760a: $80
	inc  bc                                          ; $760b: $03
	nop                                              ; $760c: $00
	nop                                              ; $760d: $00
	add  b                                           ; $760e: $80
	ld   h, c                                        ; $760f: $61
	add  b                                           ; $7610: $80
	add  d                                           ; $7611: $82
	add  b                                           ; $7612: $80
	add  b                                           ; $7613: $80
	add  b                                           ; $7614: $80
	nop                                              ; $7615: $00
	inc  c                                           ; $7616: $0c
	ld   bc, $0200                                   ; $7617: $01 $00 $02
	nop                                              ; $761a: $00
	or   h                                           ; $761b: $b4
	jr   nz, jr_07f_75bf                             ; $761c: $20 $a1

	ld   [hl+], a                                    ; $761e: $22
	sub  [hl]                                        ; $761f: $96
	add  d                                           ; $7620: $82
	jr   jr_07f_765b                                 ; $7621: $18 $38

	nop                                              ; $7623: $00

jr_07f_7624:
	add  b                                           ; $7624: $80
	ld   h, b                                        ; $7625: $60
	dec  b                                           ; $7626: $05
	jr   nz, jr_07f_75e9                             ; $7627: $20 $c0

	nop                                              ; $7629: $00
	ld   hl, $9d01                                   ; $762a: $21 $01 $9d
	add  b                                           ; $762d: $80
	jr   c, @+$0c                                    ; $762e: $38 $0a

	jr   z, jr_07f_7688                              ; $7630: $28 $56

	inc  bc                                          ; $7632: $03
	ld   [$0018], sp                                 ; $7633: $08 $18 $00
	jr   nc, jr_07f_7638                             ; $7636: $30 $00

jr_07f_7638:
	ld   hl, $0100                                   ; $7638: $21 $00 $01
	add  b                                           ; $763b: $80
	cp   c                                           ; $763c: $b9
	nop                                              ; $763d: $00
	ld   a, a                                        ; $763e: $7f
	add  b                                           ; $763f: $80
	nop                                              ; $7640: $00
	ld   [bc], a                                     ; $7641: $02
	jr   nc, jr_07f_7624                             ; $7642: $30 $e0

	and  b                                           ; $7644: $a0
	add  b                                           ; $7645: $80
	nop                                              ; $7646: $00
	inc  de                                          ; $7647: $13
	ld   b, b                                        ; $7648: $40
	ret  nz                                          ; $7649: $c0

	nop                                              ; $764a: $00
	add  b                                           ; $764b: $80
	nop                                              ; $764c: $00
	jr   nc, jr_07f_766f                             ; $764d: $30 $20

	ld   [hl], b                                     ; $764f: $70
	ld   c, a                                        ; $7650: $4f

jr_07f_7651:
	jr   jr_07f_76ab                                 ; $7651: $18 $58

	inc  e                                           ; $7653: $1c
	add  b                                           ; $7654: $80
	cp   $83                                         ; $7655: $fe $83
	add  b                                           ; $7657: $80
	add  d                                           ; $7658: $82
	add  b                                           ; $7659: $80
	add  h                                           ; $765a: $84

jr_07f_765b:
	add  a                                           ; $765b: $87
	add  d                                           ; $765c: $82
	inc  h                                           ; $765d: $24

jr_07f_765e:
	add  b                                           ; $765e: $80
	ldh  a, [$80]                                    ; $765f: $f0 $80
	nop                                              ; $7661: $00
	rlca                                             ; $7662: $07
	ldh  a, [c]                                      ; $7663: $f2
	ld   a, [hl-]                                    ; $7664: $3a
	ld   c, b                                        ; $7665: $48
	ld   a, h                                        ; $7666: $7c
	db   $fc                                         ; $7667: $fc
	cp   $01                                         ; $7668: $fe $01
	rst  $38                                         ; $766a: $ff
	add  b                                           ; $766b: $80
	nop                                              ; $766c: $00
	inc  b                                           ; $766d: $04
	inc  bc                                          ; $766e: $03

jr_07f_766f:
	nop                                              ; $766f: $00
	jp   $befe                                       ; $7670: $c3 $fe $be


	add  b                                           ; $7673: $80
	cp   $80                                         ; $7674: $fe $80
	ld   a, $09                                      ; $7676: $3e $09
	inc  e                                           ; $7678: $1c
	ld   e, h                                        ; $7679: $5c
	nop                                              ; $767a: $00
	add  c                                           ; $767b: $81
	ld   bc, $403c                                   ; $767c: $01 $3c $40
	rst  JumpTable                                         ; $767f: $df
	nop                                              ; $7680: $00
	rst  JumpTable                                         ; $7681: $df
	add  c                                           ; $7682: $81
	inc  e                                           ; $7683: $1c
	ld   [bc], a                                     ; $7684: $02
	jr   nc, jr_07f_7687                             ; $7685: $30 $00

jr_07f_7687:
	db   $10                                         ; $7687: $10

jr_07f_7688:
	add  b                                           ; $7688: $80
	nop                                              ; $7689: $00
	ld   [bc], a                                     ; $768a: $02
	inc  a                                           ; $768b: $3c
	jp   $80ff                                       ; $768c: $c3 $ff $80


	nop                                              ; $768f: $00
	ld   [bc], a                                     ; $7690: $02
	add  b                                           ; $7691: $80
	nop                                              ; $7692: $00
	add  a                                           ; $7693: $87
	add  b                                           ; $7694: $80
	ld   h, b                                        ; $7695: $60
	add  b                                           ; $7696: $80
	ldh  a, [$80]                                    ; $7697: $f0 $80
	pop  af                                          ; $7699: $f1
	add  b                                           ; $769a: $80
	dec  b                                           ; $769b: $05
	inc  b                                           ; $769c: $04
	inc  b                                           ; $769d: $04
	nop                                              ; $769e: $00
	jp   $03c2                                       ; $769f: $c3 $c2 $03


	add  b                                           ; $76a2: $80
	nop                                              ; $76a3: $00
	nop                                              ; $76a4: $00
	pop  af                                          ; $76a5: $f1
	add  c                                           ; $76a6: $81
	jr   nz, jr_07f_76b1                             ; $76a7: $20 $08

jr_07f_76a9:
	inc  h                                           ; $76a9: $24
	ld   l, b                                        ; $76aa: $68

jr_07f_76ab:
	ld   c, e                                        ; $76ab: $4b
	ld   hl, sp+$78                                  ; $76ac: $f8 $78
	ld   hl, sp+$1f                                  ; $76ae: $f8 $1f
	ld   [hl], a                                     ; $76b0: $77

jr_07f_76b1:
	rlca                                             ; $76b1: $07
	add  b                                           ; $76b2: $80
	and  b                                           ; $76b3: $a0
	nop                                              ; $76b4: $00
	ret  nz                                          ; $76b5: $c0

	add  d                                           ; $76b6: $82
	nop                                              ; $76b7: $00
	add  b                                           ; $76b8: $80
	pop  hl                                          ; $76b9: $e1
	add  b                                           ; $76ba: $80
	inc  bc                                          ; $76bb: $03
	inc  bc                                          ; $76bc: $03
	add  e                                           ; $76bd: $83
	inc  bc                                          ; $76be: $03
	ld   h, a                                        ; $76bf: $67
	rst  $20                                         ; $76c0: $e7
	add  d                                           ; $76c1: $82
	nop                                              ; $76c2: $00
	ld   [bc], a                                     ; $76c3: $02
	ld   l, a                                        ; $76c4: $6f
	ld   [hl], b                                     ; $76c5: $70
	ld   d, b                                        ; $76c6: $50
	add  d                                           ; $76c7: $82
	ld   [hl], b                                     ; $76c8: $70
	add  b                                           ; $76c9: $80
	jr   nz, jr_07f_76cf                             ; $76ca: $20 $03

	nop                                              ; $76cc: $00
	ldh  [$80], a                                    ; $76cd: $e0 $80

jr_07f_76cf:
	jr   nc, jr_07f_7651                             ; $76cf: $30 $80

	db   $10                                         ; $76d1: $10
	dec  b                                           ; $76d2: $05
	nop                                              ; $76d3: $00
	dec  bc                                          ; $76d4: $0b
	inc  [hl]                                        ; $76d5: $34
	jr   c, jr_07f_7750                              ; $76d6: $38 $78

	ld   h, b                                        ; $76d8: $60
	add  d                                           ; $76d9: $82
	ld   [hl], b                                     ; $76da: $70
	add  b                                           ; $76db: $80
	ld   [hl], c                                     ; $76dc: $71
	add  b                                           ; $76dd: $80
	ld   sp, $8180                                   ; $76de: $31 $80 $81
	rlca                                             ; $76e1: $07
	ld   bc, $000e                                   ; $76e2: $01 $0e $00
	inc  de                                          ; $76e5: $13
	rra                                              ; $76e6: $1f
	inc  sp                                          ; $76e7: $33
	db   $10                                         ; $76e8: $10
	ret  nz                                          ; $76e9: $c0

	add  c                                           ; $76ea: $81
	sub  b                                           ; $76eb: $90
	inc  bc                                          ; $76ec: $03
	db   $10                                         ; $76ed: $10
	ret  nc                                          ; $76ee: $d0

	sub  b                                           ; $76ef: $90
	ldh  [$80], a                                    ; $76f0: $e0 $80
	ret  nz                                          ; $76f2: $c0

	ld   bc, $003f                                   ; $76f3: $01 $3f $00
	add  c                                           ; $76f6: $81
	rst  $38                                         ; $76f7: $ff
	adc  c                                           ; $76f8: $89
	nop                                              ; $76f9: $00
	ld   bc, $00e0                                   ; $76fa: $01 $e0 $00
	add  c                                           ; $76fd: $81
	ldh  [rSC], a                                    ; $76fe: $e0 $02
	nop                                              ; $7700: $00
	ld   bc, $8100                                   ; $7701: $01 $00 $81
	ld   [bc], a                                     ; $7704: $02
	nop                                              ; $7705: $00
	inc  bc                                          ; $7706: $03
	add  b                                           ; $7707: $80
	ld   bc, $0080                                   ; $7708: $01 $80 $00
	dec  b                                           ; $770b: $05
	rrca                                             ; $770c: $0f
	ld   bc, $ffce                                   ; $770d: $01 $ce $ff
	cp   a                                           ; $7710: $bf
	add  b                                           ; $7711: $80
	adc  b                                           ; $7712: $88
	nop                                              ; $7713: $00
	ld   [bc], a                                     ; $7714: $02
	db   $fc                                         ; $7715: $fc
	ld   a, h                                        ; $7716: $7c
	add  b                                           ; $7717: $80
	add  b                                           ; $7718: $80
	rst  $38                                         ; $7719: $ff
	adc  e                                           ; $771a: $8b
	nop                                              ; $771b: $00
	dec  b                                           ; $771c: $05
	ld   b, $87                                      ; $771d: $06 $87
	add  l                                           ; $771f: $85
	inc  b                                           ; $7720: $04
	ld   [$8000], sp                                 ; $7721: $08 $00 $80
	db   $10                                         ; $7724: $10
	add  b                                           ; $7725: $80
	jr   jr_07f_76a9                                 ; $7726: $18 $81

	ld   [$0002], sp                                 ; $7728: $08 $02 $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $772b: $cf
	jr   nc, @-$7d                                   ; $772c: $30 $81

	ldh  a, [$89]                                    ; $772e: $f0 $89
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	ldh  a, [rIE]                                    ; $7732: $f0 $ff
	nop                                              ; $7734: $00
	rst  $38                                         ; $7735: $ff
	nop                                              ; $7736: $00
	rst  $38                                         ; $7737: $ff
	nop                                              ; $7738: $00
	rst  $38                                         ; $7739: $ff
	nop                                              ; $773a: $00
	rst  $38                                         ; $773b: $ff
	nop                                              ; $773c: $00
	rst  $38                                         ; $773d: $ff
	nop                                              ; $773e: $00
	rst  $38                                         ; $773f: $ff
	nop                                              ; $7740: $00
	rst  $38                                         ; $7741: $ff
	nop                                              ; $7742: $00
	push hl                                          ; $7743: $e5
	nop                                              ; $7744: $00
	ld   c, l                                        ; $7745: $4d
	ld   bc, $0000                                   ; $7746: $01 $00 $00
	adc  l                                           ; $7749: $8d
	rrca                                             ; $774a: $0f
	nop                                              ; $774b: $00
	ld   [hl], b                                     ; $774c: $70
	adc  b                                           ; $774d: $88
	sbc  a                                           ; $774e: $9f
	add  b                                           ; $774f: $80

jr_07f_7750:
	sbc  [hl]                                        ; $7750: $9e
	add  b                                           ; $7751: $80
	sbc  b                                           ; $7752: $98
	inc  bc                                          ; $7753: $03
	add  b                                           ; $7754: $80
	add  hl, hl                                      ; $7755: $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7756: $cf
	pop  bc                                          ; $7757: $c1
	add  e                                           ; $7758: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7759: $cf
	nop                                              ; $775a: $00
	rst  $28                                         ; $775b: $ef
	add  b                                           ; $775c: $80
	adc  a                                           ; $775d: $8f
	add  b                                           ; $775e: $80
	rra                                              ; $775f: $1f
	inc  bc                                          ; $7760: $03
	ld   e, a                                        ; $7761: $5f
	ld   e, [hl]                                     ; $7762: $5e
	ld   c, [hl]                                     ; $7763: $4e
	adc  c                                           ; $7764: $89
	add  e                                           ; $7765: $83
	ld   sp, hl                                      ; $7766: $f9
	add  e                                           ; $7767: $83
	ld   hl, sp+$07                                  ; $7768: $f8 $07
	pop  hl                                          ; $776a: $e1
	and  c                                           ; $776b: $a1
	add  a                                           ; $776c: $87
	rlca                                             ; $776d: $07
	rra                                              ; $776e: $1f
	sub  a                                           ; $776f: $97
	ld   hl, sp-$10                                  ; $7770: $f8 $f0
	add  b                                           ; $7772: $80
	pop  hl                                          ; $7773: $e1
	ld   bc, $0787                                   ; $7774: $01 $87 $07
	add  b                                           ; $7777: $80
	rra                                              ; $7778: $1f
	add  b                                           ; $7779: $80
	nop                                              ; $777a: $00
	ld   c, $ff                                      ; $777b: $0e $ff
	cp   $ff                                         ; $777d: $fe $ff
	ld   hl, sp-$02                                  ; $777f: $f8 $fe
	ld   sp, hl                                      ; $7781: $f9
	ld   bc, $ff07                                   ; $7782: $01 $07 $ff
	db   $f4                                         ; $7785: $f4
	db   $fc                                         ; $7786: $fc
	jp   hl                                          ; $7787: $e9


	ld   sp, hl                                      ; $7788: $f9
	rst  $10                                         ; $7789: $d7
	scf                                              ; $778a: $37
	add  b                                           ; $778b: $80
	jp   nz, $8080                                   ; $778c: $c2 $80 $80

	add  c                                           ; $778f: $81
	nop                                              ; $7790: $00
	add  b                                           ; $7791: $80
	ld   de, $0380                                   ; $7792: $11 $80 $03
	add  b                                           ; $7795: $80
	rst  JumpTable                                         ; $7796: $df
	add  b                                           ; $7797: $80
	rst  $38                                         ; $7798: $ff
	add  b                                           ; $7799: $80
	adc  a                                           ; $779a: $8f
	add  b                                           ; $779b: $80
	ld   bc, $3f80                                   ; $779c: $01 $80 $3f
	ld   bc, $8606                                   ; $779f: $01 $06 $86
	add  c                                           ; $77a2: $81
	ret  nz                                          ; $77a3: $c0

	ld   bc, $8f4f                                   ; $77a4: $01 $4f $8f
	add  b                                           ; $77a7: $80
	sbc  a                                           ; $77a8: $9f
	ld   b, $b6                                      ; $77a9: $06 $b6
	rst  $30                                         ; $77ab: $f7
	pop  de                                          ; $77ac: $d1
	di                                               ; $77ad: $f3
	pop  hl                                          ; $77ae: $e1
	rst  ToBoot                                         ; $77af: $c7
	push bc                                          ; $77b0: $c5
	add  b                                           ; $77b1: $80
	ld   bc, $0080                                   ; $77b2: $01 $80 $00
	ld   b, $07                                      ; $77b5: $06 $07
	db   $e3                                         ; $77b7: $e3
	rst  $20                                         ; $77b8: $e7
	adc  l                                           ; $77b9: $8d
	rst  $28                                         ; $77ba: $ef
	ld   h, d                                        ; $77bb: $62
	db   $e3                                         ; $77bc: $e3
	add  b                                           ; $77bd: $80
	ldh  [rSC], a                                    ; $77be: $e0 $02
	rst  $28                                         ; $77c0: $ef
	sbc  a                                           ; $77c1: $9f
	sub  b                                           ; $77c2: $90
	add  b                                           ; $77c3: $80
	db   $fd                                         ; $77c4: $fd
	add  b                                           ; $77c5: $80
	nop                                              ; $77c6: $00
	add  b                                           ; $77c7: $80
	rst  ToBoot                                         ; $77c8: $c7
	ld   b, $ff                                      ; $77c9: $06 $ff
	cp   $ff                                         ; $77cb: $fe $ff

jr_07f_77cd:
	pop  af                                          ; $77cd: $f1
	rst  $38                                         ; $77ce: $ff
	ldh  a, [rP1]                                    ; $77cf: $f0 $00
	add  b                                           ; $77d1: $80
	ld   bc, $0000                                   ; $77d2: $01 $00 $00
	add  b                                           ; $77d5: $80
	rst  $38                                         ; $77d6: $ff
	add  b                                           ; $77d7: $80
	nop                                              ; $77d8: $00
	nop                                              ; $77d9: $00
	add  b                                           ; $77da: $80
	add  b                                           ; $77db: $80
	rst  JumpTable                                         ; $77dc: $df
	inc  bc                                          ; $77dd: $03
	ld   e, a                                        ; $77de: $5f
	rst  JumpTable                                         ; $77df: $df
	db   $10                                         ; $77e0: $10
	rra                                              ; $77e1: $1f
	add  b                                           ; $77e2: $80
	rrca                                             ; $77e3: $0f
	ld   [bc], a                                     ; $77e4: $02
	rst  $38                                         ; $77e5: $ff
	di                                               ; $77e6: $f3
	inc  bc                                          ; $77e7: $03
	add  b                                           ; $77e8: $80
	cp   a                                           ; $77e9: $bf
	add  c                                           ; $77ea: $81
	db   $10                                         ; $77eb: $10
	ld   b, $f2                                      ; $77ec: $06 $f2
	ldh  [c], a                                      ; $77ee: $e2
	add  h                                           ; $77ef: $84
	db   $e4                                         ; $77f0: $e4
	ld   a, b                                        ; $77f1: $78
	ld   hl, sp-$20                                  ; $77f2: $f8 $e0
	add  b                                           ; $77f4: $80
	call nz, $c702                                   ; $77f5: $c4 $02 $c7
	add  $01                                         ; $77f8: $c6 $01
	add  b                                           ; $77fa: $80
	inc  b                                           ; $77fb: $04
	add  b                                           ; $77fc: $80
	ld   b, $80                                      ; $77fd: $06 $80
	inc  bc                                          ; $77ff: $03
	inc  bc                                          ; $7800: $03
	pop  hl                                          ; $7801: $e1
	db   $ed                                         ; $7802: $ed
	adc  h                                           ; $7803: $8c
	cp   h                                           ; $7804: $bc
	add  b                                           ; $7805: $80
	ld   a, h                                        ; $7806: $7c
	nop                                              ; $7807: $00
	inc  a                                           ; $7808: $3c
	add  b                                           ; $7809: $80
	ldh  a, [rP1]                                    ; $780a: $f0 $00
	nop                                              ; $780c: $00
	add  b                                           ; $780d: $80
	inc  bc                                          ; $780e: $03
	nop                                              ; $780f: $00
	nop                                              ; $7810: $00
	add  b                                           ; $7811: $80
	ld   a, [hl]                                     ; $7812: $7e
	dec  bc                                          ; $7813: $0b
	cp   a                                           ; $7814: $bf
	ccf                                              ; $7815: $3f
	rst  JumpTable                                         ; $7816: $df
	sbc  a                                           ; $7817: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7818: $cf
	ld   l, a                                        ; $7819: $6f
	ld   [hl], a                                     ; $781a: $77
	daa                                              ; $781b: $27
	dec  sp                                          ; $781c: $3b
	inc  de                                          ; $781d: $13
	dec  e                                           ; $781e: $1d
	inc  b                                           ; $781f: $04
	add  c                                           ; $7820: $81
	ld   bc, $fc82                                   ; $7821: $01 $82 $fc
	add  [hl]                                        ; $7824: $86
	rst  $38                                         ; $7825: $ff
	db   $10                                         ; $7826: $10
	rlca                                             ; $7827: $07
	sub  a                                           ; $7828: $97
	add  a                                           ; $7829: $87
	rst  $30                                         ; $782a: $f7
	pop  de                                          ; $782b: $d1
	pop  af                                          ; $782c: $f1
	or   b                                           ; $782d: $b0
	ldh  a, [$b7]                                    ; $782e: $f0 $b7
	scf                                              ; $7830: $37
	rlca                                             ; $7831: $07
	rst  ToBoot                                         ; $7832: $c7
	jp   $f0f3                                       ; $7833: $c3 $f3 $f0


	ld   hl, sp+$07                                  ; $7836: $f8 $07
	add  a                                           ; $7838: $87
	rrca                                             ; $7839: $0f
	ld   [bc], a                                     ; $783a: $02
	inc  c                                           ; $783b: $0c
	rrca                                             ; $783c: $0f
	inc  bc                                          ; $783d: $03
	add  b                                           ; $783e: $80
	rrca                                             ; $783f: $0f
	ld   [bc], a                                     ; $7840: $02
	ld   c, $76                                      ; $7841: $0e $76
	adc  b                                           ; $7843: $88
	add  b                                           ; $7844: $80
	cp   b                                           ; $7845: $b8
	inc  b                                           ; $7846: $04
	or   b                                           ; $7847: $b0
	cp   b                                           ; $7848: $b8
	adc  b                                           ; $7849: $88
	cp   b                                           ; $784a: $b8
	jr   c, jr_07f_77cd                              ; $784b: $38 $80

	cp   b                                           ; $784d: $b8
	add  b                                           ; $784e: $80
	and  b                                           ; $784f: $a0
	add  b                                           ; $7850: $80
	jr   @-$7e                                       ; $7851: $18 $80

	rst  ToBoot                                         ; $7853: $c7
	add  b                                           ; $7854: $80
	ld   [hl], b                                     ; $7855: $70
	add  b                                           ; $7856: $80
	ld   b, e                                        ; $7857: $43
	add  b                                           ; $7858: $80
	ld   b, h                                        ; $7859: $44
	add  b                                           ; $785a: $80
	rlca                                             ; $785b: $07
	add  b                                           ; $785c: $80
	nop                                              ; $785d: $00
	dec  b                                           ; $785e: $05
	ld   a, a                                        ; $785f: $7f
	rlca                                             ; $7860: $07
	ld   a, b                                        ; $7861: $78
	ld   b, b                                        ; $7862: $40
	rst  ToBoot                                         ; $7863: $c7
	add  a                                           ; $7864: $87
	add  b                                           ; $7865: $80
	ld   a, a                                        ; $7866: $7f
	add  b                                           ; $7867: $80
	rst  $38                                         ; $7868: $ff
	add  b                                           ; $7869: $80
	ld   a, a                                        ; $786a: $7f
	add  d                                           ; $786b: $82
	ccf                                              ; $786c: $3f
	add  b                                           ; $786d: $80
	cp   a                                           ; $786e: $bf
	add  b                                           ; $786f: $80
	ld   a, a                                        ; $7870: $7f
	ld   [bc], a                                     ; $7871: $02
	rst  $38                                         ; $7872: $ff
	ldh  [rIE], a                                    ; $7873: $e0 $ff
	add  c                                           ; $7875: $81
	ldh  [$89], a                                    ; $7876: $e0 $89
	rst  $38                                         ; $7878: $ff
	ld   bc, $ff00                                   ; $7879: $01 $00 $ff
	add  c                                           ; $787c: $81
	nop                                              ; $787d: $00
	add  d                                           ; $787e: $82
	rst  $38                                         ; $787f: $ff
	add  d                                           ; $7880: $82
	cp   $80                                         ; $7881: $fe $80
	db   $fd                                         ; $7883: $fd
	ld   [bc], a                                     ; $7884: $02
	ei                                               ; $7885: $fb
	inc  b                                           ; $7886: $04
	rst  $38                                         ; $7887: $ff
	add  c                                           ; $7888: $81
	nop                                              ; $7889: $00
	add  b                                           ; $788a: $80
	cp   a                                           ; $788b: $bf
	add  b                                           ; $788c: $80
	ld   a, a                                        ; $788d: $7f
	add  b                                           ; $788e: $80
	rst  $38                                         ; $788f: $ff
	add  b                                           ; $7890: $80
	nop                                              ; $7891: $00
	add  c                                           ; $7892: $81
	rst  $38                                         ; $7893: $ff
	ld   bc, $ff00                                   ; $7894: $01 $00 $ff
	add  c                                           ; $7897: $81
	nop                                              ; $7898: $00
	add  h                                           ; $7899: $84
	rst  $38                                         ; $789a: $ff
	add  b                                           ; $789b: $80
	nop                                              ; $789c: $00
	add  c                                           ; $789d: $81
	rst  $38                                         ; $789e: $ff
	ld   bc, $ff00                                   ; $789f: $01 $00 $ff
	add  c                                           ; $78a2: $81
	nop                                              ; $78a3: $00
	add  h                                           ; $78a4: $84
	rst  $38                                         ; $78a5: $ff
	add  b                                           ; $78a6: $80
	nop                                              ; $78a7: $00
	add  c                                           ; $78a8: $81
	rst  $38                                         ; $78a9: $ff
	ld   bc, $ff00                                   ; $78aa: $01 $00 $ff
	add  c                                           ; $78ad: $81
	nop                                              ; $78ae: $00
	add  h                                           ; $78af: $84
	rst  $38                                         ; $78b0: $ff
	add  b                                           ; $78b1: $80
	nop                                              ; $78b2: $00
	add  c                                           ; $78b3: $81
	rst  $38                                         ; $78b4: $ff
	ld   bc, $ff00                                   ; $78b5: $01 $00 $ff
	add  c                                           ; $78b8: $81
	nop                                              ; $78b9: $00
	add  h                                           ; $78ba: $84
	rst  $38                                         ; $78bb: $ff
	add  b                                           ; $78bc: $80
	nop                                              ; $78bd: $00
	add  c                                           ; $78be: $81
	rst  $38                                         ; $78bf: $ff
	ld   bc, $ff00                                   ; $78c0: $01 $00 $ff
	add  c                                           ; $78c3: $81
	nop                                              ; $78c4: $00
	add  h                                           ; $78c5: $84
	rst  $38                                         ; $78c6: $ff
	add  b                                           ; $78c7: $80
	nop                                              ; $78c8: $00
	add  c                                           ; $78c9: $81
	rst  $38                                         ; $78ca: $ff
	ld   bc, $ff00                                   ; $78cb: $01 $00 $ff
	add  c                                           ; $78ce: $81
	nop                                              ; $78cf: $00
	add  h                                           ; $78d0: $84
	rst  $38                                         ; $78d1: $ff
	add  b                                           ; $78d2: $80
	nop                                              ; $78d3: $00
	add  c                                           ; $78d4: $81
	rst  $38                                         ; $78d5: $ff
	ld   [bc], a                                     ; $78d6: $02
	rlca                                             ; $78d7: $07
	cp   $06                                         ; $78d8: $fe $06
	add  b                                           ; $78da: $80
	rlca                                             ; $78db: $07
	add  h                                           ; $78dc: $84
	rst  $38                                         ; $78dd: $ff
	add  b                                           ; $78de: $80
	nop                                              ; $78df: $00
	add  h                                           ; $78e0: $84
	rst  $38                                         ; $78e1: $ff
	add  b                                           ; $78e2: $80
	ld   a, a                                        ; $78e3: $7f
	add  b                                           ; $78e4: $80
	cp   a                                           ; $78e5: $bf
	add  b                                           ; $78e6: $80
	rst  JumpTable                                         ; $78e7: $df
	add  b                                           ; $78e8: $80
	rst  $28                                         ; $78e9: $ef
	add  b                                           ; $78ea: $80
	rlca                                             ; $78eb: $07
	add  b                                           ; $78ec: $80
	ei                                               ; $78ed: $fb
	add  b                                           ; $78ee: $80
	db   $fd                                         ; $78ef: $fd
	add  b                                           ; $78f0: $80
	cp   $8b                                         ; $78f1: $fe $8b
	rst  $38                                         ; $78f3: $ff
	add  [hl]                                        ; $78f4: $86
	nop                                              ; $78f5: $00
	nop                                              ; $78f6: $00
	rst  $38                                         ; $78f7: $ff
	add  b                                           ; $78f8: $80
	ld   b, $80                                      ; $78f9: $06 $80
	ld   a, [de]                                     ; $78fb: $1a
	add  b                                           ; $78fc: $80
	dec  a                                           ; $78fd: $3d
	ld   bc, $827d                                   ; $78fe: $01 $7d $82
	add  l                                           ; $7901: $85
	nop                                              ; $7902: $00
	nop                                              ; $7903: $00
	rst  $38                                         ; $7904: $ff
	add  b                                           ; $7905: $80
	cp   $80                                         ; $7906: $fe $80
	rst  $38                                         ; $7908: $ff
	add  b                                           ; $7909: $80
	ld   a, a                                        ; $790a: $7f
	ld   bc, $817e                                   ; $790b: $01 $7e $81
	add  l                                           ; $790e: $85
	nop                                              ; $790f: $00
	nop                                              ; $7910: $00
	rst  $38                                         ; $7911: $ff
	add  b                                           ; $7912: $80
	ld   c, b                                        ; $7913: $48
	add  b                                           ; $7914: $80
	ld   h, e                                        ; $7915: $63
	add  b                                           ; $7916: $80
	rrca                                             ; $7917: $0f
	ld   bc, $c03f                                   ; $7918: $01 $3f $c0
	add  l                                           ; $791b: $85
	nop                                              ; $791c: $00
	add  [hl]                                        ; $791d: $86
	ldh  a, [$81]                                    ; $791e: $f0 $81
	rst  $38                                         ; $7920: $ff
	add  b                                           ; $7921: $80
	db   $fc                                         ; $7922: $fc
	add  b                                           ; $7923: $80
	ldh  a, [$80]                                    ; $7924: $f0 $80
	add  e                                           ; $7926: $83
	add  b                                           ; $7927: $80
	rra                                              ; $7928: $1f
	add  d                                           ; $7929: $82
	ld   a, a                                        ; $792a: $7f
	add  b                                           ; $792b: $80
	ccf                                              ; $792c: $3f
	add  b                                           ; $792d: $80
	add  a                                           ; $792e: $87
	add  b                                           ; $792f: $80
	ccf                                              ; $7930: $3f
	add  [hl]                                        ; $7931: $86
	rst  $38                                         ; $7932: $ff
	add  b                                           ; $7933: $80
	cp   $80                                         ; $7934: $fe $80
	ldh  [$86], a                                    ; $7936: $e0 $86
	rst  $38                                         ; $7938: $ff
	add  b                                           ; $7939: $80
	cp   $80                                         ; $793a: $fe $80
	ldh  [$81], a                                    ; $793c: $e0 $81
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	rrca                                             ; $7940: $0f
	add  h                                           ; $7941: $84
	ldh  a, [$80]                                    ; $7942: $f0 $80
	ldh  [$84], a                                    ; $7944: $e0 $84
	nop                                              ; $7946: $00
	ld   bc, $7d70                                   ; $7947: $01 $70 $7d
	add  c                                           ; $794a: $81
	or   $04                                         ; $794b: $f6 $04
	sub  $76                                         ; $794d: $d6 $76
	ld   d, [hl]                                     ; $794f: $56
	ld   d, $14                                      ; $7950: $16 $14
	add  b                                           ; $7952: $80
	ldh  [rSB], a                                    ; $7953: $e0 $01
	nop                                              ; $7955: $00
	ld   [bc], a                                     ; $7956: $02
	add  c                                           ; $7957: $81
	or   $00                                         ; $7958: $f6 $00
	dec  bc                                          ; $795a: $0b
	add  l                                           ; $795b: $85
	rst  $38                                         ; $795c: $ff
	add  d                                           ; $795d: $82
	ld   a, a                                        ; $795e: $7f
	add  d                                           ; $795f: $82
	rst  $38                                         ; $7960: $ff
	add  d                                           ; $7961: $82
	db   $fc                                         ; $7962: $fc
	adc  d                                           ; $7963: $8a
	db   $fd                                         ; $7964: $fd
	nop                                              ; $7965: $00
	rrca                                             ; $7966: $0f
	adc  l                                           ; $7967: $8d
	ld   [hl], b                                     ; $7968: $70
	ld   [bc], a                                     ; $7969: $02
	ld   a, l                                        ; $796a: $7d
	or   $f4                                         ; $796b: $f6 $f4
	add  b                                           ; $796d: $80
	ldh  [rTAC], a                                   ; $796e: $e0 $07
	nop                                              ; $7970: $00
	ld   [bc], a                                     ; $7971: $02
	or   $d6                                         ; $7972: $f6 $d6
	halt                                             ; $7974: $76
	ld   d, [hl]                                     ; $7975: $56
	ld   d, $12                                      ; $7976: $16 $12
	add  c                                           ; $7978: $81
	or   $01                                         ; $7979: $f6 $01
	rrca                                             ; $797b: $0f
	rst  $38                                         ; $797c: $ff
	add  d                                           ; $797d: $82
	ld   a, a                                        ; $797e: $7f
	adc  b                                           ; $797f: $88
	rst  $38                                         ; $7980: $ff
	adc  [hl]                                        ; $7981: $8e
	db   $fd                                         ; $7982: $fd
	nop                                              ; $7983: $00
	rrca                                             ; $7984: $0f
	adc  l                                           ; $7985: $8d
	ld   [hl], b                                     ; $7986: $70
	nop                                              ; $7987: $00
	ld   a, a                                        ; $7988: $7f
	add  b                                           ; $7989: $80
	ld   a, $80                                      ; $798a: $3e $80
	cp   [hl]                                        ; $798c: $be
	add  b                                           ; $798d: $80
	sbc  a                                           ; $798e: $9f
	add  b                                           ; $798f: $80
	ld   e, [hl]                                     ; $7990: $5e
	add  b                                           ; $7991: $80
	xor  b                                           ; $7992: $a8
	add  b                                           ; $7993: $80
	and  e                                           ; $7994: $a3
	add  b                                           ; $7995: $80
	adc  a                                           ; $7996: $8f
	add  b                                           ; $7997: $80
	ccf                                              ; $7998: $3f
	add  b                                           ; $7999: $80
	cp   b                                           ; $799a: $b8
	add  b                                           ; $799b: $80
	add  e                                           ; $799c: $83
	add  b                                           ; $799d: $80
	rrca                                             ; $799e: $0f
	add  b                                           ; $799f: $80
	ccf                                              ; $79a0: $3f
	add  d                                           ; $79a1: $82
	rst  $38                                         ; $79a2: $ff
	add  b                                           ; $79a3: $80
	db   $fc                                         ; $79a4: $fc
	add  b                                           ; $79a5: $80
	ldh  [$82], a                                    ; $79a6: $e0 $82
	rst  $38                                         ; $79a8: $ff
	add  b                                           ; $79a9: $80
	cp   $80                                         ; $79aa: $fe $80
	ld   hl, sp-$80                                  ; $79ac: $f8 $80
	ret  nz                                          ; $79ae: $c0

	add  b                                           ; $79af: $80
	rlca                                             ; $79b0: $07
	add  b                                           ; $79b1: $80
	ccf                                              ; $79b2: $3f
	nop                                              ; $79b3: $00
	rst  $38                                         ; $79b4: $ff
	add  c                                           ; $79b5: $81
	ldh  a, [$80]                                    ; $79b6: $f0 $80
	ret  nz                                          ; $79b8: $c0

	add  b                                           ; $79b9: $80
	nop                                              ; $79ba: $00
	add  b                                           ; $79bb: $80
	jr   nc, @-$79                                   ; $79bc: $30 $85

	ldh  a, [rP1]                                    ; $79be: $f0 $00
	rst  $38                                         ; $79c0: $ff
	add  b                                           ; $79c1: $80
	ld   a, [hl]                                     ; $79c2: $7e
	add  b                                           ; $79c3: $80
	ld   h, b                                        ; $79c4: $60
	add  d                                           ; $79c5: $82
	nop                                              ; $79c6: $00
	add  b                                           ; $79c7: $80
	inc  bc                                          ; $79c8: $03
	add  b                                           ; $79c9: $80
	ccf                                              ; $79ca: $3f
	add  b                                           ; $79cb: $80
	nop                                              ; $79cc: $00
	add  b                                           ; $79cd: $80
	ld   h, b                                        ; $79ce: $60
	add  d                                           ; $79cf: $82
	nop                                              ; $79d0: $00
	add  b                                           ; $79d1: $80
	rlca                                             ; $79d2: $07
	add  b                                           ; $79d3: $80
	ld   a, a                                        ; $79d4: $7f
	add  c                                           ; $79d5: $81
	rst  $38                                         ; $79d6: $ff
	ld   bc, $3fc0                                   ; $79d7: $01 $c0 $3f
	add  b                                           ; $79da: $80
	ld   a, a                                        ; $79db: $7f
	nop                                              ; $79dc: $00
	nop                                              ; $79dd: $00
	add  b                                           ; $79de: $80
	rrca                                             ; $79df: $0f
	add  a                                           ; $79e0: $87
	rst  $38                                         ; $79e1: $ff
	ld   bc, $f807                                   ; $79e2: $01 $07 $f8
	add  b                                           ; $79e5: $80
	db   $fc                                         ; $79e6: $fc
	nop                                              ; $79e7: $00
	rrca                                             ; $79e8: $0f
	adc  d                                           ; $79e9: $8a
	ldh  a, [$81]                                    ; $79ea: $f0 $81
	ld   [hl], b                                     ; $79ec: $70
	ld   [bc], a                                     ; $79ed: $02
	ld   e, l                                        ; $79ee: $5d
	halt                                             ; $79ef: $76
	ld   d, [hl]                                     ; $79f0: $56
	add  b                                           ; $79f1: $80
	ld   d, $01                                      ; $79f2: $16 $01
	or   $f4                                         ; $79f4: $f6 $f4
	add  b                                           ; $79f6: $80
	ldh  [rTAC], a                                   ; $79f7: $e0 $07
	nop                                              ; $79f9: $00
	ld   [bc], a                                     ; $79fa: $02
	or   $d6                                         ; $79fb: $f6 $d6
	halt                                             ; $79fd: $76
	ld   d, [hl]                                     ; $79fe: $56
	ld   d, $eb                                      ; $79ff: $16 $eb
	add  e                                           ; $7a01: $83
	rst  $38                                         ; $7a02: $ff
	add  d                                           ; $7a03: $82
	ld   a, a                                        ; $7a04: $7f
	add  h                                           ; $7a05: $84
	rst  $38                                         ; $7a06: $ff
	adc  [hl]                                        ; $7a07: $8e
	db   $fd                                         ; $7a08: $fd
	nop                                              ; $7a09: $00
	rrca                                             ; $7a0a: $0f
	adc  l                                           ; $7a0b: $8d
	ld   [hl], b                                     ; $7a0c: $70
	nop                                              ; $7a0d: $00
	ld   a, a                                        ; $7a0e: $7f
	add  b                                           ; $7a0f: $80
	ldh  [rDIV], a                                   ; $7a10: $e0 $04
	nop                                              ; $7a12: $00
	ld   [hl], $f6                                   ; $7a13: $36 $f6
	or   [hl]                                        ; $7a15: $b6
	halt                                             ; $7a16: $76
	add  b                                           ; $7a17: $80
	ld   d, $82                                      ; $7a18: $16 $82
	or   $80                                         ; $7a1a: $f6 $80
	ld   [bc], a                                     ; $7a1c: $02
	add  d                                           ; $7a1d: $82
	ld   a, a                                        ; $7a1e: $7f
	adc  d                                           ; $7a1f: $8a
	rst  $38                                         ; $7a20: $ff
	adc  [hl]                                        ; $7a21: $8e
	db   $fd                                         ; $7a22: $fd
	nop                                              ; $7a23: $00
	rrca                                             ; $7a24: $0f
	adc  l                                           ; $7a25: $8d
	ld   [hl], b                                     ; $7a26: $70
	ld   bc, $007f                                   ; $7a27: $01 $7f $00
	add  b                                           ; $7a2a: $80
	jr   nc, @-$7e                                   ; $7a2b: $30 $80

	halt                                             ; $7a2d: $76
	add  b                                           ; $7a2e: $80
	ld   [hl], $80                                   ; $7a2f: $36 $80
	ld   b, $80                                      ; $7a31: $06 $80
	ld   h, b                                        ; $7a33: $60
	add  b                                           ; $7a34: $80
	jr   nc, @-$7e                                   ; $7a35: $30 $80

	ld   [hl], $82                                   ; $7a37: $36 $82
	ld   a, a                                        ; $7a39: $7f
	add  h                                           ; $7a3a: $84
	rst  $38                                         ; $7a3b: $ff
	add  d                                           ; $7a3c: $82
	ld   a, a                                        ; $7a3d: $7f
	add  b                                           ; $7a3e: $80
	rst  $38                                         ; $7a3f: $ff
	adc  [hl]                                        ; $7a40: $8e
	db   $fd                                         ; $7a41: $fd
	nop                                              ; $7a42: $00
	rrca                                             ; $7a43: $0f
	adc  l                                           ; $7a44: $8d
	ld   [hl], b                                     ; $7a45: $70
	inc  b                                           ; $7a46: $04
	ld   c, c                                        ; $7a47: $49
	ld   [hl], $10                                   ; $7a48: $36 $10
	sub  b                                           ; $7a4a: $90
	add  b                                           ; $7a4b: $80
	add  b                                           ; $7a4c: $80
	ldh  [$80], a                                    ; $7a4d: $e0 $80
	ld   hl, sp-$80                                  ; $7a4f: $f8 $80
	cp   $83                                         ; $7a51: $fe $83
	rst  $38                                         ; $7a53: $ff
	nop                                              ; $7a54: $00
	nop                                              ; $7a55: $00
	add  l                                           ; $7a56: $85
	rst  $38                                         ; $7a57: $ff
	add  b                                           ; $7a58: $80
	ld   a, a                                        ; $7a59: $7f
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	add  b                                           ; $7a5c: $80
	add  b                                           ; $7a5d: $80
	add  c                                           ; $7a5e: $81
	rst  $38                                         ; $7a5f: $ff
	nop                                              ; $7a60: $00
	ld   [bc], a                                     ; $7a61: $02
	add  e                                           ; $7a62: $83
	db   $fd                                         ; $7a63: $fd
	add  d                                           ; $7a64: $82
	db   $fc                                         ; $7a65: $fc
	add  c                                           ; $7a66: $81
	nop                                              ; $7a67: $00
	add  b                                           ; $7a68: $80
	ret  nz                                          ; $7a69: $c0

	ld   bc, $f3fc                                   ; $7a6a: $01 $fc $f3
	adc  d                                           ; $7a6d: $8a
	ld   [hl], b                                     ; $7a6e: $70
	add  b                                           ; $7a6f: $80
	jr   nc, jr_07f_7a73                             ; $7a70: $30 $01

	nop                                              ; $7a72: $00

jr_07f_7a73:
	ldh  a, [rIE]                                    ; $7a73: $f0 $ff
	nop                                              ; $7a75: $00
	rst  $38                                         ; $7a76: $ff
	nop                                              ; $7a77: $00
	rst  $38                                         ; $7a78: $ff
	nop                                              ; $7a79: $00
	rst  $38                                         ; $7a7a: $ff
	nop                                              ; $7a7b: $00
	rst  $38                                         ; $7a7c: $ff
	nop                                              ; $7a7d: $00
	rst  $38                                         ; $7a7e: $ff
	nop                                              ; $7a7f: $00
	rst  $30                                         ; $7a80: $f7
	nop                                              ; $7a81: $00
	ld   [de], a                                     ; $7a82: $12
	ld   bc, $0900                                   ; $7a83: $01 $00 $09
	add  c                                           ; $7a86: $81
	rrca                                             ; $7a87: $0f
	ld   [$0f0d], sp                                 ; $7a88: $08 $0d $0f
	inc  bc                                          ; $7a8b: $03
	rlca                                             ; $7a8c: $07
	ld   bc, $0107                                   ; $7a8d: $01 $07 $01
	rlca                                             ; $7a90: $07
	rrca                                             ; $7a91: $0f
	add  b                                           ; $7a92: $80
	ld   [$0109], sp                                 ; $7a93: $08 $09 $01
	pop  af                                          ; $7a96: $f1
	adc  a                                           ; $7a97: $8f
	adc  [hl]                                        ; $7a98: $8e
	rrca                                             ; $7a99: $0f
	ld   [$090f], sp                                 ; $7a9a: $08 $0f $09
	ld   a, $36                                      ; $7a9d: $3e $36
	add  b                                           ; $7a9f: $80
	ld   l, b                                        ; $7aa0: $68
	add  b                                           ; $7aa1: $80
	sbc  e                                           ; $7aa2: $9b
	add  b                                           ; $7aa3: $80
	scf                                              ; $7aa4: $37
	dec  b                                           ; $7aa5: $05
	db   $f4                                         ; $7aa6: $f4
	call z, $0fff                                    ; $7aa7: $cc $ff $0f
	ld   hl, sp+$38                                  ; $7aaa: $f8 $38
	add  b                                           ; $7aac: $80
	pop  bc                                          ; $7aad: $c1
	add  b                                           ; $7aae: $80
	rrca                                             ; $7aaf: $0f
	add  b                                           ; $7ab0: $80
	ld   a, [hl]                                     ; $7ab1: $7e
	dec  b                                           ; $7ab2: $05
	ldh  a, [$f1]                                    ; $7ab3: $f0 $f1
	add  c                                           ; $7ab5: $81
	adc  h                                           ; $7ab6: $8c
	dec  c                                           ; $7ab7: $0d
	nop                                              ; $7ab8: $00
	add  b                                           ; $7ab9: $80
	add  [hl]                                        ; $7aba: $86
	add  b                                           ; $7abb: $80
	ld   a, $80                                      ; $7abc: $3e $80
	ld   sp, hl                                      ; $7abe: $f9
	add  b                                           ; $7abf: $80
	jp   nz, $0600                                   ; $7ac0: $c2 $00 $06

	add  b                                           ; $7ac3: $80
	ld   [hl], $05                                   ; $7ac4: $36 $05
	adc  [hl]                                        ; $7ac6: $8e
	cp   [hl]                                        ; $7ac7: $be
	ld   a, [hl]                                     ; $7ac8: $7e
	cp   $4f                                         ; $7ac9: $fe $4f
	rlca                                             ; $7acb: $07
	add  b                                           ; $7acc: $80
	nop                                              ; $7acd: $00
	inc  bc                                          ; $7ace: $03
	inc  c                                           ; $7acf: $0c
	rrca                                             ; $7ad0: $0f
	inc  bc                                          ; $7ad1: $03
	rrca                                             ; $7ad2: $0f
	add  b                                           ; $7ad3: $80
	inc  c                                           ; $7ad4: $0c
	add  b                                           ; $7ad5: $80
	nop                                              ; $7ad6: $00
	add  b                                           ; $7ad7: $80
	ld   bc, $0a80                                   ; $7ad8: $01 $80 $0a
	ld   bc, $c0cf                                   ; $7adb: $01 $cf $c0
	add  b                                           ; $7ade: $80
	ccf                                              ; $7adf: $3f
	nop                                              ; $7ae0: $00
	nop                                              ; $7ae1: $00
	add  c                                           ; $7ae2: $81
	rst  $38                                         ; $7ae3: $ff
	add  b                                           ; $7ae4: $80
	nop                                              ; $7ae5: $00
	dec  bc                                          ; $7ae6: $0b
	ret  nz                                          ; $7ae7: $c0

	ldh  [rAUD4LEN], a                               ; $7ae8: $e0 $20
	db   $10                                         ; $7aea: $10
	ld   d, d                                        ; $7aeb: $52
	ld   c, d                                        ; $7aec: $4a
	rst  $30                                         ; $7aed: $f7
	nop                                              ; $7aee: $00
	ret  nz                                          ; $7aef: $c0

	rst  $38                                         ; $7af0: $ff
	ccf                                              ; $7af1: $3f
	rst  $38                                         ; $7af2: $ff
	add  b                                           ; $7af3: $80

jr_07f_7af4:
	ret  nz                                          ; $7af4: $c0

	dec  b                                           ; $7af5: $05
	inc  c                                           ; $7af6: $0c
	ld   c, $12                                      ; $7af7: $0e $12
	ld   de, $2425                                   ; $7af9: $11 $25 $24
	add  b                                           ; $7afc: $80
	and  h                                           ; $7afd: $a4
	ld   [bc], a                                     ; $7afe: $02
	ld   hl, sp+$07                                  ; $7aff: $f8 $07
	nop                                              ; $7b01: $00
	add  c                                           ; $7b02: $81
	rst  $38                                         ; $7b03: $ff
	add  h                                           ; $7b04: $84
	nop                                              ; $7b05: $00
	ld   b, $29                                      ; $7b06: $06 $29
	xor  c                                           ; $7b08: $a9
	ld   d, l                                        ; $7b09: $55
	push de                                          ; $7b0a: $d5
	nop                                              ; $7b0b: $00
	rst  $38                                         ; $7b0c: $ff
	nop                                              ; $7b0d: $00
	add  c                                           ; $7b0e: $81
	rst  $38                                         ; $7b0f: $ff
	add  b                                           ; $7b10: $80
	nop                                              ; $7b11: $00
	dec  b                                           ; $7b12: $05
	ld   [hl], b                                     ; $7b13: $70
	ld   a, b                                        ; $7b14: $78
	add  b                                           ; $7b15: $80
	adc  h                                           ; $7b16: $8c
	inc  h                                           ; $7b17: $24
	ld   [hl+], a                                    ; $7b18: $22
	add  b                                           ; $7b19: $80
	ld   [hl], a                                     ; $7b1a: $77
	ld   [bc], a                                     ; $7b1b: $02
	ld   [bc], a                                     ; $7b1c: $02
	db   $fd                                         ; $7b1d: $fd
	nop                                              ; $7b1e: $00
	add  c                                           ; $7b1f: $81
	db   $fd                                         ; $7b20: $fd
	add  h                                           ; $7b21: $84
	nop                                              ; $7b22: $00
	add  b                                           ; $7b23: $80
	xor  c                                           ; $7b24: $a9
	add  b                                           ; $7b25: $80
	db   $fd                                         ; $7b26: $fd
	inc  bc                                          ; $7b27: $03
	dec  b                                           ; $7b28: $05
	ld   d, l                                        ; $7b29: $55
	dec  b                                           ; $7b2a: $05
	ld   d, l                                        ; $7b2b: $55
	add  b                                           ; $7b2c: $80
	ld   d, b                                        ; $7b2d: $50
	add  d                                           ; $7b2e: $82
	nop                                              ; $7b2f: $00
	add  b                                           ; $7b30: $80
	ld   bc, $5586                                   ; $7b31: $01 $86 $55
	add  d                                           ; $7b34: $82
	nop                                              ; $7b35: $00
	add  b                                           ; $7b36: $80
	ld   bc, $5580                                   ; $7b37: $01 $80 $55
	add  d                                           ; $7b3a: $82
	ld   d, h                                        ; $7b3b: $54
	add  d                                           ; $7b3c: $82
	ld   d, l                                        ; $7b3d: $55
	add  b                                           ; $7b3e: $80
	nop                                              ; $7b3f: $00
	ld   [bc], a                                     ; $7b40: $02
	ld   d, b                                        ; $7b41: $50
	ld   d, h                                        ; $7b42: $54
	inc  b                                           ; $7b43: $04
	add  c                                           ; $7b44: $81
	nop                                              ; $7b45: $00
	ld   bc, $5554                                   ; $7b46: $01 $54 $55
	add  b                                           ; $7b49: $80
	ld   bc, $6c00                                   ; $7b4a: $01 $00 $6c
	add  c                                           ; $7b4d: $81
	ld   l, l                                        ; $7b4e: $6d
	add  h                                           ; $7b4f: $84
	nop                                              ; $7b50: $00
	add  h                                           ; $7b51: $84
	ld   l, l                                        ; $7b52: $6d
	add  b                                           ; $7b53: $80
	cp   e                                           ; $7b54: $bb
	add  b                                           ; $7b55: $80
	cp   d                                           ; $7b56: $ba
	add  d                                           ; $7b57: $82
	nop                                              ; $7b58: $00
	add  b                                           ; $7b59: $80
	ld   bc, $bb86                                   ; $7b5a: $01 $86 $bb
	add  h                                           ; $7b5d: $84
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	cp   d                                           ; $7b60: $ba
	add  l                                           ; $7b61: $85
	cp   e                                           ; $7b62: $bb
	nop                                              ; $7b63: $00
	ld   bc, $fe80                                   ; $7b64: $01 $80 $fe
	add  b                                           ; $7b67: $80
	ret  nz                                          ; $7b68: $c0

	add  d                                           ; $7b69: $82
	nop                                              ; $7b6a: $00
	add  b                                           ; $7b6b: $80
	ccf                                              ; $7b6c: $3f
	add  b                                           ; $7b6d: $80
	ret  nz                                          ; $7b6e: $c0

	add  e                                           ; $7b6f: $83
	nop                                              ; $7b70: $00
	nop                                              ; $7b71: $00
	jr   jr_07f_7af4                                 ; $7b72: $18 $80

	nop                                              ; $7b74: $00
	inc  bc                                          ; $7b75: $03
	daa                                              ; $7b76: $27
	ccf                                              ; $7b77: $3f
	ld   hl, sp-$20                                  ; $7b78: $f8 $e0
	add  e                                           ; $7b7a: $83
	jr   nz, @+$04                                   ; $7b7b: $20 $02

	ld   hl, $3920                                   ; $7b7d: $21 $20 $39
	add  b                                           ; $7b80: $80
	nop                                              ; $7b81: $00
	add  b                                           ; $7b82: $80
	ccf                                              ; $7b83: $3f
	add  b                                           ; $7b84: $80
	ret  nz                                          ; $7b85: $c0

	add  e                                           ; $7b86: $83
	nop                                              ; $7b87: $00
	inc  bc                                          ; $7b88: $03
	rrca                                             ; $7b89: $0f
	nop                                              ; $7b8a: $00
	rst  $38                                         ; $7b8b: $ff
	rrca                                             ; $7b8c: $0f
	add  c                                           ; $7b8d: $81
	ldh  a, [$85]                                    ; $7b8e: $f0 $85
	nop                                              ; $7b90: $00
	inc  bc                                          ; $7b91: $03
	jr   nc, jr_07f_7b94                             ; $7b92: $30 $00

jr_07f_7b94:
	ldh  a, [$30]                                    ; $7b94: $f0 $30
	add  b                                           ; $7b96: $80
	ldh  a, [rSB]                                    ; $7b97: $f0 $01
	dec  c                                           ; $7b99: $0d
	ld   [bc], a                                     ; $7b9a: $02
	add  [hl]                                        ; $7b9b: $86
	ld   a, [bc]                                     ; $7b9c: $0a
	ld   [$0f02], sp                                 ; $7b9d: $08 $02 $0f
	ld   [bc], a                                     ; $7ba0: $02
	rrca                                             ; $7ba1: $0f
	nop                                              ; $7ba2: $00
	rrca                                             ; $7ba3: $0f
	ld   e, $e9                                      ; $7ba4: $1e $e9
	ld   b, e                                        ; $7ba6: $43
	add  c                                           ; $7ba7: $81
	ld   c, e                                        ; $7ba8: $4b
	add  b                                           ; $7ba9: $80
	db   $eb                                         ; $7baa: $eb
	add  b                                           ; $7bab: $80
	ld   c, e                                        ; $7bac: $4b
	rlca                                             ; $7bad: $07
	ld   [$0cfb], sp                                 ; $7bae: $08 $fb $0c
	rst  $38                                         ; $7bb1: $ff
	nop                                              ; $7bb2: $00
	rst  $38                                         ; $7bb3: $ff
	pop  de                                          ; $7bb4: $d1
	ld   l, $82                                      ; $7bb5: $2e $82
	and  h                                           ; $7bb7: $a4
	add  b                                           ; $7bb8: $80
	xor  [hl]                                        ; $7bb9: $ae
	add  b                                           ; $7bba: $80
	and  h                                           ; $7bbb: $a4
	ld   b, $20                                      ; $7bbc: $06 $20
	rst  $38                                         ; $7bbe: $ff
	jr   nz, @+$01                                   ; $7bbf: $20 $ff

	nop                                              ; $7bc1: $00
	rst  $38                                         ; $7bc2: $ff
	ld   [bc], a                                     ; $7bc3: $02

jr_07f_7bc4:
	add  a                                           ; $7bc4: $87
	db   $fd                                         ; $7bc5: $fd

jr_07f_7bc6:
	ld   b, $81                                      ; $7bc6: $06 $81
	db   $fd                                         ; $7bc8: $fd
	add  e                                           ; $7bc9: $83
	rst  $38                                         ; $7bca: $ff
	nop                                              ; $7bcb: $00
	rst  $38                                         ; $7bcc: $ff
	call c, $2381                                    ; $7bcd: $dc $81 $23
	add  b                                           ; $7bd0: $80
	ld   a, a                                        ; $7bd1: $7f
	add  d                                           ; $7bd2: $82
	inc  hl                                          ; $7bd3: $23
	ld   b, $03                                      ; $7bd4: $06 $03
	rst  $38                                         ; $7bd6: $ff
	inc  bc                                          ; $7bd7: $03
	rst  $38                                         ; $7bd8: $ff
	nop                                              ; $7bd9: $00
	rst  $38                                         ; $7bda: $ff
	ld   [bc], a                                     ; $7bdb: $02
	add  a                                           ; $7bdc: $87
	db   $fd                                         ; $7bdd: $fd
	ld   b, $00                                      ; $7bde: $06 $00
	db   $fd                                         ; $7be0: $fd
	nop                                              ; $7be1: $00
	db   $fd                                         ; $7be2: $fd
	nop                                              ; $7be3: $00
	rst  $38                                         ; $7be4: $ff
	xor  d                                           ; $7be5: $aa
	add  a                                           ; $7be6: $87
	ld   d, l                                        ; $7be7: $55
	ld   b, $00                                      ; $7be8: $06 $00
	ld   d, l                                        ; $7bea: $55
	nop                                              ; $7beb: $00
	ld   d, l                                        ; $7bec: $55
	nop                                              ; $7bed: $00
	rst  $38                                         ; $7bee: $ff
	xor  e                                           ; $7bef: $ab
	add  a                                           ; $7bf0: $87
	ld   d, h                                        ; $7bf1: $54
	ld   b, $05                                      ; $7bf2: $06 $05
	ld   d, l                                        ; $7bf4: $55
	dec  b                                           ; $7bf5: $05
	ld   d, l                                        ; $7bf6: $55
	nop                                              ; $7bf7: $00
	rst  $38                                         ; $7bf8: $ff
	cp   $81                                         ; $7bf9: $fe $81
	ld   bc, $5580                                   ; $7bfb: $01 $80 $55
	add  d                                           ; $7bfe: $82
	ld   bc, $5582                                   ; $7bff: $01 $82 $55
	ld   [bc], a                                     ; $7c02: $02
	nop                                              ; $7c03: $00
	rst  $38                                         ; $7c04: $ff
	sub  d                                           ; $7c05: $92
	add  a                                           ; $7c06: $87
	ld   l, l                                        ; $7c07: $6d
	ld   b, $00                                      ; $7c08: $06 $00
	ld   l, l                                        ; $7c0a: $6d
	nop                                              ; $7c0b: $00
	ld   l, l                                        ; $7c0c: $6d
	nop                                              ; $7c0d: $00
	rst  $38                                         ; $7c0e: $ff
	ld   b, h                                        ; $7c0f: $44
	add  l                                           ; $7c10: $85
	cp   e                                           ; $7c11: $bb
	ld   [$bbba], sp                                 ; $7c12: $08 $ba $bb
	nop                                              ; $7c15: $00
	cp   e                                           ; $7c16: $bb
	ld   bc, $00bb                                   ; $7c17: $01 $bb $00
	rst  $38                                         ; $7c1a: $ff
	ld   b, l                                        ; $7c1b: $45
	add  l                                           ; $7c1c: $85
	cp   e                                           ; $7c1d: $bb
	ld   b, $01                                      ; $7c1e: $06 $01
	cp   e                                           ; $7c20: $bb
	nop                                              ; $7c21: $00
	cp   e                                           ; $7c22: $bb
	or   b                                           ; $7c23: $b0
	cp   a                                           ; $7c24: $bf
	rrca                                             ; $7c25: $0f
	add  b                                           ; $7c26: $80
	rst  $38                                         ; $7c27: $ff
	inc  b                                           ; $7c28: $04
	nop                                              ; $7c29: $00
	rra                                              ; $7c2a: $1f
	nop                                              ; $7c2b: $00
	rst  $38                                         ; $7c2c: $ff
	rra                                              ; $7c2d: $1f
	add  c                                           ; $7c2e: $81
	rst  $38                                         ; $7c2f: $ff
	add  b                                           ; $7c30: $80
	ldh  [$83], a                                    ; $7c31: $e0 $83
	nop                                              ; $7c33: $00
	inc  bc                                          ; $7c34: $03
	ld   a, [hl]                                     ; $7c35: $7e
	ld   bc, $7fff                                   ; $7c36: $01 $ff $7f
	add  c                                           ; $7c39: $81
	rst  $38                                         ; $7c3a: $ff
	add  b                                           ; $7c3b: $80
	add  b                                           ; $7c3c: $80
	add  b                                           ; $7c3d: $80
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	jr   c, jr_07f_7bc4                              ; $7c40: $38 $82

	jr   z, jr_07f_7c44                              ; $7c42: $28 $00

jr_07f_7c44:
	jr   c, jr_07f_7bc6                              ; $7c44: $38 $80

	rst  $38                                         ; $7c46: $ff
	add  b                                           ; $7c47: $80
	db   $fc                                         ; $7c48: $fc
	adc  c                                           ; $7c49: $89
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	rrca                                             ; $7c4c: $0f
	add  b                                           ; $7c4d: $80
	ldh  a, [$8b]                                    ; $7c4e: $f0 $8b

jr_07f_7c50:
	nop                                              ; $7c50: $00
	ld   bc, $bfb0                                   ; $7c51: $01 $b0 $bf
	add  h                                           ; $7c54: $84
	nop                                              ; $7c55: $00
	nop                                              ; $7c56: $00
	rlca                                             ; $7c57: $07
	add  b                                           ; $7c58: $80
	sbc  a                                           ; $7c59: $9f
	add  e                                           ; $7c5a: $83
	rrca                                             ; $7c5b: $0f
	ld   [bc], a                                     ; $7c5c: $02
	db   $fd                                         ; $7c5d: $fd
	ei                                               ; $7c5e: $fb
	ld   c, $81                                      ; $7c5f: $0e $81
	nop                                              ; $7c61: $00
	ld   [bc], a                                     ; $7c62: $02
	rrca                                             ; $7c63: $0f
	dec  bc                                          ; $7c64: $0b
	pop  af                                          ; $7c65: $f1
	add  l                                           ; $7c66: $85
	ei                                               ; $7c67: $fb
	ld   [bc], a                                     ; $7c68: $02
	pop  bc                                          ; $7c69: $c1
	rst  $38                                         ; $7c6a: $ff
	scf                                              ; $7c6b: $37
	add  b                                           ; $7c6c: $80
	rra                                              ; $7c6d: $1f
	ld   [bc], a                                     ; $7c6e: $02
	rrca                                             ; $7c6f: $0f
	rst  $28                                         ; $7c70: $ef
	rst  $20                                         ; $7c71: $e7
	add  l                                           ; $7c72: $85
	rst  $28                                         ; $7c73: $ef
	ld   [bc], a                                     ; $7c74: $02
	xor  $d5                                         ; $7c75: $ee $d5
	call nc, $aa80                                   ; $7c77: $d4 $80 $aa
	add  b                                           ; $7c7a: $80
	push de                                          ; $7c7b: $d5
	add  b                                           ; $7c7c: $80

jr_07f_7c7d:
	adc  b                                           ; $7c7d: $88
	add  b                                           ; $7c7e: $80
	sub  l                                           ; $7c7f: $95
	add  b                                           ; $7c80: $80
	and  b                                           ; $7c81: $a0
	add  b                                           ; $7c82: $80
	sub  b                                           ; $7c83: $90
	inc  bc                                          ; $7c84: $03
	ld   hl, sp+$07                                  ; $7c85: $f8 $07
	rst  $38                                         ; $7c87: $ff
	nop                                              ; $7c88: $00
	add  b                                           ; $7c89: $80
	add  b                                           ; $7c8a: $80
	add  [hl]                                        ; $7c8b: $86
	nop                                              ; $7c8c: $00
	add  b                                           ; $7c8d: $80
	ld   d, l                                        ; $7c8e: $55
	ld   [bc], a                                     ; $7c8f: $02
	nop                                              ; $7c90: $00
	rst  $38                                         ; $7c91: $ff
	ei                                               ; $7c92: $fb
	add  l                                           ; $7c93: $85
	db   $fc                                         ; $7c94: $fc
	add  b                                           ; $7c95: $80
	db   $fd                                         ; $7c96: $fd
	add  b                                           ; $7c97: $80
	db   $fc                                         ; $7c98: $fc
	add  b                                           ; $7c99: $80
	rst  $38                                         ; $7c9a: $ff
	inc  bc                                          ; $7c9b: $03
	ld   hl, sp-$01                                  ; $7c9c: $f8 $ff
	cp   $01                                         ; $7c9e: $fe $01
	add  b                                           ; $7ca0: $80
	nop                                              ; $7ca1: $00
	add  b                                           ; $7ca2: $80
	ld   de, $ab80                                   ; $7ca3: $11 $80 $ab
	add  b                                           ; $7ca6: $80
	ret  nz                                          ; $7ca7: $c0

	add  b                                           ; $7ca8: $80
	nop                                              ; $7ca9: $00
	inc  b                                           ; $7caa: $04
	ld   sp, hl                                      ; $7cab: $f9
	rst  $38                                         ; $7cac: $ff
	ld   b, $ff                                      ; $7cad: $06 $ff
	ldh  a, [$81]                                    ; $7caf: $f0 $81
	nop                                              ; $7cb1: $00
	add  b                                           ; $7cb2: $80
	ld   d, b                                        ; $7cb3: $50
	add  b                                           ; $7cb4: $80
	ldh  a, [$82]                                    ; $7cb5: $f0 $82
	nop                                              ; $7cb7: $00
	dec  b                                           ; $7cb8: $05
	and  b                                           ; $7cb9: $a0
	ldh  a, [$50]                                    ; $7cba: $f0 $50
	ldh  a, [$fe]                                    ; $7cbc: $f0 $fe
	ld   bc, $8080                                   ; $7cbe: $01 $80 $80
	add  b                                           ; $7cc1: $80
	nop                                              ; $7cc2: $00
	add  b                                           ; $7cc3: $80
	cpl                                              ; $7cc4: $2f
	add  b                                           ; $7cc5: $80
	ld   d, h                                        ; $7cc6: $54
	add  b                                           ; $7cc7: $80
	add  b                                           ; $7cc8: $80
	add  d                                           ; $7cc9: $82
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	db   $10                                         ; $7ccc: $10
	add  c                                           ; $7ccd: $81
	jr   z, jr_07f_7c50                              ; $7cce: $28 $80

	dec  l                                           ; $7cd0: $2d
	add  b                                           ; $7cd1: $80
	xor  d                                           ; $7cd2: $aa
	add  [hl]                                        ; $7cd3: $86
	jr   z, jr_07f_7cd7                              ; $7cd4: $28 $01

	ld   a, b                                        ; $7cd6: $78

jr_07f_7cd7:
	ld   b, b                                        ; $7cd7: $40
	add  b                                           ; $7cd8: $80
	rrca                                             ; $7cd9: $0f
	add  b                                           ; $7cda: $80
	ld   d, l                                        ; $7cdb: $55
	add  b                                           ; $7cdc: $80
	and  b                                           ; $7cdd: $a0
	add  [hl]                                        ; $7cde: $86
	nop                                              ; $7cdf: $00
	ld   bc, $000f                                   ; $7ce0: $01 $0f $00
	add  b                                           ; $7ce3: $80
	and  b                                           ; $7ce4: $a0
	add  b                                           ; $7ce5: $80
	ld   b, b                                        ; $7ce6: $40
	adc  b                                           ; $7ce7: $88
	nop                                              ; $7ce8: $00
	nop                                              ; $7ce9: $00
	rrca                                             ; $7cea: $0f
	adc  l                                           ; $7ceb: $8d
	nop                                              ; $7cec: $00
	nop                                              ; $7ced: $00
	db   $10                                         ; $7cee: $10
	adc  l                                           ; $7cef: $8d
	jr   z, jr_07f_7cf2                              ; $7cf0: $28 $00

jr_07f_7cf2:
	jr   c, jr_07f_7c7d                              ; $7cf2: $38 $89

	nop                                              ; $7cf4: $00
	add  b                                           ; $7cf5: $80
	ld   [bc], a                                     ; $7cf6: $02
	add  b                                           ; $7cf7: $80
	ld   a, [bc]                                     ; $7cf8: $0a
	nop                                              ; $7cf9: $00
	rrca                                             ; $7cfa: $0f
	adc  l                                           ; $7cfb: $8d
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	ld   [$0f85], sp                                 ; $7cfe: $08 $85 $0f
	inc  b                                           ; $7d01: $04
	ld   [$00df], sp                                 ; $7d02: $08 $df $00
	rst  JumpTable                                         ; $7d05: $df
	nop                                              ; $7d06: $00
	add  c                                           ; $7d07: $81
	rst  JumpTable                                         ; $7d08: $df
	nop                                              ; $7d09: $00
	ld   a, [hl+]                                    ; $7d0a: $2a
	add  l                                           ; $7d0b: $85
	ei                                               ; $7d0c: $fb
	inc  b                                           ; $7d0d: $04
	ld   a, [bc]                                     ; $7d0e: $0a
	ei                                               ; $7d0f: $fb
	dec  bc                                          ; $7d10: $0b
	ei                                               ; $7d11: $fb
	dec  bc                                          ; $7d12: $0b
	add  c                                           ; $7d13: $81
	ei                                               ; $7d14: $fb
	rlca                                             ; $7d15: $07
	rla                                              ; $7d16: $17
	rst  $28                                         ; $7d17: $ef
	add  sp, -$20                                    ; $7d18: $e8 $e0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d1a: $cf
	rst  $38                                         ; $7d1b: $ff
	jp   $8203                                       ; $7d1c: $c3 $03 $82


	rst  $38                                         ; $7d1f: $ff
	ld   [bc], a                                     ; $7d20: $02
	rst  $20                                         ; $7d21: $e7
	rst  $38                                         ; $7d22: $ff
	rst  $20                                         ; $7d23: $e7
	add  c                                           ; $7d24: $81
	rst  $38                                         ; $7d25: $ff
	add  b                                           ; $7d26: $80
	nop                                              ; $7d27: $00
	add  d                                           ; $7d28: $82
	rst  $38                                         ; $7d29: $ff

jr_07f_7d2a:
	ld   b, $fc                                      ; $7d2a: $06 $fc
	rst  $38                                         ; $7d2c: $ff
	db   $fc                                         ; $7d2d: $fc
	rst  $38                                         ; $7d2e: $ff
	ld   hl, $21ff                                   ; $7d2f: $21 $ff $21
	add  c                                           ; $7d32: $81
	rst  $38                                         ; $7d33: $ff
	add  b                                           ; $7d34: $80
	rrca                                             ; $7d35: $0f
	ld   a, [bc]                                     ; $7d36: $0a
	cp   $ff                                         ; $7d37: $fe $ff
	cp   $ff                                         ; $7d39: $fe $ff
	inc  b                                           ; $7d3b: $04
	rst  $38                                         ; $7d3c: $ff
	inc  b                                           ; $7d3d: $04
	rst  $38                                         ; $7d3e: $ff
	inc  b                                           ; $7d3f: $04
	rst  $38                                         ; $7d40: $ff
	inc  b                                           ; $7d41: $04
	add  e                                           ; $7d42: $83
	rst  $38                                         ; $7d43: $ff
	inc  l                                           ; $7d44: $2c
	nop                                              ; $7d45: $00
	rst  $38                                         ; $7d46: $ff
	ld   bc, $0efe                                   ; $7d47: $01 $fe $0e
	rst  $38                                         ; $7d4a: $ff
	ld   bc, $61f0                                   ; $7d4b: $01 $f0 $61
	rst  $38                                         ; $7d4e: $ff
	ld   h, c                                        ; $7d4f: $61
	rst  $38                                         ; $7d50: $ff
	ld   hl, sp-$01                                  ; $7d51: $f8 $ff
	ld   hl, sp-$01                                  ; $7d53: $f8 $ff
	dec  b                                           ; $7d55: $05
	rst  $38                                         ; $7d56: $ff
	ei                                               ; $7d57: $fb
	ld   bc, $ff18                                   ; $7d58: $01 $18 $ff
	add  sp, $0f                                     ; $7d5b: $e8 $0f
	add  b                                           ; $7d5d: $80
	rst  $38                                         ; $7d5e: $ff
	add  b                                           ; $7d5f: $80
	rst  $38                                         ; $7d60: $ff
	nop                                              ; $7d61: $00
	ldh  a, [rP1]                                    ; $7d62: $f0 $00
	ldh  a, [rP1]                                    ; $7d64: $f0 $00
	ldh  a, [rP1]                                    ; $7d66: $f0 $00
	ldh  a, [rP1]                                    ; $7d68: $f0 $00
	ldh  a, [rP1]                                    ; $7d6a: $f0 $00
	ldh  a, [rP1]                                    ; $7d6c: $f0 $00
	ldh  a, [rP1]                                    ; $7d6e: $f0 $00
	ldh  a, [rIE]                                    ; $7d70: $f0 $ff
	adc  e                                           ; $7d72: $8b
	nop                                              ; $7d73: $00
	add  b                                           ; $7d74: $80
	ld   [bc], a                                     ; $7d75: $02
	ld   bc, $8000                                   ; $7d76: $01 $00 $80
	add  b                                           ; $7d79: $80
	and  b                                           ; $7d7a: $a0
	add  b                                           ; $7d7b: $80
	add  b                                           ; $7d7c: $80
	add  b                                           ; $7d7d: $80
	xor  d                                           ; $7d7e: $aa
	add  a                                           ; $7d7f: $87
	add  b                                           ; $7d80: $80
	add  c                                           ; $7d81: $81
	nop                                              ; $7d82: $00
	add  b                                           ; $7d83: $80
	db   $10                                         ; $7d84: $10
	add  b                                           ; $7d85: $80
	ld   bc, $0086                                   ; $7d86: $01 $86 $00
	ld   bc, $2810                                   ; $7d89: $01 $10 $28
	add  b                                           ; $7d8c: $80
	ld   a, [hl+]                                    ; $7d8d: $2a
	add  [hl]                                        ; $7d8e: $86
	jr   z, @+$04                                    ; $7d8f: $28 $02

	db   $10                                         ; $7d91: $10
	jr   c, jr_07f_7da4                              ; $7d92: $38 $10

	add  b                                           ; $7d94: $80
	jr   c, jr_07f_7d97                              ; $7d95: $38 $00

jr_07f_7d97:
	nop                                              ; $7d97: $00
	add  b                                           ; $7d98: $80
	and  d                                           ; $7d99: $a2
	add  h                                           ; $7d9a: $84
	nop                                              ; $7d9b: $00
	add  b                                           ; $7d9c: $80
	ld   a, [de]                                     ; $7d9d: $1a
	add  d                                           ; $7d9e: $82
	nop                                              ; $7d9f: $00
	ld   bc, $101f                                   ; $7da0: $01 $1f $10
	add  b                                           ; $7da3: $80

jr_07f_7da4:
	jr   nz, jr_07f_7d2a                             ; $7da4: $20 $84

	nop                                              ; $7da6: $00
	add  b                                           ; $7da7: $80
	ld   h, b                                        ; $7da8: $60
	add  d                                           ; $7da9: $82
	nop                                              ; $7daa: $00
	nop                                              ; $7dab: $00
	ldh  a, [rIE]                                    ; $7dac: $f0 $ff
	nop                                              ; $7dae: $00
	rst  $38                                         ; $7daf: $ff
	nop                                              ; $7db0: $00
	rst  $38                                         ; $7db1: $ff
	nop                                              ; $7db2: $00
	rst  $38                                         ; $7db3: $ff
	nop                                              ; $7db4: $00
	rst  $38                                         ; $7db5: $ff
	nop                                              ; $7db6: $00
	rst  $38                                         ; $7db7: $ff
	nop                                              ; $7db8: $00
	rst  $38                                         ; $7db9: $ff
	nop                                              ; $7dba: $00
	sub  $00                                         ; $7dbb: $d6 $00
	db   $10                                         ; $7dbd: $10
	ld   bc, $0e00                                   ; $7dbe: $01 $00 $0e
	adc  l                                           ; $7dc1: $8d
	ld   bc, $0401                                   ; $7dc2: $01 $01 $04
	db   $f4                                         ; $7dc5: $f4
	add  b                                           ; $7dc6: $80
	ld   hl, sp-$80                                  ; $7dc7: $f8 $80
	db   $f4                                         ; $7dc9: $f4
	add  b                                           ; $7dca: $80
	ld   hl, sp-$80                                  ; $7dcb: $f8 $80
	db   $f4                                         ; $7dcd: $f4
	add  b                                           ; $7dce: $80
	ld   hl, sp-$80                                  ; $7dcf: $f8 $80
	db   $f4                                         ; $7dd1: $f4
	add  b                                           ; $7dd2: $80
	ld   hl, sp-$7c                                  ; $7dd3: $f8 $84
	db   $e3                                         ; $7dd5: $e3
	add  h                                           ; $7dd6: $84
	rst  $20                                         ; $7dd7: $e7
	add  d                                           ; $7dd8: $82
	rst  $30                                         ; $7dd9: $f7
	add  [hl]                                        ; $7dda: $86
	ld   l, h                                        ; $7ddb: $6c
	add  [hl]                                        ; $7ddc: $86
	db   $ec                                         ; $7ddd: $ec
	adc  d                                           ; $7dde: $8a
	ld   a, b                                        ; $7ddf: $78
	add  d                                           ; $7de0: $82
	ld   hl, sp-$72                                  ; $7de1: $f8 $8e
	ld   sp, hl                                      ; $7de3: $f9
	adc  d                                           ; $7de4: $8a
	cp   h                                           ; $7de5: $bc
	add  b                                           ; $7de6: $80
	cp   [hl]                                        ; $7de7: $be
	add  b                                           ; $7de8: $80
	cp   h                                           ; $7de9: $bc
	add  d                                           ; $7dea: $82
	pop  hl                                          ; $7deb: $e1
	add  b                                           ; $7dec: $80
	pop  af                                          ; $7ded: $f1
	add  b                                           ; $7dee: $80
	pop  hl                                          ; $7def: $e1
	add  b                                           ; $7df0: $80
	pop  af                                          ; $7df1: $f1
	add  b                                           ; $7df2: $80
	pop  hl                                          ; $7df3: $e1
	add  b                                           ; $7df4: $80
	pop  af                                          ; $7df5: $f1
	add  b                                           ; $7df6: $80
	pop  hl                                          ; $7df7: $e1
	add  b                                           ; $7df8: $80
	sbc  b                                           ; $7df9: $98
	adc  h                                           ; $7dfa: $8c
	sbc  c                                           ; $7dfb: $99
	add  [hl]                                        ; $7dfc: $86
	db   $fc                                         ; $7dfd: $fc
	add  b                                           ; $7dfe: $80
	cp   $80                                         ; $7dff: $fe $80
	db   $fc                                         ; $7e01: $fc
	add  b                                           ; $7e02: $80
	cp   $80                                         ; $7e03: $fe $80
	db   $fc                                         ; $7e05: $fc
	adc  h                                           ; $7e06: $8c
	ld   [hl], e                                     ; $7e07: $73
	add  b                                           ; $7e08: $80
	di                                               ; $7e09: $f3
	add  d                                           ; $7e0a: $82
	db   $ec                                         ; $7e0b: $ec
	add  [hl]                                        ; $7e0c: $86
	db   $ed                                         ; $7e0d: $ed
	add  d                                           ; $7e0e: $82
	db   $fd                                         ; $7e0f: $fd
	adc  [hl]                                        ; $7e10: $8e
	scf                                              ; $7e11: $37
	add  b                                           ; $7e12: $80
	daa                                              ; $7e13: $27
	adc  h                                           ; $7e14: $8c
	ld   h, a                                        ; $7e15: $67
	adc  [hl]                                        ; $7e16: $8e
	sbc  b                                           ; $7e17: $98
	adc  [hl]                                        ; $7e18: $8e
	ldh  [rP1], a                                    ; $7e19: $e0 $00
	pop  af                                          ; $7e1b: $f1
	adc  l                                           ; $7e1c: $8d
	ld   bc, $0401                                   ; $7e1d: $01 $01 $04
	db   $f4                                         ; $7e20: $f4
	add  b                                           ; $7e21: $80
	ld   hl, sp-$80                                  ; $7e22: $f8 $80
	db   $f4                                         ; $7e24: $f4
	add  b                                           ; $7e25: $80
	ld   hl, sp-$80                                  ; $7e26: $f8 $80
	db   $f4                                         ; $7e28: $f4
	add  b                                           ; $7e29: $80
	ld   hl, sp-$80                                  ; $7e2a: $f8 $80
	db   $f4                                         ; $7e2c: $f4
	add  b                                           ; $7e2d: $80
	ld   hl, sp-$78                                  ; $7e2e: $f8 $88
	rst  $30                                         ; $7e30: $f7
	add  h                                           ; $7e31: $84
	rst  $38                                         ; $7e32: $ff
	adc  b                                           ; $7e33: $88
	db   $ec                                         ; $7e34: $ec
	add  h                                           ; $7e35: $84
	db   $fc                                         ; $7e36: $fc
	add  b                                           ; $7e37: $80
	ld   hl, sp-$80                                  ; $7e38: $f8 $80
	db   $fc                                         ; $7e3a: $fc
	add  b                                           ; $7e3b: $80
	ld   hl, sp-$80                                  ; $7e3c: $f8 $80
	db   $fc                                         ; $7e3e: $fc
	add  b                                           ; $7e3f: $80
	ld   hl, sp-$80                                  ; $7e40: $f8 $80
	db   $fc                                         ; $7e42: $fc
	add  b                                           ; $7e43: $80
	ld   hl, sp-$80                                  ; $7e44: $f8 $80
	db   $fc                                         ; $7e46: $fc
	adc  [hl]                                        ; $7e47: $8e
	ld   sp, hl                                      ; $7e48: $f9
	add  b                                           ; $7e49: $80
	cp   [hl]                                        ; $7e4a: $be
	add  b                                           ; $7e4b: $80
	cp   h                                           ; $7e4c: $bc
	add  b                                           ; $7e4d: $80
	cp   [hl]                                        ; $7e4e: $be
	add  b                                           ; $7e4f: $80
	cp   h                                           ; $7e50: $bc
	add  b                                           ; $7e51: $80
	cp   [hl]                                        ; $7e52: $be
	add  b                                           ; $7e53: $80
	cp   h                                           ; $7e54: $bc
	add  b                                           ; $7e55: $80
	cp   [hl]                                        ; $7e56: $be
	add  b                                           ; $7e57: $80
	cp   h                                           ; $7e58: $bc
	add  b                                           ; $7e59: $80
	pop  af                                          ; $7e5a: $f1
	add  b                                           ; $7e5b: $80
	pop  hl                                          ; $7e5c: $e1
	add  b                                           ; $7e5d: $80
	pop  af                                          ; $7e5e: $f1
	add  b                                           ; $7e5f: $80
	pop  hl                                          ; $7e60: $e1
	add  b                                           ; $7e61: $80
	pop  af                                          ; $7e62: $f1
	add  b                                           ; $7e63: $80
	pop  hl                                          ; $7e64: $e1
	add  b                                           ; $7e65: $80
	pop  af                                          ; $7e66: $f1
	add  b                                           ; $7e67: $80
	pop  hl                                          ; $7e68: $e1
	add  d                                           ; $7e69: $82
	sbc  c                                           ; $7e6a: $99
	add  [hl]                                        ; $7e6b: $86
	cp   l                                           ; $7e6c: $bd
	add  b                                           ; $7e6d: $80
	cp   a                                           ; $7e6e: $bf
	add  b                                           ; $7e6f: $80
	rst  $38                                         ; $7e70: $ff
	add  b                                           ; $7e71: $80
	cp   $80                                         ; $7e72: $fe $80
	db   $fc                                         ; $7e74: $fc
	add  b                                           ; $7e75: $80
	cp   $80                                         ; $7e76: $fe $80
	db   $fc                                         ; $7e78: $fc
	add  b                                           ; $7e79: $80
	cp   $80                                         ; $7e7a: $fe $80
	db   $fc                                         ; $7e7c: $fc
	add  b                                           ; $7e7d: $80
	cp   $80                                         ; $7e7e: $fe $80
	db   $fc                                         ; $7e80: $fc
	adc  [hl]                                        ; $7e81: $8e
	di                                               ; $7e82: $f3
	adc  h                                           ; $7e83: $8c
	db   $ed                                         ; $7e84: $ed
	add  b                                           ; $7e85: $80
	rst  $28                                         ; $7e86: $ef
	adc  [hl]                                        ; $7e87: $8e
	scf                                              ; $7e88: $37
	adc  [hl]                                        ; $7e89: $8e
	ld   h, a                                        ; $7e8a: $67
	adc  [hl]                                        ; $7e8b: $8e
	sbc  b                                           ; $7e8c: $98
	adc  [hl]                                        ; $7e8d: $8e
	pop  hl                                          ; $7e8e: $e1
	nop                                              ; $7e8f: $00
	rst  $38                                         ; $7e90: $ff
	add  l                                           ; $7e91: $85
	nop                                              ; $7e92: $00
	nop                                              ; $7e93: $00
	rst  $38                                         ; $7e94: $ff
	add  l                                           ; $7e95: $85
	db   $fc                                         ; $7e96: $fc
	nop                                              ; $7e97: $00
	inc  bc                                          ; $7e98: $03
	add  l                                           ; $7e99: $85
	nop                                              ; $7e9a: $00
	add  [hl]                                        ; $7e9b: $86
	ldh  a, [$86]                                    ; $7e9c: $f0 $86
	nop                                              ; $7e9e: $00
	add  b                                           ; $7e9f: $80
	add  hl, de                                      ; $7ea0: $19
	add  b                                           ; $7ea1: $80
	inc  sp                                          ; $7ea2: $33
	add  b                                           ; $7ea3: $80
	ld   h, a                                        ; $7ea4: $67
	add  b                                           ; $7ea5: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ea6: $cf
	add  [hl]                                        ; $7ea7: $86
	nop                                              ; $7ea8: $00
	add  [hl]                                        ; $7ea9: $86
	ldh  a, [$81]                                    ; $7eaa: $f0 $81
	rst  $38                                         ; $7eac: $ff
	add  h                                           ; $7ead: $84
	nop                                              ; $7eae: $00
	add  b                                           ; $7eaf: $80
	cp   $80                                         ; $7eb0: $fe $80
	nop                                              ; $7eb2: $00
	add  d                                           ; $7eb3: $82
	db   $fc                                         ; $7eb4: $fc
	add  b                                           ; $7eb5: $80
	rst  $38                                         ; $7eb6: $ff
	add  d                                           ; $7eb7: $82
	nop                                              ; $7eb8: $00
	add  b                                           ; $7eb9: $80
	ld   a, a                                        ; $7eba: $7f
	add  b                                           ; $7ebb: $80
	ld   h, b                                        ; $7ebc: $60
	add  h                                           ; $7ebd: $84
	ld   l, a                                        ; $7ebe: $6f
	add  b                                           ; $7ebf: $80
	rst  $38                                         ; $7ec0: $ff
	add  d                                           ; $7ec1: $82
	nop                                              ; $7ec2: $00
	add  b                                           ; $7ec3: $80

jr_07f_7ec4:
	rst  $38                                         ; $7ec4: $ff
	add  b                                           ; $7ec5: $80
	nop                                              ; $7ec6: $00
	add  e                                           ; $7ec7: $83
	rst  $38                                         ; $7ec8: $ff
	add  c                                           ; $7ec9: $81
	ldh  a, [$82]                                    ; $7eca: $f0 $82
	nop                                              ; $7ecc: $00
	add  b                                           ; $7ecd: $80
	ldh  a, [$80]                                    ; $7ece: $f0 $80
	nop                                              ; $7ed0: $00
	add  e                                           ; $7ed1: $83
	ldh  a, [rP1]                                    ; $7ed2: $f0 $00
	rst  $38                                         ; $7ed4: $ff
	add  [hl]                                        ; $7ed5: $86
	db   $ec                                         ; $7ed6: $ec
	add  b                                           ; $7ed7: $80
	xor  h                                           ; $7ed8: $ac
	add  b                                           ; $7ed9: $80
	db   $ec                                         ; $7eda: $ec
	add  b                                           ; $7edb: $80
	ld   b, h                                        ; $7edc: $44
	add  b                                           ; $7edd: $80
	nop                                              ; $7ede: $00
	add  [hl]                                        ; $7edf: $86
	ld   l, a                                        ; $7ee0: $6f
	add  b                                           ; $7ee1: $80
	cpl                                              ; $7ee2: $2f
	add  b                                           ; $7ee3: $80
	ld   l, a                                        ; $7ee4: $6f
	add  b                                           ; $7ee5: $80
	ld   c, a                                        ; $7ee6: $4f
	add  b                                           ; $7ee7: $80
	nop                                              ; $7ee8: $00
	add  [hl]                                        ; $7ee9: $86
	ccf                                              ; $7eea: $3f
	add  b                                           ; $7eeb: $80
	ld   l, $80                                      ; $7eec: $2e $80
	dec  sp                                          ; $7eee: $3b
	add  b                                           ; $7eef: $80
	dec  d                                           ; $7ef0: $15
	ld   bc, $0f00                                   ; $7ef1: $01 $00 $0f
	add  [hl]                                        ; $7ef4: $86
	ldh  a, [$80]                                    ; $7ef5: $f0 $80
	ldh  [$80], a                                    ; $7ef7: $e0 $80
	or   b                                           ; $7ef9: $b0
	add  b                                           ; $7efa: $80
	ld   d, b                                        ; $7efb: $50
	inc  bc                                          ; $7efc: $03
	nop                                              ; $7efd: $00
	ld   c, $ff                                      ; $7efe: $0e $ff
	cp   $88                                         ; $7f00: $fe $88
	rst  $38                                         ; $7f02: $ff
	add  c                                           ; $7f03: $81
	nop                                              ; $7f04: $00
	add  b                                           ; $7f05: $80

jr_07f_7f06:
	rst  $38                                         ; $7f06: $ff
	ld   [$ff7f], sp                                 ; $7f07: $08 $7f $ff
	cp   a                                           ; $7f0a: $bf
	rst  $38                                         ; $7f0b: $ff
	rst  JumpTable                                         ; $7f0c: $df
	rst  $38                                         ; $7f0d: $ff
	rst  $20                                         ; $7f0e: $e7
	rst  $38                                         ; $7f0f: $ff
	ei                                               ; $7f10: $fb
	add  b                                           ; $7f11: $80
	rst  $38                                         ; $7f12: $ff
	add  c                                           ; $7f13: $81
	inc  bc                                          ; $7f14: $03
	adc  a                                           ; $7f15: $8f
	rst  $38                                         ; $7f16: $ff
	adc  l                                           ; $7f17: $8d
	ldh  a, [rP1]                                    ; $7f18: $f0 $00
	rrca                                             ; $7f1a: $0f
	add  [hl]                                        ; $7f1b: $86
	db   $fc                                         ; $7f1c: $fc
	add  b                                           ; $7f1d: $80
	nop                                              ; $7f1e: $00
	adc  h                                           ; $7f1f: $8c
	rst  $38                                         ; $7f20: $ff
	add  b                                           ; $7f21: $80
	nop                                              ; $7f22: $00
	adc  h                                           ; $7f23: $8c
	rst  $38                                         ; $7f24: $ff
	add  b                                           ; $7f25: $80
	nop                                              ; $7f26: $00
	add  e                                           ; $7f27: $83
	rst  $38                                         ; $7f28: $ff
	add  a                                           ; $7f29: $87
	ldh  a, [$80]                                    ; $7f2a: $f0 $80
	nop                                              ; $7f2c: $00
	add  e                                           ; $7f2d: $83
	ldh  a, [rP1]                                    ; $7f2e: $f0 $00
	rst  $38                                         ; $7f30: $ff
	add  b                                           ; $7f31: $80
	db   $fc                                         ; $7f32: $fc
	add  b                                           ; $7f33: $80
	nop                                              ; $7f34: $00
	add  b                                           ; $7f35: $80
	inc  c                                           ; $7f36: $0c
	adc  b                                           ; $7f37: $88
	db   $ec                                         ; $7f38: $ec
	adc  [hl]                                        ; $7f39: $8e
	ld   l, a                                        ; $7f3a: $6f
	add  b                                           ; $7f3b: $80
	rst  $38                                         ; $7f3c: $ff
	add  d                                           ; $7f3d: $82
	nop                                              ; $7f3e: $00
	add  a                                           ; $7f3f: $87
	ccf                                              ; $7f40: $3f
	nop                                              ; $7f41: $00
	jr   nc, jr_07f_7ec4                             ; $7f42: $30 $80

	ldh  a, [$82]                                    ; $7f44: $f0 $82
	nop                                              ; $7f46: $00
	add  a                                           ; $7f47: $87
	ldh  a, [rP1]                                    ; $7f48: $f0 $00
	nop                                              ; $7f4a: $00
	add  e                                           ; $7f4b: $83
	rst  $38                                         ; $7f4c: $ff
	ld   a, [bc]                                     ; $7f4d: $0a
	ld   a, a                                        ; $7f4e: $7f
	rst  $38                                         ; $7f4f: $ff
	cp   a                                           ; $7f50: $bf
	rst  $38                                         ; $7f51: $ff
	rst  JumpTable                                         ; $7f52: $df
	rst  $38                                         ; $7f53: $ff
	rst  $20                                         ; $7f54: $e7
	rst  $38                                         ; $7f55: $ff
	ei                                               ; $7f56: $fb
	rst  $38                                         ; $7f57: $ff
	inc  bc                                          ; $7f58: $03
	adc  l                                           ; $7f59: $8d
	rst  $38                                         ; $7f5a: $ff
	add  b                                           ; $7f5b: $80
	nop                                              ; $7f5c: $00
	add  b                                           ; $7f5d: $80
	ret  nz                                          ; $7f5e: $c0

	add  b                                           ; $7f5f: $80
	ldh  a, [$80]                                    ; $7f60: $f0 $80
	db   $fc                                         ; $7f62: $fc
	add  [hl]                                        ; $7f63: $86
	rst  $38                                         ; $7f64: $ff
	nop                                              ; $7f65: $00
	rrca                                             ; $7f66: $0f
	add  a                                           ; $7f67: $87
	nop                                              ; $7f68: $00
	add  b                                           ; $7f69: $80
	ret  nz                                          ; $7f6a: $c0

	add  d                                           ; $7f6b: $82
	ldh  a, [rP1]                                    ; $7f6c: $f0 $00
	rrca                                             ; $7f6e: $0f
	add  c                                           ; $7f6f: $81
	nop                                              ; $7f70: $00
	add  h                                           ; $7f71: $84
	rst  $38                                         ; $7f72: $ff
	add  b                                           ; $7f73: $80
	nop                                              ; $7f74: $00
	add  d                                           ; $7f75: $82
	jp   $0382                                       ; $7f76: $c3 $82 $03


	add  h                                           ; $7f79: $84
	rst  $38                                         ; $7f7a: $ff
	add  b                                           ; $7f7b: $80
	inc  e                                           ; $7f7c: $1c
	add  d                                           ; $7f7d: $82
	ld   e, $88                                      ; $7f7e: $1e $88
	rst  $38                                         ; $7f80: $ff
	add  b                                           ; $7f81: $80
	jr   jr_07f_7f06                                 ; $7f82: $18 $82

	inc  a                                           ; $7f84: $3c
	nop                                              ; $7f85: $00
	rst  $38                                         ; $7f86: $ff
	add  a                                           ; $7f87: $87
	ldh  a, [$80]                                    ; $7f88: $f0 $80
	nop                                              ; $7f8a: $00
	add  d                                           ; $7f8b: $82
	ld   h, b                                        ; $7f8c: $60
	nop                                              ; $7f8d: $00
	call z, $c387                                    ; $7f8e: $cc $87 $c3
	add  b                                           ; $7f91: $80
	db   $e3                                         ; $7f92: $e3
	add  b                                           ; $7f93: $80
	jp   $e380                                       ; $7f94: $c3 $80 $e3


	adc  d                                           ; $7f97: $8a
	ld   e, $82                                      ; $7f98: $1e $82
	sbc  [hl]                                        ; $7f9a: $9e
	add  d                                           ; $7f9b: $82
	inc  a                                           ; $7f9c: $3c
	add  [hl]                                        ; $7f9d: $86
	ld   a, h                                        ; $7f9e: $7c
	add  b                                           ; $7f9f: $80
	ld   a, [hl]                                     ; $7fa0: $7e
	add  b                                           ; $7fa1: $80
	ld   a, h                                        ; $7fa2: $7c
	nop                                              ; $7fa3: $00
	ld   l, a                                        ; $7fa4: $6f
	add  a                                           ; $7fa5: $87
	ld   h, b                                        ; $7fa6: $60
	add  b                                           ; $7fa7: $80
	ld   [hl], b                                     ; $7fa8: $70
	add  b                                           ; $7fa9: $80
	ld   h, b                                        ; $7faa: $60
	add  b                                           ; $7fab: $80
	ld   [hl], b                                     ; $7fac: $70
	ld   bc, $c3cc                                   ; $7fad: $01 $cc $c3
	add  b                                           ; $7fb0: $80
	db   $e3                                         ; $7fb1: $e3
	add  b                                           ; $7fb2: $80
	jp   $e380                                       ; $7fb3: $c3 $80 $e3


	add  b                                           ; $7fb6: $80
	db   $d3                                         ; $7fb7: $d3
	add  b                                           ; $7fb8: $80
	db   $e3                                         ; $7fb9: $e3
	add  b                                           ; $7fba: $80
	db   $d3                                         ; $7fbb: $d3
	add  b                                           ; $7fbc: $80
	db   $e3                                         ; $7fbd: $e3
	add  [hl]                                        ; $7fbe: $86
	sbc  [hl]                                        ; $7fbf: $9e
	add  b                                           ; $7fc0: $80
	cp   [hl]                                        ; $7fc1: $be
	add  b                                           ; $7fc2: $80
	sbc  [hl]                                        ; $7fc3: $9e
	add  b                                           ; $7fc4: $80
	cp   [hl]                                        ; $7fc5: $be
	add  b                                           ; $7fc6: $80
	sbc  $80                                         ; $7fc7: $de $80
	ld   a, [hl]                                     ; $7fc9: $7e
	add  b                                           ; $7fca: $80
	ld   a, h                                        ; $7fcb: $7c
	add  b                                           ; $7fcc: $80
	ld   a, [hl]                                     ; $7fcd: $7e
	add  b                                           ; $7fce: $80
	ld   a, h                                        ; $7fcf: $7c
	add  b                                           ; $7fd0: $80
	cp   $80                                         ; $7fd1: $fe $80
	ld   a, h                                        ; $7fd3: $7c
	add  b                                           ; $7fd4: $80
	cp   $80                                         ; $7fd5: $fe $80
	ld   a, h                                        ; $7fd7: $7c
	ld   bc, $606f                                   ; $7fd8: $01 $6f $60
	add  b                                           ; $7fdb: $80
	ld   [hl], b                                     ; $7fdc: $70
	add  b                                           ; $7fdd: $80
	ld   h, b                                        ; $7fde: $60
	add  b                                           ; $7fdf: $80
	ld   [hl], b                                     ; $7fe0: $70
	add  b                                           ; $7fe1: $80
	ld   h, b                                        ; $7fe2: $60
	add  b                                           ; $7fe3: $80
	ld   [hl], b                                     ; $7fe4: $70
	add  b                                           ; $7fe5: $80
	ld   h, b                                        ; $7fe6: $60
	add  b                                           ; $7fe7: $80
	ld   [hl], b                                     ; $7fe8: $70
	nop                                              ; $7fe9: $00
	ldh  a, [rIE]                                    ; $7fea: $f0 $ff
	nop                                              ; $7fec: $00
	rst  $38                                         ; $7fed: $ff
	nop                                              ; $7fee: $00
	rst  $38                                         ; $7fef: $ff
	nop                                              ; $7ff0: $00
	rst  $38                                         ; $7ff1: $ff
	nop                                              ; $7ff2: $00
	rst  $38                                         ; $7ff3: $ff
	nop                                              ; $7ff4: $00
	rst  $38                                         ; $7ff5: $ff
	nop                                              ; $7ff6: $00
	rst  $30                                         ; $7ff7: $f7
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
