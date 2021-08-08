; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

	and  a                                           ; $4000: $a7
	ld   bc, $0099                                   ; $4001: $01 $99 $00
	add  b                                           ; $4004: $80
	ld   [bc], a                                     ; $4005: $02
	add  b                                           ; $4006: $80
	ld   b, $85                                      ; $4007: $06 $85
	nop                                              ; $4009: $00
	ld   b, $01                                      ; $400a: $06 $01
	nop                                              ; $400c: $00
	inc  bc                                          ; $400d: $03
	ld   bc, $0105                                   ; $400e: $01 $05 $01
	ld   [$0681], sp                                 ; $4011: $08 $81 $06
	dec  b                                           ; $4014: $05
	rlca                                             ; $4015: $07
	dec  b                                           ; $4016: $05
	rla                                              ; $4017: $17
	dec  bc                                          ; $4018: $0b
	add  hl, hl                                      ; $4019: $29
	dec  e                                           ; $401a: $1d
	add  c                                           ; $401b: $81
	inc  e                                           ; $401c: $1c
	add  b                                           ; $401d: $80
	dec  de                                          ; $401e: $1b
	inc  c                                           ; $401f: $0c
	ld   d, $26                                      ; $4020: $16 $26
	ld   b, $0e                                      ; $4022: $06 $0e
	ld   b, $71                                      ; $4024: $06 $71
	nop                                              ; $4026: $00
	jr   c, jr_01a_4059                              ; $4027: $38 $30

	db   $fd                                         ; $4029: $fd
	ld   a, b                                        ; $402a: $78
	ld   a, a                                        ; $402b: $7f
	ld   a, l                                        ; $402c: $7d
	add  b                                           ; $402d: $80
	push af                                          ; $402e: $f5
	add  b                                           ; $402f: $80
	ld   sp, hl                                      ; $4030: $f9
	add  b                                           ; $4031: $80
	ld   a, [$0280]                                  ; $4032: $fa $80 $02
	inc  b                                           ; $4035: $04
	ldh  a, [$f5]                                    ; $4036: $f0 $f5
	push hl                                          ; $4038: $e5
	rst  $28                                         ; $4039: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $403a: $cf
	add  b                                           ; $403b: $80
	rst  $10                                         ; $403c: $d7
	add  hl, bc                                      ; $403d: $09
	adc  $0e                                         ; $403e: $ce $0e
	inc  e                                           ; $4040: $1c
	ld   e, $b8                                      ; $4041: $1e $b8
	cp   h                                           ; $4043: $bc
	or   b                                           ; $4044: $b0
	or   [hl]                                        ; $4045: $b6
	ret  nc                                          ; $4046: $d0

	cpl                                              ; $4047: $2f
	adc  c                                           ; $4048: $89
	nop                                              ; $4049: $00
	nop                                              ; $404a: $00
	inc  bc                                          ; $404b: $03
	add  b                                           ; $404c: $80
	nop                                              ; $404d: $00

jr_01a_404e:
	rlca                                             ; $404e: $07
	ld   bc, $0003                                   ; $404f: $01 $03 $00
	ld   [bc], a                                     ; $4052: $02
	nop                                              ; $4053: $00
	rlca                                             ; $4054: $07
	inc  bc                                          ; $4055: $03
	rrca                                             ; $4056: $0f
	add  c                                           ; $4057: $81
	rlca                                             ; $4058: $07

jr_01a_4059:
	ld   bc, $0f1f                                   ; $4059: $01 $1f $0f
	add  b                                           ; $405c: $80
	inc  bc                                          ; $405d: $03
	ld   b, $10                                      ; $405e: $06 $10
	inc  b                                           ; $4060: $04
	ld   a, [hl-]                                    ; $4061: $3a
	nop                                              ; $4062: $00
	ld   a, [bc]                                     ; $4063: $0a
	ld   de, $8055                                   ; $4064: $11 $55 $80
	add  hl, sp                                      ; $4067: $39
	dec  bc                                          ; $4068: $0b
	dec  a                                           ; $4069: $3d
	ld   a, l                                        ; $406a: $7d
	ld   bc, $3ac3                                   ; $406b: $01 $c3 $3a
	ld   a, $f6                                      ; $406e: $3e $f6
	cp   $ee                                         ; $4070: $fe $ee
	db   $fc                                         ; $4072: $fc
	db   $dd                                         ; $4073: $dd
	db   $fd                                         ; $4074: $fd
	add  b                                           ; $4075: $80
	cp   l                                           ; $4076: $bd
	nop                                              ; $4077: $00
	dec  a                                           ; $4078: $3d
	add  c                                           ; $4079: $81
	db   $fd                                         ; $407a: $fd
	ld   bc, $f8fc                                   ; $407b: $01 $fc $f8
	add  b                                           ; $407e: $80
	ei                                               ; $407f: $fb
	ld   [bc], a                                     ; $4080: $02
	ld   sp, hl                                      ; $4081: $f9
	ld   a, a                                        ; $4082: $7f
	ld   a, [hl]                                     ; $4083: $7e
	add  b                                           ; $4084: $80
	ld   h, [hl]                                     ; $4085: $66
	add  b                                           ; $4086: $80
	ld   a, [hl]                                     ; $4087: $7e
	ld   a, [bc]                                     ; $4088: $0a
	ld   a, l                                        ; $4089: $7d
	ld   a, h                                        ; $408a: $7c
	ld   [hl-], a                                    ; $408b: $32
	jr   nc, jr_01a_404e                             ; $408c: $30 $c0

	ret  z                                           ; $408e: $c8

	ld   l, h                                        ; $408f: $6c
	ld   [hl], b                                     ; $4090: $70
	db   $10                                         ; $4091: $10
	add  b                                           ; $4092: $80
	add  h                                           ; $4093: $84
	add  c                                           ; $4094: $81
	ld   hl, sp+$00                                  ; $4095: $f8 $00
	ld   a, [$fc86]                                  ; $4097: $fa $86 $fc
	ld   bc, $0100                                   ; $409a: $01 $00 $01
	add  b                                           ; $409d: $80
	cp   $05                                         ; $409e: $fe $05
	nop                                              ; $40a0: $00
	ldh  a, [$03]                                    ; $40a1: $f0 $03
	rrca                                             ; $40a3: $0f
	nop                                              ; $40a4: $00
	inc  bc                                          ; $40a5: $03
	add  c                                           ; $40a6: $81
	nop                                              ; $40a7: $00
	ld   b, $07                                      ; $40a8: $06 $07
	nop                                              ; $40aa: $00
	jr   jr_01a_40ad                                 ; $40ab: $18 $00

jr_01a_40ad:
	jr   jr_01a_40af                                 ; $40ad: $18 $00

jr_01a_40af:
	rlca                                             ; $40af: $07
	adc  a                                           ; $40b0: $8f
	nop                                              ; $40b1: $00
	ld   [$87f8], sp                                 ; $40b2: $08 $f8 $87
	add  b                                           ; $40b5: $80
	ld   a, b                                        ; $40b6: $78
	ld   hl, sp+$0f                                  ; $40b7: $f8 $0f
	ld   a, a                                        ; $40b9: $7f
	nop                                              ; $40ba: $00
	ldh  a, [$80]                                    ; $40bb: $f0 $80
	ld   b, $81                                      ; $40bd: $06 $81
	nop                                              ; $40bf: $00
	nop                                              ; $40c0: $00
	rst  $38                                         ; $40c1: $ff
	adc  a                                           ; $40c2: $8f
	nop                                              ; $40c3: $00
	ld   bc, $fc02                                   ; $40c4: $01 $02 $fc
	add  b                                           ; $40c7: $80
	nop                                              ; $40c8: $00
	nop                                              ; $40c9: $00
	ld   [bc], a                                     ; $40ca: $02
	add  b                                           ; $40cb: $80
	ld   hl, sp+$07                                  ; $40cc: $f8 $07
	nop                                              ; $40ce: $00
	inc  e                                           ; $40cf: $1c
	add  b                                           ; $40d0: $80
	sbc  b                                           ; $40d1: $98
	nop                                              ; $40d2: $00
	jr   jr_01a_40d5                                 ; $40d3: $18 $00

jr_01a_40d5:
	ldh  [hScriptOpcodeParams], a                                    ; $40d5: $e0 $a0
	nop                                              ; $40d7: $00
	add  e                                           ; $40d8: $83
	ld   e, $00                                      ; $40d9: $1e $00
	ld   a, d                                        ; $40db: $7a
	add  d                                           ; $40dc: $82
	ld   e, d                                        ; $40dd: $5a
	nop                                              ; $40de: $00
	ld   a, [de]                                     ; $40df: $1a
	add  c                                           ; $40e0: $81
	ld   a, [hl]                                     ; $40e1: $7e
	inc  bc                                          ; $40e2: $03
	inc  e                                           ; $40e3: $1c
	rra                                              ; $40e4: $1f
	nop                                              ; $40e5: $00
	rlca                                             ; $40e6: $07
	add  e                                           ; $40e7: $83
	inc  bc                                          ; $40e8: $03
	ld   de, $030b                                   ; $40e9: $11 $0b $03
	rla                                              ; $40ec: $17
	rlca                                             ; $40ed: $07
	inc  hl                                          ; $40ee: $23
	inc  de                                          ; $40ef: $13
	db   $10                                         ; $40f0: $10
	jr   jr_01a_4111                                 ; $40f1: $18 $1e

	ld   d, $5c                                      ; $40f3: $16 $5c
	dec  l                                           ; $40f5: $2d
	add  hl, sp                                      ; $40f6: $39
	ld   a, [de]                                     ; $40f7: $1a
	sbc  d                                           ; $40f8: $9a
	ld   e, c                                        ; $40f9: $59
	ld   c, c                                        ; $40fa: $49
	ld   l, e                                        ; $40fb: $6b
	add  c                                           ; $40fc: $81
	ld   h, e                                        ; $40fd: $63
	add  b                                           ; $40fe: $80
	ld   e, l                                        ; $40ff: $5d
	ld   [$a2dd], sp                                 ; $4100: $08 $dd $a2
	nop                                              ; $4103: $00
	jp   $e780                                       ; $4104: $c3 $80 $e7


	jp   $e3fb                                       ; $4107: $c3 $fb $e3


	add  b                                           ; $410a: $80
	xor  e                                           ; $410b: $ab
	add  b                                           ; $410c: $80
	res  0, b                                        ; $410d: $cb $80
	db   $e4                                         ; $410f: $e4
	ld   [bc], a                                     ; $4110: $02

jr_01a_4111:
	ld   b, b                                        ; $4111: $40
	ld   d, d                                        ; $4112: $52
	ld   [de], a                                     ; $4113: $12
	add  b                                           ; $4114: $80
	cp   a                                           ; $4115: $bf
	dec  b                                           ; $4116: $05
	set  2, a                                        ; $4117: $cb $d7
	pop  bc                                          ; $4119: $c1
	push bc                                          ; $411a: $c5
	add  c                                           ; $411b: $81
	push hl                                          ; $411c: $e5
	add  e                                           ; $411d: $83
	ld   bc, $6402                                   ; $411e: $01 $02 $64
	nop                                              ; $4121: $00
	and  $8b                                         ; $4122: $e6 $8b
	nop                                              ; $4124: $00
	ld   [bc], a                                     ; $4125: $02
	inc  bc                                          ; $4126: $03
	nop                                              ; $4127: $00
	ld   [bc], a                                     ; $4128: $02
	add  c                                           ; $4129: $81
	nop                                              ; $412a: $00
	ld   [bc], a                                     ; $412b: $02
	inc  bc                                          ; $412c: $03
	ld   bc, $8107                                   ; $412d: $01 $07 $81
	inc  bc                                          ; $4130: $03
	ld   bc, $070f                                   ; $4131: $01 $0f $07
	add  b                                           ; $4134: $80
	inc  bc                                          ; $4135: $03
	inc  de                                          ; $4136: $13
	ld   [$1e00], sp                                 ; $4137: $08 $00 $1e
	nop                                              ; $413a: $00
	inc  h                                           ; $413b: $24
	jr   jr_01a_4158                                 ; $413c: $18 $1a

	inc  e                                           ; $413e: $1c
	ld   e, h                                        ; $413f: $5c
	dec  a                                           ; $4140: $3d
	ld   a, l                                        ; $4141: $7d
	ld   bc, $2647                                   ; $4142: $01 $47 $26
	cp   [hl]                                        ; $4145: $be
	ld   e, [hl]                                     ; $4146: $5e
	ld   a, h                                        ; $4147: $7c
	cp   l                                           ; $4148: $bd
	ld   sp, hl                                      ; $4149: $f9
	ld   a, e                                        ; $414a: $7b
	add  b                                           ; $414b: $80
	ei                                               ; $414c: $fb
	nop                                              ; $414d: $00
	di                                               ; $414e: $f3
	add  d                                           ; $414f: $82
	rst  $30                                         ; $4150: $f7
	ld   bc, $e1f1                                   ; $4151: $01 $f1 $e1
	add  b                                           ; $4154: $80
	xor  $02                                         ; $4155: $ee $02
	db   $e3                                         ; $4157: $e3

jr_01a_4158:
	rst  $38                                         ; $4158: $ff
	db   $fc                                         ; $4159: $fc
	add  b                                           ; $415a: $80
	ld   h, [hl]                                     ; $415b: $66
	add  b                                           ; $415c: $80
	cp   $08                                         ; $415d: $fe $08
	ld   sp, hl                                      ; $415f: $f9
	ld   hl, sp+$62                                  ; $4160: $f8 $62
	ld   h, b                                        ; $4162: $60
	add  b                                           ; $4163: $80
	sbc  b                                           ; $4164: $98
	ld   e, h                                        ; $4165: $5c
	ld   [hl], b                                     ; $4166: $70
	inc  [hl]                                        ; $4167: $34
	add  b                                           ; $4168: $80
	add  b                                           ; $4169: $80
	ld   bc, $faf8                                   ; $416a: $01 $f8 $fa
	add  c                                           ; $416d: $81
	db   $fc                                         ; $416e: $fc
	nop                                              ; $416f: $00
	db   $fd                                         ; $4170: $fd
	add  h                                           ; $4171: $84
	cp   $80                                         ; $4172: $fe $80
	nop                                              ; $4174: $00
	add  b                                           ; $4175: $80
	cp   $05                                         ; $4176: $fe $05
	nop                                              ; $4178: $00
	ld   hl, sp+$03                                  ; $4179: $f8 $03
	rlca                                             ; $417b: $07
	nop                                              ; $417c: $00
	inc  bc                                          ; $417d: $03
	add  c                                           ; $417e: $81
	nop                                              ; $417f: $00
	ld   b, $07                                      ; $4180: $06 $07
	nop                                              ; $4182: $00
	jr   jr_01a_4185                                 ; $4183: $18 $00

jr_01a_4185:
	jr   jr_01a_4187                                 ; $4185: $18 $00

jr_01a_4187:
	rlca                                             ; $4187: $07
	adc  a                                           ; $4188: $8f
	nop                                              ; $4189: $00
	ld   [bc], a                                     ; $418a: $02
	ldh  a, [rIF]                                    ; $418b: $f0 $0f
	nop                                              ; $418d: $00
	add  b                                           ; $418e: $80
	ldh  a, [$03]                                    ; $418f: $f0 $03
	rra                                              ; $4191: $1f
	rst  $38                                         ; $4192: $ff
	nop                                              ; $4193: $00
	ldh  [$80], a                                    ; $4194: $e0 $80
	ld   b, $81                                      ; $4196: $06 $81
	nop                                              ; $4198: $00
	nop                                              ; $4199: $00
	rst  $38                                         ; $419a: $ff
	adc  a                                           ; $419b: $8f
	nop                                              ; $419c: $00
	ld   bc, $fe01                                   ; $419d: $01 $01 $fe
	add  b                                           ; $41a0: $80
	nop                                              ; $41a1: $00
	nop                                              ; $41a2: $00
	ld   bc, $fc80                                   ; $41a3: $01 $80 $fc
	rlca                                             ; $41a6: $07
	nop                                              ; $41a7: $00
	ld   e, $80                                      ; $41a8: $1e $80
	sbc  b                                           ; $41aa: $98
	nop                                              ; $41ab: $00
	jr   jr_01a_41ae                                 ; $41ac: $18 $00

jr_01a_41ae:
	ldh  [hScriptOpcodeParams], a                                    ; $41ae: $e0 $a0
	nop                                              ; $41b0: $00
	add  e                                           ; $41b1: $83
	rst  $38                                         ; $41b2: $ff
	nop                                              ; $41b3: $00
	ld   h, e                                        ; $41b4: $63
	add  b                                           ; $41b5: $80
	ld   [hl], a                                     ; $41b6: $77
	ld   [bc], a                                     ; $41b7: $02
	ld   h, a                                        ; $41b8: $67
	ld   h, e                                        ; $41b9: $63
	ld   h, a                                        ; $41ba: $67
	add  c                                           ; $41bb: $81
	rst  $38                                         ; $41bc: $ff
	add  d                                           ; $41bd: $82
	nop                                              ; $41be: $00
	add  b                                           ; $41bf: $80
	ld   h, b                                        ; $41c0: $60
	sbc  [hl]                                        ; $41c1: $9e
	nop                                              ; $41c2: $00
	add  b                                           ; $41c3: $80
	inc  b                                           ; $41c4: $04
	sbc  c                                           ; $41c5: $99
	nop                                              ; $41c6: $00
	inc  bc                                          ; $41c7: $03
	ld   bc, $0300                                   ; $41c8: $01 $00 $03
	ld   bc, $0080                                   ; $41cb: $01 $80 $00
	ld   [bc], a                                     ; $41ce: $02
	inc  b                                           ; $41cf: $04
	ld   bc, $800d                                   ; $41d0: $01 $0d $80
	dec  b                                           ; $41d3: $05
	ld   bc, $0804                                   ; $41d4: $01 $04 $08
	add  b                                           ; $41d7: $80
	ld   bc, $0201                                   ; $41d8: $01 $01 $02
	ld   a, [bc]                                     ; $41db: $0a
	add  b                                           ; $41dc: $80
	ld   b, $10                                      ; $41dd: $06 $10
	inc  b                                           ; $41df: $04
	dec  b                                           ; $41e0: $05
	inc  b                                           ; $41e1: $04
	dec  b                                           ; $41e2: $05
	inc  b                                           ; $41e3: $04
	dec  b                                           ; $41e4: $05
	inc  b                                           ; $41e5: $04
	dec  c                                           ; $41e6: $0d
	ld   [bc], a                                     ; $41e7: $02
	ld   a, [bc]                                     ; $41e8: $0a
	inc  b                                           ; $41e9: $04
	call z, $ef00                                    ; $41ea: $cc $00 $ef
	rst  ToBoot                                         ; $41ed: $c7
	pop  de                                          ; $41ee: $d1
	pop  bc                                          ; $41ef: $c1
	add  b                                           ; $41f0: $80
	cpl                                              ; $41f1: $2f
	ld   [bc], a                                     ; $41f2: $02
	ld   b, a                                        ; $41f3: $47
	ld   d, a                                        ; $41f4: $57
	ld   de, $b980                                   ; $41f5: $11 $80 $b9
	dec  c                                           ; $41f8: $0d
	push af                                          ; $41f9: $f5
	db   $f4                                         ; $41fa: $f4
	cp   d                                           ; $41fb: $ba
	ld   a, [hl-]                                    ; $41fc: $3a
	inc  e                                           ; $41fd: $1c
	ld   a, h                                        ; $41fe: $7c
	ld   c, $2e                                      ; $41ff: $0e $2e
	rlca                                             ; $4201: $07
	scf                                              ; $4202: $37
	rlca                                             ; $4203: $07
	cpl                                              ; $4204: $2f

jr_01a_4205:
	ld   [bc], a                                     ; $4205: $02
	ld   [hl+], a                                    ; $4206: $22
	add  c                                           ; $4207: $81
	ld   [bc], a                                     ; $4208: $02
	inc  b                                           ; $4209: $04
	ld   a, [$7a05]                                  ; $420a: $fa $05 $7a
	nop                                              ; $420d: $00
	ret  nz                                          ; $420e: $c0

	add  l                                           ; $420f: $85
	add  b                                           ; $4210: $80
	add  hl, bc                                      ; $4211: $09
	and  b                                           ; $4212: $a0
	add  b                                           ; $4213: $80
	or   b                                           ; $4214: $b0
	and  b                                           ; $4215: $a0
	ld   a, b                                        ; $4216: $78
	ld   [hl], b                                     ; $4217: $70
	add  sp, -$20                                    ; $4218: $e8 $e0
	ld   d, b                                        ; $421a: $50
	ld   b, b                                        ; $421b: $40
	add  c                                           ; $421c: $81
	nop                                              ; $421d: $00
	ld   bc, $5040                                   ; $421e: $01 $40 $50
	add  b                                           ; $4221: $80
	ldh  [$81], a                                    ; $4222: $e0 $81
	and  b                                           ; $4224: $a0
	ld   a, [bc]                                     ; $4225: $0a
	add  b                                           ; $4226: $80
	ld   b, b                                        ; $4227: $40
	ld   l, h                                        ; $4228: $6c
	inc  bc                                          ; $4229: $03
	ld   l, a                                        ; $422a: $6f
	rrca                                             ; $422b: $0f
	db   $e3                                         ; $422c: $e3
	inc  bc                                          ; $422d: $03
	ld   a, h                                        ; $422e: $7c
	nop                                              ; $422f: $00
	inc  bc                                          ; $4230: $03
	add  l                                           ; $4231: $85
	nop                                              ; $4232: $00
	nop                                              ; $4233: $00
	ld   bc, $0083                                   ; $4234: $01 $83 $00
	nop                                              ; $4237: $00

jr_01a_4238:
	ld   [bc], a                                     ; $4238: $02
	add  d                                           ; $4239: $82
	ld   bc, $0080                                   ; $423a: $01 $80 $00
	add  b                                           ; $423d: $80
	ld   bc, $0005                                   ; $423e: $01 $05 $00
	ld   e, h                                        ; $4241: $5c
	db   $eb                                         ; $4242: $eb
	ld   l, d                                        ; $4243: $6a
	ld   l, e                                        ; $4244: $6b
	ld   c, e                                        ; $4245: $4b
	add  b                                           ; $4246: $80
	ld   e, e                                        ; $4247: $5b
	inc  bc                                          ; $4248: $03
	ld   a, l                                        ; $4249: $7d
	db   $fc                                         ; $424a: $fc
	jr   c, jr_01a_4205                              ; $424b: $38 $b8

	add  b                                           ; $424d: $80
	ld   b, $82                                      ; $424e: $06 $82
	ld   a, a                                        ; $4250: $7f
	add  [hl]                                        ; $4251: $86
	rst  $38                                         ; $4252: $ff
	add  b                                           ; $4253: $80
	cp   $80                                         ; $4254: $fe $80
	ld   bc, $fe18                                   ; $4256: $01 $18 $fe
	rst  $38                                         ; $4259: $ff
	ld   bc, $003f                                   ; $425a: $01 $3f $00
	cp   [hl]                                        ; $425d: $be
	add  b                                           ; $425e: $80
	db   $f4                                         ; $425f: $f4
	ldh  a, [$84]                                    ; $4260: $f0 $84
	add  b                                           ; $4262: $80
	ld   b, $30                                      ; $4263: $06 $30
	rst  $30                                         ; $4265: $f7
	ret  nz                                          ; $4266: $c0

	ld   [hl], b                                     ; $4267: $70
	halt                                             ; $4268: $76
	ld   a, $ba                                      ; $4269: $3e $ba
	cp   a                                           ; $426b: $bf
	cp   h                                           ; $426c: $bc
	sbc  h                                           ; $426d: $9c
	call c, $eecf                                    ; $426e: $dc $cf $ee
	add  c                                           ; $4271: $81
	and  $80                                         ; $4272: $e6 $80
	ld   d, $02                                      ; $4274: $16 $02

jr_01a_4276:
	and  $fe                                         ; $4276: $e6 $fe
	ld   e, $80                                      ; $4278: $1e $80
	ld   hl, sp+$01                                  ; $427a: $f8 $01
	db   $fd                                         ; $427c: $fd
	ld   bc, $0080                                   ; $427d: $01 $80 $00
	nop                                              ; $4280: $00
	ld   [bc], a                                     ; $4281: $02
	add  c                                           ; $4282: $81
	nop                                              ; $4283: $00
	ld   b, $3e                                      ; $4284: $06 $3e
	ld   bc, $00c1                                   ; $4286: $01 $c1 $00
	ret  nz                                          ; $4289: $c0

	nop                                              ; $428a: $00
	ccf                                              ; $428b: $3f
	sub  b                                           ; $428c: $90
	nop                                              ; $428d: $00
	nop                                              ; $428e: $00
	rst  $38                                         ; $428f: $ff
	add  c                                           ; $4290: $81
	nop                                              ; $4291: $00
	add  b                                           ; $4292: $80
	rst  $38                                         ; $4293: $ff
	add  b                                           ; $4294: $80
	nop                                              ; $4295: $00
	add  b                                           ; $4296: $80
	ret  nz                                          ; $4297: $c0

	add  c                                           ; $4298: $81
	nop                                              ; $4299: $00
	nop                                              ; $429a: $00
	rst  $38                                         ; $429b: $ff
	adc  a                                           ; $429c: $8f
	nop                                              ; $429d: $00
	ld   b, $3e                                      ; $429e: $06 $3e
	call nz, $3804                                   ; $42a0: $c4 $04 $38
	ld   a, $c0                                      ; $42a3: $3e $c0
	ret  z                                           ; $42a5: $c8

	add  b                                           ; $42a6: $80
	nop                                              ; $42a7: $00
	inc  bc                                          ; $42a8: $03
	ld   h, b                                        ; $42a9: $60
	ld   l, h                                        ; $42aa: $6c
	nop                                              ; $42ab: $00
	db   $fc                                         ; $42ac: $fc
	sub  e                                           ; $42ad: $93
	nop                                              ; $42ae: $00
	ld   b, $07                                      ; $42af: $06 $07
	nop                                              ; $42b1: $00
	ld   [$1000], sp                                 ; $42b2: $08 $00 $10
	nop                                              ; $42b5: $00
	jr   nz, jr_01a_4238                             ; $42b6: $20 $80

	ld   [$0601], sp                                 ; $42b8: $08 $01 $06
	ld   b, [hl]                                     ; $42bb: $46
	add  l                                           ; $42bc: $85
	nop                                              ; $42bd: $00
	ld   bc, $0040                                   ; $42be: $01 $40 $00
	add  b                                           ; $42c1: $80
	ld   [bc], a                                     ; $42c2: $02
	ld   bc, $0323                                   ; $42c3: $01 $23 $03
	add  b                                           ; $42c6: $80
	ld   bc, $1110                                   ; $42c7: $01 $10 $11
	ld   bc, $0008                                   ; $42ca: $01 $08 $00
	ld   a, a                                        ; $42cd: $7f
	nop                                              ; $42ce: $00
	adc  b                                           ; $42cf: $88
	nop                                              ; $42d0: $00
	inc  c                                           ; $42d1: $0c
	nop                                              ; $42d2: $00
	ld   [bc], a                                     ; $42d3: $02
	ld   [$7009], sp                                 ; $42d4: $08 $09 $70
	ld   [hl], c                                     ; $42d7: $71
	nop                                              ; $42d8: $00
	ld   hl, $2081                                   ; $42d9: $21 $81 $20
	add  b                                           ; $42dc: $80
	and  h                                           ; $42dd: $a4
	add  b                                           ; $42de: $80
	add  h                                           ; $42df: $84
	inc  c                                           ; $42e0: $0c
	add  l                                           ; $42e1: $85
	xor  h                                           ; $42e2: $ac
	db   $ec                                         ; $42e3: $ec
	db   $e4                                         ; $42e4: $e4
	call nz, $fae4                                   ; $42e5: $c4 $e4 $fa
	ld   hl, sp-$0c                                  ; $42e8: $f8 $f4
	ldh  a, [$08]                                    ; $42ea: $f0 $08
	nop                                              ; $42ec: $00
	ldh  a, [$81]                                    ; $42ed: $f0 $81
	nop                                              ; $42ef: $00
	ld   [bc], a                                     ; $42f0: $02
	ldh  a, [rP1]                                    ; $42f1: $f0 $00
	jr   nz, jr_01a_4276                             ; $42f3: $20 $81

	and  b                                           ; $42f5: $a0
	inc  b                                           ; $42f6: $04
	sub  b                                           ; $42f7: $90
	add  b                                           ; $42f8: $80
	ldh  [rP1], a                                    ; $42f9: $e0 $00
	add  b                                           ; $42fb: $80
	adc  a                                           ; $42fc: $8f
	nop                                              ; $42fd: $00
	ld   [$0003], sp                                 ; $42fe: $08 $03 $00
	inc  b                                           ; $4301: $04
	nop                                              ; $4302: $00
	ld   [$1404], sp                                 ; $4303: $08 $04 $14
	ld   [$802b], sp                                 ; $4306: $08 $2b $80
	dec  de                                          ; $4309: $1b
	ld   bc, $3713                                   ; $430a: $01 $13 $37
	add  c                                           ; $430d: $81
	rlca                                             ; $430e: $07
	ld   bc, $0717                                   ; $430f: $01 $17 $07
	add  b                                           ; $4312: $80
	ld   bc, $0800                                   ; $4313: $01 $00 $08
	add  e                                           ; $4316: $83
	nop                                              ; $4317: $00
	nop                                              ; $4318: $00
	inc  b                                           ; $4319: $04
	add  c                                           ; $431a: $81
	nop                                              ; $431b: $00
	ld   b, $04                                      ; $431c: $06 $04
	nop                                              ; $431e: $00
	rst  $38                                         ; $431f: $ff
	nop                                              ; $4320: $00
	inc  b                                           ; $4321: $04
	jr   @+$1d                                       ; $4322: $18 $1b

	add  b                                           ; $4324: $80
	inc  a                                           ; $4325: $3c
	rlca                                             ; $4326: $07
	ccf                                              ; $4327: $3f
	cp   a                                           ; $4328: $bf
	sbc  a                                           ; $4329: $9f
	rst  $38                                         ; $432a: $ff
	rst  $20                                         ; $432b: $e7
	rst  $30                                         ; $432c: $f7
	ldh  a, [$f7]                                    ; $432d: $f0 $f7
	add  e                                           ; $432f: $83
	ldh  a, [$84]                                    ; $4330: $f0 $84
	nop                                              ; $4332: $00
	nop                                              ; $4333: $00
	inc  b                                           ; $4334: $04
	add  c                                           ; $4335: $81
	nop                                              ; $4336: $00
	ld   [de], a                                     ; $4337: $12
	ld   [bc], a                                     ; $4338: $02
	nop                                              ; $4339: $00
	pop  af                                          ; $433a: $f1
	nop                                              ; $433b: $00
	stop                                             ; $433c: $10 $00
	jr   nz, jr_01a_4340                             ; $433e: $20 $00

jr_01a_4340:
	ld   bc, $1210                                   ; $4340: $01 $10 $12
	db   $10                                         ; $4343: $10
	ld   [de], a                                     ; $4344: $12
	inc  e                                           ; $4345: $1c
	ld   e, l                                        ; $4346: $5d
	nop                                              ; $4347: $00
	ld   b, b                                        ; $4348: $40
	nop                                              ; $4349: $00
	ccf                                              ; $434a: $3f
	adc  l                                           ; $434b: $8d
	nop                                              ; $434c: $00
	inc  b                                           ; $434d: $04
	cp   $00                                         ; $434e: $fe $00
	ld   b, b                                        ; $4350: $40
	nop                                              ; $4351: $00
	and  b                                           ; $4352: $a0
	add  c                                           ; $4353: $81
	nop                                              ; $4354: $00
	ld   [$0020], sp                                 ; $4355: $08 $20 $00
	ld   bc, $de1e                                   ; $4358: $01 $1e $de
	nop                                              ; $435b: $00
	inc  bc                                          ; $435c: $03
	nop                                              ; $435d: $00
	db   $fc                                         ; $435e: $fc
	adc  l                                           ; $435f: $8d
	nop                                              ; $4360: $00
	ld   [$0003], sp                                 ; $4361: $08 $03 $00
	inc  b                                           ; $4364: $04
	nop                                              ; $4365: $00
	ld   [$1404], sp                                 ; $4366: $08 $04 $14
	ld   [$802b], sp                                 ; $4369: $08 $2b $80
	dec  de                                          ; $436c: $1b
	ld   bc, $3713                                   ; $436d: $01 $13 $37
	add  c                                           ; $4370: $81
	rlca                                             ; $4371: $07
	ld   bc, $0717                                   ; $4372: $01 $17 $07
	add  b                                           ; $4375: $80
	ld   bc, $0800                                   ; $4376: $01 $00 $08
	add  a                                           ; $4379: $87
	nop                                              ; $437a: $00
	ld   b, $08                                      ; $437b: $06 $08
	nop                                              ; $437d: $00
	rst  $30                                         ; $437e: $f7
	nop                                              ; $437f: $00
	inc  b                                           ; $4380: $04
	jr   jr_01a_439e                                 ; $4381: $18 $1b

	add  b                                           ; $4383: $80
	inc  a                                           ; $4384: $3c
	rlca                                             ; $4385: $07
	ccf                                              ; $4386: $3f
	cp   a                                           ; $4387: $bf
	sbc  a                                           ; $4388: $9f
	rst  $38                                         ; $4389: $ff
	rst  $20                                         ; $438a: $e7
	rst  $30                                         ; $438b: $f7
	ldh  a, [$f7]                                    ; $438c: $f0 $f7
	add  e                                           ; $438e: $83
	ldh  a, [rDIV]                                   ; $438f: $f0 $04
	inc  b                                           ; $4391: $04
	nop                                              ; $4392: $00
	ld   [bc], a                                     ; $4393: $02
	nop                                              ; $4394: $00
	ld   bc, $0081                                   ; $4395: $01 $81 $00
	nop                                              ; $4398: $00
	ld   [hl], b                                     ; $4399: $70
	add  c                                           ; $439a: $81
	nop                                              ; $439b: $00
	ld   b, $90                                      ; $439c: $06 $90

jr_01a_439e:
	nop                                              ; $439e: $00
	ld   bc, $2000                                   ; $439f: $01 $00 $20
	nop                                              ; $43a2: $00
	ld   b, d                                        ; $43a3: $42
	add  c                                           ; $43a4: $81
	nop                                              ; $43a5: $00
	ld   b, $02                                      ; $43a6: $06 $02
	inc  a                                           ; $43a8: $3c
	cp   l                                           ; $43a9: $bd
	nop                                              ; $43aa: $00
	add  b                                           ; $43ab: $80
	nop                                              ; $43ac: $00
	ld   a, a                                        ; $43ad: $7f
	adc  l                                           ; $43ae: $8d
	nop                                              ; $43af: $00
	nop                                              ; $43b0: $00
	ld   e, $81                                      ; $43b1: $1e $81
	nop                                              ; $43b3: $00
	nop                                              ; $43b4: $00
	ld   hl, $1e80                                   ; $43b5: $21 $80 $1e
	ld   bc, $3f00                                   ; $43b8: $01 $00 $3f
	add  c                                           ; $43bb: $81
	nop                                              ; $43bc: $00
	inc  b                                           ; $43bd: $04
	cp   $00                                         ; $43be: $fe $00
	ld   b, $00                                      ; $43c0: $06 $00
	ld   hl, sp-$73                                  ; $43c2: $f8 $8d
	nop                                              ; $43c4: $00
	ld   [$0003], sp                                 ; $43c5: $08 $03 $00
	inc  b                                           ; $43c8: $04
	nop                                              ; $43c9: $00
	ld   [$1404], sp                                 ; $43ca: $08 $04 $14
	ld   [$802b], sp                                 ; $43cd: $08 $2b $80
	dec  de                                          ; $43d0: $1b
	ld   bc, $3713                                   ; $43d1: $01 $13 $37
	add  c                                           ; $43d4: $81
	rlca                                             ; $43d5: $07
	ld   bc, $0717                                   ; $43d6: $01 $17 $07
	add  b                                           ; $43d9: $80
	nop                                              ; $43da: $00
	nop                                              ; $43db: $00
	ld   [$0083], sp                                 ; $43dc: $08 $83 $00
	nop                                              ; $43df: $00
	inc  b                                           ; $43e0: $04
	add  c                                           ; $43e1: $81
	nop                                              ; $43e2: $00
	ld   b, $04                                      ; $43e3: $06 $04
	nop                                              ; $43e5: $00
	rst  $38                                         ; $43e6: $ff
	nop                                              ; $43e7: $00
	inc  b                                           ; $43e8: $04
	jr   jr_01a_4406                                 ; $43e9: $18 $1b

	add  b                                           ; $43eb: $80
	inc  a                                           ; $43ec: $3c
	rlca                                             ; $43ed: $07
	ccf                                              ; $43ee: $3f
	cp   a                                           ; $43ef: $bf
	sbc  a                                           ; $43f0: $9f
	rst  $38                                         ; $43f1: $ff
	rst  $20                                         ; $43f2: $e7
	rst  $30                                         ; $43f3: $f7
	ldh  a, [$f7]                                    ; $43f4: $f0 $f7
	add  e                                           ; $43f6: $83
	ldh  a, [$80]                                    ; $43f7: $f0 $80
	nop                                              ; $43f9: $00
	ld   [bc], a                                     ; $43fa: $02
	inc  b                                           ; $43fb: $04
	nop                                              ; $43fc: $00
	ld   [bc], a                                     ; $43fd: $02
	add  e                                           ; $43fe: $83
	nop                                              ; $43ff: $00
	inc  b                                           ; $4400: $04
	ld   [bc], a                                     ; $4401: $02
	nop                                              ; $4402: $00
	di                                               ; $4403: $f3
	nop                                              ; $4404: $00
	db   $10                                         ; $4405: $10

jr_01a_4406:
	add  b                                           ; $4406: $80
	inc  c                                           ; $4407: $0c
	inc  bc                                          ; $4408: $03
	inc  b                                           ; $4409: $04
	inc  d                                           ; $440a: $14
	nop                                              ; $440b: $00
	ld   [$0080], sp                                 ; $440c: $08 $80 $00
	dec  b                                           ; $440f: $05
	inc  bc                                          ; $4410: $03
	dec  sp                                          ; $4411: $3b
	nop                                              ; $4412: $00
	jr   nz, jr_01a_4415                             ; $4413: $20 $00

jr_01a_4415:
	rra                                              ; $4415: $1f
	adc  l                                           ; $4416: $8d
	nop                                              ; $4417: $00
	nop                                              ; $4418: $00
	ldh  a, [$81]                                    ; $4419: $f0 $81
	nop                                              ; $441b: $00
	nop                                              ; $441c: $00
	db   $10                                         ; $441d: $10
	add  e                                           ; $441e: $83
	nop                                              ; $441f: $00
	nop                                              ; $4420: $00
	db   $10                                         ; $4421: $10
	add  b                                           ; $4422: $80
	ldh  [$81], a                                    ; $4423: $e0 $81
	nop                                              ; $4425: $00
	nop                                              ; $4426: $00
	ldh  a, [$8d]                                    ; $4427: $f0 $8d
	nop                                              ; $4429: $00
	ld   [$0003], sp                                 ; $442a: $08 $03 $00
	inc  b                                           ; $442d: $04
	nop                                              ; $442e: $00
	ld   [$1404], sp                                 ; $442f: $08 $04 $14
	ld   [$802b], sp                                 ; $4432: $08 $2b $80
	dec  de                                          ; $4435: $1b
	ld   bc, $3713                                   ; $4436: $01 $13 $37
	add  c                                           ; $4439: $81
	rlca                                             ; $443a: $07
	ld   bc, $0717                                   ; $443b: $01 $17 $07
	add  b                                           ; $443e: $80
	nop                                              ; $443f: $00
	nop                                              ; $4440: $00
	ld   [$0083], sp                                 ; $4441: $08 $83 $00
	nop                                              ; $4444: $00
	inc  b                                           ; $4445: $04
	add  c                                           ; $4446: $81
	nop                                              ; $4447: $00
	ld   b, $04                                      ; $4448: $06 $04
	nop                                              ; $444a: $00
	rst  $38                                         ; $444b: $ff
	nop                                              ; $444c: $00
	inc  b                                           ; $444d: $04
	jr   jr_01a_446b                                 ; $444e: $18 $1b

	add  b                                           ; $4450: $80
	inc  a                                           ; $4451: $3c
	rlca                                             ; $4452: $07
	ccf                                              ; $4453: $3f
	cp   a                                           ; $4454: $bf
	sbc  a                                           ; $4455: $9f
	rst  $38                                         ; $4456: $ff
	rst  $20                                         ; $4457: $e7
	rst  $30                                         ; $4458: $f7
	ldh  a, [$f7]                                    ; $4459: $f0 $f7
	add  e                                           ; $445b: $83
	ldh  a, [$80]                                    ; $445c: $f0 $80
	nop                                              ; $445e: $00
	ld   [bc], a                                     ; $445f: $02
	inc  b                                           ; $4460: $04
	nop                                              ; $4461: $00
	ld   [bc], a                                     ; $4462: $02
	add  e                                           ; $4463: $83
	nop                                              ; $4464: $00
	inc  b                                           ; $4465: $04
	ld   [bc], a                                     ; $4466: $02
	nop                                              ; $4467: $00
	di                                               ; $4468: $f3
	nop                                              ; $4469: $00
	db   $10                                         ; $446a: $10

jr_01a_446b:
	add  b                                           ; $446b: $80
	inc  c                                           ; $446c: $0c
	dec  bc                                          ; $446d: $0b
	ld   b, $16                                      ; $446e: $06 $16
	inc  bc                                          ; $4470: $03
	dec  bc                                          ; $4471: $0b
	nop                                              ; $4472: $00
	inc  b                                           ; $4473: $04
	ld   bc, $003d                                   ; $4474: $01 $3d $00
	jr   nz, jr_01a_4479                             ; $4477: $20 $00

jr_01a_4479:
	rra                                              ; $4479: $1f
	adc  l                                           ; $447a: $8d
	nop                                              ; $447b: $00
	nop                                              ; $447c: $00
	ldh  a, [$81]                                    ; $447d: $f0 $81
	nop                                              ; $447f: $00

Call_01a_4480:
	nop                                              ; $4480: $00
	db   $10                                         ; $4481: $10
	add  e                                           ; $4482: $83
	nop                                              ; $4483: $00
	nop                                              ; $4484: $00
	db   $10                                         ; $4485: $10
	add  b                                           ; $4486: $80
	ldh  [$81], a                                    ; $4487: $e0 $81

jr_01a_4489:
	nop                                              ; $4489: $00
	nop                                              ; $448a: $00
	ldh  a, [$8d]                                    ; $448b: $f0 $8d
	nop                                              ; $448d: $00
	nop                                              ; $448e: $00
	ld   e, $80                                      ; $448f: $1e $80
	nop                                              ; $4491: $00
	inc  bc                                          ; $4492: $03
	ld   [$1c28], sp                                 ; $4493: $08 $28 $1c
	dec  e                                           ; $4496: $1d
	add  c                                           ; $4497: $81
	inc  e                                           ; $4498: $1c
	nop                                              ; $4499: $00
	ld   e, h                                        ; $449a: $5c
	add  l                                           ; $449b: $85
	inc  e                                           ; $449c: $1c
	inc  bc                                          ; $449d: $03
	ld   e, $1a                                      ; $449e: $1e $1a
	ld   a, [hl-]                                    ; $44a0: $3a
	ld   [hl+], a                                    ; $44a1: $22
	add  b                                           ; $44a2: $80
	inc  l                                           ; $44a3: $2c
	add  b                                           ; $44a4: $80
	inc  c                                           ; $44a5: $0c
	add  b                                           ; $44a6: $80
	nop                                              ; $44a7: $00
	nop                                              ; $44a8: $00
	ld   b, c                                        ; $44a9: $41
	add  c                                           ; $44aa: $81
	nop                                              ; $44ab: $00
	nop                                              ; $44ac: $00
	add  hl, sp                                      ; $44ad: $39
	adc  h                                           ; $44ae: $8c
	nop                                              ; $44af: $00
	dec  b                                           ; $44b0: $05
	inc  bc                                          ; $44b1: $03
	ld   a, e                                        ; $44b2: $7b
	nop                                              ; $44b3: $00
	ld   h, b                                        ; $44b4: $60
	nop                                              ; $44b5: $00
	rra                                              ; $44b6: $1f
	adc  c                                           ; $44b7: $89
	nop                                              ; $44b8: $00
	nop                                              ; $44b9: $00
	ret  nz                                          ; $44ba: $c0

	adc  e                                           ; $44bb: $8b
	nop                                              ; $44bc: $00
	ld   b, $20                                      ; $44bd: $06 $20
	ret  nz                                          ; $44bf: $c0

	ret  c                                           ; $44c0: $d8

	nop                                              ; $44c1: $00
	ld   [$f000], sp                                 ; $44c2: $08 $00 $f0
	adc  c                                           ; $44c5: $89
	nop                                              ; $44c6: $00
	nop                                              ; $44c7: $00
	rra                                              ; $44c8: $1f
	add  b                                           ; $44c9: $80
	nop                                              ; $44ca: $00
	ld   bc, $2c0c                                   ; $44cb: $01 $0c $2c
	add  e                                           ; $44ce: $83
	ld   e, $00                                      ; $44cf: $1e $00
	ld   e, [hl]                                     ; $44d1: $5e
	add  c                                           ; $44d2: $81
	ld   c, $02                                      ; $44d3: $0e $02
	ld   l, $2f                                      ; $44d5: $2e $2f
	ccf                                              ; $44d7: $3f
	add  c                                           ; $44d8: $81
	scf                                              ; $44d9: $37
	ld   bc, $383f                                   ; $44da: $01 $3f $38
	add  b                                           ; $44dd: $80
	add  hl, sp                                      ; $44de: $39
	add  b                                           ; $44df: $80
	nop                                              ; $44e0: $00
	nop                                              ; $44e1: $00
	ld   b, b                                        ; $44e2: $40
	add  c                                           ; $44e3: $81
	nop                                              ; $44e4: $00
	ld   b, $20                                      ; $44e5: $06 $20
	nop                                              ; $44e7: $00
	rra                                              ; $44e8: $1f
	nop                                              ; $44e9: $00
	jp   $3e00                                       ; $44ea: $c3 $00 $3e


	add  b                                           ; $44ed: $80
	jp   nz, $fa81                                   ; $44ee: $c2 $81 $fa

	ld   [bc], a                                     ; $44f1: $02
	ld   sp, hl                                      ; $44f2: $f9
	nop                                              ; $44f3: $00
	ld   a, [hl]                                     ; $44f4: $7e
	add  l                                           ; $44f5: $85
	nop                                              ; $44f6: $00
	ld   bc, $0040                                   ; $44f7: $01 $40 $00
	add  d                                           ; $44fa: $82
	add  b                                           ; $44fb: $80
	add  h                                           ; $44fc: $84
	nop                                              ; $44fd: $00
	nop                                              ; $44fe: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44ff: $cf
	add  c                                           ; $4500: $81

jr_01a_4501:
	nop                                              ; $4501: $00
	nop                                              ; $4502: $00
	db   $10                                         ; $4503: $10
	add  c                                           ; $4504: $81
	nop                                              ; $4505: $00
	nop                                              ; $4506: $00
	jr   nz, jr_01a_4489                             ; $4507: $20 $80

	nop                                              ; $4509: $00
	dec  b                                           ; $450a: $05
	ld   e, $de                                      ; $450b: $1e $de
	nop                                              ; $450d: $00
	add  b                                           ; $450e: $80
	nop                                              ; $450f: $00
	ld   a, a                                        ; $4510: $7f
	adc  l                                           ; $4511: $8d
	nop                                              ; $4512: $00
	inc  b                                           ; $4513: $04
	ldh  [rP1], a                                    ; $4514: $e0 $00
	jr   nz, jr_01a_4518                             ; $4516: $20 $00

jr_01a_4518:
	ld   b, b                                        ; $4518: $40
	add  c                                           ; $4519: $81
	nop                                              ; $451a: $00
	nop                                              ; $451b: $00
	add  b                                           ; $451c: $80
	add  c                                           ; $451d: $81
	nop                                              ; $451e: $00
	nop                                              ; $451f: $00
	ldh  [$81], a                                    ; $4520: $e0 $81
	nop                                              ; $4522: $00
	nop                                              ; $4523: $00
	ldh  [$8f], a                                    ; $4524: $e0 $8f
	nop                                              ; $4526: $00
	ld   b, $0f                                      ; $4527: $06 $0f
	nop                                              ; $4529: $00
	stop                                             ; $452a: $10 $00
	jr   nz, jr_01a_452e                             ; $452c: $20 $00

jr_01a_452e:
	ld   b, b                                        ; $452e: $40
	add  b                                           ; $452f: $80
	db   $10                                         ; $4530: $10
	ld   bc, $8c0c                                   ; $4531: $01 $0c $8c
	add  c                                           ; $4534: $81
	nop                                              ; $4535: $00
	add  d                                           ; $4536: $82
	ld   bc, $8101                                   ; $4537: $01 $01 $81
	ld   bc, $0580                                   ; $453a: $01 $80 $05
	ld   bc, $0747                                   ; $453d: $01 $47 $07
	add  b                                           ; $4540: $80
	inc  bc                                          ; $4541: $03
	db   $10                                         ; $4542: $10
	inc  hl                                          ; $4543: $23
	inc  bc                                          ; $4544: $03
	stop                                             ; $4545: $10 $00
	rst  $38                                         ; $4547: $ff
	nop                                              ; $4548: $00
	stop                                             ; $4549: $10 $00
	jr   jr_01a_454d                                 ; $454b: $18 $00

jr_01a_454d:
	inc  b                                           ; $454d: $04
	db   $10                                         ; $454e: $10
	ld   [de], a                                     ; $454f: $12
	ldh  [$e2], a                                    ; $4550: $e0 $e2
	nop                                              ; $4552: $00
	ld   b, d                                        ; $4553: $42
	add  c                                           ; $4554: $81
	ld   b, b                                        ; $4555: $40
	add  b                                           ; $4556: $80
	ld   c, b                                        ; $4557: $48
	add  b                                           ; $4558: $80
	ld   [$0a00], sp                                 ; $4559: $08 $00 $0a
	add  c                                           ; $455c: $81
	ld   l, b                                        ; $455d: $68
	inc  c                                           ; $455e: $0c
	xor  b                                           ; $455f: $a8
	add  sp, -$2c                                    ; $4560: $e8 $d4
	ldh  a, [$e8]                                    ; $4562: $f0 $e8
	ldh  [rAUD1SWEEP], a                             ; $4564: $e0 $10
	nop                                              ; $4566: $00
	rst  $20                                         ; $4567: $e7
	nop                                              ; $4568: $00
	ld   [$1000], sp                                 ; $4569: $08 $00 $10
	add  b                                           ; $456c: $80
	nop                                              ; $456d: $00
	ld   bc, $2b08                                   ; $456e: $01 $08 $2b
	add  c                                           ; $4571: $81
	dec  de                                          ; $4572: $1b
	nop                                              ; $4573: $00
	ld   e, a                                        ; $4574: $5f
	add  d                                           ; $4575: $82
	scf                                              ; $4576: $37
	nop                                              ; $4577: $00
	rlca                                             ; $4578: $07
	add  b                                           ; $4579: $80
	scf                                              ; $457a: $37
	ld   [bc], a                                     ; $457b: $02
	ld   c, b                                        ; $457c: $48
	nop                                              ; $457d: $00
	jr   nc, jr_01a_4501                             ; $457e: $30 $81

	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	inc  b                                           ; $4582: $04
	add  c                                           ; $4583: $81
	nop                                              ; $4584: $00
	inc  b                                           ; $4585: $04
	inc  b                                           ; $4586: $04
	nop                                              ; $4587: $00
	rst  $38                                         ; $4588: $ff
	nop                                              ; $4589: $00
	inc  b                                           ; $458a: $04
	add  b                                           ; $458b: $80
	jr   jr_01a_4593                                 ; $458c: $18 $05

	jr   c, jr_01a_45ca                              ; $458e: $38 $3a

	inc  a                                           ; $4590: $3c
	cp   h                                           ; $4591: $bc
	sbc  h                                           ; $4592: $9c

jr_01a_4593:
	db   $fd                                         ; $4593: $fd
	add  c                                           ; $4594: $81
	xor  $05                                         ; $4595: $ee $05
	rst  $38                                         ; $4597: $ff
	push af                                          ; $4598: $f5
	db   $f4                                         ; $4599: $f4
	ldh  a, [$c7]                                    ; $459a: $f0 $c7
	ret  nz                                          ; $459c: $c0

	add  h                                           ; $459d: $84
	nop                                              ; $459e: $00
	nop                                              ; $459f: $00
	inc  b                                           ; $45a0: $04
	add  e                                           ; $45a1: $83
	nop                                              ; $45a2: $00
	nop                                              ; $45a3: $00
	db   $fc                                         ; $45a4: $fc
	adc  c                                           ; $45a5: $89
	nop                                              ; $45a6: $00
	ld   [bc], a                                     ; $45a7: $02
	add  b                                           ; $45a8: $80
	nop                                              ; $45a9: $00
	ret  nz                                          ; $45aa: $c0

	add  c                                           ; $45ab: $81
	add  b                                           ; $45ac: $80
	add  b                                           ; $45ad: $80
	nop                                              ; $45ae: $00
	nop                                              ; $45af: $00
	ret  nz                                          ; $45b0: $c0

	adc  c                                           ; $45b1: $89
	nop                                              ; $45b2: $00
	db   $10                                         ; $45b3: $10
	rrca                                             ; $45b4: $0f
	nop                                              ; $45b5: $00
	stop                                             ; $45b6: $10 $00
	ld   bc, $2000                                   ; $45b8: $01 $00 $20
	nop                                              ; $45bb: $00
	ld   b, d                                        ; $45bc: $42
	nop                                              ; $45bd: $00
	ld   [bc], a                                     ; $45be: $02
	inc  a                                           ; $45bf: $3c
	dec  a                                           ; $45c0: $3d
	nop                                              ; $45c1: $00
	ld   b, b                                        ; $45c2: $40
	nop                                              ; $45c3: $00
	ccf                                              ; $45c4: $3f
	adc  l                                           ; $45c5: $8d
	nop                                              ; $45c6: $00
	ld   b, $fc                                      ; $45c7: $06 $fc
	nop                                              ; $45c9: $00

jr_01a_45ca:
	add  b                                           ; $45ca: $80
	nop                                              ; $45cb: $00
	ld   b, b                                        ; $45cc: $40
	nop                                              ; $45cd: $00
	ld   [bc], a                                     ; $45ce: $02

jr_01a_45cf:
	add  c                                           ; $45cf: $81
	nop                                              ; $45d0: $00
	ld   b, $01                                      ; $45d1: $06 $01
	ld   e, $de                                      ; $45d3: $1e $de
	nop                                              ; $45d5: $00
	inc  bc                                          ; $45d6: $03

jr_01a_45d7:
	nop                                              ; $45d7: $00
	db   $fc                                         ; $45d8: $fc
	sbc  l                                           ; $45d9: $9d
	nop                                              ; $45da: $00
	rrca                                             ; $45db: $0f
	ld   b, h                                        ; $45dc: $44
	nop                                              ; $45dd: $00
	ld   [$f800], sp                                 ; $45de: $08 $00 $f8
	ld   c, b                                        ; $45e1: $48
	ld   e, e                                        ; $45e2: $5b
	ld   e, b                                        ; $45e3: $58
	db   $fd                                         ; $45e4: $fd
	ld   a, h                                        ; $45e5: $7c
	ld   a, d                                        ; $45e6: $7a
	jr   c, jr_01a_4627                              ; $45e7: $38 $3e

	inc  e                                           ; $45e9: $1c
	ld   bc, $d300                                   ; $45ea: $01 $00 $d3
	ld   bc, $0380                                   ; $45ed: $01 $80 $03

jr_01a_45f0:
	or   [hl]                                        ; $45f0: $b6
	nop                                              ; $45f1: $00
	add  b                                           ; $45f2: $80
	add  b                                           ; $45f3: $80
	add  b                                           ; $45f4: $80
	ldh  [$80], a                                    ; $45f5: $e0 $80
	ldh  a, [$82]                                    ; $45f7: $f0 $82
	rst  $38                                         ; $45f9: $ff
	add  b                                           ; $45fa: $80
	ld   a, a                                        ; $45fb: $7f
	add  b                                           ; $45fc: $80
	rra                                              ; $45fd: $1f
	add  b                                           ; $45fe: $80
	rlca                                             ; $45ff: $07
	add  b                                           ; $4600: $80
	ld   bc, $00a2                                   ; $4601: $01 $a2 $00
	add  b                                           ; $4604: $80
	ldh  [$80], a                                    ; $4605: $e0 $80
	ldh  a, [$80]                                    ; $4607: $f0 $80
	ld   hl, sp-$7e                                  ; $4609: $f8 $82
	db   $fc                                         ; $460b: $fc
	add  b                                           ; $460c: $80
	cp   $80                                         ; $460d: $fe $80
	ld   a, a                                        ; $460f: $7f
	add  b                                           ; $4610: $80
	ccf                                              ; $4611: $3f
	sub  h                                           ; $4612: $94
	nop                                              ; $4613: $00
	add  b                                           ; $4614: $80
	add  b                                           ; $4615: $80
	add  b                                           ; $4616: $80
	ret  nz                                          ; $4617: $c0

	add  b                                           ; $4618: $80
	ldh  [$80], a                                    ; $4619: $e0 $80
	ldh  a, [$80]                                    ; $461b: $f0 $80
	ld   hl, sp-$80                                  ; $461d: $f8 $80
	add  b                                           ; $461f: $80
	add  b                                           ; $4620: $80
	ret  nz                                          ; $4621: $c0

	add  d                                           ; $4622: $82
	ldh  [$80], a                                    ; $4623: $e0 $80
	ldh  a, [$82]                                    ; $4625: $f0 $82

jr_01a_4627:
	ld   hl, sp-$80                                  ; $4627: $f8 $80
	db   $fc                                         ; $4629: $fc
	add  b                                           ; $462a: $80
	ld   a, [hl]                                     ; $462b: $7e
	add  d                                           ; $462c: $82
	ccf                                              ; $462d: $3f
	add  b                                           ; $462e: $80
	rra                                              ; $462f: $1f
	add  b                                           ; $4630: $80
	rrca                                             ; $4631: $0f
	add  b                                           ; $4632: $80
	rlca                                             ; $4633: $07
	add  d                                           ; $4634: $82
	inc  bc                                          ; $4635: $03
	add  b                                           ; $4636: $80
	ld   bc, $0090                                   ; $4637: $01 $90 $00
	add  b                                           ; $463a: $80
	add  b                                           ; $463b: $80

jr_01a_463c:
	add  b                                           ; $463c: $80
	ret  nz                                          ; $463d: $c0

	add  b                                           ; $463e: $80
	ldh  [$80], a                                    ; $463f: $e0 $80
	ldh  a, [$80]                                    ; $4641: $f0 $80
	ld   hl, sp-$80                                  ; $4643: $f8 $80
	cp   $87                                         ; $4645: $fe $87
	nop                                              ; $4647: $00
	add  b                                           ; $4648: $80
	db   $10                                         ; $4649: $10
	add  d                                           ; $464a: $82
	jr   nz, jr_01a_45cf                             ; $464b: $20 $82

	ld   b, b                                        ; $464d: $40
	add  b                                           ; $464e: $80
	nop                                              ; $464f: $00
	add  b                                           ; $4650: $80
	ret  nz                                          ; $4651: $c0

	add  d                                           ; $4652: $82
	ret  c                                           ; $4653: $d8

	add  b                                           ; $4654: $80
	jr   jr_01a_45d7                                 ; $4655: $18 $80

	ret  nc                                          ; $4657: $d0

	add  b                                           ; $4658: $80
	add  b                                           ; $4659: $80
	adc  h                                           ; $465a: $8c
	nop                                              ; $465b: $00
	add  d                                           ; $465c: $82
	ld   b, b                                        ; $465d: $40
	add  b                                           ; $465e: $80
	jr   nc, jr_01a_45f0                             ; $465f: $30 $8f

	nop                                              ; $4661: $00
	add  b                                           ; $4662: $80
	add  b                                           ; $4663: $80
	add  d                                           ; $4664: $82
	ret  nz                                          ; $4665: $c0

	add  b                                           ; $4666: $80
	ldh  [$80], a                                    ; $4667: $e0 $80
	ldh  a, [$82]                                    ; $4669: $f0 $82
	ld   hl, sp-$80                                  ; $466b: $f8 $80

jr_01a_466d:
	ld   a, h                                        ; $466d: $7c
	add  b                                           ; $466e: $80
	ld   a, $82                                      ; $466f: $3e $82

jr_01a_4671:
	rra                                              ; $4671: $1f
	add  b                                           ; $4672: $80
	rrca                                             ; $4673: $0f
	add  b                                           ; $4674: $80
	rlca                                             ; $4675: $07
	inc  bc                                          ; $4676: $03
	ccf                                              ; $4677: $3f
	nop                                              ; $4678: $00
	cp   a                                           ; $4679: $bf
	add  b                                           ; $467a: $80
	add  b                                           ; $467b: $80
	ret  nz                                          ; $467c: $c0

	add  hl, bc                                      ; $467d: $09
	rst  $20                                         ; $467e: $e7
	ldh  [rIE], a                                    ; $467f: $e0 $ff
	ldh  a, [$f4]                                    ; $4681: $f0 $f4
	db   $fc                                         ; $4683: $fc
	cp   $7e                                         ; $4684: $fe $7e
	sbc  a                                           ; $4686: $9f
	rra                                              ; $4687: $1f
	sbc  d                                           ; $4688: $9a
	nop                                              ; $4689: $00
	add  b                                           ; $468a: $80
	add  b                                           ; $468b: $80
	add  b                                           ; $468c: $80
	ret  nz                                          ; $468d: $c0

	add  d                                           ; $468e: $82
	ldh  [$80], a                                    ; $468f: $e0 $80
	ldh  a, [$80]                                    ; $4691: $f0 $80
	ld   hl, sp-$80                                  ; $4693: $f8 $80
	ld   a, h                                        ; $4695: $7c
	add  b                                           ; $4696: $80
	inc  a                                           ; $4697: $3c
	add  b                                           ; $4698: $80
	ld   e, $80                                      ; $4699: $1e $80
	rra                                              ; $469b: $1f
	ld   b, $8f                                      ; $469c: $06 $8f
	rrca                                             ; $469e: $0f
	add  a                                           ; $469f: $87
	rlca                                             ; $46a0: $07
	jp   $c103                                       ; $46a1: $c3 $03 $c1


	add  c                                           ; $46a4: $81
	ld   bc, $00a9                                   ; $46a5: $01 $a9 $00
	add  b                                           ; $46a8: $80
	rrca                                             ; $46a9: $0f
	add  b                                           ; $46aa: $80
	jr   nc, jr_01a_463c                             ; $46ab: $30 $8f

	nop                                              ; $46ad: $00
	ld   [bc], a                                     ; $46ae: $02
	inc  bc                                          ; $46af: $03
	nop                                              ; $46b0: $00
	inc  bc                                          ; $46b1: $03
	adc  d                                           ; $46b2: $8a
	nop                                              ; $46b3: $00
	add  b                                           ; $46b4: $80
	ld   c, $80                                      ; $46b5: $0e $80
	ld   a, [bc]                                     ; $46b7: $0a
	add  b                                           ; $46b8: $80
	ld   b, $00                                      ; $46b9: $06 $00
	nop                                              ; $46bb: $00
	add  d                                           ; $46bc: $82
	add  b                                           ; $46bd: $80
	add  b                                           ; $46be: $80
	ret  nz                                          ; $46bf: $c0

	add  b                                           ; $46c0: $80
	ldh  [$82], a                                    ; $46c1: $e0 $82
	ldh  a, [$80]                                    ; $46c3: $f0 $80
	ld   a, b                                        ; $46c5: $78
	add  b                                           ; $46c6: $80
	inc  a                                           ; $46c7: $3c
	sub  d                                           ; $46c8: $92
	nop                                              ; $46c9: $00
	nop                                              ; $46ca: $00
	add  b                                           ; $46cb: $80
	add  c                                           ; $46cc: $81
	nop                                              ; $46cd: $00
	nop                                              ; $46ce: $00
	ret  nz                                          ; $46cf: $c0

	add  c                                           ; $46d0: $81
	nop                                              ; $46d1: $00
	ld   [bc], a                                     ; $46d2: $02
	ld   c, b                                        ; $46d3: $48
	nop                                              ; $46d4: $00
	ld   [$009e], sp                                 ; $46d5: $08 $9e $00
	add  b                                           ; $46d8: $80
	ld   h, b                                        ; $46d9: $60
	adc  l                                           ; $46da: $8d
	nop                                              ; $46db: $00
	adc  b                                           ; $46dc: $88
	rlca                                             ; $46dd: $07
	adc  h                                           ; $46de: $8c
	rrca                                             ; $46df: $0f
	add  b                                           ; $46e0: $80
	rra                                              ; $46e1: $1f
	add  d                                           ; $46e2: $82
	ld   e, $80                                      ; $46e3: $1e $80
	ld   a, $82                                      ; $46e5: $3e $82
	inc  a                                           ; $46e7: $3c
	add  d                                           ; $46e8: $82
	inc  e                                           ; $46e9: $1c
	add  [hl]                                        ; $46ea: $86
	jr   jr_01a_466d                                 ; $46eb: $18 $80

	db   $10                                         ; $46ed: $10
	add  d                                           ; $46ee: $82
	jr   nc, jr_01a_4671                             ; $46ef: $30 $80

	ld   h, b                                        ; $46f1: $60
	add  h                                           ; $46f2: $84
	ldh  [$82], a                                    ; $46f3: $e0 $82
	ret  nz                                          ; $46f5: $c0

	add  d                                           ; $46f6: $82
	ld   b, b                                        ; $46f7: $40
	add  h                                           ; $46f8: $84
	nop                                              ; $46f9: $00
	add  d                                           ; $46fa: $82
	add  b                                           ; $46fb: $80
	add  b                                           ; $46fc: $80
	ld   bc, $0382                                   ; $46fd: $01 $82 $03
	add  d                                           ; $4700: $82
	rlca                                             ; $4701: $07
	add  h                                           ; $4702: $84
	rrca                                             ; $4703: $0f
	adc  [hl]                                        ; $4704: $8e
	nop                                              ; $4705: $00
	add  b                                           ; $4706: $80
	ld   hl, sp-$80                                  ; $4707: $f8 $80
	ldh  a, [$80]                                    ; $4709: $f0 $80
	ldh  [$82], a                                    ; $470b: $e0 $82
	ret  nz                                          ; $470d: $c0

	add  d                                           ; $470e: $82
	add  b                                           ; $470f: $80
	add  b                                           ; $4710: $80
	nop                                              ; $4711: $00
	add  b                                           ; $4712: $80
	ldh  a, [$80]                                    ; $4713: $f0 $80
	ldh  [$80], a                                    ; $4715: $e0 $80
	ret  nz                                          ; $4717: $c0

	add  b                                           ; $4718: $80
	add  b                                           ; $4719: $80
	and  [hl]                                        ; $471a: $a6
	nop                                              ; $471b: $00
	add  b                                           ; $471c: $80
	ldh  a, [$80]                                    ; $471d: $f0 $80
	ldh  [$80], a                                    ; $471f: $e0 $80
	ret  nz                                          ; $4721: $c0

	add  b                                           ; $4722: $80
	add  b                                           ; $4723: $80
	add  [hl]                                        ; $4724: $86
	nop                                              ; $4725: $00
	nop                                              ; $4726: $00
	rst  $38                                         ; $4727: $ff
	adc  l                                           ; $4728: $8d
	nop                                              ; $4729: $00
	inc  b                                           ; $472a: $04
	rst  $38                                         ; $472b: $ff
	nop                                              ; $472c: $00
	add  b                                           ; $472d: $80
	nop                                              ; $472e: $00
	ld   b, b                                        ; $472f: $40
	add  c                                           ; $4730: $81
	nop                                              ; $4731: $00
	inc  b                                           ; $4732: $04
	jr   nz, jr_01a_4735                             ; $4733: $20 $00

jr_01a_4735:
	stop                                             ; $4735: $10 $00
	ld   [$0081], sp                                 ; $4737: $08 $81 $00
	ld   [bc], a                                     ; $473a: $02
	rlca                                             ; $473b: $07
	nop                                              ; $473c: $00
	add  b                                           ; $473d: $80
	add  c                                           ; $473e: $81
	nop                                              ; $473f: $00
	inc  b                                           ; $4740: $04
	ld   b, b                                        ; $4741: $40
	nop                                              ; $4742: $00
	jr   nz, jr_01a_4745                             ; $4743: $20 $00

jr_01a_4745:
	db   $10                                         ; $4745: $10
	add  c                                           ; $4746: $81
	nop                                              ; $4747: $00
	ld   [bc], a                                     ; $4748: $02
	ld   [$f800], sp                                 ; $4749: $08 $00 $f8
	adc  h                                           ; $474c: $8c
	nop                                              ; $474d: $00
	add  b                                           ; $474e: $80

jr_01a_474f:
	inc  b                                           ; $474f: $04
	add  l                                           ; $4750: $85
	nop                                              ; $4751: $00
	add  b                                           ; $4752: $80
	ld   bc, $0382                                   ; $4753: $01 $82 $03
	add  b                                           ; $4756: $80
	ld   b, $80                                      ; $4757: $06 $80
	ccf                                              ; $4759: $3f
	add  b                                           ; $475a: $80
	ld   a, a                                        ; $475b: $7f
	rlca                                             ; $475c: $07
	ld   e, a                                        ; $475d: $5f
	ld   a, a                                        ; $475e: $7f
	and  b                                           ; $475f: $a0
	sbc  a                                           ; $4760: $9f

jr_01a_4761:
	cp   a                                           ; $4761: $bf
	add  e                                           ; $4762: $83
	ld   a, a                                        ; $4763: $7f
	inc  e                                           ; $4764: $1c
	add  b                                           ; $4765: $80
	rra                                              ; $4766: $1f
	dec  c                                           ; $4767: $0d
	rst  $38                                         ; $4768: $ff
	ccf                                              ; $4769: $3f
	ld   a, b                                        ; $476a: $78
	rst  $38                                         ; $476b: $ff
	rst  ToBoot                                         ; $476c: $c7
	cp   $3f                                         ; $476d: $fe $3f
	ld   sp, hl                                      ; $476f: $f9
	rst  $38                                         ; $4770: $ff
	rst  $20                                         ; $4771: $e7
	rst  $38                                         ; $4772: $ff
	rst  JumpTable                                         ; $4773: $df
	cp   $3e                                         ; $4774: $fe $3e
	add  b                                           ; $4776: $80
	db   $fd                                         ; $4777: $fd
	add  b                                           ; $4778: $80
	ei                                               ; $4779: $fb
	inc  bc                                          ; $477a: $03
	nop                                              ; $477b: $00
	ldh  a, [$fc]                                    ; $477c: $f0 $fc
	inc  c                                           ; $477e: $0c
	add  b                                           ; $477f: $80
	rst  $20                                         ; $4780: $e7
	add  b                                           ; $4781: $80
	sbc  b                                           ; $4782: $98
	add  b                                           ; $4783: $80
	ld   h, b                                        ; $4784: $60
	ld   b, $e0                                      ; $4785: $06 $e0
	rst  $38                                         ; $4787: $ff
	call c, $b0fc                                    ; $4788: $dc $fc $b0
	ldh  a, [$7f]                                    ; $478b: $f0 $7f
	add  c                                           ; $478d: $81
	nop                                              ; $478e: $00
	add  b                                           ; $478f: $80
	add  b                                           ; $4790: $80
	add  b                                           ; $4791: $80
	ld   [hl], b                                     ; $4792: $70
	nop                                              ; $4793: $00
	nop                                              ; $4794: $00
	add  b                                           ; $4795: $80
	inc  c                                           ; $4796: $0c
	ld   [bc], a                                     ; $4797: $02
	cp   $02                                         ; $4798: $fe $02
	inc  bc                                          ; $479a: $03
	add  b                                           ; $479b: $80
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00
	rst  $38                                         ; $479e: $ff
	adc  h                                           ; $479f: $8c
	nop                                              ; $47a0: $00
	ld   bc, $8180                                   ; $47a1: $01 $80 $81
	add  e                                           ; $47a4: $83
	nop                                              ; $47a5: $00
	nop                                              ; $47a6: $00
	ld   [bc], a                                     ; $47a7: $02
	add  b                                           ; $47a8: $80
	nop                                              ; $47a9: $00
	add  d                                           ; $47aa: $82
	ret  nz                                          ; $47ab: $c0

	add  c                                           ; $47ac: $81
	nop                                              ; $47ad: $00
	nop                                              ; $47ae: $00
	ei                                               ; $47af: $fb
	add  c                                           ; $47b0: $81
	nop                                              ; $47b1: $00
	nop                                              ; $47b2: $00
	ld   [$0083], sp                                 ; $47b3: $08 $83 $00
	ld   [bc], a                                     ; $47b6: $02
	ld   [bc], a                                     ; $47b7: $02
	nop                                              ; $47b8: $00
	ld   [de], a                                     ; $47b9: $12
	add  c                                           ; $47ba: $81
	nop                                              ; $47bb: $00
	nop                                              ; $47bc: $00
	ldh  [$8a], a                                    ; $47bd: $e0 $8a
	nop                                              ; $47bf: $00
	add  b                                           ; $47c0: $80
	ld   b, b                                        ; $47c1: $40
	ld   bc, $6f60                                   ; $47c2: $01 $60 $6f
	add  c                                           ; $47c5: $81
	nop                                              ; $47c6: $00
	nop                                              ; $47c7: $00
	db   $10                                         ; $47c8: $10
	add  c                                           ; $47c9: $81
	nop                                              ; $47ca: $00
	nop                                              ; $47cb: $00
	jr   nz, jr_01a_474f                             ; $47cc: $20 $81

	nop                                              ; $47ce: $00
	nop                                              ; $47cf: $00
	ld   b, b                                        ; $47d0: $40
	add  c                                           ; $47d1: $81
	nop                                              ; $47d2: $00
	ld   [bc], a                                     ; $47d3: $02
	add  a                                           ; $47d4: $87
	nop                                              ; $47d5: $00
	ld   [$0081], sp                                 ; $47d6: $08 $81 $00
	nop                                              ; $47d9: $00
	db   $10                                         ; $47da: $10
	add  c                                           ; $47db: $81
	nop                                              ; $47dc: $00
	nop                                              ; $47dd: $00
	jr   nz, jr_01a_4761                             ; $47de: $20 $81

	nop                                              ; $47e0: $00
	inc  b                                           ; $47e1: $04
	ld   b, b                                        ; $47e2: $40
	nop                                              ; $47e3: $00
	add  c                                           ; $47e4: $81
	nop                                              ; $47e5: $00
	ld   [bc], a                                     ; $47e6: $02
	add  c                                           ; $47e7: $81
	nop                                              ; $47e8: $00
	ld   [bc], a                                     ; $47e9: $02
	inc  b                                           ; $47ea: $04
	nop                                              ; $47eb: $00
	ld   [$0081], sp                                 ; $47ec: $08 $81 $00
	inc  b                                           ; $47ef: $04
	stop                                             ; $47f0: $10 $00
	jr   nz, jr_01a_47f4                             ; $47f2: $20 $00

jr_01a_47f4:
	ccf                                              ; $47f4: $3f
	add  b                                           ; $47f5: $80
	inc  bc                                          ; $47f6: $03
	add  b                                           ; $47f7: $80
	ld   bc, $0089                                   ; $47f8: $01 $89 $00
	inc  b                                           ; $47fb: $04
	inc  bc                                          ; $47fc: $03
	nop                                              ; $47fd: $00
	ld   [bc], a                                     ; $47fe: $02
	ld   b, b                                        ; $47ff: $40
	ld   b, c                                        ; $4800: $41
	adc  c                                           ; $4801: $89
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	db   $fc                                         ; $4804: $fc
	add  c                                           ; $4805: $81
	nop                                              ; $4806: $00
	ld   [bc], a                                     ; $4807: $02
	ld   [bc], a                                     ; $4808: $02
	nop                                              ; $4809: $00
	add  c                                           ; $480a: $81
	add  c                                           ; $480b: $81
	nop                                              ; $480c: $00
	ld   b, $40                                      ; $480d: $06 $40
	nop                                              ; $480f: $00
	jr   nz, jr_01a_4812                             ; $4810: $20 $00

jr_01a_4812:
	stop                                             ; $4812: $10 $00
	rrca                                             ; $4814: $0f
	add  b                                           ; $4815: $80
	ld   b, $80                                      ; $4816: $06 $80

jr_01a_4818:
	ld   [bc], a                                     ; $4818: $02
	nop                                              ; $4819: $00
	nop                                              ; $481a: $00
	add  b                                           ; $481b: $80
	inc  c                                           ; $481c: $0c
	ld   bc, $1e9e                                   ; $481d: $01 $9e $1e
	add  b                                           ; $4820: $80
	inc  e                                           ; $4821: $1c
	inc  b                                           ; $4822: $04
	ld   d, e                                        ; $4823: $53
	inc  de                                          ; $4824: $13
	cpl                                              ; $4825: $2f
	rrca                                             ; $4826: $0f
	and  $81                                         ; $4827: $e6 $81
	ld   b, $13                                      ; $4829: $06 $13
	dec  e                                           ; $482b: $1d
	inc  e                                           ; $482c: $1c
	inc  b                                           ; $482d: $04
	inc  e                                           ; $482e: $1c
	db   $10                                         ; $482f: $10
	inc  c                                           ; $4830: $0c
	add  hl, de                                      ; $4831: $19
	inc  e                                           ; $4832: $1c
	add  l                                           ; $4833: $85
	sbc  h                                           ; $4834: $9c
	ret  nc                                          ; $4835: $d0

	call z, $3fba                                    ; $4836: $cc $ba $3f
	cp   a                                           ; $4839: $bf
	ccf                                              ; $483a: $3f
	adc  a                                           ; $483b: $8f
	rrca                                             ; $483c: $0f
	scf                                              ; $483d: $37
	rlca                                             ; $483e: $07
	add  b                                           ; $483f: $80
	inc  b                                           ; $4840: $04
	dec  b                                           ; $4841: $05
	add  e                                           ; $4842: $83
	inc  bc                                          ; $4843: $03
	sub  l                                           ; $4844: $95
	dec  b                                           ; $4845: $05
	cp   a                                           ; $4846: $bf
	rra                                              ; $4847: $1f
	add  d                                           ; $4848: $82
	rst  $30                                         ; $4849: $f7
	add  b                                           ; $484a: $80
	rst  $28                                         ; $484b: $ef
	dec  bc                                          ; $484c: $0b
	xor  $ef                                         ; $484d: $ee $ef
	ld   h, [hl]                                     ; $484f: $66
	ld   h, a                                        ; $4850: $67
	adc  b                                           ; $4851: $88
	adc  c                                           ; $4852: $89
	rst  $28                                         ; $4853: $ef
	xor  $a3                                         ; $4854: $ee $a3
	or   e                                           ; $4856: $b3
	rrca                                             ; $4857: $0f
	ldh  [$82], a                                    ; $4858: $e0 $82
	ret  nz                                          ; $485a: $c0

	ld   a, [bc]                                     ; $485b: $0a
	sbc  [hl]                                        ; $485c: $9e
	sub  [hl]                                        ; $485d: $96
	ld   a, b                                        ; $485e: $78
	ldh  a, [$60]                                    ; $485f: $f0 $60
	ldh  [rIE], a                                    ; $4861: $e0 $ff
	nop                                              ; $4863: $00
	ldh  [$c0], a                                    ; $4864: $e0 $c0
	rst  JumpTable                                         ; $4866: $df
	add  e                                           ; $4867: $83
	nop                                              ; $4868: $00
	ld   [bc], a                                     ; $4869: $02
	pop  af                                          ; $486a: $f1
	ret  nc                                          ; $486b: $d0

	cpl                                              ; $486c: $2f
	add  c                                           ; $486d: $81
	nop                                              ; $486e: $00
	nop                                              ; $486f: $00
	pop  af                                          ; $4870: $f1
	add  c                                           ; $4871: $81
	inc  b                                           ; $4872: $04
	ld   [bc], a                                     ; $4873: $02
	add  h                                           ; $4874: $84
	nop                                              ; $4875: $00
	ld   b, b                                        ; $4876: $40
	add  c                                           ; $4877: $81
	nop                                              ; $4878: $00
	ld   a, [bc]                                     ; $4879: $0a
	jr   nz, jr_01a_487c                             ; $487a: $20 $00

jr_01a_487c:
	ld   h, b                                        ; $487c: $60
	ld   [hl], b                                     ; $487d: $70
	cp   $8e                                         ; $487e: $fe $8e
	adc  a                                           ; $4880: $8f
	ld   l, a                                        ; $4881: $6f
	inc  bc                                          ; $4882: $03
	rrca                                             ; $4883: $0f
	ld   l, e                                        ; $4884: $6b
	add  a                                           ; $4885: $87
	nop                                              ; $4886: $00
	ld   bc, $0008                                   ; $4887: $01 $08 $00
	add  b                                           ; $488a: $80
	add  b                                           ; $488b: $80
	add  b                                           ; $488c: $80
	ret  nz                                          ; $488d: $c0

	nop                                              ; $488e: $00
	rst  $28                                         ; $488f: $ef
	add  c                                           ; $4890: $81
	nop                                              ; $4891: $00
	nop                                              ; $4892: $00
	jr   nz, jr_01a_4818                             ; $4893: $20 $83

	nop                                              ; $4895: $00
	nop                                              ; $4896: $00
	ld   b, b                                        ; $4897: $40
	add  e                                           ; $4898: $83
	nop                                              ; $4899: $00
	nop                                              ; $489a: $00
	add  b                                           ; $489b: $80
	add  e                                           ; $489c: $83
	nop                                              ; $489d: $00
	nop                                              ; $489e: $00
	ld   bc, $0080                                   ; $489f: $01 $80 $00
	ld   bc, $4240                                   ; $48a2: $01 $40 $42
	add  b                                           ; $48a5: $80
	ret  nz                                          ; $48a6: $c0

	inc  bc                                          ; $48a7: $03
	add  b                                           ; $48a8: $80
	add  h                                           ; $48a9: $84
	nop                                              ; $48aa: $00
	ld   hl, sp-$7d                                  ; $48ab: $f8 $83
	nop                                              ; $48ad: $00
	nop                                              ; $48ae: $00
	ld   bc, $0081                                   ; $48af: $01 $81 $00
	nop                                              ; $48b2: $00
	ld   [bc], a                                     ; $48b3: $02
	add  c                                           ; $48b4: $81
	nop                                              ; $48b5: $00
	inc  b                                           ; $48b6: $04
	inc  b                                           ; $48b7: $04
	nop                                              ; $48b8: $00
	ld   a, b                                        ; $48b9: $78
	nop                                              ; $48ba: $00
	add  b                                           ; $48bb: $80
	add  e                                           ; $48bc: $83
	nop                                              ; $48bd: $00
	nop                                              ; $48be: $00
	ld   bc, $0081                                   ; $48bf: $01 $81 $00
	ld   [$0002], sp                                 ; $48c2: $08 $02 $00
	inc  b                                           ; $48c5: $04
	nop                                              ; $48c6: $00
	jr   c, jr_01a_48c9                              ; $48c7: $38 $00

jr_01a_48c9:
	ld   b, b                                        ; $48c9: $40
	nop                                              ; $48ca: $00
	add  b                                           ; $48cb: $80
	adc  c                                           ; $48cc: $89
	nop                                              ; $48cd: $00
	inc  c                                           ; $48ce: $0c
	ld   a, a                                        ; $48cf: $7f
	nop                                              ; $48d0: $00
	ld   b, b                                        ; $48d1: $40
	nop                                              ; $48d2: $00
	jr   nz, jr_01a_48d5                             ; $48d3: $20 $00

jr_01a_48d5:
	stop                                             ; $48d5: $10 $00
	inc  c                                           ; $48d7: $0c
	nop                                              ; $48d8: $00
	ld   [bc], a                                     ; $48d9: $02
	nop                                              ; $48da: $00
	ld   bc, $0081                                   ; $48db: $01 $81 $00
	nop                                              ; $48de: $00
	rst  $38                                         ; $48df: $ff
	add  b                                           ; $48e0: $80
	ret  nz                                          ; $48e1: $c0

	add  b                                           ; $48e2: $80
	ld   b, d                                        ; $48e3: $42
	add  b                                           ; $48e4: $80
	ld   bc, $0000                                   ; $48e5: $01 $00 $00
	add  b                                           ; $48e8: $80
	dec  b                                           ; $48e9: $05
	add  b                                           ; $48ea: $80
	ld   [bc], a                                     ; $48eb: $02
	add  b                                           ; $48ec: $80
	ld   bc, $8002                                   ; $48ed: $01 $02 $80
	nop                                              ; $48f0: $00
	add  b                                           ; $48f1: $80
	add  e                                           ; $48f2: $83
	nop                                              ; $48f3: $00
	add  b                                           ; $48f4: $80
	add  b                                           ; $48f5: $80
	add  b                                           ; $48f6: $80
	ld   b, c                                        ; $48f7: $41
	add  b                                           ; $48f8: $80
	xor  b                                           ; $48f9: $a8
	add  b                                           ; $48fa: $80
	ld   d, l                                        ; $48fb: $55
	add  b                                           ; $48fc: $80
	xor  d                                           ; $48fd: $aa
	dec  c                                           ; $48fe: $0d
	rrca                                             ; $48ff: $0f
	nop                                              ; $4900: $00
	jr   z, @+$22                                    ; $4901: $28 $20

	inc  d                                           ; $4903: $14
	db   $10                                         ; $4904: $10
	ld   a, [hl+]                                    ; $4905: $2a
	jr   z, jr_01a_491d                              ; $4906: $28 $15

	inc  d                                           ; $4908: $14
	add  b                                           ; $4909: $80
	adc  b                                           ; $490a: $88
	ld   e, h                                        ; $490b: $5c
	ld   d, h                                        ; $490c: $54
	add  b                                           ; $490d: $80
	xor  d                                           ; $490e: $aa
	ld   b, $e7                                      ; $490f: $06 $e7
	rrca                                             ; $4911: $0f
	ld   a, [de]                                     ; $4912: $1a
	ld   c, $04                                      ; $4913: $0e $04
	dec  b                                           ; $4915: $05
	ld   bc, $0381                                   ; $4916: $01 $81 $03
	add  b                                           ; $4919: $80
	ld   bc, $8005                                   ; $491a: $01 $05 $80

jr_01a_491d:
	nop                                              ; $491d: $00
	ret  nz                                          ; $491e: $c0

	add  b                                           ; $491f: $80
	ei                                               ; $4920: $fb
	call nz, $0980                                   ; $4921: $c4 $80 $09
	add  b                                           ; $4924: $80
	ret                                              ; $4925: $c9


	add  b                                           ; $4926: $80
	ld   [$7201], a                                  ; $4927: $ea $01 $72
	ldh  a, [c]                                      ; $492a: $f2
	add  b                                           ; $492b: $80
	db   $f4                                         ; $492c: $f4
	dec  b                                           ; $492d: $05
	cp   d                                           ; $492e: $ba
	ld   a, [$fcdc]                                  ; $492f: $fa $dc $fc
	rra                                              ; $4932: $1f
	rst  $38                                         ; $4933: $ff
	add  b                                           ; $4934: $80
	ccf                                              ; $4935: $3f
	nop                                              ; $4936: $00
	nop                                              ; $4937: $00

jr_01a_4938:
	add  c                                           ; $4938: $81
	rra                                              ; $4939: $1f
	nop                                              ; $493a: $00
	db   $10                                         ; $493b: $10
	add  c                                           ; $493c: $81
	nop                                              ; $493d: $00
	add  b                                           ; $493e: $80
	jr   nz, jr_01a_4948                             ; $493f: $20 $07

	xor  a                                           ; $4941: $af
	jr   nz, jr_01a_49a9                             ; $4942: $20 $65

	push af                                          ; $4944: $f5
	ld   a, [bc]                                     ; $4945: $0a
	ldh  a, [c]                                      ; $4946: $f2
	ldh  [c], a                                      ; $4947: $e2

jr_01a_4948:
	ldh  a, [c]                                      ; $4948: $f2
	add  b                                           ; $4949: $80
	ld   [de], a                                     ; $494a: $12
	ld   bc, $0302                                   ; $494b: $01 $02 $03
	add  b                                           ; $494e: $80
	ld   bc, $f901                                   ; $494f: $01 $01 $f9
	ld   bc, $f980                                   ; $4952: $01 $80 $f9
	ld   d, $be                                      ; $4955: $16 $be
	ret  nz                                          ; $4957: $c0

	ld   a, h                                        ; $4958: $7c
	db   $f4                                         ; $4959: $f4
	adc  b                                           ; $495a: $88
	add  b                                           ; $495b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $495c: $cf
	nop                                              ; $495d: $00
	ld   [hl], b                                     ; $495e: $70
	ld   b, c                                        ; $495f: $41
	ld   [hl], b                                     ; $4960: $70
	ld   [hl], d                                     ; $4961: $72
	ld   b, e                                        ; $4962: $43
	ld   a, h                                        ; $4963: $7c
	ld   h, e                                        ; $4964: $63
	ld   h, b                                        ; $4965: $60
	adc  $04                                         ; $4966: $ce $04
	dec  h                                           ; $4968: $25
	inc  b                                           ; $4969: $04
	dec  h                                           ; $496a: $25
	inc  b                                           ; $496b: $04
	push af                                          ; $496c: $f5
	add  b                                           ; $496d: $80
	inc  b                                           ; $496e: $04
	inc  de                                          ; $496f: $13
	call nz, $0444                                   ; $4970: $c4 $44 $04
	or   l                                           ; $4973: $b5
	ld   b, h                                        ; $4974: $44
	add  h                                           ; $4975: $84
	inc  b                                           ; $4976: $04
	ld   [hl], l                                     ; $4977: $75
	rrca                                             ; $4978: $0f
	ld   h, c                                        ; $4979: $61
	ld   bc, $4018                                   ; $497a: $01 $18 $40
	cp   b                                           ; $497d: $b8
	nop                                              ; $497e: $00
	rrca                                             ; $497f: $0f
	nop                                              ; $4980: $00
	daa                                              ; $4981: $27
	ld   d, a                                        ; $4982: $57
	cp   a                                           ; $4983: $bf
	add  c                                           ; $4984: $81
	cpl                                              ; $4985: $2f
	nop                                              ; $4986: $00
	rst  $28                                         ; $4987: $ef
	add  b                                           ; $4988: $80
	ret  nz                                          ; $4989: $c0

	nop                                              ; $498a: $00
	ldh  [$80], a                                    ; $498b: $e0 $80
	nop                                              ; $498d: $00
	inc  b                                           ; $498e: $04
	ldh  [rP1], a                                    ; $498f: $e0 $00
	sub  b                                           ; $4991: $90
	add  b                                           ; $4992: $80
	ld   bc, $0081                                   ; $4993: $01 $81 $00
	dec  b                                           ; $4996: $05
	jr   nz, jr_01a_4999                             ; $4997: $20 $00

jr_01a_4999:
	cp   [hl]                                        ; $4999: $be
	nop                                              ; $499a: $00
	add  l                                           ; $499b: $85
	dec  b                                           ; $499c: $05
	add  b                                           ; $499d: $80
	ld   a, [bc]                                     ; $499e: $0a
	add  b                                           ; $499f: $80
	dec  b                                           ; $49a0: $05
	add  b                                           ; $49a1: $80
	ld   a, [hl+]                                    ; $49a2: $2a
	inc  bc                                          ; $49a3: $03
	ld   b, l                                        ; $49a4: $45
	ld   d, l                                        ; $49a5: $55
	xor  d                                           ; $49a6: $aa
	cp   d                                           ; $49a7: $ba
	add  b                                           ; $49a8: $80

jr_01a_49a9:
	ld   e, l                                        ; $49a9: $5d
	ld   [bc], a                                     ; $49aa: $02
	add  a                                           ; $49ab: $87
	add  b                                           ; $49ac: $80
	ld   [$0083], sp                                 ; $49ad: $08 $83 $00
	nop                                              ; $49b0: $00
	db   $10                                         ; $49b1: $10
	add  c                                           ; $49b2: $81
	nop                                              ; $49b3: $00
	nop                                              ; $49b4: $00
	jr   nz, jr_01a_4938                             ; $49b5: $20 $81

	nop                                              ; $49b7: $00
	ld   [bc], a                                     ; $49b8: $02
	rst  ToBoot                                         ; $49b9: $c7
	nop                                              ; $49ba: $00
	ld   [$0081], sp                                 ; $49bb: $08 $81 $00
	nop                                              ; $49be: $00
	db   $10                                         ; $49bf: $10
	add  b                                           ; $49c0: $80
	nop                                              ; $49c1: $00
	dec  bc                                          ; $49c2: $0b
	inc  b                                           ; $49c3: $04
	inc  h                                           ; $49c4: $24
	nop                                              ; $49c5: $00
	ld   b, b                                        ; $49c6: $40
	ld   [bc], a                                     ; $49c7: $02
	ld   b, d                                        ; $49c8: $42
	ld   c, h                                        ; $49c9: $4c
	adc  e                                           ; $49ca: $8b
	nop                                              ; $49cb: $00
	ld   [$1000], sp                                 ; $49cc: $08 $00 $10
	add  c                                           ; $49cf: $81
	nop                                              ; $49d0: $00
	ld   [bc], a                                     ; $49d1: $02
	jr   nz, jr_01a_49d4                             ; $49d2: $20 $00

jr_01a_49d4:
	ld   b, b                                        ; $49d4: $40
	add  c                                           ; $49d5: $81
	nop                                              ; $49d6: $00
	nop                                              ; $49d7: $00
	add  b                                           ; $49d8: $80
	adc  a                                           ; $49d9: $8f
	nop                                              ; $49da: $00
	ld   [$013e], sp                                 ; $49db: $08 $3e $01
	jr   nz, jr_01a_49e0                             ; $49de: $20 $00

jr_01a_49e0:
	dec  e                                           ; $49e0: $1d
	dec  b                                           ; $49e1: $05
	ld   b, $02                                      ; $49e2: $06 $02
	inc  bc                                          ; $49e4: $03
	add  b                                           ; $49e5: $80
	ld   bc, $0083                                   ; $49e6: $01 $83 $00
	dec  b                                           ; $49e9: $05
	cp   d                                           ; $49ea: $ba
	ld   d, l                                        ; $49eb: $55
	or   d                                           ; $49ec: $b2
	cp   d                                           ; $49ed: $ba
	ld   c, l                                        ; $49ee: $4d
	ld   d, l                                        ; $49ef: $55
	add  b                                           ; $49f0: $80
	xor  d                                           ; $49f1: $aa
	add  hl, bc                                      ; $49f2: $09
	ld   e, [hl]                                     ; $49f3: $5e
	ld   e, a                                        ; $49f4: $5f
	xor  a                                           ; $49f5: $af
	xor  [hl]                                        ; $49f6: $ae
	rst  $10                                         ; $49f7: $d7
	ld   d, a                                        ; $49f8: $57
	ld   a, [hl]                                     ; $49f9: $7e
	ld   a, $95                                      ; $49fa: $3e $95
	ld   d, l                                        ; $49fc: $55
	add  b                                           ; $49fd: $80
	cp   d                                           ; $49fe: $ba
	add  b                                           ; $49ff: $80
	rst  JumpTable                                         ; $4a00: $df
	rlca                                             ; $4a01: $07
	rst  $38                                         ; $4a02: $ff
	rst  $30                                         ; $4a03: $f7
	ld   a, e                                        ; $4a04: $7b
	ld   a, a                                        ; $4a05: $7f
	or   a                                           ; $4a06: $b7
	cp   a                                           ; $4a07: $bf
	ld   a, e                                        ; $4a08: $7b
	ld   a, a                                        ; $4a09: $7f
	add  b                                           ; $4a0a: $80
	cp   a                                           ; $4a0b: $bf
	ld   bc, $607f                                   ; $4a0c: $01 $7f $60
	add  b                                           ; $4a0f: $80
	and  b                                           ; $4a10: $a0
	dec  c                                           ; $4a11: $0d
	ld   [hl], b                                     ; $4a12: $70
	ld   h, b                                        ; $4a13: $60
	or   b                                           ; $4a14: $b0
	cp   b                                           ; $4a15: $b8
	ldh  a, [$f4]                                    ; $4a16: $f0 $f4
	cp   b                                           ; $4a18: $b8
	ld   a, [$fe9e]                                  ; $4a19: $fa $9e $fe
	sbc  $ff                                         ; $4a1c: $de $ff
	adc  l                                           ; $4a1e: $8d
	ld   a, l                                        ; $4a1f: $7d
	add  b                                           ; $4a20: $80
	ld   a, $05                                      ; $4a21: $3e $05
	rla                                              ; $4a23: $17
	rra                                              ; $4a24: $1f
	dec  de                                          ; $4a25: $1b
	rra                                              ; $4a26: $1f
	dec  c                                           ; $4a27: $0d
	rrca                                             ; $4a28: $0f
	add  b                                           ; $4a29: $80
	rlca                                             ; $4a2a: $07
	ld   bc, $0706                                   ; $4a2b: $01 $06 $07
	add  b                                           ; $4a2e: $80
	inc  bc                                          ; $4a2f: $03
	inc  d                                           ; $4a30: $14
	ld   [hl], b                                     ; $4a31: $70
	rrca                                             ; $4a32: $0f
	db   $e4                                         ; $4a33: $e4
	rlca                                             ; $4a34: $07
	ld   h, e                                        ; $4a35: $63
	ld   bc, $6061                                   ; $4a36: $01 $61 $60
	add  b                                           ; $4a39: $80
	adc  h                                           ; $4a3a: $8c
	db   $e4                                         ; $4a3b: $e4
	and  $e2                                         ; $4a3c: $e6 $e2
	ldh  [$66], a                                    ; $4a3e: $e0 $66
	pop  hl                                          ; $4a40: $e1
	ld   e, e                                        ; $4a41: $5b
	pop  hl                                          ; $4a42: $e1
	ld   de, $e1c1                                   ; $4a43: $11 $c1 $e1
	add  b                                           ; $4a46: $80
	jp   nz, $0209                                   ; $4a47: $c2 $09 $02

	ld   [de], a                                     ; $4a4a: $12
	inc  e                                           ; $4a4b: $1c
	jr   nc, jr_01a_4a8d                             ; $4a4c: $30 $3f

	inc  e                                           ; $4a4e: $1c
	ld   a, a                                        ; $4a4f: $7f
	ld   h, a                                        ; $4a50: $67
	ld   a, a                                        ; $4a51: $7f
	daa                                              ; $4a52: $27
	add  c                                           ; $4a53: $81
	ld   h, b                                        ; $4a54: $60
	add  b                                           ; $4a55: $80
	ldh  [$0a], a                                    ; $4a56: $e0 $0a
	rst  $30                                         ; $4a58: $f7
	ldh  a, [rIE]                                    ; $4a59: $f0 $ff
	ldh  a, [$32]                                    ; $4a5b: $f0 $32
	nop                                              ; $4a5d: $00
	ld   b, $f0                                      ; $4a5e: $06 $f0
	inc  sp                                          ; $4a60: $33
	ret  z                                           ; $4a61: $c8

	ld   sp, hl                                      ; $4a62: $f9
	add  l                                           ; $4a63: $85
	inc  b                                           ; $4a64: $04
	ld   bc, $0084                                   ; $4a65: $01 $84 $00
	add  b                                           ; $4a68: $80
	inc  b                                           ; $4a69: $04
	dec  b                                           ; $4a6a: $05
	ld   bc, $9800                                   ; $4a6b: $01 $00 $98
	ld   c, $29                                      ; $4a6e: $0e $29
	cpl                                              ; $4a70: $2f
	add  b                                           ; $4a71: $80
	jr   nz, jr_01a_4a81                             ; $4a72: $20 $0d

	daa                                              ; $4a74: $27
	cpl                                              ; $4a75: $2f
	dec  hl                                          ; $4a76: $2b
	inc  bc                                          ; $4a77: $03
	ld   c, h                                        ; $4a78: $4c
	inc  a                                           ; $4a79: $3c
	xor  [hl]                                        ; $4a7a: $ae
	ld   a, a                                        ; $4a7b: $7f
	ld   a, l                                        ; $4a7c: $7d
	rra                                              ; $4a7d: $1f
	xor  e                                           ; $4a7e: $ab
	xor  a                                           ; $4a7f: $af
	dec  sp                                          ; $4a80: $3b

jr_01a_4a81:
	nop                                              ; $4a81: $00
	add  b                                           ; $4a82: $80
	ld   bc, $2001                                   ; $4a83: $01 $01 $20
	nop                                              ; $4a86: $00
	add  b                                           ; $4a87: $80
	add  c                                           ; $4a88: $81
	ld   bc, $c286                                   ; $4a89: $01 $86 $c2
	add  b                                           ; $4a8c: $80

jr_01a_4a8d:
	ld   b, l                                        ; $4a8d: $45
	add  b                                           ; $4a8e: $80
	ld   b, e                                        ; $4a8f: $43
	inc  bc                                          ; $4a90: $03
	push bc                                          ; $4a91: $c5
	dec  b                                           ; $4a92: $05
	ld   [hl+], a                                    ; $4a93: $22
	cp   d                                           ; $4a94: $ba
	add  b                                           ; $4a95: $80
	ld   a, l                                        ; $4a96: $7d
	add  b                                           ; $4a97: $80
	ld   a, [$7580]                                  ; $4a98: $fa $80 $75
	add  c                                           ; $4a9b: $81
	rst  $38                                         ; $4a9c: $ff
	ld   b, $f6                                      ; $4a9d: $06 $f6
	and  $fe                                         ; $4a9f: $e6 $fe
	sbc  $fc                                         ; $4aa1: $de $fc
	call z, $8080                                    ; $4aa3: $cc $80 $80
	nop                                              ; $4aa6: $00
	ld   bc, $0081                                   ; $4aa7: $01 $81 $00
	add  b                                           ; $4aaa: $80
	ld   bc, $0001                                   ; $4aab: $01 $01 $00
	ld   [bc], a                                     ; $4aae: $02
	add  c                                           ; $4aaf: $81
	inc  bc                                          ; $4ab0: $03
	add  c                                           ; $4ab1: $81
	rlca                                             ; $4ab2: $07
	rlca                                             ; $4ab3: $07
	ld   a, c                                        ; $4ab4: $79
	add  h                                           ; $4ab5: $84
	ld   b, b                                        ; $4ab6: $40
	ld   b, h                                        ; $4ab7: $44
	adc  d                                           ; $4ab8: $8a
	adc  b                                           ; $4ab9: $88
	ld   d, h                                        ; $4aba: $54
	ld   d, b                                        ; $4abb: $50
	add  b                                           ; $4abc: $80
	xor  b                                           ; $4abd: $a8
	inc  bc                                          ; $4abe: $03
	ret  c                                           ; $4abf: $d8

	ret  nc                                          ; $4ac0: $d0

	or   b                                           ; $4ac1: $b0
	and  b                                           ; $4ac2: $a0
	add  b                                           ; $4ac3: $80
	ld   b, b                                        ; $4ac4: $40
	nop                                              ; $4ac5: $00
	ldh  [$87], a                                    ; $4ac6: $e0 $87
	nop                                              ; $4ac8: $00
	ld   de, $0001                                   ; $4ac9: $11 $01 $00
	ld   [bc], a                                     ; $4acc: $02
	nop                                              ; $4acd: $00
	inc  b                                           ; $4ace: $04
	nop                                              ; $4acf: $00
	add  a                                           ; $4ad0: $87
	nop                                              ; $4ad1: $00
	ld   h, b                                        ; $4ad2: $60
	nop                                              ; $4ad3: $00
	jr   jr_01a_4ad6                                 ; $4ad4: $18 $00

jr_01a_4ad6:
	ld   b, $40                                      ; $4ad6: $06 $40
	ld   c, c                                        ; $4ad8: $49
	ret  z                                           ; $4ad9: $c8

	push bc                                          ; $4ada: $c5
	dec  b                                           ; $4adb: $05
	add  b                                           ; $4adc: $80
	ld   a, [bc]                                     ; $4add: $0a
	add  b                                           ; $4ade: $80
	rla                                              ; $4adf: $17
	nop                                              ; $4ae0: $00
	rst  $38                                         ; $4ae1: $ff
	add  a                                           ; $4ae2: $87
	nop                                              ; $4ae3: $00
	ld   b, $c0                                      ; $4ae4: $06 $c0
	nop                                              ; $4ae6: $00
	sub  b                                           ; $4ae7: $90
	and  b                                           ; $4ae8: $a0
	ld   e, b                                        ; $4ae9: $58
	ld   d, h                                        ; $4aea: $54
	db   $fc                                         ; $4aeb: $fc
	add  b                                           ; $4aec: $80
	rrca                                             ; $4aed: $0f
	add  b                                           ; $4aee: $80
	rlca                                             ; $4aef: $07
	add  b                                           ; $4af0: $80
	inc  bc                                          ; $4af1: $03
	add  b                                           ; $4af2: $80
	ld   bc, $0085                                   ; $4af3: $01 $85 $00
	inc  bc                                          ; $4af6: $03
	ret  nz                                          ; $4af7: $c0

	ld   a, a                                        ; $4af8: $7f
	rst  $38                                         ; $4af9: $ff
	cp   a                                           ; $4afa: $bf
	add  b                                           ; $4afb: $80
	rst  $38                                         ; $4afc: $ff
	rlca                                             ; $4afd: $07
	cp   $ff                                         ; $4afe: $fe $ff
	sbc  $ff                                         ; $4b00: $de $ff
	rst  $28                                         ; $4b02: $ef
	ld   a, a                                        ; $4b03: $7f
	ld   d, a                                        ; $4b04: $57
	rra                                              ; $4b05: $1f
	add  b                                           ; $4b06: $80
	rrca                                             ; $4b07: $0f
	nop                                              ; $4b08: $00
	rlca                                             ; $4b09: $07
	add  c                                           ; $4b0a: $81
	rst  $38                                         ; $4b0b: $ff
	ld   c, $bf                                      ; $4b0c: $0e $bf
	rst  $38                                         ; $4b0e: $ff
	sbc  a                                           ; $4b0f: $9f
	rst  $38                                         ; $4b10: $ff
	ld   l, a                                        ; $4b11: $6f
	rst  $38                                         ; $4b12: $ff
	sub  a                                           ; $4b13: $97
	rst  JumpTable                                         ; $4b14: $df
	ld   a, e                                        ; $4b15: $7b
	rst  $38                                         ; $4b16: $ff
	cp   l                                           ; $4b17: $bd
	rst  $38                                         ; $4b18: $ff
	ret  nz                                          ; $4b19: $c0

	add  c                                           ; $4b1a: $81
	add  b                                           ; $4b1b: $80
	add  b                                           ; $4b1c: $80
	ret  nz                                          ; $4b1d: $c0

	add  c                                           ; $4b1e: $81
	ldh  [$08], a                                    ; $4b1f: $e0 $08
	ld   h, b                                        ; $4b21: $60
	ldh  a, [$b0]                                    ; $4b22: $f0 $b0
	ld   hl, sp+$78                                  ; $4b24: $f8 $78
	db   $fc                                         ; $4b26: $fc
	sbc  $fe                                         ; $4b27: $de $fe
	ld   h, l                                        ; $4b29: $65
	add  b                                           ; $4b2a: $80
	pop  af                                          ; $4b2b: $f1
	dec  b                                           ; $4b2c: $05
	ld   [hl], c                                     ; $4b2d: $71
	db   $f4                                         ; $4b2e: $f4
	add  b                                           ; $4b2f: $80
	rst  $38                                         ; $4b30: $ff
	ld   a, h                                        ; $4b31: $7c
	ld   b, b                                        ; $4b32: $40
	add  b                                           ; $4b33: $80
	ld   e, $06                                      ; $4b34: $1e $06
	nop                                              ; $4b36: $00
	jr   nz, jr_01a_4b39                             ; $4b37: $20 $00

jr_01a_4b39:
	ld   de, $b001                                   ; $4b39: $11 $01 $b0
	ccf                                              ; $4b3c: $3f
	add  b                                           ; $4b3d: $80
	rrca                                             ; $4b3e: $0f
	add  hl, bc                                      ; $4b3f: $09
	ld   b, e                                        ; $4b40: $43
	inc  bc                                          ; $4b41: $03
	ld   [hl], c                                     ; $4b42: $71
	ld   b, b                                        ; $4b43: $40
	xor  b                                           ; $4b44: $a8
	or   b                                           ; $4b45: $b0
	or   h                                           ; $4b46: $b4
	cp   b                                           ; $4b47: $b8
	ld   a, [hl-]                                    ; $4b48: $3a
	inc  a                                           ; $4b49: $3c
	add  b                                           ; $4b4a: $80
	call c, $a50b                                    ; $4b4b: $dc $0b $a5
	cp   h                                           ; $4b4e: $bc
	add  hl, de                                      ; $4b4f: $19
	ld   a, [hl]                                     ; $4b50: $7e
	ld   l, h                                        ; $4b51: $6c
	ld   a, a                                        ; $4b52: $7f
	halt                                             ; $4b53: $76
	rst  $38                                         ; $4b54: $ff
	ld   a, [hl-]                                    ; $4b55: $3a
	ld   a, $0c                                      ; $4b56: $3e $0c
	dec  c                                           ; $4b58: $0d
	add  d                                           ; $4b59: $82
	nop                                              ; $4b5a: $00
	nop                                              ; $4b5b: $00
	dec  e                                           ; $4b5c: $1d
	add  b                                           ; $4b5d: $80
	ld   [$0604], sp                                 ; $4b5e: $08 $04 $06
	add  b                                           ; $4b61: $80
	ld   [$006e], sp                                 ; $4b62: $08 $6e $00
	add  b                                           ; $4b65: $80
	or   b                                           ; $4b66: $b0
	add  b                                           ; $4b67: $80
	halt                                             ; $4b68: $76
	ld   b, $0e                                      ; $4b69: $06 $0e
	ld   h, c                                        ; $4b6b: $61
	rrca                                             ; $4b6c: $0f
	nop                                              ; $4b6d: $00
	or   l                                           ; $4b6e: $b5
	sub  $08                                         ; $4b6f: $d6 $08
	add  e                                           ; $4b71: $83
	ldh  [$0b], a                                    ; $4b72: $e0 $0b
	db   $fd                                         ; $4b74: $fd
	ld   b, b                                        ; $4b75: $40
	ld   d, a                                        ; $4b76: $57
	ld   bc, $0b03                                   ; $4b77: $01 $03 $0b
	adc  c                                           ; $4b7a: $89
	inc  [hl]                                        ; $4b7b: $34
	ld   l, $0b                                      ; $4b7c: $2e $0b
	daa                                              ; $4b7e: $27
	rlca                                             ; $4b7f: $07
	add  b                                           ; $4b80: $80
	rrca                                             ; $4b81: $0f
	ld   [bc], a                                     ; $4b82: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b83: $cf
	rra                                              ; $4b84: $1f
	sbc  a                                           ; $4b85: $9f
	add  c                                           ; $4b86: $81
	rra                                              ; $4b87: $1f
	nop                                              ; $4b88: $00
	ld   a, [de]                                     ; $4b89: $1a
	add  b                                           ; $4b8a: $80
	rra                                              ; $4b8b: $1f
	ld   bc, $3a3f                                   ; $4b8c: $01 $3f $3a
	add  b                                           ; $4b8f: $80
	db   $fc                                         ; $4b90: $fc
	add  c                                           ; $4b91: $81
	ld   hl, sp+$00                                  ; $4b92: $f8 $00
	cp   b                                           ; $4b94: $b8
	add  c                                           ; $4b95: $81
	ldh  a, [rSC]                                    ; $4b96: $f0 $02
	ld   [hl], b                                     ; $4b98: $70
	ldh  a, [$b0]                                    ; $4b99: $f0 $b0
	add  c                                           ; $4b9b: $81
	ldh  [rSB], a                                    ; $4b9c: $e0 $01
	ld   h, c                                        ; $4b9e: $61
	ld   c, $80                                      ; $4b9f: $0e $80
	dec  c                                           ; $4ba1: $0d
	nop                                              ; $4ba2: $00
	rrca                                             ; $4ba3: $0f
	add  d                                           ; $4ba4: $82
	rra                                              ; $4ba5: $1f
	add  b                                           ; $4ba6: $80
	ccf                                              ; $4ba7: $3f
	ld   b, $3e                                      ; $4ba8: $06 $3e
	ld   h, $7c                                      ; $4baa: $26 $7c
	ld   [hl], h                                     ; $4bac: $74
	ld   a, h                                        ; $4bad: $7c
	inc  l                                           ; $4bae: $2c
	add  b                                           ; $4baf: $80
	add  b                                           ; $4bb0: $80
	ld   b, b                                        ; $4bb1: $40
	nop                                              ; $4bb2: $00
	ret  nz                                          ; $4bb3: $c0

	add  b                                           ; $4bb4: $80
	add  b                                           ; $4bb5: $80
	sub  d                                           ; $4bb6: $92
	nop                                              ; $4bb7: $00
	inc  b                                           ; $4bb8: $04
	ld   bc, $0200                                   ; $4bb9: $01 $00 $02
	inc  bc                                          ; $4bbc: $03
	rlca                                             ; $4bbd: $07
	jr   nz, jr_01a_4bc2                             ; $4bbe: $20 $02

	add  d                                           ; $4bc0: $82
	nop                                              ; $4bc1: $00

jr_01a_4bc2:
	dec  b                                           ; $4bc2: $05
	ld   bc, $0f00                                   ; $4bc3: $01 $00 $0f
	ld   bc, $0e1e                                   ; $4bc6: $01 $1e $0e
	add  b                                           ; $4bc9: $80
	inc  b                                           ; $4bca: $04
	dec  c                                           ; $4bcb: $0d
	inc  sp                                          ; $4bcc: $33
	inc  de                                          ; $4bcd: $13
	ld   a, a                                        ; $4bce: $7f
	ccf                                              ; $4bcf: $3f
	ld   h, [hl]                                     ; $4bd0: $66
	ld   bc, $1b7f                                   ; $4bd1: $01 $7f $1b
	rst  $38                                         ; $4bd4: $ff
	ld   a, l                                        ; $4bd5: $7d
	pop  bc                                          ; $4bd6: $c1
	jp   $0d0f                                       ; $4bd7: $c3 $0f $0d


	add  b                                           ; $4bda: $80
	reti                                             ; $4bdb: $d9


	ld   bc, $6263                                   ; $4bdc: $01 $63 $62
	add  b                                           ; $4bdf: $80
	rst  $38                                         ; $4be0: $ff
	inc  bc                                          ; $4be1: $03
	ld   a, a                                        ; $4be2: $7f
	add  b                                           ; $4be3: $80
	rst  $38                                         ; $4be4: $ff
	jp   $db80                                       ; $4be5: $c3 $80 $db


	ld   bc, $c9e9                                   ; $4be8: $01 $e9 $c9
	add  b                                           ; $4beb: $80
	jp   hl                                          ; $4bec: $e9


	nop                                              ; $4bed: $00
	rst  $30                                         ; $4bee: $f7
	add  b                                           ; $4bef: $80
	db   $d3                                         ; $4bf0: $d3
	inc  b                                           ; $4bf1: $04
	ret  nc                                          ; $4bf2: $d0

	rst  $10                                         ; $4bf3: $d7
	ld   d, e                                        ; $4bf4: $53
	cp   a                                           ; $4bf5: $bf
	nop                                              ; $4bf6: $00
	add  b                                           ; $4bf7: $80
	ret  nz                                          ; $4bf8: $c0

	ld   bc, $c0cf                                   ; $4bf9: $01 $cf $c0
	add  b                                           ; $4bfc: $80
	rst  ToBoot                                         ; $4bfd: $c7
	add  b                                           ; $4bfe: $80
	ret  nz                                          ; $4bff: $c0

	add  b                                           ; $4c00: $80
	add  b                                           ; $4c01: $80
	ld   bc, $2fbf                                   ; $4c02: $01 $bf $2f
	add  b                                           ; $4c05: $80
	ld   h, b                                        ; $4c06: $60
	dec  b                                           ; $4c07: $05
	add  sp, $07                                     ; $4c08: $e8 $07
	rst  $38                                         ; $4c0a: $ff
	halt                                             ; $4c0b: $76
	ld   h, a                                        ; $4c0c: $67
	ld   h, c                                        ; $4c0d: $61
	add  b                                           ; $4c0e: $80
	rst  $38                                         ; $4c0f: $ff
	add  b                                           ; $4c10: $80
	ld   h, b                                        ; $4c11: $60
	inc  bc                                          ; $4c12: $03
	call nz, $ffc5                                   ; $4c13: $c4 $c5 $ff
	cp   $80                                         ; $4c16: $fe $80
	ret  nz                                          ; $4c18: $c0

	dec  c                                           ; $4c19: $0d
	rst  $38                                         ; $4c1a: $ff
	nop                                              ; $4c1b: $00
	sub  c                                           ; $4c1c: $91
	sub  b                                           ; $4c1d: $90
	cp   $40                                         ; $4c1e: $fe $40
	rst  JumpTable                                         ; $4c20: $df
	sbc  a                                           ; $4c21: $9f
	ld   bc, $2321                                   ; $4c22: $01 $21 $23
	jp   $bfff                                       ; $4c25: $c3 $ff $bf


	add  b                                           ; $4c28: $80
	add  d                                           ; $4c29: $82
	rlca                                             ; $4c2a: $07
	or   e                                           ; $4c2b: $b3
	inc  c                                           ; $4c2c: $0c
	cp   $d6                                         ; $4c2d: $fe $d6
	sbc  a                                           ; $4c2f: $9f
	adc  e                                           ; $4c30: $8b
	rst  $38                                         ; $4c31: $ff
	db   $fd                                         ; $4c32: $fd
	add  b                                           ; $4c33: $80
	add  c                                           ; $4c34: $81
	inc  bc                                          ; $4c35: $03
	ld   hl, $ff2f                                   ; $4c36: $21 $2f $ff
	rst  $30                                         ; $4c39: $f7
	add  b                                           ; $4c3a: $80
	rlca                                             ; $4c3b: $07
	ld   bc, $00f8                                   ; $4c3c: $01 $f8 $00
	add  b                                           ; $4c3f: $80
	add  b                                           ; $4c40: $80
	add  b                                           ; $4c41: $80
	ret  nz                                          ; $4c42: $c0

	add  b                                           ; $4c43: $80
	ldh  [$08], a                                    ; $4c44: $e0 $08
	rst  $28                                         ; $4c46: $ef
	ldh  [$3f], a                                    ; $4c47: $e0 $3f
	rrca                                             ; $4c49: $0f
	ld   hl, sp-$48                                  ; $4c4a: $f8 $b8
	ldh  [c], a                                      ; $4c4c: $e2
	ld   h, d                                        ; $4c4d: $62
	rst  $38                                         ; $4c4e: $ff
	add  l                                           ; $4c4f: $85
	nop                                              ; $4c50: $00
	ld   [$3cfc], sp                                 ; $4c51: $08 $fc $3c
	rst  $38                                         ; $4c54: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c55: $cf
	ld   a, a                                        ; $4c56: $7f

jr_01a_4c57:
	ld   [hl], a                                     ; $4c57: $77
	rra                                              ; $4c58: $1f
	sbc  e                                           ; $4c59: $9b
	ld   a, h                                        ; $4c5a: $7c
	adc  c                                           ; $4c5b: $89
	nop                                              ; $4c5c: $00
	add  b                                           ; $4c5d: $80
	add  b                                           ; $4c5e: $80
	add  b                                           ; $4c5f: $80
	ret  nz                                          ; $4c60: $c0

	nop                                              ; $4c61: $00
	ld   bc, $0081                                   ; $4c62: $01 $81 $00
	nop                                              ; $4c65: $00
	inc  bc                                          ; $4c66: $03
	add  l                                           ; $4c67: $85
	ld   bc, $0080                                   ; $4c68: $01 $80 $00
	inc  bc                                          ; $4c6b: $03
	inc  bc                                          ; $4c6c: $03
	nop                                              ; $4c6d: $00
	ccf                                              ; $4c6e: $3f
	ret  nz                                          ; $4c6f: $c0

	add  b                                           ; $4c70: $80
	rst  $38                                         ; $4c71: $ff
	add  d                                           ; $4c72: $82
	add  b                                           ; $4c73: $80
	add  b                                           ; $4c74: $80
	rst  $38                                         ; $4c75: $ff
	add  b                                           ; $4c76: $80
	adc  h                                           ; $4c77: $8c
	dec  b                                           ; $4c78: $05
	inc  c                                           ; $4c79: $0c
	dec  c                                           ; $4c7a: $0d
	db   $ed                                         ; $4c7b: $ed
	dec  c                                           ; $4c7c: $0d
	sub  $37                                         ; $4c7d: $d6 $37
	add  b                                           ; $4c7f: $80
	db   $f4                                         ; $4c80: $f4
	add  b                                           ; $4c81: $80

Jump_01a_4c82:
	ld   h, a                                        ; $4c82: $67
	add  b                                           ; $4c83: $80
	ld   h, c                                        ; $4c84: $61
	add  b                                           ; $4c85: $80
	rst  $28                                         ; $4c86: $ef
	add  b                                           ; $4c87: $80
	ld   h, e                                        ; $4c88: $63
	dec  b                                           ; $4c89: $05
	ld   [$8380], sp                                 ; $4c8a: $08 $80 $83
	jp   $f43c                                       ; $4c8d: $c3 $3c $f4


	add  b                                           ; $4c90: $80
	sub  b                                           ; $4c91: $90
	add  b                                           ; $4c92: $80
	rst  $28                                         ; $4c93: $ef
	add  b                                           ; $4c94: $80
	add  h                                           ; $4c95: $84
	add  b                                           ; $4c96: $80
	db   $e3                                         ; $4c97: $e3

jr_01a_4c98:
	add  b                                           ; $4c98: $80
	inc  e                                           ; $4c99: $1c
	add  b                                           ; $4c9a: $80
	ld   [bc], a                                     ; $4c9b: $02
	add  b                                           ; $4c9c: $80
	db   $fc                                         ; $4c9d: $fc
	add  b                                           ; $4c9e: $80
	ld   h, d                                        ; $4c9f: $62
	add  b                                           ; $4ca0: $80
	rrca                                             ; $4ca1: $0f
	add  b                                           ; $4ca2: $80
	and  $01                                         ; $4ca3: $e6 $01
	ld   b, l                                        ; $4ca5: $45
	ld   d, h                                        ; $4ca6: $54
	add  b                                           ; $4ca7: $80
	sub  h                                           ; $4ca8: $94
	ld   bc, $c8d9                                   ; $4ca9: $01 $d9 $c8
	add  b                                           ; $4cac: $80
	dec  bc                                          ; $4cad: $0b
	inc  de                                          ; $4cae: $13
	ld   c, $ee                                      ; $4caf: $0e $ee
	ldh  a, [rAUD2ENV]                               ; $4cb1: $f0 $17
	rst  $20                                         ; $4cb3: $e7
	rst  $28                                         ; $4cb4: $ef
	ld   c, $1e                                      ; $4cb5: $0e $1e
	nop                                              ; $4cb7: $00
	ldh  [rIE], a                                    ; $4cb8: $e0 $ff
	rrca                                             ; $4cba: $0f
	rst  $38                                         ; $4cbb: $ff
	rst  $30                                         ; $4cbc: $f7
	adc  a                                           ; $4cbd: $8f
	adc  e                                           ; $4cbe: $8b
	add  hl, bc                                      ; $4cbf: $09
	ld   l, c                                        ; $4cc0: $69
	inc  bc                                          ; $4cc1: $03
	ld   h, b                                        ; $4cc2: $60
	add  b                                           ; $4cc3: $80
	ld   d, l                                        ; $4cc4: $55
	ld   bc, $35b5                                   ; $4cc5: $01 $b5 $35
	add  b                                           ; $4cc8: $80
	ld   h, $80                                      ; $4cc9: $26 $80
	inc  bc                                          ; $4ccb: $03
	rlca                                             ; $4ccc: $07
	ld   [hl], h                                     ; $4ccd: $74
	inc  b                                           ; $4cce: $04
	rra                                              ; $4ccf: $1f
	rrca                                             ; $4cd0: $0f
	ld   a, b                                        ; $4cd1: $78
	jr   jr_01a_4c57                                 ; $4cd2: $18 $83

	inc  bc                                          ; $4cd4: $03
	add  b                                           ; $4cd5: $80
	or   d                                           ; $4cd6: $b2
	add  b                                           ; $4cd7: $80
	ret  c                                           ; $4cd8: $d8

	dec  de                                          ; $4cd9: $1b
	inc  h                                           ; $4cda: $24
	dec  h                                           ; $4cdb: $25
	pop  af                                          ; $4cdc: $f1
	ldh  a, [rSB]                                    ; $4cdd: $f0 $01
	dec  b                                           ; $4cdf: $05
	rst  $20                                         ; $4ce0: $e7
	db   $eb                                         ; $4ce1: $eb
	ld   c, d                                        ; $4ce2: $4a
	ld   e, d                                        ; $4ce3: $5a
	ld   a, $26                                      ; $4ce4: $3e $26
	inc  l                                           ; $4ce6: $2c
	dec  l                                           ; $4ce7: $2d
	add  hl, sp                                      ; $4ce8: $39
	cp   e                                           ; $4ce9: $bb
	db   $e3                                         ; $4cea: $e3
	ld   h, a                                        ; $4ceb: $67
	add  $de                                         ; $4cec: $c6 $de
	sbc  h                                           ; $4cee: $9c
	cp   h                                           ; $4cef: $bc
	jr   c, jr_01a_4d6a                              ; $4cf0: $38 $78

	ldh  a, [rSVBK]                                  ; $4cf2: $f0 $70
	cp   $01                                         ; $4cf4: $fe $01
	add  b                                           ; $4cf6: $80
	ld   a, a                                        ; $4cf7: $7f

jr_01a_4cf8:
	inc  bc                                          ; $4cf8: $03
	nop                                              ; $4cf9: $00
	add  b                                           ; $4cfa: $80
	rst  JumpTable                                         ; $4cfb: $df
	sbc  a                                           ; $4cfc: $9f
	add  d                                           ; $4cfd: $82
	jr   jr_01a_4d01                                 ; $4cfe: $18 $01

	ld   e, a                                        ; $4d00: $5f

jr_01a_4d01:
	rra                                              ; $4d01: $1f
	add  b                                           ; $4d02: $80
	jr   nc, jr_01a_4d08                             ; $4d03: $30 $03

	inc  b                                           ; $4d05: $04
	add  l                                           ; $4d06: $85
	rst  $38                                         ; $4d07: $ff

jr_01a_4d08:
	cp   $80                                         ; $4d08: $fe $80
	nop                                              ; $4d0a: $00
	ld   bc, $fbf8                                   ; $4d0b: $01 $f8 $fb
	add  b                                           ; $4d0e: $80

jr_01a_4d0f:
	dec  de                                          ; $4d0f: $1b
	ld   bc, $3033                                   ; $4d10: $01 $33 $30
	add  b                                           ; $4d13: $80
	rst  $30                                         ; $4d14: $f7
	add  b                                           ; $4d15: $80
	jr   nc, jr_01a_4c98                             ; $4d16: $30 $80

	ld   b, $80                                      ; $4d18: $06 $80
	rst  $38                                         ; $4d1a: $ff
	add  b                                           ; $4d1b: $80
	inc  c                                           ; $4d1c: $0c
	inc  bc                                          ; $4d1d: $03
	jr   jr_01a_4cf8                                 ; $4d1e: $18 $d8

	rst  $38                                         ; $4d20: $ff
	ccf                                              ; $4d21: $3f
	add  d                                           ; $4d22: $82
	ldh  [$80], a                                    ; $4d23: $e0 $80
	ld   a, a                                        ; $4d25: $7f
	inc  bc                                          ; $4d26: $03
	adc  b                                           ; $4d27: $88
	adc  d                                           ; $4d28: $8a
	cp   $fc                                         ; $4d29: $fe $fc
	add  c                                           ; $4d2b: $81
	pop  bc                                          ; $4d2c: $c1
	ld   b, $dd                                      ; $4d2d: $06 $dd
	db   $fd                                         ; $4d2f: $fd
	db   $ed                                         ; $4d30: $ed
	ld   a, l                                        ; $4d31: $7d
	ld   [hl], l                                     ; $4d32: $75
	db   $dd                                         ; $4d33: $dd
	reti                                             ; $4d34: $d9


	add  b                                           ; $4d35: $80
	push bc                                          ; $4d36: $c5
	db   $10                                         ; $4d37: $10
	jp   nz, $9ada                                   ; $4d38: $c2 $da $9a

	cp   d                                           ; $4d3b: $ba
	ld   a, [hl-]                                    ; $4d3c: $3a
	ld   a, d                                        ; $4d3d: $7a
	ld   a, $36                                      ; $4d3e: $3e $36
	dec  [hl]                                        ; $4d40: $35
	inc  [hl]                                        ; $4d41: $34
	dec  a                                           ; $4d42: $3d
	dec  l                                           ; $4d43: $2d
	ld   l, e                                        ; $4d44: $6b
	ld   l, c                                        ; $4d45: $69
	ld   [hl], a                                     ; $4d46: $77
	ld   d, e                                        ; $4d47: $53
	res  0, c                                        ; $4d48: $cb $81
	ld   l, l                                        ; $4d4a: $6d
	add  h                                           ; $4d4b: $84
	db   $ed                                         ; $4d4c: $ed
	ld   b, $fd                                      ; $4d4d: $06 $fd
	db   $dd                                         ; $4d4f: $dd
	reti                                             ; $4d50: $d9


	db   $db                                         ; $4d51: $db
	di                                               ; $4d52: $f3
	or   a                                           ; $4d53: $b7
	sbc  b                                           ; $4d54: $98
	adc  c                                           ; $4d55: $89
	ldh  [$80], a                                    ; $4d56: $e0 $80
	ret  nz                                          ; $4d58: $c0

	add  b                                           ; $4d59: $80
	add  b                                           ; $4d5a: $80
	inc  bc                                          ; $4d5b: $03
	rlca                                             ; $4d5c: $07
	nop                                              ; $4d5d: $00
	rrca                                             ; $4d5e: $0f
	rlca                                             ; $4d5f: $07
	add  b                                           ; $4d60: $80
	nop                                              ; $4d61: $00
	nop                                              ; $4d62: $00
	rrca                                             ; $4d63: $0f
	add  a                                           ; $4d64: $87
	nop                                              ; $4d65: $00
	ld   bc, $18e7                                   ; $4d66: $01 $e7 $18
	add  b                                           ; $4d69: $80

jr_01a_4d6a:
	rst  $38                                         ; $4d6a: $ff
	add  b                                           ; $4d6b: $80
	jr   jr_01a_4d70                                 ; $4d6c: $18 $02

	ret  c                                           ; $4d6e: $d8

	dec  de                                          ; $4d6f: $1b

jr_01a_4d70:
	ld   [hl], e                                     ; $4d70: $73
	add  e                                           ; $4d71: $83
	scf                                              ; $4d72: $37
	dec  b                                           ; $4d73: $05
	ld   c, e                                        ; $4d74: $4b
	inc  bc                                          ; $4d75: $03
	rst  $28                                         ; $4d76: $ef
	jr   z, @+$01                                    ; $4d77: $28 $ff

	rst  $30                                         ; $4d79: $f7
	add  b                                           ; $4d7a: $80
	nop                                              ; $4d7b: $00
	ld   bc, $df1f                                   ; $4d7c: $01 $1f $df
	add  b                                           ; $4d7f: $80
	add  b                                           ; $4d80: $80
	rlca                                             ; $4d81: $07
	cp   l                                           ; $4d82: $bd
	add  c                                           ; $4d83: $81
	add  d                                           ; $4d84: $82
	add  b                                           ; $4d85: $80
	ld   bc, $ce00                                   ; $4d86: $01 $00 $ce
	ld   sp, $ff80                                   ; $4d89: $31 $80 $ff
	add  b                                           ; $4d8c: $80
	jr   nc, jr_01a_4d0f                             ; $4d8d: $30 $80

	rst  $38                                         ; $4d8f: $ff
	add  b                                           ; $4d90: $80
	jr   nz, jr_01a_4da4                             ; $4d91: $20 $11

	ld   h, b                                        ; $4d93: $60
	ld   l, a                                        ; $4d94: $6f
	adc  $de                                         ; $4d95: $ce $de
	inc  l                                           ; $4d97: $2c
	inc  c                                           ; $4d98: $0c
	daa                                              ; $4d99: $27
	ld   e, c                                        ; $4d9a: $59
	ld   d, l                                        ; $4d9b: $55
	ld   d, e                                        ; $4d9c: $53
	rst  ToBoot                                         ; $4d9d: $c7
	adc  a                                           ; $4d9e: $8f
	adc  $de                                         ; $4d9f: $ce $de
	rra                                              ; $4da1: $1f
	db   $10                                         ; $4da2: $10
	rst  $38                                         ; $4da3: $ff

jr_01a_4da4:
	rrca                                             ; $4da4: $0f
	add  b                                           ; $4da5: $80
	nop                                              ; $4da6: $00
	inc  bc                                          ; $4da7: $03
	rra                                              ; $4da8: $1f
	nop                                              ; $4da9: $00
	push af                                          ; $4daa: $f5
	jp   hl                                          ; $4dab: $e9


	add  b                                           ; $4dac: $80
	adc  c                                           ; $4dad: $89
	dec  bc                                          ; $4dae: $0b
	dec  sp                                          ; $4daf: $3b
	dec  de                                          ; $4db0: $1b
	di                                               ; $4db1: $f3
	scf                                              ; $4db2: $37
	rst  $20                                         ; $4db3: $e7
	rst  $28                                         ; $4db4: $ef
	adc  [hl]                                        ; $4db5: $8e
	sbc  [hl]                                        ; $4db6: $9e
	jr   jr_01a_4e31                                 ; $4db7: $18 $78

	add  b                                           ; $4db9: $80
	nop                                              ; $4dba: $00
	add  b                                           ; $4dbb: $80
	add  b                                           ; $4dbc: $80
	add  [hl]                                        ; $4dbd: $86
	nop                                              ; $4dbe: $00
	add  b                                           ; $4dbf: $80
	add  b                                           ; $4dc0: $80
	adc  b                                           ; $4dc1: $88
	ret  nz                                          ; $4dc2: $c0

	add  b                                           ; $4dc3: $80
	add  b                                           ; $4dc4: $80
	adc  d                                           ; $4dc5: $8a
	nop                                              ; $4dc6: $00
	inc  bc                                          ; $4dc7: $03
	ld   bc, $0300                                   ; $4dc8: $01 $00 $03
	ld   bc, $0080                                   ; $4dcb: $01 $80 $00
	nop                                              ; $4dce: $00
	inc  bc                                          ; $4dcf: $03
	add  e                                           ; $4dd0: $83
	nop                                              ; $4dd1: $00
	ld   a, [bc]                                     ; $4dd2: $0a
	sbc  e                                           ; $4dd3: $9b
	ld   h, h                                        ; $4dd4: $64
	add  e                                           ; $4dd5: $83
	inc  bc                                          ; $4dd6: $03
	adc  l                                           ; $4dd7: $8d
	dec  c                                           ; $4dd8: $0d
	ldh  a, [$f2]                                    ; $4dd9: $f0 $f2
	ld   [bc], a                                     ; $4ddb: $02
	rrca                                             ; $4ddc: $0f
	ldh  a, [$83]                                    ; $4ddd: $f0 $83
	nop                                              ; $4ddf: $00
	ld   a, [bc]                                     ; $4de0: $0a
	ld   a, l                                        ; $4de1: $7d
	cp   d                                           ; $4de2: $ba
	ld   a, [hl-]                                    ; $4de3: $3a
	ld   a, d                                        ; $4de4: $7a
	ld   sp, hl                                      ; $4de5: $f9
	adc  l                                           ; $4de6: $8d
	ld   a, h                                        ; $4de7: $7c
	halt                                             ; $4de8: $76
	add  [hl]                                        ; $4de9: $86
	rlca                                             ; $4dea: $07
	ld   a, b                                        ; $4deb: $78
	add  e                                           ; $4dec: $83
	nop                                              ; $4ded: $00
	add  hl, bc                                      ; $4dee: $09
	halt                                             ; $4def: $76
	ld   [hl], b                                     ; $4df0: $70
	db   $fd                                         ; $4df1: $fd
	dec  b                                           ; $4df2: $05
	ld   sp, hl                                      ; $4df3: $f9
	ei                                               ; $4df4: $fb
	inc  bc                                          ; $4df5: $03
	rlca                                             ; $4df6: $07
	ld   a, b                                        ; $4df7: $78
	add  b                                           ; $4df8: $80
	add  h                                           ; $4df9: $84

jr_01a_4dfa:
	nop                                              ; $4dfa: $00
	ld   bc, $304f                                   ; $4dfb: $01 $4f $30
	add  b                                           ; $4dfe: $80
	cp   a                                           ; $4dff: $bf
	nop                                              ; $4e00: $00
	ldh  [$80], a                                    ; $4e01: $e0 $80
	ld   h, b                                        ; $4e03: $60
	nop                                              ; $4e04: $00
	ld   l, [hl]                                     ; $4e05: $6e
	add  b                                           ; $4e06: $80
	ld   c, $00                                      ; $4e07: $0e $00
	pop  af                                          ; $4e09: $f1
	add  e                                           ; $4e0a: $83
	nop                                              ; $4e0b: $00
	inc  bc                                          ; $4e0c: $03
	adc  a                                           ; $4e0d: $8f
	ld   [hl], a                                     ; $4e0e: $77
	rst  $20                                         ; $4e0f: $e7
	xor  $80                                         ; $4e10: $ee $80
	ld   l, [hl]                                     ; $4e12: $6e
	add  b                                           ; $4e13: $80
	xor  $80                                         ; $4e14: $ee $80
	ld   c, $00                                      ; $4e16: $0e $00
	ldh  a, [$83]                                    ; $4e18: $f0 $83
	nop                                              ; $4e1a: $00
	ld   bc, $40be                                   ; $4e1b: $01 $be $40
	add  b                                           ; $4e1e: $80
	pop  bc                                          ; $4e1f: $c1
	add  b                                           ; $4e20: $80
	rst  $38                                         ; $4e21: $ff
	add  b                                           ; $4e22: $80
	pop  bc                                          ; $4e23: $c1
	inc  bc                                          ; $4e24: $03
	jr   nz, jr_01a_4e43                             ; $4e25: $20 $1c

	inc  a                                           ; $4e27: $3c
	nop                                              ; $4e28: $00
	add  b                                           ; $4e29: $80
	rst  $38                                         ; $4e2a: $ff
	add  b                                           ; $4e2b: $80
	ret  nz                                          ; $4e2c: $c0

	inc  b                                           ; $4e2d: $04
	pop  bc                                          ; $4e2e: $c1
	reti                                             ; $4e2f: $d9


	sbc  d                                           ; $4e30: $9a

jr_01a_4e31:
	cp   h                                           ; $4e31: $bc
	cp   l                                           ; $4e32: $bd
	add  c                                           ; $4e33: $81
	cp   h                                           ; $4e34: $bc
	add  b                                           ; $4e35: $80
	inc  a                                           ; $4e36: $3c
	inc  bc                                          ; $4e37: $03
	ccf                                              ; $4e38: $3f
	inc  b                                           ; $4e39: $04
	rst  $30                                         ; $4e3a: $f7
	di                                               ; $4e3b: $f3
	add  b                                           ; $4e3c: $80
	jr   nc, jr_01a_4e4a                             ; $4e3d: $30 $0b

	jr   nz, jr_01a_4e6f                             ; $4e3f: $20 $2e

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e41: $cf
	pop  de                                          ; $4e42: $d1

jr_01a_4e43:
	scf                                              ; $4e43: $37
	rlca                                             ; $4e44: $07
	jr   nz, jr_01a_4e4f                             ; $4e45: $20 $08

	ld   l, b                                        ; $4e47: $68
	ld   l, h                                        ; $4e48: $6c
	ld   l, a                                        ; $4e49: $6f

jr_01a_4e4a:
	ld   h, e                                        ; $4e4a: $63
	add  b                                           ; $4e4b: $80
	ld   a, [$c412]                                  ; $4e4c: $fa $12 $c4

jr_01a_4e4f:
	push bc                                          ; $4e4f: $c5
	ld   h, c                                        ; $4e50: $61
	ld   l, a                                        ; $4e51: $6f
	adc  $de                                         ; $4e52: $ce $de
	inc  e                                           ; $4e54: $1c
	inc  a                                           ; $4e55: $3c
	or   b                                           ; $4e56: $b0
	ld   [hl], b                                     ; $4e57: $70
	db   $fd                                         ; $4e58: $fd
	inc  a                                           ; $4e59: $3c
	rst  $38                                         ; $4e5a: $ff
	db   $dd                                         ; $4e5b: $dd
	ld   e, a                                        ; $4e5c: $5f
	ld   c, e                                        ; $4e5d: $4b
	ld   e, d                                        ; $4e5e: $5a
	ld   d, d                                        ; $4e5f: $52
	rst  $38                                         ; $4e60: $ff
	add  l                                           ; $4e61: $85
	nop                                              ; $4e62: $00
	ld   bc, $1cdc                                   ; $4e63: $01 $dc $1c
	add  b                                           ; $4e66: $80
	cp   h                                           ; $4e67: $bc
	inc  b                                           ; $4e68: $04
	jr   c, jr_01a_4ee3                              ; $4e69: $38 $78

	ld   a, c                                        ; $4e6b: $79
	pop  hl                                          ; $4e6c: $e1
	jr   jr_01a_4dfa                                 ; $4e6d: $18 $8b

jr_01a_4e6f:
	nop                                              ; $4e6f: $00
	add  b                                           ; $4e70: $80
	add  b                                           ; $4e71: $80
	and  b                                           ; $4e72: $a0
	nop                                              ; $4e73: $00
	ld   [bc], a                                     ; $4e74: $02
	rst  $38                                         ; $4e75: $ff
	nop                                              ; $4e76: $00
	rst  $38                                         ; $4e77: $ff
	add  b                                           ; $4e78: $80
	nop                                              ; $4e79: $00
	add  d                                           ; $4e7a: $82
	rst  $38                                         ; $4e7b: $ff
	add  b                                           ; $4e7c: $80
	db   $e3                                         ; $4e7d: $e3
	add  b                                           ; $4e7e: $80
	add  b                                           ; $4e7f: $80
	add  b                                           ; $4e80: $80
	rst  $38                                         ; $4e81: $ff
	inc  bc                                          ; $4e82: $03
	nop                                              ; $4e83: $00
	rst  $38                                         ; $4e84: $ff
	nop                                              ; $4e85: $00
	rst  $38                                         ; $4e86: $ff
	add  b                                           ; $4e87: $80
	nop                                              ; $4e88: $00
	add  d                                           ; $4e89: $82
	rst  $38                                         ; $4e8a: $ff
	add  b                                           ; $4e8b: $80
	sbc  h                                           ; $4e8c: $9c
	add  b                                           ; $4e8d: $80
	ret                                              ; $4e8e: $c9


	add  b                                           ; $4e8f: $80
	add  b                                           ; $4e90: $80
	inc  bc                                          ; $4e91: $03
	nop                                              ; $4e92: $00
	rst  $38                                         ; $4e93: $ff
	nop                                              ; $4e94: $00
	rst  $38                                         ; $4e95: $ff
	add  b                                           ; $4e96: $80
	nop                                              ; $4e97: $00
	add  h                                           ; $4e98: $84
	rst  $38                                         ; $4e99: $ff
	add  b                                           ; $4e9a: $80
	add  b                                           ; $4e9b: $80
	add  b                                           ; $4e9c: $80
	sbc  h                                           ; $4e9d: $9c
	inc  bc                                          ; $4e9e: $03
	nop                                              ; $4e9f: $00
	rst  $38                                         ; $4ea0: $ff
	nop                                              ; $4ea1: $00
	rst  $38                                         ; $4ea2: $ff
	add  b                                           ; $4ea3: $80
	nop                                              ; $4ea4: $00
	add  d                                           ; $4ea5: $82
	rst  $38                                         ; $4ea6: $ff
	add  b                                           ; $4ea7: $80
	add  b                                           ; $4ea8: $80
	add  d                                           ; $4ea9: $82
	sbc  h                                           ; $4eaa: $9c
	add  h                                           ; $4eab: $84
	rst  $38                                         ; $4eac: $ff
	add  b                                           ; $4ead: $80
	di                                               ; $4eae: $f3
	add  b                                           ; $4eaf: $80
	rst  $20                                         ; $4eb0: $e7
	add  b                                           ; $4eb1: $80
	ret                                              ; $4eb2: $c9


	add  b                                           ; $4eb3: $80
	sub  e                                           ; $4eb4: $93
	add  b                                           ; $4eb5: $80
	add  a                                           ; $4eb6: $87
	add  h                                           ; $4eb7: $84
	rst  $38                                         ; $4eb8: $ff
	add  b                                           ; $4eb9: $80
	rst  $20                                         ; $4eba: $e7
	add  b                                           ; $4ebb: $80
	add  b                                           ; $4ebc: $80
	add  b                                           ; $4ebd: $80
	rst  $20                                         ; $4ebe: $e7
	add  b                                           ; $4ebf: $80
	add  b                                           ; $4ec0: $80
	add  b                                           ; $4ec1: $80
	and  h                                           ; $4ec2: $a4
	add  h                                           ; $4ec3: $84
	rst  $38                                         ; $4ec4: $ff
	add  b                                           ; $4ec5: $80
	add  b                                           ; $4ec6: $80
	add  b                                           ; $4ec7: $80
	db   $fc                                         ; $4ec8: $fc
	add  b                                           ; $4ec9: $80
	add  h                                           ; $4eca: $84
	add  b                                           ; $4ecb: $80
	ld   hl, sp-$80                                  ; $4ecc: $f8 $80
	add  h                                           ; $4ece: $84
	add  h                                           ; $4ecf: $84
	rst  $38                                         ; $4ed0: $ff
	add  b                                           ; $4ed1: $80
	add  b                                           ; $4ed2: $80
	add  b                                           ; $4ed3: $80
	db   $fc                                         ; $4ed4: $fc
	add  b                                           ; $4ed5: $80
	add  h                                           ; $4ed6: $84
	add  b                                           ; $4ed7: $80
	ld   hl, sp-$80                                  ; $4ed8: $f8 $80
	add  h                                           ; $4eda: $84
	add  b                                           ; $4edb: $80
	rst  $38                                         ; $4edc: $ff
	add  b                                           ; $4edd: $80
	add  b                                           ; $4ede: $80

jr_01a_4edf:
	add  b                                           ; $4edf: $80
	sbc  h                                           ; $4ee0: $9c
	add  b                                           ; $4ee1: $80
	add  b                                           ; $4ee2: $80

jr_01a_4ee3:
	add  b                                           ; $4ee3: $80
	sbc  h                                           ; $4ee4: $9c
	add  b                                           ; $4ee5: $80
	add  b                                           ; $4ee6: $80
	add  b                                           ; $4ee7: $80
	sbc  a                                           ; $4ee8: $9f
	add  b                                           ; $4ee9: $80
	sub  b                                           ; $4eea: $90
	add  b                                           ; $4eeb: $80
	rst  $38                                         ; $4eec: $ff
	add  b                                           ; $4eed: $80
	add  b                                           ; $4eee: $80
	add  b                                           ; $4eef: $80
	sbc  h                                           ; $4ef0: $9c
	add  b                                           ; $4ef1: $80
	add  b                                           ; $4ef2: $80
	add  b                                           ; $4ef3: $80
	sbc  h                                           ; $4ef4: $9c
	add  b                                           ; $4ef5: $80
	add  b                                           ; $4ef6: $80
	add  b                                           ; $4ef7: $80
	db   $fc                                         ; $4ef8: $fc
	add  b                                           ; $4ef9: $80
	inc  b                                           ; $4efa: $04
	add  b                                           ; $4efb: $80
	rst  $38                                         ; $4efc: $ff
	add  d                                           ; $4efd: $82
	rst  $20                                         ; $4efe: $e7
	add  b                                           ; $4eff: $80
	add  b                                           ; $4f00: $80
	add  d                                           ; $4f01: $82
	ret                                              ; $4f02: $c9


	add  b                                           ; $4f03: $80
	sbc  c                                           ; $4f04: $99
	add  b                                           ; $4f05: $80
	adc  c                                           ; $4f06: $89
	add  b                                           ; $4f07: $80
	rst  $38                                         ; $4f08: $ff
	add  b                                           ; $4f09: $80
	di                                               ; $4f0a: $f3
	add  b                                           ; $4f0b: $80
	rst  $20                                         ; $4f0c: $e7
	add  b                                           ; $4f0d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f0e: $cf
	add  b                                           ; $4f0f: $80
	sbc  c                                           ; $4f10: $99
	add  b                                           ; $4f11: $80
	inc  a                                           ; $4f12: $3c
	add  b                                           ; $4f13: $80
	nop                                              ; $4f14: $00
	add  b                                           ; $4f15: $80
	rst  $38                                         ; $4f16: $ff
	inc  bc                                          ; $4f17: $03
	nop                                              ; $4f18: $00
	ccf                                              ; $4f19: $3f
	nop                                              ; $4f1a: $00
	ld   a, a                                        ; $4f1b: $7f
	add  b                                           ; $4f1c: $80
	nop                                              ; $4f1d: $00
	add  a                                           ; $4f1e: $87
	rra                                              ; $4f1f: $1f
	inc  b                                           ; $4f20: $04
	ld   e, a                                        ; $4f21: $5f
	nop                                              ; $4f22: $00
	rst  $38                                         ; $4f23: $ff
	nop                                              ; $4f24: $00
	rst  $38                                         ; $4f25: $ff
	add  b                                           ; $4f26: $80
	nop                                              ; $4f27: $00
	adc  [hl]                                        ; $4f28: $8e
	rst  $38                                         ; $4f29: $ff
	add  b                                           ; $4f2a: $80
	di                                               ; $4f2b: $f3
	add  d                                           ; $4f2c: $82
	ld   sp, hl                                      ; $4f2d: $f9
	add  d                                           ; $4f2e: $82
	db   $fc                                         ; $4f2f: $fc
	adc  [hl]                                        ; $4f30: $8e
	nop                                              ; $4f31: $00
	add  b                                           ; $4f32: $80
	add  b                                           ; $4f33: $80
	add  b                                           ; $4f34: $80
	rst  $38                                         ; $4f35: $ff
	add  b                                           ; $4f36: $80
	add  b                                           ; $4f37: $80
	add  b                                           ; $4f38: $80
	rst  $38                                         ; $4f39: $ff
	add  b                                           ; $4f3a: $80
	add  b                                           ; $4f3b: $80
	add  d                                           ; $4f3c: $82
	sbc  h                                           ; $4f3d: $9c
	add  b                                           ; $4f3e: $80
	add  b                                           ; $4f3f: $80
	add  d                                           ; $4f40: $82
	sbc  h                                           ; $4f41: $9c
	add  b                                           ; $4f42: $80
	add  b                                           ; $4f43: $80
	add  h                                           ; $4f44: $84
	ret                                              ; $4f45: $c9


	add  b                                           ; $4f46: $80
	ret  z                                           ; $4f47: $c8

	add  b                                           ; $4f48: $80
	sbc  b                                           ; $4f49: $98
	add  b                                           ; $4f4a: $80
	sbc  h                                           ; $4f4b: $9c
	add  b                                           ; $4f4c: $80
	add  b                                           ; $4f4d: $80
	add  d                                           ; $4f4e: $82
	sbc  h                                           ; $4f4f: $9c
	add  b                                           ; $4f50: $80
	add  b                                           ; $4f51: $80
	add  h                                           ; $4f52: $84
	rst  $38                                         ; $4f53: $ff
	add  b                                           ; $4f54: $80
	add  b                                           ; $4f55: $80
	add  d                                           ; $4f56: $82
	sbc  h                                           ; $4f57: $9c
	add  b                                           ; $4f58: $80
	add  b                                           ; $4f59: $80
	add  h                                           ; $4f5a: $84
	sbc  h                                           ; $4f5b: $9c
	add  b                                           ; $4f5c: $80
	jr   c, jr_01a_4edf                              ; $4f5d: $38 $80

	call z, $8080                                    ; $4f5f: $cc $80 $80
	add  b                                           ; $4f62: $80
	and  $84                                         ; $4f63: $e6 $84
	and  l                                           ; $4f65: $a5
	add  d                                           ; $4f66: $82
	rst  $38                                         ; $4f67: $ff
	add  b                                           ; $4f68: $80
	add  b                                           ; $4f69: $80
	add  b                                           ; $4f6a: $80
	and  h                                           ; $4f6b: $a4
	add  b                                           ; $4f6c: $80
	add  b                                           ; $4f6d: $80
	add  b                                           ; $4f6e: $80
	jp   $a580                                       ; $4f6f: $c3 $80 $a5


	add  b                                           ; $4f72: $80
	ld   h, [hl]                                     ; $4f73: $66
	add  d                                           ; $4f74: $82
	rst  $38                                         ; $4f75: $ff
	add  b                                           ; $4f76: $80
	cp   $80                                         ; $4f77: $fe $80
	ret  nz                                          ; $4f79: $c0

	add  b                                           ; $4f7a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f7b: $cf
	add  b                                           ; $4f7c: $80
	ret  nz                                          ; $4f7d: $c0

	add  b                                           ; $4f7e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f7f: $cf
	add  b                                           ; $4f80: $80
	ret  nz                                          ; $4f81: $c0

	add  d                                           ; $4f82: $82
	rst  $38                                         ; $4f83: $ff
	add  b                                           ; $4f84: $80
	ccf                                              ; $4f85: $3f
	add  b                                           ; $4f86: $80
	ld   bc, $f980                                   ; $4f87: $01 $80 $f9
	add  b                                           ; $4f8a: $80
	ld   bc, $f980                                   ; $4f8b: $01 $80 $f9
	add  b                                           ; $4f8e: $80
	ld   bc, $ff82                                   ; $4f8f: $01 $82 $ff
	add  b                                           ; $4f92: $80
	sbc  c                                           ; $4f93: $99
	add  b                                           ; $4f94: $80
	sub  b                                           ; $4f95: $90
	add  d                                           ; $4f96: $82
	sbc  c                                           ; $4f97: $99
	add  b                                           ; $4f98: $80
	rst  $38                                         ; $4f99: $ff
	inc  bc                                          ; $4f9a: $03
	nop                                              ; $4f9b: $00
	rst  $38                                         ; $4f9c: $ff
	nop                                              ; $4f9d: $00
	rst  $38                                         ; $4f9e: $ff
	add  b                                           ; $4f9f: $80
	nop                                              ; $4fa0: $00
	add  b                                           ; $4fa1: $80
	call z, $0480                                    ; $4fa2: $cc $80 $04
	add  b                                           ; $4fa5: $80
	call z, $8880                                    ; $4fa6: $cc $80 $88
	add  b                                           ; $4fa9: $80
	rst  $38                                         ; $4faa: $ff
	inc  bc                                          ; $4fab: $03
	nop                                              ; $4fac: $00
	rst  $38                                         ; $4fad: $ff
	nop                                              ; $4fae: $00
	rst  $38                                         ; $4faf: $ff
	add  b                                           ; $4fb0: $80
	nop                                              ; $4fb1: $00
	add  b                                           ; $4fb2: $80
	jp   $e780                                       ; $4fb3: $c3 $80 $e7


	add  b                                           ; $4fb6: $80
	jp   $9980                                       ; $4fb7: $c3 $80 $99


	add  b                                           ; $4fba: $80
	rst  $38                                         ; $4fbb: $ff
	inc  bc                                          ; $4fbc: $03
	nop                                              ; $4fbd: $00
	rst  $38                                         ; $4fbe: $ff
	nop                                              ; $4fbf: $00
	rst  $38                                         ; $4fc0: $ff
	add  d                                           ; $4fc1: $82
	nop                                              ; $4fc2: $00
	add  d                                           ; $4fc3: $82
	inc  a                                           ; $4fc4: $3c
	add  b                                           ; $4fc5: $80
	nop                                              ; $4fc6: $00
	add  b                                           ; $4fc7: $80
	rst  $38                                         ; $4fc8: $ff
	dec  b                                           ; $4fc9: $05
	nop                                              ; $4fca: $00
	rst  $38                                         ; $4fcb: $ff
	nop                                              ; $4fcc: $00
	rst  $38                                         ; $4fcd: $ff
	nop                                              ; $4fce: $00
	ld   b, b                                        ; $4fcf: $40
	adc  l                                           ; $4fd0: $8d
	rra                                              ; $4fd1: $1f
	nop                                              ; $4fd2: $00
	ld   e, a                                        ; $4fd3: $5f
	adc  [hl]                                        ; $4fd4: $8e
	rst  $38                                         ; $4fd5: $ff
	add  b                                           ; $4fd6: $80
	sbc  h                                           ; $4fd7: $9c
	add  b                                           ; $4fd8: $80
	sbc  a                                           ; $4fd9: $9f
	add  b                                           ; $4fda: $80
	rra                                              ; $4fdb: $1f
	add  b                                           ; $4fdc: $80
	ccf                                              ; $4fdd: $3f
	add  b                                           ; $4fde: $80
	rst  $38                                         ; $4fdf: $ff
	inc  bc                                          ; $4fe0: $03
	nop                                              ; $4fe1: $00
	rst  $38                                         ; $4fe2: $ff
	nop                                              ; $4fe3: $00
	rst  $38                                         ; $4fe4: $ff
	sub  c                                           ; $4fe5: $91
	nop                                              ; $4fe6: $00
	ld   [bc], a                                     ; $4fe7: $02
	ccf                                              ; $4fe8: $3f
	nop                                              ; $4fe9: $00
	ld   a, a                                        ; $4fea: $7f
	add  b                                           ; $4feb: $80
	nop                                              ; $4fec: $00
	add  h                                           ; $4fed: $84
	rra                                              ; $4fee: $1f
	add  b                                           ; $4fef: $80
	ld   e, $05                                      ; $4ff0: $1e $05
	rra                                              ; $4ff2: $1f
	ld   e, a                                        ; $4ff3: $5f
	nop                                              ; $4ff4: $00
	rst  $38                                         ; $4ff5: $ff
	nop                                              ; $4ff6: $00
	rst  $38                                         ; $4ff7: $ff
	add  b                                           ; $4ff8: $80
	nop                                              ; $4ff9: $00
	add  d                                           ; $4ffa: $82
	rst  $38                                         ; $4ffb: $ff
	add  b                                           ; $4ffc: $80
	daa                                              ; $4ffd: $27
	add  b                                           ; $4ffe: $80
	ld   [bc], a                                     ; $4fff: $02
	add  b                                           ; $5000: $80
	inc  h                                           ; $5001: $24
	inc  bc                                          ; $5002: $03
	nop                                              ; $5003: $00
	rst  $38                                         ; $5004: $ff
	nop                                              ; $5005: $00
	rst  $38                                         ; $5006: $ff
	add  b                                           ; $5007: $80
	nop                                              ; $5008: $00
	add  d                                           ; $5009: $82
	rst  $38                                         ; $500a: $ff
	add  b                                           ; $500b: $80
	daa                                              ; $500c: $27
	add  b                                           ; $500d: $80
	ld   c, a                                        ; $500e: $4f
	add  b                                           ; $500f: $80
	inc  bc                                          ; $5010: $03
	inc  bc                                          ; $5011: $03
	nop                                              ; $5012: $00
	rst  $38                                         ; $5013: $ff
	nop                                              ; $5014: $00
	rst  $38                                         ; $5015: $ff
	add  b                                           ; $5016: $80
	nop                                              ; $5017: $00
	add  d                                           ; $5018: $82
	rst  $38                                         ; $5019: $ff
	add  b                                           ; $501a: $80
	ret  nz                                          ; $501b: $c0

	add  b                                           ; $501c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $501d: $cf
	add  b                                           ; $501e: $80
	ret  nz                                          ; $501f: $c0

	inc  bc                                          ; $5020: $03
	nop                                              ; $5021: $00
	rst  $38                                         ; $5022: $ff
	nop                                              ; $5023: $00
	rst  $38                                         ; $5024: $ff
	add  b                                           ; $5025: $80
	nop                                              ; $5026: $00
	add  d                                           ; $5027: $82
	rst  $38                                         ; $5028: $ff
	add  b                                           ; $5029: $80
	inc  bc                                          ; $502a: $03
	add  b                                           ; $502b: $80
	di                                               ; $502c: $f3
	add  b                                           ; $502d: $80
	inc  bc                                          ; $502e: $03
	inc  bc                                          ; $502f: $03
	nop                                              ; $5030: $00
	rst  $38                                         ; $5031: $ff
	nop                                              ; $5032: $00
	rst  $38                                         ; $5033: $ff
	add  b                                           ; $5034: $80
	nop                                              ; $5035: $00
	add  h                                           ; $5036: $84
	rst  $38                                         ; $5037: $ff
	add  b                                           ; $5038: $80
	ldh  a, [$80]                                    ; $5039: $f0 $80
	di                                               ; $503b: $f3
	inc  bc                                          ; $503c: $03
	nop                                              ; $503d: $00
	rst  $38                                         ; $503e: $ff
	nop                                              ; $503f: $00
	rst  $38                                         ; $5040: $ff
	add  b                                           ; $5041: $80
	nop                                              ; $5042: $00
	add  d                                           ; $5043: $82
	rst  $38                                         ; $5044: $ff
	add  b                                           ; $5045: $80
	rst  ToBoot                                         ; $5046: $c7
	add  b                                           ; $5047: $80
	nop                                              ; $5048: $00
	add  b                                           ; $5049: $80
	add  hl, sp                                      ; $504a: $39
	inc  bc                                          ; $504b: $03
	nop                                              ; $504c: $00
	db   $fc                                         ; $504d: $fc
	nop                                              ; $504e: $00
	cp   $80                                         ; $504f: $fe $80
	nop                                              ; $5051: $00
	add  h                                           ; $5052: $84
	ld   hl, sp-$80                                  ; $5053: $f8 $80
	ld   a, b                                        ; $5055: $78
	ld   bc, $faf8                                   ; $5056: $01 $f8 $fa
	add  h                                           ; $5059: $84
	rst  $38                                         ; $505a: $ff
	add  b                                           ; $505b: $80
	pop  af                                          ; $505c: $f1
	add  b                                           ; $505d: $80
	ret  nz                                          ; $505e: $c0

	add  b                                           ; $505f: $80
	db   $e4                                         ; $5060: $e4
	add  b                                           ; $5061: $80
	ldh  a, [$80]                                    ; $5062: $f0 $80
	add  b                                           ; $5064: $80
	add  h                                           ; $5065: $84
	rst  $38                                         ; $5066: $ff
	add  b                                           ; $5067: $80
	rst  ToBoot                                         ; $5068: $c7
	add  b                                           ; $5069: $80
	ld   bc, $9380                                   ; $506a: $01 $80 $93
	add  b                                           ; $506d: $80
	add  a                                           ; $506e: $87
	add  b                                           ; $506f: $80
	nop                                              ; $5070: $00
	add  h                                           ; $5071: $84
	rst  $38                                         ; $5072: $ff
	add  b                                           ; $5073: $80
	call z, $e680                                    ; $5074: $cc $80 $e6
	add  b                                           ; $5077: $80
	rst  $38                                         ; $5078: $ff
	add  d                                           ; $5079: $82
	db   $fc                                         ; $507a: $fc
	add  h                                           ; $507b: $84
	rst  $38                                         ; $507c: $ff
	add  b                                           ; $507d: $80
	rlca                                             ; $507e: $07
	add  b                                           ; $507f: $80
	ld   h, a                                        ; $5080: $67
	add  b                                           ; $5081: $80
	rrca                                             ; $5082: $0f
	add  b                                           ; $5083: $80
	inc  bc                                          ; $5084: $03
	add  b                                           ; $5085: $80
	sub  e                                           ; $5086: $93
	add  b                                           ; $5087: $80
	rst  $38                                         ; $5088: $ff
	add  b                                           ; $5089: $80
	ret                                              ; $508a: $c9


	add  b                                           ; $508b: $80
	add  b                                           ; $508c: $80
	add  b                                           ; $508d: $80
	ret                                              ; $508e: $c9


	add  b                                           ; $508f: $80
	add  b                                           ; $5090: $80
	add  b                                           ; $5091: $80
	and  h                                           ; $5092: $a4
	add  b                                           ; $5093: $80
	add  b                                           ; $5094: $80
	add  b                                           ; $5095: $80
	rst  $20                                         ; $5096: $e7
	add  b                                           ; $5097: $80
	rst  $38                                         ; $5098: $ff
	add  b                                           ; $5099: $80
	ret                                              ; $509a: $c9


	add  b                                           ; $509b: $80
	sub  e                                           ; $509c: $93
	add  b                                           ; $509d: $80
	nop                                              ; $509e: $00
	add  d                                           ; $509f: $82
	sub  e                                           ; $50a0: $93
	add  b                                           ; $50a1: $80
	add  b                                           ; $50a2: $80
	add  b                                           ; $50a3: $80
	sub  e                                           ; $50a4: $93
	add  b                                           ; $50a5: $80
	rst  $38                                         ; $50a6: $ff
	adc  h                                           ; $50a7: $8c
	sbc  a                                           ; $50a8: $9f
	add  b                                           ; $50a9: $80
	rst  $38                                         ; $50aa: $ff
	adc  e                                           ; $50ab: $8b
	ld   sp, hl                                      ; $50ac: $f9
	nop                                              ; $50ad: $00
	cp   c                                           ; $50ae: $b9
	add  h                                           ; $50af: $84
	ld   e, $80                                      ; $50b0: $1e $80
	rra                                              ; $50b2: $1f
	add  b                                           ; $50b3: $80
	ld   e, $80                                      ; $50b4: $1e $80
	rra                                              ; $50b6: $1f
	add  c                                           ; $50b7: $81
	ld   e, $00                                      ; $50b8: $1e $00
	ld   e, [hl]                                     ; $50ba: $5e
	add  b                                           ; $50bb: $80
	ld   [bc], a                                     ; $50bc: $02
	add  b                                           ; $50bd: $80
	sub  d                                           ; $50be: $92
	add  b                                           ; $50bf: $80
	ld   [bc], a                                     ; $50c0: $02
	add  b                                           ; $50c1: $80
	sbc  [hl]                                        ; $50c2: $9e
	add  b                                           ; $50c3: $80
	ld   [bc], a                                     ; $50c4: $02
	add  b                                           ; $50c5: $80
	sbc  [hl]                                        ; $50c6: $9e
	add  b                                           ; $50c7: $80
	ld   [bc], a                                     ; $50c8: $02
	add  b                                           ; $50c9: $80
	ld   h, [hl]                                     ; $50ca: $66
	add  d                                           ; $50cb: $82
	ld   c, a                                        ; $50cc: $4f
	add  b                                           ; $50cd: $80
	inc  bc                                          ; $50ce: $03
	add  b                                           ; $50cf: $80
	ld   c, a                                        ; $50d0: $4f
	add  b                                           ; $50d1: $80
	inc  bc                                          ; $50d2: $03
	add  d                                           ; $50d3: $82
	ld   c, a                                        ; $50d4: $4f
	add  b                                           ; $50d5: $80
	inc  bc                                          ; $50d6: $03
	add  b                                           ; $50d7: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50d8: $cf
	add  b                                           ; $50d9: $80
	ret  nz                                          ; $50da: $c0

	add  b                                           ; $50db: $80
	ld   sp, hl                                      ; $50dc: $f9
	add  b                                           ; $50dd: $80
	ldh  a, [$80]                                    ; $50de: $f0 $80
	and  $80                                         ; $50e0: $e6 $80
	sbc  h                                           ; $50e2: $9c
	add  b                                           ; $50e3: $80
	di                                               ; $50e4: $f3
	add  b                                           ; $50e5: $80
	cp   $80                                         ; $50e6: $fe $80
	di                                               ; $50e8: $f3
	add  b                                           ; $50e9: $80
	inc  bc                                          ; $50ea: $03
	add  b                                           ; $50eb: $80
	rst  $38                                         ; $50ec: $ff
	add  b                                           ; $50ed: $80
	nop                                              ; $50ee: $00
	add  b                                           ; $50ef: $80
	ld   h, h                                        ; $50f0: $64
	add  b                                           ; $50f1: $80
	call z, $9880                                    ; $50f2: $cc $80 $98
	add  b                                           ; $50f5: $80
	ld   h, c                                        ; $50f6: $61
	add  b                                           ; $50f7: $80
	ldh  a, [c]                                      ; $50f8: $f2
	add  h                                           ; $50f9: $84
	di                                               ; $50fa: $f3
	add  b                                           ; $50fb: $80
	ldh  a, [c]                                      ; $50fc: $f2
	add  d                                           ; $50fd: $82
	di                                               ; $50fe: $f3
	add  b                                           ; $50ff: $80
	and  $80                                         ; $5100: $e6 $80
	nop                                              ; $5102: $00
	add  b                                           ; $5103: $80
	add  hl, sp                                      ; $5104: $39
	add  b                                           ; $5105: $80
	ld   bc, $ff80                                   ; $5106: $01 $80 $ff
	add  b                                           ; $5109: $80
	nop                                              ; $510a: $00
	add  b                                           ; $510b: $80
	inc  a                                           ; $510c: $3c
	add  b                                           ; $510d: $80
	jp   $1801                                       ; $510e: $c3 $01 $18


	ld   a, [de]                                     ; $5111: $1a
	adc  h                                           ; $5112: $8c
	ld   hl, sp+$01                                  ; $5113: $f8 $01
	ld   a, b                                        ; $5115: $78
	ld   a, d                                        ; $5116: $7a
	add  b                                           ; $5117: $80

jr_01a_5118:
	rst  $38                                         ; $5118: $ff
	add  b                                           ; $5119: $80
	ldh  [$80], a                                    ; $511a: $e0 $80
	rst  $20                                         ; $511c: $e7
	add  b                                           ; $511d: $80
	ldh  [$80], a                                    ; $511e: $e0 $80
	rst  $20                                         ; $5120: $e7
	add  b                                           ; $5121: $80
	ldh  [$84], a                                    ; $5122: $e0 $84
	rst  $38                                         ; $5124: $ff
	add  b                                           ; $5125: $80
	inc  bc                                          ; $5126: $03
	add  b                                           ; $5127: $80
	di                                               ; $5128: $f3
	add  b                                           ; $5129: $80
	inc  bc                                          ; $512a: $03
	add  b                                           ; $512b: $80
	di                                               ; $512c: $f3
	add  b                                           ; $512d: $80
	inc  bc                                          ; $512e: $03
	add  d                                           ; $512f: $82
	rst  $38                                         ; $5130: $ff
	add  b                                           ; $5131: $80
	add  h                                           ; $5132: $84
	add  h                                           ; $5133: $84
	db   $e4                                         ; $5134: $e4
	add  b                                           ; $5135: $80
	ret  nz                                          ; $5136: $c0

	add  b                                           ; $5137: $80
	sbc  b                                           ; $5138: $98
	add  d                                           ; $5139: $82
	rst  $38                                         ; $513a: $ff
	add  b                                           ; $513b: $80
	inc  bc                                          ; $513c: $03
	add  b                                           ; $513d: $80
	sub  e                                           ; $513e: $93
	add  b                                           ; $513f: $80
	inc  bc                                          ; $5140: $03
	add  b                                           ; $5141: $80
	sub  e                                           ; $5142: $93
	add  b                                           ; $5143: $80

jr_01a_5144:
	add  e                                           ; $5144: $83
	add  b                                           ; $5145: $80
	nop                                              ; $5146: $00
	add  d                                           ; $5147: $82
	rst  $38                                         ; $5148: $ff
	add  b                                           ; $5149: $80
	add  b                                           ; $514a: $80
	add  b                                           ; $514b: $80
	rst  $20                                         ; $514c: $e7
	add  b                                           ; $514d: $80
	add  b                                           ; $514e: $80
	add  b                                           ; $514f: $80
	sbc  c                                           ; $5150: $99
	add  b                                           ; $5151: $80
	rst  $38                                         ; $5152: $ff
	inc  bc                                          ; $5153: $03
	nop                                              ; $5154: $00
	rst  $38                                         ; $5155: $ff
	nop                                              ; $5156: $00
	rst  $38                                         ; $5157: $ff
	add  b                                           ; $5158: $80
	nop                                              ; $5159: $00
	add  b                                           ; $515a: $80
	add  b                                           ; $515b: $80
	add  d                                           ; $515c: $82
	sub  e                                           ; $515d: $93
	add  b                                           ; $515e: $80
	add  b                                           ; $515f: $80
	add  b                                           ; $5160: $80
	rst  $38                                         ; $5161: $ff
	inc  bc                                          ; $5162: $03
	nop                                              ; $5163: $00
	rst  $38                                         ; $5164: $ff
	nop                                              ; $5165: $00
	rst  $38                                         ; $5166: $ff
	add  b                                           ; $5167: $80
	nop                                              ; $5168: $00
	add  b                                           ; $5169: $80
	sbc  a                                           ; $516a: $9f
	add  b                                           ; $516b: $80
	adc  a                                           ; $516c: $8f
	add  b                                           ; $516d: $80
	rst  ToBoot                                         ; $516e: $c7
	add  b                                           ; $516f: $80
	ldh  a, [$80]                                    ; $5170: $f0 $80
	rst  $38                                         ; $5172: $ff
	inc  bc                                          ; $5173: $03
	nop                                              ; $5174: $00
	rst  $38                                         ; $5175: $ff
	nop                                              ; $5176: $00
	rst  $38                                         ; $5177: $ff
	add  b                                           ; $5178: $80
	nop                                              ; $5179: $00
	add  b                                           ; $517a: $80
	call z, $9c80                                    ; $517b: $cc $80 $9c
	add  b                                           ; $517e: $80
	ld   a, $82                                      ; $517f: $3e $82
	rst  $38                                         ; $5181: $ff
	inc  bc                                          ; $5182: $03
	nop                                              ; $5183: $00
	rst  $38                                         ; $5184: $ff
	nop                                              ; $5185: $00
	rst  $38                                         ; $5186: $ff
	rst  $38                                         ; $5187: $ff
	nop                                              ; $5188: $00
	cp   $00                                         ; $5189: $fe $00
	ld   a, [hl-]                                    ; $518b: $3a
	ld   [bc], a                                     ; $518c: $02
	nop                                              ; $518d: $00
	nop                                              ; $518e: $00

jr_01a_518f:
	add  [hl]                                        ; $518f: $86
	jr   jr_01a_5118                                 ; $5190: $18 $86

	ld   [$fe80], sp                                 ; $5192: $08 $80 $fe
	add  b                                           ; $5195: $80
	ld   a, [hl]                                     ; $5196: $7e

jr_01a_5197:
	add  b                                           ; $5197: $80
	ccf                                              ; $5198: $3f
	add  b                                           ; $5199: $80
	rra                                              ; $519a: $1f

jr_01a_519b:
	add  b                                           ; $519b: $80
	rrca                                             ; $519c: $0f
	add  b                                           ; $519d: $80
	rlca                                             ; $519e: $07
	add  b                                           ; $519f: $80
	inc  bc                                          ; $51a0: $03
	add  b                                           ; $51a1: $80
	ld   bc, $0086                                   ; $51a2: $01 $86 $00
	add  d                                           ; $51a5: $82
	add  b                                           ; $51a6: $80
	add  c                                           ; $51a7: $81
	ret  nz                                          ; $51a8: $c0

	ld   [bc], a                                     ; $51a9: $02
	ld   b, b                                        ; $51aa: $40
	nop                                              ; $51ab: $00
	ret  nz                                          ; $51ac: $c0

	add  c                                           ; $51ad: $81
	add  b                                           ; $51ae: $80
	nop                                              ; $51af: $00
	ldh  [$81], a                                    ; $51b0: $e0 $81
	ret  nz                                          ; $51b2: $c0

	add  b                                           ; $51b3: $80
	ld   b, b                                        ; $51b4: $40
	inc  b                                           ; $51b5: $04
	ld   [hl], b                                     ; $51b6: $70
	ld   h, b                                        ; $51b7: $60
	and  b                                           ; $51b8: $a0
	jr   nz, jr_01a_522b                             ; $51b9: $20 $70

	adc  [hl]                                        ; $51bb: $8e
	nop                                              ; $51bc: $00
	add  b                                           ; $51bd: $80
	ldh  [$80], a                                    ; $51be: $e0 $80
	ld   h, b                                        ; $51c0: $60
	add  b                                           ; $51c1: $80
	jr   nc, jr_01a_5144                             ; $51c2: $30 $80

	db   $10                                         ; $51c4: $10
	add  b                                           ; $51c5: $80
	ld   [$0083], sp                                 ; $51c6: $08 $83 $00
	ld   [de], a                                     ; $51c9: $12
	jr   z, jr_01a_51dc                              ; $51ca: $28 $10

	jr   nz, jr_01a_51ce                             ; $51cc: $20 $00

jr_01a_51ce:
	inc  d                                           ; $51ce: $14
	nop                                              ; $51cf: $00
	ld   [$0600], sp                                 ; $51d0: $08 $00 $06
	nop                                              ; $51d3: $00
	ld   [bc], a                                     ; $51d4: $02
	nop                                              ; $51d5: $00
	ret  nz                                          ; $51d6: $c0

	nop                                              ; $51d7: $00
	cp   $00                                         ; $51d8: $fe $00
	ccf                                              ; $51da: $3f
	nop                                              ; $51db: $00

jr_01a_51dc:
	ld   bc, $0085                                   ; $51dc: $01 $85 $00
	db   $10                                         ; $51df: $10
	ld   hl, sp+$00                                  ; $51e0: $f8 $00
	rst  $38                                         ; $51e2: $ff
	nop                                              ; $51e3: $00
	rlca                                             ; $51e4: $07
	nop                                              ; $51e5: $00
	ldh  [rP1], a                                    ; $51e6: $e0 $00
	ld   hl, sp+$00                                  ; $51e8: $f8 $00
	inc  e                                           ; $51ea: $1c
	nop                                              ; $51eb: $00
	ld   b, $00                                      ; $51ec: $06 $00
	inc  bc                                          ; $51ee: $03
	nop                                              ; $51ef: $00
	ld   bc, $0081                                   ; $51f0: $01 $81 $00
	ld   [bc], a                                     ; $51f3: $02
	ret  nz                                          ; $51f4: $c0

	nop                                              ; $51f5: $00
	ret  nz                                          ; $51f6: $c0

	add  a                                           ; $51f7: $87
	nop                                              ; $51f8: $00
	ld   b, $80                                      ; $51f9: $06 $80
	nop                                              ; $51fb: $00
	ret  nz                                          ; $51fc: $c0

	nop                                              ; $51fd: $00
	ld   h, b                                        ; $51fe: $60
	nop                                              ; $51ff: $00
	jr   nz, jr_01a_518f                             ; $5200: $20 $8d

	nop                                              ; $5202: $00
	ld   a, [bc]                                     ; $5203: $0a
	jr   nc, jr_01a_5206                             ; $5204: $30 $00

jr_01a_5206:
	jr   c, jr_01a_5208                              ; $5206: $38 $00

jr_01a_5208:
	inc  c                                           ; $5208: $0c
	nop                                              ; $5209: $00
	ld   b, $00                                      ; $520a: $06 $00
	inc  bc                                          ; $520c: $03
	nop                                              ; $520d: $00
	ld   bc, $0083                                   ; $520e: $01 $83 $00
	ld   [bc], a                                     ; $5211: $02
	jr   nz, jr_01a_5214                             ; $5212: $20 $00

jr_01a_5214:
	jr   nc, jr_01a_5197                             ; $5214: $30 $81

	nop                                              ; $5216: $00
	nop                                              ; $5217: $00
	jr   jr_01a_519b                                 ; $5218: $18 $81

	nop                                              ; $521a: $00
	inc  c                                           ; $521b: $0c
	adc  h                                           ; $521c: $8c
	nop                                              ; $521d: $00
	ret  nz                                          ; $521e: $c0

	nop                                              ; $521f: $00
	ld   h, [hl]                                     ; $5220: $66
	nop                                              ; $5221: $00
	and  d                                           ; $5222: $a2
	nop                                              ; $5223: $00
	ld   b, b                                        ; $5224: $40
	add  b                                           ; $5225: $80
	and  a                                           ; $5226: $a7
	ret  nz                                          ; $5227: $c0

	ret  c                                           ; $5228: $d8

	add  b                                           ; $5229: $80
	rst  $20                                         ; $522a: $e7

jr_01a_522b:
	add  b                                           ; $522b: $80
	sbc  a                                           ; $522c: $9f
	add  b                                           ; $522d: $80
	ld   a, a                                        ; $522e: $7f
	add  c                                           ; $522f: $81
	rst  $38                                         ; $5230: $ff
	add  d                                           ; $5231: $82
	nop                                              ; $5232: $00
	ld   [bc], a                                     ; $5233: $02
	ldh  a, [rP1]                                    ; $5234: $f0 $00
	rrca                                             ; $5236: $0f
	add  b                                           ; $5237: $80
	ldh  a, [$85]                                    ; $5238: $f0 $85
	rst  $38                                         ; $523a: $ff
	db   $10                                         ; $523b: $10
	ld   [de], a                                     ; $523c: $12
	nop                                              ; $523d: $00
	dec  de                                          ; $523e: $1b
	nop                                              ; $523f: $00
	inc  c                                           ; $5240: $0c
	nop                                              ; $5241: $00
	rlca                                             ; $5242: $07
	nop                                              ; $5243: $00
	jp   $3000                                       ; $5244: $c3 $00 $30


	ret  nz                                          ; $5247: $c0

	ret  z                                           ; $5248: $c8

	ldh  a, [$f5]                                    ; $5249: $f0 $f5
	ld   hl, sp+$04                                  ; $524b: $f8 $04
	add  e                                           ; $524d: $83
	nop                                              ; $524e: $00
	ld   c, $80                                      ; $524f: $0e $80
	nop                                              ; $5251: $00
	ret  nz                                          ; $5252: $c0

	nop                                              ; $5253: $00
	ldh  [rP1], a                                    ; $5254: $e0 $00
	ldh  a, [rP1]                                    ; $5256: $f0 $00
	ld   hl, sp+$00                                  ; $5258: $f8 $00
	ld   d, h                                        ; $525a: $54
	ld   hl, sp-$06                                  ; $525b: $f8 $fa
	db   $fc                                         ; $525d: $fc
	db   $fd                                         ; $525e: $fd
	add  b                                           ; $525f: $80
	cp   $87                                         ; $5260: $fe $87
	rst  $38                                         ; $5262: $ff

jr_01a_5263:
	inc  b                                           ; $5263: $04
	sub  h                                           ; $5264: $94
	nop                                              ; $5265: $00
	jr   jr_01a_5268                                 ; $5266: $18 $00

jr_01a_5268:
	ld   a, [bc]                                     ; $5268: $0a
	add  c                                           ; $5269: $81
	nop                                              ; $526a: $00
	inc  b                                           ; $526b: $04
	ld   b, h                                        ; $526c: $44
	add  b                                           ; $526d: $80
	add  c                                           ; $526e: $81
	add  b                                           ; $526f: $80
	and  d                                           ; $5270: $a2
	add  c                                           ; $5271: $81
	ret  nz                                          ; $5272: $c0

	ld   [bc], a                                     ; $5273: $02
	ret  nc                                          ; $5274: $d0

	ldh  [$e8], a                                    ; $5275: $e0 $e8
	add  c                                           ; $5277: $81
	ldh  a, [rP1]                                    ; $5278: $f0 $00
	db   $f4                                         ; $527a: $f4
	add  c                                           ; $527b: $81
	ld   hl, sp+$00                                  ; $527c: $f8 $00
	ld   a, [$fc80]                                  ; $527e: $fa $80 $fc
	add  b                                           ; $5281: $80
	cp   $80                                         ; $5282: $fe $80
	rst  $38                                         ; $5284: $ff
	adc  d                                           ; $5285: $8a
	ld   a, a                                        ; $5286: $7f
	add  c                                           ; $5287: $81
	ccf                                              ; $5288: $3f
	add  e                                           ; $5289: $83
	nop                                              ; $528a: $00
	ld   bc, $a080                                   ; $528b: $01 $80 $a0
	add  c                                           ; $528e: $81
	ret  nz                                          ; $528f: $c0

	ld   [bc], a                                     ; $5290: $02
	ret  nc                                          ; $5291: $d0

	ret  nz                                          ; $5292: $c0

	ret  z                                           ; $5293: $c8

	add  c                                           ; $5294: $81
	ret  nz                                          ; $5295: $c0

	nop                                              ; $5296: $00
	rst  ToBoot                                         ; $5297: $c7
	add  d                                           ; $5298: $82
	rst  $38                                         ; $5299: $ff
	add  b                                           ; $529a: $80
	db   $fc                                         ; $529b: $fc
	add  b                                           ; $529c: $80
	di                                               ; $529d: $f3
	add  b                                           ; $529e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $529f: $cf
	add  b                                           ; $52a0: $80
	cp   a                                           ; $52a1: $bf
	add  b                                           ; $52a2: $80
	ld   a, b                                        ; $52a3: $78
	add  b                                           ; $52a4: $80
	add  a                                           ; $52a5: $87
	add  b                                           ; $52a6: $80
	rst  $38                                         ; $52a7: $ff
	add  b                                           ; $52a8: $80
	add  a                                           ; $52a9: $87
	add  b                                           ; $52aa: $80
	ld   a, b                                        ; $52ab: $78
	add  h                                           ; $52ac: $84
	rst  $38                                         ; $52ad: $ff
	add  b                                           ; $52ae: $80
	inc  bc                                          ; $52af: $03
	add  b                                           ; $52b0: $80
	db   $fc                                         ; $52b1: $fc
	add  h                                           ; $52b2: $84
	rst  $38                                         ; $52b3: $ff
	add  b                                           ; $52b4: $80
	ccf                                              ; $52b5: $3f
	add  b                                           ; $52b6: $80
	rst  JumpTable                                         ; $52b7: $df
	add  d                                           ; $52b8: $82
	rst  $38                                         ; $52b9: $ff
	inc  bc                                          ; $52ba: $03
	ld   a, a                                        ; $52bb: $7f
	ld   a, b                                        ; $52bc: $78
	ret  nz                                          ; $52bd: $c0

	call nz, $e083                                   ; $52be: $c4 $83 $e0
	nop                                              ; $52c1: $00
	ldh  [c], a                                      ; $52c2: $e2
	add  c                                           ; $52c3: $81
	ret  nz                                          ; $52c4: $c0

	nop                                              ; $52c5: $00
	pop  bc                                          ; $52c6: $c1
	add  b                                           ; $52c7: $80
	add  b                                           ; $52c8: $80
	add  b                                           ; $52c9: $80
	nop                                              ; $52ca: $00
	add  b                                           ; $52cb: $80
	sbc  a                                           ; $52cc: $9f
	add  b                                           ; $52cd: $80
	rst  $28                                         ; $52ce: $ef
	add  b                                           ; $52cf: $80
	rst  $30                                         ; $52d0: $f7
	add  b                                           ; $52d1: $80
	ei                                               ; $52d2: $fb
	add  d                                           ; $52d3: $82
	db   $dd                                         ; $52d4: $dd
	add  d                                           ; $52d5: $82
	xor  $8d                                         ; $52d6: $ee $8d
	nop                                              ; $52d8: $00
	ld   [bc], a                                     ; $52d9: $02
	ld   a, a                                        ; $52da: $7f
	nop                                              ; $52db: $00
	ld   b, b                                        ; $52dc: $40
	add  c                                           ; $52dd: $81
	nop                                              ; $52de: $00
	nop                                              ; $52df: $00
	jr   nz, jr_01a_5263                             ; $52e0: $20 $81

	nop                                              ; $52e2: $00
	nop                                              ; $52e3: $00
	db   $10                                         ; $52e4: $10
	add  b                                           ; $52e5: $80
	jr   nz, jr_01a_52eb                             ; $52e6: $20 $03

	ld   h, b                                        ; $52e8: $60
	ld   l, b                                        ; $52e9: $68
	ld   [hl], b                                     ; $52ea: $70

jr_01a_52eb:
	ld   [hl], a                                     ; $52eb: $77
	add  b                                           ; $52ec: $80
	or   $80                                         ; $52ed: $f6 $80
	rst  $30                                         ; $52ef: $f7
	add  d                                           ; $52f0: $82
	ei                                               ; $52f1: $fb
	add  b                                           ; $52f2: $80
	db   $fd                                         ; $52f3: $fd
	add  b                                           ; $52f4: $80
	cp   $82                                         ; $52f5: $fe $82
	rst  $38                                         ; $52f7: $ff
	add  d                                           ; $52f8: $82
	nop                                              ; $52f9: $00
	add  b                                           ; $52fa: $80
	ld   bc, $0380                                   ; $52fb: $01 $80 $03
	add  b                                           ; $52fe: $80
	rrca                                             ; $52ff: $0f
	add  b                                           ; $5300: $80
	ld   a, a                                        ; $5301: $7f
	add  c                                           ; $5302: $81
	rst  $38                                         ; $5303: $ff
	ld   [bc], a                                     ; $5304: $02
	ld   hl, sp-$10                                  ; $5305: $f8 $f0
	db   $f4                                         ; $5307: $f4
	add  c                                           ; $5308: $81
	ld   hl, sp+$02                                  ; $5309: $f8 $02
	ld   a, [$fdfc]                                  ; $530b: $fa $fc $fd
	add  b                                           ; $530e: $80
	cp   $84                                         ; $530f: $fe $84
	rst  $38                                         ; $5311: $ff
	nop                                              ; $5312: $00
	nop                                              ; $5313: $00
	add  b                                           ; $5314: $80
	rst  $38                                         ; $5315: $ff
	add  c                                           ; $5316: $81
	nop                                              ; $5317: $00
	add  d                                           ; $5318: $82
	rst  $38                                         ; $5319: $ff
	add  b                                           ; $531a: $80
	db   $e3                                         ; $531b: $e3
	add  b                                           ; $531c: $80

jr_01a_531d:
	add  b                                           ; $531d: $80
	add  b                                           ; $531e: $80
	rst  $38                                         ; $531f: $ff
	nop                                              ; $5320: $00
	nop                                              ; $5321: $00
	add  b                                           ; $5322: $80
	rst  $38                                         ; $5323: $ff
	add  c                                           ; $5324: $81
	nop                                              ; $5325: $00
	add  d                                           ; $5326: $82
	rst  $38                                         ; $5327: $ff
	add  b                                           ; $5328: $80
	sbc  h                                           ; $5329: $9c
	add  b                                           ; $532a: $80
	ret                                              ; $532b: $c9


	add  b                                           ; $532c: $80
	add  b                                           ; $532d: $80
	nop                                              ; $532e: $00
	nop                                              ; $532f: $00
	add  b                                           ; $5330: $80
	rst  $38                                         ; $5331: $ff
	add  c                                           ; $5332: $81
	nop                                              ; $5333: $00
	add  h                                           ; $5334: $84
	rst  $38                                         ; $5335: $ff
	add  b                                           ; $5336: $80
	add  b                                           ; $5337: $80
	add  b                                           ; $5338: $80
	sbc  h                                           ; $5339: $9c
	nop                                              ; $533a: $00
	nop                                              ; $533b: $00
	add  b                                           ; $533c: $80
	rst  $38                                         ; $533d: $ff
	add  c                                           ; $533e: $81
	nop                                              ; $533f: $00
	add  d                                           ; $5340: $82
	rst  $38                                         ; $5341: $ff
	add  b                                           ; $5342: $80
	add  b                                           ; $5343: $80
	add  d                                           ; $5344: $82
	sbc  h                                           ; $5345: $9c
	add  h                                           ; $5346: $84
	rst  $38                                         ; $5347: $ff
	add  b                                           ; $5348: $80
	di                                               ; $5349: $f3
	add  b                                           ; $534a: $80
	rst  $20                                         ; $534b: $e7
	add  b                                           ; $534c: $80
	ret                                              ; $534d: $c9


	add  b                                           ; $534e: $80
	sub  e                                           ; $534f: $93
	add  b                                           ; $5350: $80
	add  a                                           ; $5351: $87
	add  h                                           ; $5352: $84
	rst  $38                                         ; $5353: $ff
	add  b                                           ; $5354: $80
	rst  $20                                         ; $5355: $e7
	add  b                                           ; $5356: $80
	add  b                                           ; $5357: $80
	add  b                                           ; $5358: $80
	rst  $20                                         ; $5359: $e7
	add  b                                           ; $535a: $80
	add  b                                           ; $535b: $80
	add  b                                           ; $535c: $80
	and  h                                           ; $535d: $a4
	add  h                                           ; $535e: $84
	rst  $38                                         ; $535f: $ff
	add  b                                           ; $5360: $80
	add  b                                           ; $5361: $80
	add  b                                           ; $5362: $80
	db   $fc                                         ; $5363: $fc
	add  b                                           ; $5364: $80
	add  h                                           ; $5365: $84
	add  b                                           ; $5366: $80
	ld   hl, sp-$80                                  ; $5367: $f8 $80
	add  h                                           ; $5369: $84
	add  h                                           ; $536a: $84
	rst  $38                                         ; $536b: $ff
	add  b                                           ; $536c: $80
	add  b                                           ; $536d: $80
	add  b                                           ; $536e: $80
	db   $fc                                         ; $536f: $fc
	add  b                                           ; $5370: $80
	add  h                                           ; $5371: $84
	add  b                                           ; $5372: $80
	ld   hl, sp-$80                                  ; $5373: $f8 $80
	add  h                                           ; $5375: $84
	nop                                              ; $5376: $00
	nop                                              ; $5377: $00
	add  b                                           ; $5378: $80
	rst  $38                                         ; $5379: $ff
	add  c                                           ; $537a: $81
	nop                                              ; $537b: $00
	sub  a                                           ; $537c: $97
	rst  $38                                         ; $537d: $ff
	inc  b                                           ; $537e: $04
	add  b                                           ; $537f: $80
	nop                                              ; $5380: $00
	add  e                                           ; $5381: $83
	nop                                              ; $5382: $00
	ld   bc, $0085                                   ; $5383: $01 $85 $00
	ld   a, [bc]                                     ; $5386: $0a
	jr   nz, jr_01a_5389                             ; $5387: $20 $00

jr_01a_5389:
	ld   h, c                                        ; $5389: $61
	nop                                              ; $538a: $00
	ld   b, h                                        ; $538b: $44
	inc  bc                                          ; $538c: $03
	ei                                               ; $538d: $fb

jr_01a_538e:
	nop                                              ; $538e: $00
	di                                               ; $538f: $f3
	nop                                              ; $5390: $00
	ld   l, b                                        ; $5391: $68
	add  c                                           ; $5392: $81
	nop                                              ; $5393: $00
	inc  b                                           ; $5394: $04
	ld   l, b                                        ; $5395: $68
	nop                                              ; $5396: $00
	ld   [hl], b                                     ; $5397: $70
	nop                                              ; $5398: $00
	add  e                                           ; $5399: $83
	add  b                                           ; $539a: $80
	jr   jr_01a_531d                                 ; $539b: $18 $80

	cp   $0c                                         ; $539d: $fe $0c
	nop                                              ; $539f: $00
	rst  $20                                         ; $53a0: $e7
	nop                                              ; $53a1: $00
	pop  de                                          ; $53a2: $d1
	nop                                              ; $53a3: $00
	ld   bc, $d100                                   ; $53a4: $01 $00 $d1
	nop                                              ; $53a7: $00
	pop  de                                          ; $53a8: $d1
	nop                                              ; $53a9: $00
	scf                                              ; $53aa: $37
	nop                                              ; $53ab: $00
	add  b                                           ; $53ac: $80
	db   $fc                                         ; $53ad: $fc
	add  b                                           ; $53ae: $80
	nop                                              ; $53af: $00
	dec  bc                                          ; $53b0: $0b
	rst  $20                                         ; $53b1: $e7
	nop                                              ; $53b2: $00
	db   $eb                                         ; $53b3: $eb
	nop                                              ; $53b4: $00
	rlc  b                                           ; $53b5: $cb $00
	rst  ToBoot                                         ; $53b7: $c7
	nop                                              ; $53b8: $00
	rst  $28                                         ; $53b9: $ef
	nop                                              ; $53ba: $00
	rst  $28                                         ; $53bb: $ef
	nop                                              ; $53bc: $00
	add  b                                           ; $53bd: $80
	ld   a, h                                        ; $53be: $7c
	add  b                                           ; $53bf: $80
	nop                                              ; $53c0: $00
	ld   [de], a                                     ; $53c1: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53c2: $cf
	nop                                              ; $53c3: $00
	rst  $10                                         ; $53c4: $d7
	nop                                              ; $53c5: $00
	sub  a                                           ; $53c6: $97
	nop                                              ; $53c7: $00
	ld   c, [hl]                                     ; $53c8: $4e
	nop                                              ; $53c9: $00
	ld   e, [hl]                                     ; $53ca: $5e
	nop                                              ; $53cb: $00
	sbc  a                                           ; $53cc: $9f
	nop                                              ; $53cd: $00
	inc  a                                           ; $53ce: $3c
	ccf                                              ; $53cf: $3f
	inc  b                                           ; $53d0: $04
	rlca                                             ; $53d1: $07
	add  c                                           ; $53d2: $81
	add  hl, sp                                      ; $53d3: $39
	cp   b                                           ; $53d4: $b8
	add  b                                           ; $53d5: $80
	ld   a, $03                                      ; $53d6: $3e $03
	ccf                                              ; $53d8: $3f
	cp   [hl]                                        ; $53d9: $be
	ccf                                              ; $53da: $3f
	cp   l                                           ; $53db: $bd
	add  b                                           ; $53dc: $80
	ccf                                              ; $53dd: $3f
	ld   bc, $7c7f                                   ; $53de: $01 $7f $7c
	add  b                                           ; $53e1: $80
	add  b                                           ; $53e2: $80
	add  b                                           ; $53e3: $80
	rst  $38                                         ; $53e4: $ff
	add  b                                           ; $53e5: $80
	add  b                                           ; $53e6: $80
	add  b                                           ; $53e7: $80
	rst  $38                                         ; $53e8: $ff
	add  b                                           ; $53e9: $80
	add  b                                           ; $53ea: $80
	add  d                                           ; $53eb: $82
	sbc  h                                           ; $53ec: $9c
	add  b                                           ; $53ed: $80
	add  b                                           ; $53ee: $80
	add  d                                           ; $53ef: $82
	sbc  h                                           ; $53f0: $9c
	add  b                                           ; $53f1: $80
	add  b                                           ; $53f2: $80
	add  h                                           ; $53f3: $84
	ret                                              ; $53f4: $c9


	add  b                                           ; $53f5: $80
	ret  z                                           ; $53f6: $c8

	add  b                                           ; $53f7: $80
	sbc  b                                           ; $53f8: $98
	add  b                                           ; $53f9: $80
	sbc  h                                           ; $53fa: $9c
	add  b                                           ; $53fb: $80
	add  b                                           ; $53fc: $80
	add  d                                           ; $53fd: $82
	sbc  h                                           ; $53fe: $9c
	add  b                                           ; $53ff: $80
	add  b                                           ; $5400: $80
	add  h                                           ; $5401: $84
	rst  $38                                         ; $5402: $ff
	add  b                                           ; $5403: $80
	add  b                                           ; $5404: $80
	add  d                                           ; $5405: $82
	sbc  h                                           ; $5406: $9c
	add  b                                           ; $5407: $80
	add  b                                           ; $5408: $80
	add  h                                           ; $5409: $84
	sbc  h                                           ; $540a: $9c
	add  b                                           ; $540b: $80
	jr   c, jr_01a_538e                              ; $540c: $38 $80

	call z, $8080                                    ; $540e: $cc $80 $80
	add  b                                           ; $5411: $80
	and  $84                                         ; $5412: $e6 $84
	and  l                                           ; $5414: $a5
	add  d                                           ; $5415: $82
	rst  $38                                         ; $5416: $ff
	add  b                                           ; $5417: $80
	add  b                                           ; $5418: $80
	add  b                                           ; $5419: $80
	and  h                                           ; $541a: $a4
	add  b                                           ; $541b: $80
	add  b                                           ; $541c: $80
	add  b                                           ; $541d: $80
	jp   $a580                                       ; $541e: $c3 $80 $a5


	add  b                                           ; $5421: $80
	ld   h, [hl]                                     ; $5422: $66
	add  d                                           ; $5423: $82
	rst  $38                                         ; $5424: $ff
	add  b                                           ; $5425: $80
	cp   $80                                         ; $5426: $fe $80
	ret  nz                                          ; $5428: $c0

	add  b                                           ; $5429: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $542a: $cf
	add  b                                           ; $542b: $80
	ret  nz                                          ; $542c: $c0

	add  b                                           ; $542d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $542e: $cf
	add  b                                           ; $542f: $80
	ret  nz                                          ; $5430: $c0

	add  d                                           ; $5431: $82
	rst  $38                                         ; $5432: $ff
	add  b                                           ; $5433: $80
	ccf                                              ; $5434: $3f
	add  b                                           ; $5435: $80
	ld   bc, $f980                                   ; $5436: $01 $80 $f9
	add  b                                           ; $5439: $80
	ld   bc, $f980                                   ; $543a: $01 $80 $f9
	add  b                                           ; $543d: $80
	ld   bc, $ff82                                   ; $543e: $01 $82 $ff
	ld   [bc], a                                     ; $5441: $02
	add  b                                           ; $5442: $80
	cp   a                                           ; $5443: $bf
	ccf                                              ; $5444: $3f
	add  b                                           ; $5445: $80
	ld   h, b                                        ; $5446: $60
	nop                                              ; $5447: $00
	ld   b, b                                        ; $5448: $40
	add  b                                           ; $5449: $80
	ld   c, a                                        ; $544a: $4f
	add  l                                           ; $544b: $85
	ld   e, a                                        ; $544c: $5f
	nop                                              ; $544d: $00
	ldh  [$ad], a                                    ; $544e: $e0 $ad
	nop                                              ; $5450: $00
	ld   b, $fc                                      ; $5451: $06 $fc
	ei                                               ; $5453: $fb
	ld   hl, sp+$00                                  ; $5454: $f8 $00
	ld   h, a                                        ; $5456: $67
	nop                                              ; $5457: $00
	dec  hl                                          ; $5458: $2b
	add  c                                           ; $5459: $81
	nop                                              ; $545a: $00
	dec  b                                           ; $545b: $05
	inc  bc                                          ; $545c: $03
	nop                                              ; $545d: $00
	inc  hl                                          ; $545e: $23
	nop                                              ; $545f: $00
	ld   l, h                                        ; $5460: $6c
	nop                                              ; $5461: $00
	add  b                                           ; $5462: $80
	pop  hl                                          ; $5463: $e1
	add  b                                           ; $5464: $80
	inc  bc                                          ; $5465: $03
	ld   [bc], a                                     ; $5466: $02
	sbc  e                                           ; $5467: $9b
	inc  bc                                          ; $5468: $03
	ld   d, e                                        ; $5469: $53
	add  c                                           ; $546a: $81
	inc  bc                                          ; $546b: $03
	add  b                                           ; $546c: $80
	nop                                              ; $546d: $00
	inc  b                                           ; $546e: $04
	stop                                             ; $546f: $10 $00
	ret  c                                           ; $5471: $d8

	nop                                              ; $5472: $00
	rst  $38                                         ; $5473: $ff
	sbc  l                                           ; $5474: $9d
	nop                                              ; $5475: $00
	add  c                                           ; $5476: $81
	rst  $38                                         ; $5477: $ff
	add  b                                           ; $5478: $80
	add  b                                           ; $5479: $80
	add  b                                           ; $547a: $80
	sbc  h                                           ; $547b: $9c
	add  b                                           ; $547c: $80
	add  b                                           ; $547d: $80
	add  b                                           ; $547e: $80
	sbc  h                                           ; $547f: $9c
	add  b                                           ; $5480: $80
	add  b                                           ; $5481: $80
	add  b                                           ; $5482: $80
	sbc  a                                           ; $5483: $9f
	add  b                                           ; $5484: $80
	sub  b                                           ; $5485: $90
	add  b                                           ; $5486: $80
	rst  $38                                         ; $5487: $ff
	add  b                                           ; $5488: $80
	add  b                                           ; $5489: $80
	add  b                                           ; $548a: $80
	sbc  h                                           ; $548b: $9c
	add  b                                           ; $548c: $80
	add  b                                           ; $548d: $80
	add  b                                           ; $548e: $80
	sbc  h                                           ; $548f: $9c
	add  b                                           ; $5490: $80
	add  b                                           ; $5491: $80
	add  b                                           ; $5492: $80
	db   $fc                                         ; $5493: $fc
	add  b                                           ; $5494: $80
	inc  b                                           ; $5495: $04
	add  b                                           ; $5496: $80
	sbc  c                                           ; $5497: $99
	add  b                                           ; $5498: $80
	sub  b                                           ; $5499: $90
	add  d                                           ; $549a: $82
	sbc  c                                           ; $549b: $99
	add  b                                           ; $549c: $80
	rst  $38                                         ; $549d: $ff
	nop                                              ; $549e: $00

jr_01a_549f:
	nop                                              ; $549f: $00
	add  b                                           ; $54a0: $80
	rst  $38                                         ; $54a1: $ff
	add  c                                           ; $54a2: $81
	nop                                              ; $54a3: $00
	add  b                                           ; $54a4: $80
	call z, $0480                                    ; $54a5: $cc $80 $04
	add  b                                           ; $54a8: $80
	call z, $8880                                    ; $54a9: $cc $80 $88
	add  b                                           ; $54ac: $80
	rst  $38                                         ; $54ad: $ff
	nop                                              ; $54ae: $00
	nop                                              ; $54af: $00
	add  b                                           ; $54b0: $80
	rst  $38                                         ; $54b1: $ff
	add  c                                           ; $54b2: $81
	nop                                              ; $54b3: $00
	add  b                                           ; $54b4: $80
	rst  $38                                         ; $54b5: $ff
	add  d                                           ; $54b6: $82
	rst  $20                                         ; $54b7: $e7
	add  b                                           ; $54b8: $80
	add  b                                           ; $54b9: $80
	add  d                                           ; $54ba: $82
	ret                                              ; $54bb: $c9


	add  b                                           ; $54bc: $80
	sbc  c                                           ; $54bd: $99
	add  b                                           ; $54be: $80
	adc  c                                           ; $54bf: $89
	add  b                                           ; $54c0: $80
	rst  $38                                         ; $54c1: $ff
	add  b                                           ; $54c2: $80
	di                                               ; $54c3: $f3
	add  b                                           ; $54c4: $80
	rst  $20                                         ; $54c5: $e7
	add  b                                           ; $54c6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54c7: $cf
	add  b                                           ; $54c8: $80
	sbc  c                                           ; $54c9: $99
	add  b                                           ; $54ca: $80
	inc  a                                           ; $54cb: $3c
	add  b                                           ; $54cc: $80
	nop                                              ; $54cd: $00
	add  b                                           ; $54ce: $80
	rst  $38                                         ; $54cf: $ff
	add  b                                           ; $54d0: $80
	jp   $e780                                       ; $54d1: $c3 $80 $e7


	add  b                                           ; $54d4: $80
	jp   $9980                                       ; $54d5: $c3 $80 $99


	add  b                                           ; $54d8: $80
	rst  $38                                         ; $54d9: $ff
	nop                                              ; $54da: $00
	nop                                              ; $54db: $00
	add  b                                           ; $54dc: $80
	rst  $38                                         ; $54dd: $ff
	add  e                                           ; $54de: $83
	nop                                              ; $54df: $00
	add  d                                           ; $54e0: $82
	inc  a                                           ; $54e1: $3c
	add  b                                           ; $54e2: $80
	nop                                              ; $54e3: $00
	add  b                                           ; $54e4: $80
	rst  $38                                         ; $54e5: $ff
	nop                                              ; $54e6: $00
	nop                                              ; $54e7: $00
	add  b                                           ; $54e8: $80
	rst  $38                                         ; $54e9: $ff
	add  b                                           ; $54ea: $80
	nop                                              ; $54eb: $00
	nop                                              ; $54ec: $00
	ld   b, b                                        ; $54ed: $40
	adc  l                                           ; $54ee: $8d
	ld   e, a                                        ; $54ef: $5f
	nop                                              ; $54f0: $00
	ldh  [$8d], a                                    ; $54f1: $e0 $8d
	nop                                              ; $54f3: $00
	jr   z, jr_01a_54fe                              ; $54f4: $28 $08

	nop                                              ; $54f6: $00
	rla                                              ; $54f7: $17
	nop                                              ; $54f8: $00
	rrca                                             ; $54f9: $0f
	nop                                              ; $54fa: $00
	inc  hl                                          ; $54fb: $23
	nop                                              ; $54fc: $00
	ld   h, e                                        ; $54fd: $63

jr_01a_54fe:
	nop                                              ; $54fe: $00
	inc  bc                                          ; $54ff: $03
	nop                                              ; $5500: $00
	jp   $8f00                                       ; $5501: $c3 $00 $8f


	nop                                              ; $5504: $00
	ld   h, b                                        ; $5505: $60
	ccf                                              ; $5506: $3f
	cp   a                                           ; $5507: $bf
	nop                                              ; $5508: $00
	sbc  c                                           ; $5509: $99
	nop                                              ; $550a: $00
	ld   b, b                                        ; $550b: $40
	nop                                              ; $550c: $00
	ld   b, b                                        ; $550d: $40
	nop                                              ; $550e: $00
	ld   b, b                                        ; $550f: $40
	nop                                              ; $5510: $00
	ld   d, [hl]                                     ; $5511: $56
	nop                                              ; $5512: $00
	xor  a                                           ; $5513: $af
	nop                                              ; $5514: $00
	jp   c, $f802                                    ; $5515: $da $02 $f8

	nop                                              ; $5518: $00
	cp   a                                           ; $5519: $bf
	nop                                              ; $551a: $00
	inc  sp                                          ; $551b: $33
	nop                                              ; $551c: $00
	jr   nz, jr_01a_549f                             ; $551d: $20 $80

	nop                                              ; $551f: $00
	dec  b                                           ; $5520: $05
	ld   bc, $0181                                   ; $5521: $01 $81 $01
	ld   l, l                                        ; $5524: $6d
	ld   bc, $8141                                   ; $5525: $01 $41 $81
	nop                                              ; $5528: $00
	ld   [bc], a                                     ; $5529: $02
	ld   a, [hl]                                     ; $552a: $7e
	nop                                              ; $552b: $00
	ld   h, a                                        ; $552c: $67
	add  e                                           ; $552d: $83
	nop                                              ; $552e: $00
	ld   a, [bc]                                     ; $552f: $0a
	pop  bc                                          ; $5530: $c1
	ret  nz                                          ; $5531: $c0

	ret  c                                           ; $5532: $d8

	ret  nz                                          ; $5533: $c0

	inc  e                                           ; $5534: $1c
	rra                                              ; $5535: $1f
	inc  bc                                          ; $5536: $03
	nop                                              ; $5537: $00
	di                                               ; $5538: $f3
	nop                                              ; $5539: $00
	ld   l, b                                        ; $553a: $68
	add  e                                           ; $553b: $83
	nop                                              ; $553c: $00
	ld   [bc], a                                     ; $553d: $02
	ld   l, b                                        ; $553e: $68
	nop                                              ; $553f: $00
	di                                               ; $5540: $f3
	add  b                                           ; $5541: $80
	nop                                              ; $5542: $00
	add  b                                           ; $5543: $80
	ei                                               ; $5544: $fb
	db   $10                                         ; $5545: $10
	ld   [bc], a                                     ; $5546: $02
	inc  sp                                          ; $5547: $33
	inc  b                                           ; $5548: $04
	add  [hl]                                        ; $5549: $86
	nop                                              ; $554a: $00
	ld   b, l                                        ; $554b: $45
	nop                                              ; $554c: $00
	add  b                                           ; $554d: $80
	nop                                              ; $554e: $00
	ld   b, b                                        ; $554f: $40
	nop                                              ; $5550: $00
	inc  sp                                          ; $5551: $33
	ld   bc, $8004                                   ; $5552: $01 $04 $80
	cp   a                                           ; $5555: $bf
	ccf                                              ; $5556: $3f
	add  b                                           ; $5557: $80
	ld   h, b                                        ; $5558: $60
	nop                                              ; $5559: $00
	ld   b, b                                        ; $555a: $40
	add  b                                           ; $555b: $80
	ld   c, a                                        ; $555c: $4f
	add  d                                           ; $555d: $82
	ld   e, a                                        ; $555e: $5f
	add  b                                           ; $555f: $80
	ld   e, [hl]                                     ; $5560: $5e
	ld   [bc], a                                     ; $5561: $02
	ld   e, a                                        ; $5562: $5f
	rra                                              ; $5563: $1f
	nop                                              ; $5564: $00
	add  b                                           ; $5565: $80
	rst  $38                                         ; $5566: $ff
	add  c                                           ; $5567: $81
	nop                                              ; $5568: $00
	add  d                                           ; $5569: $82
	rst  $38                                         ; $556a: $ff
	add  b                                           ; $556b: $80
	daa                                              ; $556c: $27
	add  b                                           ; $556d: $80
	ld   [bc], a                                     ; $556e: $02
	add  b                                           ; $556f: $80
	inc  h                                           ; $5570: $24
	nop                                              ; $5571: $00
	nop                                              ; $5572: $00
	add  b                                           ; $5573: $80
	rst  $38                                         ; $5574: $ff
	add  c                                           ; $5575: $81
	nop                                              ; $5576: $00
	add  d                                           ; $5577: $82
	rst  $38                                         ; $5578: $ff
	add  b                                           ; $5579: $80
	daa                                              ; $557a: $27
	add  b                                           ; $557b: $80
	ld   c, a                                        ; $557c: $4f
	add  b                                           ; $557d: $80
	inc  bc                                          ; $557e: $03
	nop                                              ; $557f: $00
	nop                                              ; $5580: $00
	add  b                                           ; $5581: $80
	rst  $38                                         ; $5582: $ff
	add  c                                           ; $5583: $81
	nop                                              ; $5584: $00
	add  d                                           ; $5585: $82
	rst  $38                                         ; $5586: $ff
	add  b                                           ; $5587: $80
	ret  nz                                          ; $5588: $c0

	add  b                                           ; $5589: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $558a: $cf
	add  b                                           ; $558b: $80
	ret  nz                                          ; $558c: $c0

	nop                                              ; $558d: $00
	nop                                              ; $558e: $00
	add  b                                           ; $558f: $80
	rst  $38                                         ; $5590: $ff
	add  c                                           ; $5591: $81
	nop                                              ; $5592: $00
	add  d                                           ; $5593: $82
	rst  $38                                         ; $5594: $ff
	add  b                                           ; $5595: $80
	inc  bc                                          ; $5596: $03
	add  b                                           ; $5597: $80
	di                                               ; $5598: $f3
	add  b                                           ; $5599: $80
	inc  bc                                          ; $559a: $03
	nop                                              ; $559b: $00
	nop                                              ; $559c: $00
	add  b                                           ; $559d: $80
	rst  $38                                         ; $559e: $ff
	add  c                                           ; $559f: $81
	nop                                              ; $55a0: $00
	add  h                                           ; $55a1: $84
	rst  $38                                         ; $55a2: $ff
	add  b                                           ; $55a3: $80
	ldh  a, [$80]                                    ; $55a4: $f0 $80
	di                                               ; $55a6: $f3
	nop                                              ; $55a7: $00
	nop                                              ; $55a8: $00
	add  b                                           ; $55a9: $80
	rst  $38                                         ; $55aa: $ff
	add  c                                           ; $55ab: $81
	nop                                              ; $55ac: $00
	add  d                                           ; $55ad: $82
	rst  $38                                         ; $55ae: $ff
	add  b                                           ; $55af: $80
	rst  ToBoot                                         ; $55b0: $c7
	add  b                                           ; $55b1: $80
	nop                                              ; $55b2: $00
	add  b                                           ; $55b3: $80
	add  hl, sp                                      ; $55b4: $39
	ld   [bc], a                                     ; $55b5: $02
	ld   bc, $fcfd                                   ; $55b6: $01 $fd $fc
	add  b                                           ; $55b9: $80
	ld   b, $00                                      ; $55ba: $06 $00
	ld   [bc], a                                     ; $55bc: $02
	add  b                                           ; $55bd: $80
	ldh  a, [c]                                      ; $55be: $f2
	add  d                                           ; $55bf: $82
	ld   a, [$7a80]                                  ; $55c0: $fa $80 $7a
	ld   bc, $f8fa                                   ; $55c3: $01 $fa $f8
	add  h                                           ; $55c6: $84
	rst  $38                                         ; $55c7: $ff
	add  b                                           ; $55c8: $80
	pop  af                                          ; $55c9: $f1
	add  b                                           ; $55ca: $80
	ret  nz                                          ; $55cb: $c0

	add  b                                           ; $55cc: $80
	db   $e4                                         ; $55cd: $e4
	add  b                                           ; $55ce: $80
	ldh  a, [$80]                                    ; $55cf: $f0 $80
	add  b                                           ; $55d1: $80
	add  h                                           ; $55d2: $84
	rst  $38                                         ; $55d3: $ff
	add  b                                           ; $55d4: $80
	rst  ToBoot                                         ; $55d5: $c7
	add  b                                           ; $55d6: $80
	ld   bc, $9380                                   ; $55d7: $01 $80 $93
	add  b                                           ; $55da: $80
	add  a                                           ; $55db: $87
	add  b                                           ; $55dc: $80
	nop                                              ; $55dd: $00
	add  h                                           ; $55de: $84
	rst  $38                                         ; $55df: $ff
	add  b                                           ; $55e0: $80
	call z, $e680                                    ; $55e1: $cc $80 $e6
	add  b                                           ; $55e4: $80
	rst  $38                                         ; $55e5: $ff
	add  d                                           ; $55e6: $82
	db   $fc                                         ; $55e7: $fc
	add  h                                           ; $55e8: $84
	rst  $38                                         ; $55e9: $ff
	add  b                                           ; $55ea: $80
	rlca                                             ; $55eb: $07
	add  b                                           ; $55ec: $80
	ld   h, a                                        ; $55ed: $67
	add  b                                           ; $55ee: $80
	rrca                                             ; $55ef: $0f
	add  b                                           ; $55f0: $80
	inc  bc                                          ; $55f1: $03
	add  b                                           ; $55f2: $80
	sub  e                                           ; $55f3: $93
	add  b                                           ; $55f4: $80
	rst  $38                                         ; $55f5: $ff
	add  b                                           ; $55f6: $80
	ret                                              ; $55f7: $c9


	add  b                                           ; $55f8: $80
	add  b                                           ; $55f9: $80
	add  b                                           ; $55fa: $80
	ret                                              ; $55fb: $c9


	add  b                                           ; $55fc: $80
	add  b                                           ; $55fd: $80
	add  b                                           ; $55fe: $80
	and  h                                           ; $55ff: $a4
	add  b                                           ; $5600: $80
	add  b                                           ; $5601: $80
	add  b                                           ; $5602: $80
	rst  $20                                         ; $5603: $e7
	add  b                                           ; $5604: $80
	rst  $38                                         ; $5605: $ff
	add  b                                           ; $5606: $80
	ret                                              ; $5607: $c9


	add  b                                           ; $5608: $80
	sub  e                                           ; $5609: $93
	add  b                                           ; $560a: $80
	nop                                              ; $560b: $00
	add  d                                           ; $560c: $82
	sub  e                                           ; $560d: $93
	add  b                                           ; $560e: $80
	add  b                                           ; $560f: $80
	add  b                                           ; $5610: $80
	sub  e                                           ; $5611: $93
	add  b                                           ; $5612: $80
	rst  $38                                         ; $5613: $ff
	adc  h                                           ; $5614: $8c
	sbc  a                                           ; $5615: $9f
	add  b                                           ; $5616: $80
	rst  $38                                         ; $5617: $ff
	adc  e                                           ; $5618: $8b
	ld   sp, hl                                      ; $5619: $f9
	nop                                              ; $561a: $00
	cp   c                                           ; $561b: $b9
	add  h                                           ; $561c: $84
	ld   e, [hl]                                     ; $561d: $5e
	add  b                                           ; $561e: $80
	ld   e, a                                        ; $561f: $5f
	add  b                                           ; $5620: $80
	ld   e, [hl]                                     ; $5621: $5e
	add  b                                           ; $5622: $80
	ld   e, a                                        ; $5623: $5f
	add  c                                           ; $5624: $81
	ld   e, [hl]                                     ; $5625: $5e
	nop                                              ; $5626: $00
	ld   e, $80                                      ; $5627: $1e $80
	ld   [bc], a                                     ; $5629: $02
	add  b                                           ; $562a: $80
	sub  d                                           ; $562b: $92
	add  b                                           ; $562c: $80
	ld   [bc], a                                     ; $562d: $02
	add  b                                           ; $562e: $80
	sbc  [hl]                                        ; $562f: $9e
	add  b                                           ; $5630: $80
	ld   [bc], a                                     ; $5631: $02
	add  b                                           ; $5632: $80
	sbc  [hl]                                        ; $5633: $9e
	add  b                                           ; $5634: $80
	ld   [bc], a                                     ; $5635: $02
	add  b                                           ; $5636: $80
	ld   h, [hl]                                     ; $5637: $66
	add  d                                           ; $5638: $82
	ld   c, a                                        ; $5639: $4f
	add  b                                           ; $563a: $80
	inc  bc                                          ; $563b: $03
	add  b                                           ; $563c: $80
	ld   c, a                                        ; $563d: $4f
	add  b                                           ; $563e: $80
	inc  bc                                          ; $563f: $03
	add  d                                           ; $5640: $82
	ld   c, a                                        ; $5641: $4f
	add  b                                           ; $5642: $80
	inc  bc                                          ; $5643: $03
	add  b                                           ; $5644: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5645: $cf
	add  b                                           ; $5646: $80
	ret  nz                                          ; $5647: $c0

	add  b                                           ; $5648: $80
	ld   sp, hl                                      ; $5649: $f9
	add  b                                           ; $564a: $80
	ldh  a, [$80]                                    ; $564b: $f0 $80
	and  $80                                         ; $564d: $e6 $80
	sbc  h                                           ; $564f: $9c
	add  b                                           ; $5650: $80
	di                                               ; $5651: $f3
	add  b                                           ; $5652: $80
	cp   $80                                         ; $5653: $fe $80
	di                                               ; $5655: $f3
	add  b                                           ; $5656: $80
	inc  bc                                          ; $5657: $03
	add  b                                           ; $5658: $80
	rst  $38                                         ; $5659: $ff
	add  b                                           ; $565a: $80
	nop                                              ; $565b: $00
	add  b                                           ; $565c: $80
	ld   h, h                                        ; $565d: $64
	add  b                                           ; $565e: $80
	call z, $9880                                    ; $565f: $cc $80 $98
	add  b                                           ; $5662: $80
	ld   h, c                                        ; $5663: $61
	add  b                                           ; $5664: $80
	ldh  a, [c]                                      ; $5665: $f2
	add  h                                           ; $5666: $84
	di                                               ; $5667: $f3
	add  b                                           ; $5668: $80
	ldh  a, [c]                                      ; $5669: $f2
	add  d                                           ; $566a: $82
	di                                               ; $566b: $f3
	add  b                                           ; $566c: $80
	and  $80                                         ; $566d: $e6 $80
	nop                                              ; $566f: $00
	add  b                                           ; $5670: $80
	add  hl, sp                                      ; $5671: $39
	add  b                                           ; $5672: $80
	ld   bc, $ff80                                   ; $5673: $01 $80 $ff
	add  b                                           ; $5676: $80
	nop                                              ; $5677: $00
	add  b                                           ; $5678: $80
	inc  a                                           ; $5679: $3c
	add  b                                           ; $567a: $80
	jp   $1801                                       ; $567b: $c3 $01 $18


	ld   a, [de]                                     ; $567e: $1a
	adc  h                                           ; $567f: $8c
	ld   a, [$7a01]                                  ; $5680: $fa $01 $7a
	ld   a, b                                        ; $5683: $78
	add  b                                           ; $5684: $80
	rst  $38                                         ; $5685: $ff
	add  b                                           ; $5686: $80
	ldh  [$80], a                                    ; $5687: $e0 $80
	rst  $20                                         ; $5689: $e7
	add  b                                           ; $568a: $80
	ldh  [$80], a                                    ; $568b: $e0 $80
	rst  $20                                         ; $568d: $e7
	add  b                                           ; $568e: $80
	ldh  [$84], a                                    ; $568f: $e0 $84
	rst  $38                                         ; $5691: $ff
	add  b                                           ; $5692: $80
	inc  bc                                          ; $5693: $03
	add  b                                           ; $5694: $80
	di                                               ; $5695: $f3
	add  b                                           ; $5696: $80
	inc  bc                                          ; $5697: $03
	add  b                                           ; $5698: $80
	di                                               ; $5699: $f3
	add  b                                           ; $569a: $80
	inc  bc                                          ; $569b: $03
	add  d                                           ; $569c: $82
	rst  $38                                         ; $569d: $ff
	add  b                                           ; $569e: $80
	add  h                                           ; $569f: $84
	add  h                                           ; $56a0: $84
	db   $e4                                         ; $56a1: $e4
	add  b                                           ; $56a2: $80
	ret  nz                                          ; $56a3: $c0

	add  b                                           ; $56a4: $80
	sbc  b                                           ; $56a5: $98
	add  d                                           ; $56a6: $82
	rst  $38                                         ; $56a7: $ff
	add  b                                           ; $56a8: $80
	inc  bc                                          ; $56a9: $03
	add  b                                           ; $56aa: $80
	sub  e                                           ; $56ab: $93
	add  b                                           ; $56ac: $80
	inc  bc                                          ; $56ad: $03
	add  b                                           ; $56ae: $80
	sub  e                                           ; $56af: $93
	add  b                                           ; $56b0: $80
	add  e                                           ; $56b1: $83
	add  b                                           ; $56b2: $80
	nop                                              ; $56b3: $00
	add  d                                           ; $56b4: $82
	rst  $38                                         ; $56b5: $ff
	add  b                                           ; $56b6: $80
	add  b                                           ; $56b7: $80
	add  b                                           ; $56b8: $80
	rst  $20                                         ; $56b9: $e7
	add  b                                           ; $56ba: $80
	add  b                                           ; $56bb: $80
	add  b                                           ; $56bc: $80
	sbc  c                                           ; $56bd: $99
	add  b                                           ; $56be: $80
	rst  $38                                         ; $56bf: $ff
	nop                                              ; $56c0: $00
	nop                                              ; $56c1: $00
	add  b                                           ; $56c2: $80
	rst  $38                                         ; $56c3: $ff
	add  c                                           ; $56c4: $81
	nop                                              ; $56c5: $00
	add  b                                           ; $56c6: $80
	add  b                                           ; $56c7: $80
	add  d                                           ; $56c8: $82
	sub  e                                           ; $56c9: $93
	add  b                                           ; $56ca: $80
	add  b                                           ; $56cb: $80
	add  b                                           ; $56cc: $80
	rst  $38                                         ; $56cd: $ff
	nop                                              ; $56ce: $00
	nop                                              ; $56cf: $00
	add  b                                           ; $56d0: $80
	rst  $38                                         ; $56d1: $ff
	add  c                                           ; $56d2: $81
	nop                                              ; $56d3: $00
	add  b                                           ; $56d4: $80
	sbc  a                                           ; $56d5: $9f
	add  b                                           ; $56d6: $80
	adc  a                                           ; $56d7: $8f
	add  b                                           ; $56d8: $80
	rst  ToBoot                                         ; $56d9: $c7
	add  b                                           ; $56da: $80
	ldh  a, [$80]                                    ; $56db: $f0 $80
	rst  $38                                         ; $56dd: $ff
	nop                                              ; $56de: $00

jr_01a_56df:
	nop                                              ; $56df: $00
	add  b                                           ; $56e0: $80
	rst  $38                                         ; $56e1: $ff
	add  c                                           ; $56e2: $81
	nop                                              ; $56e3: $00
	add  b                                           ; $56e4: $80
	call z, $9c80                                    ; $56e5: $cc $80 $9c
	add  b                                           ; $56e8: $80
	ld   a, $82                                      ; $56e9: $3e $82
	rst  $38                                         ; $56eb: $ff
	nop                                              ; $56ec: $00
	nop                                              ; $56ed: $00

jr_01a_56ee:
	add  b                                           ; $56ee: $80
	rst  $38                                         ; $56ef: $ff
	add  c                                           ; $56f0: $81
	nop                                              ; $56f1: $00
	add  h                                           ; $56f2: $84
	rst  $38                                         ; $56f3: $ff
	add  b                                           ; $56f4: $80
	di                                               ; $56f5: $f3
	add  d                                           ; $56f6: $82

jr_01a_56f7:
	ld   sp, hl                                      ; $56f7: $f9
	add  d                                           ; $56f8: $82
	db   $fc                                         ; $56f9: $fc
	add  b                                           ; $56fa: $80
	sbc  h                                           ; $56fb: $9c
	add  b                                           ; $56fc: $80
	sbc  a                                           ; $56fd: $9f
	add  b                                           ; $56fe: $80
	rra                                              ; $56ff: $1f
	add  b                                           ; $5700: $80
	ccf                                              ; $5701: $3f
	add  b                                           ; $5702: $80
	rst  $38                                         ; $5703: $ff
	nop                                              ; $5704: $00
	nop                                              ; $5705: $00
	add  b                                           ; $5706: $80
	rst  $38                                         ; $5707: $ff
	add  c                                           ; $5708: $81
	nop                                              ; $5709: $00
	adc  l                                           ; $570a: $8d
	rst  $38                                         ; $570b: $ff
	nop                                              ; $570c: $00
	cp   a                                           ; $570d: $bf
	sub  [hl]                                        ; $570e: $96
	ld   e, a                                        ; $570f: $5f
	ld   [bc], a                                     ; $5710: $02
	ld   c, a                                        ; $5711: $4f
	ld   l, a                                        ; $5712: $6f
	ld   h, b                                        ; $5713: $60
	add  b                                           ; $5714: $80
	ccf                                              ; $5715: $3f
	nop                                              ; $5716: $00
	nop                                              ; $5717: $00
	add  b                                           ; $5718: $80
	add  b                                           ; $5719: $80
	adc  b                                           ; $571a: $88
	rst  $38                                         ; $571b: $ff
	nop                                              ; $571c: $00
	nop                                              ; $571d: $00
	add  b                                           ; $571e: $80

jr_01a_571f:
	rst  $38                                         ; $571f: $ff
	add  b                                           ; $5720: $80
	nop                                              ; $5721: $00
	nop                                              ; $5722: $00

jr_01a_5723:
	rst  $38                                         ; $5723: $ff
	rst  $38                                         ; $5724: $ff
	nop                                              ; $5725: $00
	sbc  h                                           ; $5726: $9c
	nop                                              ; $5727: $00
	ld   [hl], b                                     ; $5728: $70
	ld   [bc], a                                     ; $5729: $02
	adc  b                                           ; $572a: $88
	nop                                              ; $572b: $00
	add  b                                           ; $572c: $80

jr_01a_572d:
	rlca                                             ; $572d: $07
	inc  b                                           ; $572e: $04
	inc  b                                           ; $572f: $04
	rlca                                             ; $5730: $07
	ld   b, $07                                      ; $5731: $06 $07
	ld   [bc], a                                     ; $5733: $02
	add  a                                           ; $5734: $87
	nop                                              ; $5735: $00
	add  b                                           ; $5736: $80
	rst  $38                                         ; $5737: $ff
	inc  b                                           ; $5738: $04
	ld   bc, $03ff                                   ; $5739: $01 $ff $03
	rst  $38                                         ; $573c: $ff
	ld   [bc], a                                     ; $573d: $02
	add  a                                           ; $573e: $87
	nop                                              ; $573f: $00
	add  b                                           ; $5740: $80
	rst  $38                                         ; $5741: $ff
	inc  b                                           ; $5742: $04
	nop                                              ; $5743: $00
	rst  $38                                         ; $5744: $ff

jr_01a_5745:
	nop                                              ; $5745: $00
	rst  $38                                         ; $5746: $ff
	dec  b                                           ; $5747: $05
	adc  l                                           ; $5748: $8d
	rlca                                             ; $5749: $07
	nop                                              ; $574a: $00
	ld   e, b                                        ; $574b: $58
	add  e                                           ; $574c: $83
	ld   a, [hl]                                     ; $574d: $7e
	ld   b, $de                                      ; $574e: $06 $de
	cp   $16                                         ; $5750: $fe $16
	cp   $10                                         ; $5752: $fe $10
	db   $fc                                         ; $5754: $fc
	ld   d, b                                        ; $5755: $50
	add  c                                           ; $5756: $81
	ld   [hl], b                                     ; $5757: $70
	nop                                              ; $5758: $00
	jr   nz, jr_01a_56ee                             ; $5759: $20 $93

	nop                                              ; $575b: $00
	add  d                                           ; $575c: $82
	jr   nz, jr_01a_56df                             ; $575d: $20 $80

	db   $fc                                         ; $575f: $fc
	add  d                                           ; $5760: $82
	inc  h                                           ; $5761: $24
	add  [hl]                                        ; $5762: $86
	nop                                              ; $5763: $00
	add  b                                           ; $5764: $80
	jp   nz, $2280                                   ; $5765: $c2 $80 $22

	add  d                                           ; $5768: $82
	ld   [bc], a                                     ; $5769: $02
	add  h                                           ; $576a: $84
	nop                                              ; $576b: $00
	add  d                                           ; $576c: $82
	ld   [$fe80], sp                                 ; $576d: $08 $80 $fe
	add  d                                           ; $5770: $82
	ld   [$0086], sp                                 ; $5771: $08 $86 $00
	add  b                                           ; $5774: $80
	jr   c, jr_01a_56f7                              ; $5775: $38 $80

	ld   d, h                                        ; $5777: $54
	add  d                                           ; $5778: $82
	sub  d                                           ; $5779: $92
	add  b                                           ; $577a: $80
	nop                                              ; $577b: $00
	add  b                                           ; $577c: $80
	ld   [$be80], sp                                 ; $577d: $08 $80 $be
	add  b                                           ; $5780: $80
	ld   h, d                                        ; $5781: $62
	add  b                                           ; $5782: $80
	ld   a, $80                                      ; $5783: $3e $80
	adc  b                                           ; $5785: $88
	add  b                                           ; $5786: $80
	ld   a, [hl]                                     ; $5787: $7e
	add  b                                           ; $5788: $80
	ld   a, [hl+]                                    ; $5789: $2a
	add  b                                           ; $578a: $80
	nop                                              ; $578b: $00
	add  b                                           ; $578c: $80
	ld   b, b                                        ; $578d: $40
	add  b                                           ; $578e: $80
	ld   a, [hl]                                     ; $578f: $7e
	add  b                                           ; $5790: $80
	cp   h                                           ; $5791: $bc
	add  b                                           ; $5792: $80
	ld   a, [hl]                                     ; $5793: $7e
	add  b                                           ; $5794: $80
	inc  a                                           ; $5795: $3c
	add  b                                           ; $5796: $80
	ld   a, [hl]                                     ; $5797: $7e
	add  b                                           ; $5798: $80
	inc  b                                           ; $5799: $04
	add  h                                           ; $579a: $84
	nop                                              ; $579b: $00
	add  d                                           ; $579c: $82
	jr   nz, jr_01a_571f                             ; $579d: $20 $80

	cp   $80                                         ; $579f: $fe $80
	jr   nz, jr_01a_5723                             ; $57a1: $20 $80

	db   $ec                                         ; $57a3: $ec
	add  h                                           ; $57a4: $84
	nop                                              ; $57a5: $00
	add  d                                           ; $57a6: $82
	inc  h                                           ; $57a7: $24
	add  b                                           ; $57a8: $80
	cp   $80                                         ; $57a9: $fe $80
	jr   nz, jr_01a_572d                             ; $57ab: $20 $80

	inc  a                                           ; $57ad: $3c
	add  d                                           ; $57ae: $82
	nop                                              ; $57af: $00
	add  b                                           ; $57b0: $80
	inc  e                                           ; $57b1: $1c
	add  b                                           ; $57b2: $80

jr_01a_57b3:
	ld   [hl], b                                     ; $57b3: $70
	add  b                                           ; $57b4: $80
	db   $10                                         ; $57b5: $10
	add  b                                           ; $57b6: $80
	ld   a, h                                        ; $57b7: $7c
	add  d                                           ; $57b8: $82
	db   $10                                         ; $57b9: $10
	add  b                                           ; $57ba: $80
	nop                                              ; $57bb: $00
	add  d                                           ; $57bc: $82
	db   $10                                         ; $57bd: $10
	add  b                                           ; $57be: $80
	cp   $80                                         ; $57bf: $fe $80
	db   $10                                         ; $57c1: $10
	add  d                                           ; $57c2: $82
	jr   c, jr_01a_5745                              ; $57c3: $38 $80

	ld   d, h                                        ; $57c5: $54
	add  [hl]                                        ; $57c6: $86
	nop                                              ; $57c7: $00
	add  b                                           ; $57c8: $80
	sbc  [hl]                                        ; $57c9: $9e
	add  b                                           ; $57ca: $80
	add  d                                           ; $57cb: $82
	add  d                                           ; $57cc: $82
	add  b                                           ; $57cd: $80
	add  h                                           ; $57ce: $84

jr_01a_57cf:
	nop                                              ; $57cf: $00
	adc  b                                           ; $57d0: $88
	ld   b, b                                        ; $57d1: $40
	add  [hl]                                        ; $57d2: $86
	nop                                              ; $57d3: $00
	add  b                                           ; $57d4: $80

jr_01a_57d5:
	cp   $80                                         ; $57d5: $fe $80
	ld   [$1080], sp                                 ; $57d7: $08 $80 $10
	add  b                                           ; $57da: $80
	jr   nz, jr_01a_57dd                             ; $57db: $20 $00

jr_01a_57dd:
	dec  b                                           ; $57dd: $05
	add  a                                           ; $57de: $87
	rlca                                             ; $57df: $07
	ld   [$0705], sp                                 ; $57e0: $08 $05 $07
	inc  b                                           ; $57e3: $04

jr_01a_57e4:
	rlca                                             ; $57e4: $07
	ld   b, $07                                      ; $57e5: $06 $07
	ld   [hl], d                                     ; $57e7: $72
	ld   [hl], b                                     ; $57e8: $70
	adc  b                                           ; $57e9: $88
	add  e                                           ; $57ea: $83

jr_01a_57eb:
	ld   hl, sp+$01                                  ; $57eb: $f8 $01
	jr   nz, jr_01a_585f                             ; $57ed: $20 $70

	add  b                                           ; $57ef: $80
	ldh  a, [$03]                                    ; $57f0: $f0 $03
	jr   nc, jr_01a_57e4                             ; $57f2: $30 $f0

	db   $10                                         ; $57f4: $10
	ldh  a, [$82]                                    ; $57f5: $f0 $82
	inc  h                                           ; $57f7: $24
	add  d                                           ; $57f8: $82
	ld   b, h                                        ; $57f9: $44
	add  b                                           ; $57fa: $80
	adc  b                                           ; $57fb: $88
	add  h                                           ; $57fc: $84
	nop                                              ; $57fd: $00
	add  b                                           ; $57fe: $80
	ld   [bc], a                                     ; $57ff: $02
	add  d                                           ; $5800: $82
	inc  b                                           ; $5801: $04
	add  b                                           ; $5802: $80
	ld   [$3080], sp                                 ; $5803: $08 $80 $30
	add  h                                           ; $5806: $84
	nop                                              ; $5807: $00
	add  d                                           ; $5808: $82

jr_01a_5809:
	ld   [$1082], sp                                 ; $5809: $08 $82 $10
	add  b                                           ; $580c: $80
	ld   h, b                                        ; $580d: $60
	add  h                                           ; $580e: $84
	nop                                              ; $580f: $00
	add  h                                           ; $5810: $84
	sub  d                                           ; $5811: $92
	add  b                                           ; $5812: $80
	and  d                                           ; $5813: $a2
	add  b                                           ; $5814: $80
	ld   h, h                                        ; $5815: $64
	add  h                                           ; $5816: $84
	nop                                              ; $5817: $00
	add  b                                           ; $5818: $80
	ld   a, [hl]                                     ; $5819: $7e
	add  b                                           ; $581a: $80
	ld   l, d                                        ; $581b: $6a
	add  b                                           ; $581c: $80
	cp   [hl]                                        ; $581d: $be
	add  b                                           ; $581e: $80
	sub  h                                           ; $581f: $94
	add  b                                           ; $5820: $80
	and  d                                           ; $5821: $a2
	add  h                                           ; $5822: $84
	nop                                              ; $5823: $00
	add  b                                           ; $5824: $80
	ld   a, [hl]                                     ; $5825: $7e
	add  b                                           ; $5826: $80
	call nc, $3e80                                   ; $5827: $d4 $80 $3e
	add  b                                           ; $582a: $80
	call nz, $0480                                   ; $582b: $c4 $80 $04
	add  h                                           ; $582e: $84
	nop                                              ; $582f: $00
	add  b                                           ; $5830: $80

jr_01a_5831:
	jr   nc, jr_01a_57b3                             ; $5831: $30 $80

	ld   d, b                                        ; $5833: $50
	add  b                                           ; $5834: $80
	sub  b                                           ; $5835: $90
	add  b                                           ; $5836: $80
	add  b                                           ; $5837: $80
	add  b                                           ; $5838: $80
	ld   a, [hl]                                     ; $5839: $7e
	add  h                                           ; $583a: $84

jr_01a_583b:
	nop                                              ; $583b: $00
	add  b                                           ; $583c: $80
	ld   h, d                                        ; $583d: $62
	add  h                                           ; $583e: $84
	and  d                                           ; $583f: $a2
	add  b                                           ; $5840: $80

jr_01a_5841:
	ld   h, h                                        ; $5841: $64
	add  h                                           ; $5842: $84
	nop                                              ; $5843: $00
	add  b                                           ; $5844: $80
	cp   $84                                         ; $5845: $fe $84
	db   $10                                         ; $5847: $10
	add  b                                           ; $5848: $80
	jr   nc, jr_01a_57cf                             ; $5849: $30 $84

	nop                                              ; $584b: $00
	add  b                                           ; $584c: $80
	ld   d, h                                        ; $584d: $54
	add  b                                           ; $584e: $80
	sub  d                                           ; $584f: $92
	add  b                                           ; $5850: $80
	jr   c, jr_01a_57d5                              ; $5851: $38 $82

	db   $10                                         ; $5853: $10
	add  h                                           ; $5854: $84
	nop                                              ; $5855: $00
	add  h                                           ; $5856: $84
	add  b                                           ; $5857: $80
	add  b                                           ; $5858: $80
	sub  b                                           ; $5859: $90
	add  b                                           ; $585a: $80
	ld   c, [hl]                                     ; $585b: $4e
	add  h                                           ; $585c: $84
	nop                                              ; $585d: $00
	add  d                                           ; $585e: $82

jr_01a_585f:
	ld   b, b                                        ; $585f: $40
	add  b                                           ; $5860: $80

jr_01a_5861:
	ld   b, d                                        ; $5861: $42
	add  b                                           ; $5862: $80
	inc  h                                           ; $5863: $24
	add  b                                           ; $5864: $80
	jr   jr_01a_57eb                                 ; $5865: $18 $84

	nop                                              ; $5867: $00
	add  h                                           ; $5868: $84
	jr   nz, jr_01a_57eb                             ; $5869: $20 $80

	db   $10                                         ; $586b: $10
	add  b                                           ; $586c: $80
	inc  c                                           ; $586d: $0c
	adc  h                                           ; $586e: $8c
	nop                                              ; $586f: $00
	add  b                                           ; $5870: $80
	ld   a, h                                        ; $5871: $7c
	add  d                                           ; $5872: $82
	ld   b, h                                        ; $5873: $44
	add  b                                           ; $5874: $80
	and  h                                           ; $5875: $a4
	add  h                                           ; $5876: $84
	nop                                              ; $5877: $00
	add  b                                           ; $5878: $80
	ld   [bc], a                                     ; $5879: $02
	add  b                                           ; $587a: $80

jr_01a_587b:
	inc  b                                           ; $587b: $04
	add  b                                           ; $587c: $80
	ld   [$1880], sp                                 ; $587d: $08 $80 $18
	add  b                                           ; $5880: $80
	jr   z, jr_01a_5809                              ; $5881: $28 $86

	nop                                              ; $5883: $00
	add  b                                           ; $5884: $80
	ld   [hl], b                                     ; $5885: $70
	add  b                                           ; $5886: $80
	inc  c                                           ; $5887: $0c
	add  b                                           ; $5888: $80

jr_01a_5889:
	nop                                              ; $5889: $00
	add  b                                           ; $588a: $80
	ld   [hl], b                                     ; $588b: $70
	add  d                                           ; $588c: $82
	nop                                              ; $588d: $00
	add  d                                           ; $588e: $82
	ld   a, [bc]                                     ; $588f: $0a
	add  b                                           ; $5890: $80
	ld   a, h                                        ; $5891: $7c
	add  d                                           ; $5892: $82
	ld   b, h                                        ; $5893: $44
	add  b                                           ; $5894: $80
	add  h                                           ; $5895: $84
	add  b                                           ; $5896: $80
	nop                                              ; $5897: $00
	add  b                                           ; $5898: $80
	db   $10                                         ; $5899: $10
	add  b                                           ; $589a: $80
	ld   a, h                                        ; $589b: $7c
	add  b                                           ; $589c: $80
	ld   b, h                                        ; $589d: $44
	add  b                                           ; $589e: $80
	ld   a, h                                        ; $589f: $7c
	add  b                                           ; $58a0: $80
	ld   b, h                                        ; $58a1: $44
	add  b                                           ; $58a2: $80

jr_01a_58a3:
	ld   a, h                                        ; $58a3: $7c
	add  b                                           ; $58a4: $80
	ld   b, b                                        ; $58a5: $40
	add  h                                           ; $58a6: $84
	nop                                              ; $58a7: $00
	add  b                                           ; $58a8: $80
	inc  b                                           ; $58a9: $04
	add  b                                           ; $58aa: $80
	ld   [$1080], sp                                 ; $58ab: $08 $80 $10
	add  b                                           ; $58ae: $80
	jr   nz, jr_01a_5831                             ; $58af: $20 $80

	ld   b, b                                        ; $58b1: $40
	add  h                                           ; $58b2: $84
	nop                                              ; $58b3: $00
	add  d                                           ; $58b4: $82
	jr   jr_01a_583b                                 ; $58b5: $18 $84

	inc  h                                           ; $58b7: $24
	adc  h                                           ; $58b8: $8c
	nop                                              ; $58b9: $00
	add  b                                           ; $58ba: $80
	jr   jr_01a_5841                                 ; $58bb: $18 $84

	nop                                              ; $58bd: $00
	add  b                                           ; $58be: $80
	ld   a, h                                        ; $58bf: $7c
	add  h                                           ; $58c0: $84

jr_01a_58c1:
	ld   b, d                                        ; $58c1: $42
	add  b                                           ; $58c2: $80
	ld   a, h                                        ; $58c3: $7c
	add  b                                           ; $58c4: $80
	nop                                              ; $58c5: $00
	add  b                                           ; $58c6: $80
	dec  b                                           ; $58c7: $05
	add  b                                           ; $58c8: $80
	dec  d                                           ; $58c9: $15
	add  b                                           ; $58ca: $80
	db   $10                                         ; $58cb: $10
	add  b                                           ; $58cc: $80
	cp   $82                                         ; $58cd: $fe $82
	db   $10                                         ; $58cf: $10
	add  b                                           ; $58d0: $80
	ld   d, h                                        ; $58d1: $54
	adc  [hl]                                        ; $58d2: $8e
	nop                                              ; $58d3: $00
	add  b                                           ; $58d4: $80
	inc  d                                           ; $58d5: $14
	add  d                                           ; $58d6: $82

jr_01a_58d7:
	ld   [$1080], sp                                 ; $58d7: $08 $80 $10
	add  b                                           ; $58da: $80
	jr   nz, jr_01a_5861                             ; $58db: $20 $84

	nop                                              ; $58dd: $00
	add  b                                           ; $58de: $80
	ret  z                                           ; $58df: $c8

	add  [hl]                                        ; $58e0: $86
	ld   [$0084], sp                                 ; $58e1: $08 $84 $00
	add  b                                           ; $58e4: $80
	inc  c                                           ; $58e5: $0c
	add  d                                           ; $58e6: $82
	nop                                              ; $58e7: $00
	add  b                                           ; $58e8: $80
	ld   [hl], b                                     ; $58e9: $70
	add  b                                           ; $58ea: $80
	inc  c                                           ; $58eb: $0c
	add  h                                           ; $58ec: $84
	nop                                              ; $58ed: $00
	add  b                                           ; $58ee: $80
	inc  b                                           ; $58ef: $04
	add  d                                           ; $58f0: $82
	ld   [$1080], sp                                 ; $58f1: $08 $80 $10
	add  b                                           ; $58f4: $80
	jr   nz, jr_01a_587b                             ; $58f5: $20 $84

	nop                                              ; $58f7: $00
	add  b                                           ; $58f8: $80
	ld   d, d                                        ; $58f9: $52
	add  b                                           ; $58fa: $80
	ld   d, h                                        ; $58fb: $54
	add  b                                           ; $58fc: $80
	ld   c, b                                        ; $58fd: $48
	add  b                                           ; $58fe: $80
	ld   e, b                                        ; $58ff: $58
	add  b                                           ; $5900: $80
	ld   h, [hl]                                     ; $5901: $66
	adc  d                                           ; $5902: $8a
	nop                                              ; $5903: $00
	add  b                                           ; $5904: $80
	ld   b, b                                        ; $5905: $40
	add  b                                           ; $5906: $80
	jr   nz, jr_01a_5889                             ; $5907: $20 $80

	db   $10                                         ; $5909: $10
	add  d                                           ; $590a: $82
	nop                                              ; $590b: $00
	add  b                                           ; $590c: $80
	inc  h                                           ; $590d: $24
	add  b                                           ; $590e: $80
	ld   a, [hl]                                     ; $590f: $7e
	add  h                                           ; $5910: $84
	ld   b, d                                        ; $5911: $42
	add  h                                           ; $5912: $84
	nop                                              ; $5913: $00
	add  b                                           ; $5914: $80
	jr   jr_01a_58a3                                 ; $5915: $18 $8c

	nop                                              ; $5917: $00
	add  [hl]                                        ; $5918: $86
	ld   b, d                                        ; $5919: $42
	add  b                                           ; $591a: $80
	ld   a, h                                        ; $591b: $7c
	add  h                                           ; $591c: $84
	nop                                              ; $591d: $00
	add  b                                           ; $591e: $80
	ld   d, d                                        ; $591f: $52
	add  d                                           ; $5920: $82
	sub  d                                           ; $5921: $92
	add  d                                           ; $5922: $82
	db   $10                                         ; $5923: $10
	adc  b                                           ; $5924: $88
	nop                                              ; $5925: $00
	add  b                                           ; $5926: $80
	ld   e, a                                        ; $5927: $5f
	add  b                                           ; $5928: $80
	ld   d, l                                        ; $5929: $55
	add  b                                           ; $592a: $80
	push af                                          ; $592b: $f5
	add  b                                           ; $592c: $80
	ld   e, a                                        ; $592d: $5f
	add  d                                           ; $592e: $82
	ld   d, l                                        ; $592f: $55
	add  h                                           ; $5930: $84
	nop                                              ; $5931: $00
	add  b                                           ; $5932: $80
	add  h                                           ; $5933: $84
	add  b                                           ; $5934: $80
	ld   c, b                                        ; $5935: $48
	add  b                                           ; $5936: $80
	db   $10                                         ; $5937: $10
	add  b                                           ; $5938: $80
	cp   $80                                         ; $5939: $fe $80
	ld   [$0084], sp                                 ; $593b: $08 $84 $00
	add  b                                           ; $593e: $80
	jr   c, jr_01a_58c1                              ; $593f: $38 $80

	nop                                              ; $5941: $00
	add  b                                           ; $5942: $80
	ld   a, h                                        ; $5943: $7c
	add  b                                           ; $5944: $80
	add  d                                           ; $5945: $82
	add  b                                           ; $5946: $80
	ld   [bc], a                                     ; $5947: $02
	add  b                                           ; $5948: $80
	rst  $38                                         ; $5949: $ff
	add  d                                           ; $594a: $82
	ld   b, h                                        ; $594b: $44
	add  b                                           ; $594c: $80
	call nz, Call_01a_4480                           ; $594d: $c4 $80 $44
	add  h                                           ; $5950: $84
	nop                                              ; $5951: $00
	add  b                                           ; $5952: $80
	db   $10                                         ; $5953: $10
	add  h                                           ; $5954: $84
	jr   nz, jr_01a_58d7                             ; $5955: $20 $80

	inc  e                                           ; $5957: $1c
	add  h                                           ; $5958: $84
	nop                                              ; $5959: $00
	add  d                                           ; $595a: $82
	ld   [bc], a                                     ; $595b: $02
	add  b                                           ; $595c: $80
	inc  b                                           ; $595d: $04
	add  b                                           ; $595e: $80
	ld   [$1080], sp                                 ; $595f: $08 $80 $10
	adc  b                                           ; $5962: $88
	nop                                              ; $5963: $00
	add  b                                           ; $5964: $80
	ld   b, b                                        ; $5965: $40
	add  b                                           ; $5966: $80
	and  b                                           ; $5967: $a0
	add  b                                           ; $5968: $80
	ld   b, b                                        ; $5969: $40
	add  [hl]                                        ; $596a: $86
	nop                                              ; $596b: $00
	add  b                                           ; $596c: $80
	ld   bc, $0380                                   ; $596d: $01 $80 $03
	nop                                              ; $5970: $00
	rlca                                             ; $5971: $07
	add  c                                           ; $5972: $81
	dec  b                                           ; $5973: $05
	nop                                              ; $5974: $00
	dec  c                                           ; $5975: $0d
	add  e                                           ; $5976: $83
	add  hl, bc                                      ; $5977: $09
	ld   bc, $7e78                                   ; $5978: $01 $78 $7e
	add  b                                           ; $597b: $80
	rst  $38                                         ; $597c: $ff
	dec  c                                           ; $597d: $0d
	ld   bc, $82ff                                   ; $597e: $01 $ff $82
	rst  $38                                         ; $5981: $ff
	db   $fd                                         ; $5982: $fd
	jp   $ffc1                                       ; $5983: $c3 $c1 $ff


	add  d                                           ; $5986: $82
	rst  $38                                         ; $5987: $ff
	add  d                                           ; $5988: $82
	rst  $38                                         ; $5989: $ff
	add  e                                           ; $598a: $83
	nop                                              ; $598b: $00
	add  b                                           ; $598c: $80
	add  b                                           ; $598d: $80
	ld   [bc], a                                     ; $598e: $02
	ret  nz                                          ; $598f: $c0

	ld   b, b                                        ; $5990: $40
	ld   h, b                                        ; $5991: $60
	add  c                                           ; $5992: $81
	and  b                                           ; $5993: $a0
	nop                                              ; $5994: $00
	or   b                                           ; $5995: $b0
	add  b                                           ; $5996: $80
	sub  b                                           ; $5997: $90
	add  b                                           ; $5998: $80
	db   $10                                         ; $5999: $10
	ld   bc, $6f90                                   ; $599a: $01 $90 $6f
	add  d                                           ; $599d: $82
	add  hl, bc                                      ; $599e: $09
	add  b                                           ; $599f: $80
	dec  c                                           ; $59a0: $0d
	add  b                                           ; $59a1: $80
	ld   b, $0d                                      ; $59a2: $06 $0d
	inc  bc                                          ; $59a4: $03
	dec  bc                                          ; $59a5: $0b
	ld   bc, $0005                                   ; $59a6: $01 $05 $00
	inc  bc                                          ; $59a9: $03
	nop                                              ; $59aa: $00
	ld   a, [hl]                                     ; $59ab: $7e
	jp   $ffc1                                       ; $59ac: $c3 $c1 $ff


	add  d                                           ; $59af: $82
	rst  $38                                         ; $59b0: $ff
	ld   bc, $fe80                                   ; $59b1: $01 $80 $fe
	add  b                                           ; $59b4: $80
	nop                                              ; $59b5: $00
	add  b                                           ; $59b6: $80
	rst  $38                                         ; $59b7: $ff
	add  b                                           ; $59b8: $80
	ld   a, [hl]                                     ; $59b9: $7e
	add  b                                           ; $59ba: $80
	nop                                              ; $59bb: $00
	inc  bc                                          ; $59bc: $03
	rst  $38                                         ; $59bd: $ff
	nop                                              ; $59be: $00
	rst  $38                                         ; $59bf: $ff
	nop                                              ; $59c0: $00
	add  c                                           ; $59c1: $81
	rst  $38                                         ; $59c2: $ff
	inc  bc                                          ; $59c3: $03
	add  b                                           ; $59c4: $80
	rst  $38                                         ; $59c5: $ff
	ldh  [rIE], a                                    ; $59c6: $e0 $ff
	add  d                                           ; $59c8: $82
	ldh  a, [rDIV]                                   ; $59c9: $f0 $04
	sbc  a                                           ; $59cb: $9f
	rst  $38                                         ; $59cc: $ff
	nop                                              ; $59cd: $00
	rst  $38                                         ; $59ce: $ff
	nop                                              ; $59cf: $00
	add  c                                           ; $59d0: $81
	rst  $38                                         ; $59d1: $ff
	inc  bc                                          ; $59d2: $03
	nop                                              ; $59d3: $00
	rst  $38                                         ; $59d4: $ff
	nop                                              ; $59d5: $00
	rst  $38                                         ; $59d6: $ff
	add  b                                           ; $59d7: $80
	nop                                              ; $59d8: $00
	add  b                                           ; $59d9: $80
	sbc  h                                           ; $59da: $9c
	add  b                                           ; $59db: $80
	rst  $38                                         ; $59dc: $ff
	ld   [bc], a                                     ; $59dd: $02
	nop                                              ; $59de: $00
	rst  $38                                         ; $59df: $ff
	nop                                              ; $59e0: $00
	add  c                                           ; $59e1: $81
	rst  $38                                         ; $59e2: $ff
	inc  bc                                          ; $59e3: $03
	nop                                              ; $59e4: $00
	rst  $38                                         ; $59e5: $ff
	nop                                              ; $59e6: $00
	rst  $38                                         ; $59e7: $ff
	add  b                                           ; $59e8: $80
	nop                                              ; $59e9: $00
	add  b                                           ; $59ea: $80
	ld   [de], a                                     ; $59eb: $12
	add  b                                           ; $59ec: $80
	rst  $38                                         ; $59ed: $ff
	ld   [bc], a                                     ; $59ee: $02
	nop                                              ; $59ef: $00
	rst  $38                                         ; $59f0: $ff
	nop                                              ; $59f1: $00
	add  c                                           ; $59f2: $81
	rst  $38                                         ; $59f3: $ff

jr_01a_59f4:
	inc  bc                                          ; $59f4: $03
	nop                                              ; $59f5: $00
	rst  $38                                         ; $59f6: $ff
	nop                                              ; $59f7: $00
	rst  $38                                         ; $59f8: $ff
	add  b                                           ; $59f9: $80
	nop                                              ; $59fa: $00
	add  b                                           ; $59fb: $80
	ld   b, $80                                      ; $59fc: $06 $80
	rst  $38                                         ; $59fe: $ff
	ld   [bc], a                                     ; $59ff: $02
	nop                                              ; $5a00: $00
	rst  $38                                         ; $5a01: $ff
	nop                                              ; $5a02: $00
	add  c                                           ; $5a03: $81
	rst  $38                                         ; $5a04: $ff
	inc  bc                                          ; $5a05: $03
	nop                                              ; $5a06: $00
	rst  $38                                         ; $5a07: $ff
	nop                                              ; $5a08: $00
	rst  $38                                         ; $5a09: $ff
	add  b                                           ; $5a0a: $80
	nop                                              ; $5a0b: $00
	add  b                                           ; $5a0c: $80
	ld   bc, $ff00                                   ; $5a0d: $01 $00 $ff
	add  e                                           ; $5a10: $83
	nop                                              ; $5a11: $00
	ld   b, $55                                      ; $5a12: $06 $55
	nop                                              ; $5a14: $00
	rst  $38                                         ; $5a15: $ff
	nop                                              ; $5a16: $00
	rst  $38                                         ; $5a17: $ff
	nop                                              ; $5a18: $00
	xor  d                                           ; $5a19: $aa
	add  c                                           ; $5a1a: $81
	nop                                              ; $5a1b: $00
	ld   bc, $f090                                   ; $5a1c: $01 $90 $f0
	add  b                                           ; $5a1f: $80
	di                                               ; $5a20: $f3
	add  h                                           ; $5a21: $84
	ldh  a, [$80]                                    ; $5a22: $f0 $80
	di                                               ; $5a24: $f3
	add  d                                           ; $5a25: $82
	ldh  a, [rSB]                                    ; $5a26: $f0 $01
	db   $f4                                         ; $5a28: $f4
	sub  h                                           ; $5a29: $94
	add  b                                           ; $5a2a: $80
	rst  $38                                         ; $5a2b: $ff
	add  b                                           ; $5a2c: $80
	push de                                          ; $5a2d: $d5
	add  b                                           ; $5a2e: $80
	rst  $30                                         ; $5a2f: $f7
	add  b                                           ; $5a30: $80
	adc  b                                           ; $5a31: $88
	add  b                                           ; $5a32: $80
	cp   $80                                         ; $5a33: $fe $80
	adc  b                                           ; $5a35: $88
	add  b                                           ; $5a36: $80
	sbc  h                                           ; $5a37: $9c
	add  d                                           ; $5a38: $82
	ld   [de], a                                     ; $5a39: $12
	add  b                                           ; $5a3a: $80
	rla                                              ; $5a3b: $17
	add  b                                           ; $5a3c: $80
	dec  h                                           ; $5a3d: $25
	add  b                                           ; $5a3e: $80
	ld   l, c                                        ; $5a3f: $69
	add  h                                           ; $5a40: $84
	ld   hl, $0180                                   ; $5a41: $21 $80 $01
	add  b                                           ; $5a44: $80
	rra                                              ; $5a45: $1f
	add  b                                           ; $5a46: $80
	call nz, $0480                                   ; $5a47: $c4 $80 $04
	add  b                                           ; $5a4a: $80
	rlca                                             ; $5a4b: $07
	add  b                                           ; $5a4c: $80
	call nz, $0880                                   ; $5a4d: $c4 $80 $08
	add  b                                           ; $5a50: $80
	ret  z                                           ; $5a51: $c8

	add  b                                           ; $5a52: $80
	add  hl, de                                      ; $5a53: $19
	add  b                                           ; $5a54: $80
	rst  ToBoot                                         ; $5a55: $c7
	add  b                                           ; $5a56: $80
	ld   bc, $1980                                   ; $5a57: $01 $80 $19
	add  b                                           ; $5a5a: $80
	add  a                                           ; $5a5b: $87
	add  b                                           ; $5a5c: $80
	add  c                                           ; $5a5d: $81
	add  b                                           ; $5a5e: $80
	adc  c                                           ; $5a5f: $89
	add  b                                           ; $5a60: $80
	adc  d                                           ; $5a61: $8a
	ld   bc, $0f09                                   ; $5a62: $01 $09 $0f
	add  b                                           ; $5a65: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a66: $cf
	add  d                                           ; $5a67: $82
	rrca                                             ; $5a68: $0f
	add  b                                           ; $5a69: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a6a: $cf
	add  h                                           ; $5a6b: $84
	rrca                                             ; $5a6c: $0f
	nop                                              ; $5a6d: $00
	or   $82                                         ; $5a6e: $f6 $82
	sub  b                                           ; $5a70: $90
	add  b                                           ; $5a71: $80
	jr   nc, jr_01a_59f4                             ; $5a72: $30 $80

	ld   h, b                                        ; $5a74: $60
	dec  b                                           ; $5a75: $05
	ret  nz                                          ; $5a76: $c0

	ret  nc                                          ; $5a77: $d0

	add  b                                           ; $5a78: $80
	and  b                                           ; $5a79: $a0
	nop                                              ; $5a7a: $00
	ret  nz                                          ; $5a7b: $c0

	add  c                                           ; $5a7c: $81
	nop                                              ; $5a7d: $00

jr_01a_5a7e:
	add  b                                           ; $5a7e: $80
	ld   bc, $0302                                   ; $5a7f: $01 $02 $03
	ld   [bc], a                                     ; $5a82: $02
	ld   b, $81                                      ; $5a83: $06 $81
	inc  b                                           ; $5a85: $04
	nop                                              ; $5a86: $00
	inc  c                                           ; $5a87: $0c
	add  d                                           ; $5a88: $82
	ld   [$0902], sp                                 ; $5a89: $08 $02 $09
	sub  h                                           ; $5a8c: $94
	ldh  a, [c]                                      ; $5a8d: $f2
	add  b                                           ; $5a8e: $80
	pop  af                                          ; $5a8f: $f1
	add  h                                           ; $5a90: $84
	ldh  a, [$80]                                    ; $5a91: $f0 $80
	rst  $38                                         ; $5a93: $ff
	inc  bc                                          ; $5a94: $03
	ldh  [rIE], a                                    ; $5a95: $e0 $ff
	add  b                                           ; $5a97: $80
	rst  $38                                         ; $5a98: $ff
	add  b                                           ; $5a99: $80
	xor  d                                           ; $5a9a: $aa
	add  b                                           ; $5a9b: $80
	ret                                              ; $5a9c: $c9


	add  b                                           ; $5a9d: $80
	adc  b                                           ; $5a9e: $88
	add  d                                           ; $5a9f: $82
	nop                                              ; $5aa0: $00
	add  b                                           ; $5aa1: $80
	rst  $38                                         ; $5aa2: $ff
	inc  bc                                          ; $5aa3: $03
	nop                                              ; $5aa4: $00
	rst  $38                                         ; $5aa5: $ff
	nop                                              ; $5aa6: $00
	rst  $38                                         ; $5aa7: $ff

jr_01a_5aa8:
	add  h                                           ; $5aa8: $84
	ld   hl, $0082                                   ; $5aa9: $21 $82 $00
	add  b                                           ; $5aac: $80
	rst  $38                                         ; $5aad: $ff
	inc  bc                                          ; $5aae: $03
	nop                                              ; $5aaf: $00
	rst  $38                                         ; $5ab0: $ff
	nop                                              ; $5ab1: $00
	rst  $38                                         ; $5ab2: $ff
	add  d                                           ; $5ab3: $82
	db   $10                                         ; $5ab4: $10
	add  b                                           ; $5ab5: $80
	inc  bc                                          ; $5ab6: $03
	add  d                                           ; $5ab7: $82
	nop                                              ; $5ab8: $00
	add  b                                           ; $5ab9: $80
	rst  $38                                         ; $5aba: $ff
	inc  bc                                          ; $5abb: $03
	nop                                              ; $5abc: $00
	rst  $38                                         ; $5abd: $ff
	nop                                              ; $5abe: $00
	rst  $38                                         ; $5abf: $ff
	add  b                                           ; $5ac0: $80
	sub  d                                           ; $5ac1: $92
	add  b                                           ; $5ac2: $80
	sub  a                                           ; $5ac3: $97
	add  b                                           ; $5ac4: $80
	sub  h                                           ; $5ac5: $94
	add  d                                           ; $5ac6: $82
	nop                                              ; $5ac7: $00
	add  b                                           ; $5ac8: $80
	rst  $38                                         ; $5ac9: $ff
	dec  b                                           ; $5aca: $05
	nop                                              ; $5acb: $00
	rst  $38                                         ; $5acc: $ff
	nop                                              ; $5acd: $00
	rst  $38                                         ; $5ace: $ff
	adc  c                                           ; $5acf: $89
	adc  a                                           ; $5ad0: $8f
	add  b                                           ; $5ad1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ad2: $cf
	add  b                                           ; $5ad3: $80
	ld   c, a                                        ; $5ad4: $4f
	add  d                                           ; $5ad5: $82
	rrca                                             ; $5ad6: $0f
	add  b                                           ; $5ad7: $80
	rst  $38                                         ; $5ad8: $ff
	inc  bc                                          ; $5ad9: $03
	rlca                                             ; $5ada: $07
	rst  $38                                         ; $5adb: $ff
	ld   bc, $80ff                                   ; $5adc: $01 $ff $80
	ld   a, [hl]                                     ; $5adf: $7e
	rrca                                             ; $5ae0: $0f
	rst  $38                                         ; $5ae1: $ff
	sbc  c                                           ; $5ae2: $99
	add  c                                           ; $5ae3: $81
	inc  a                                           ; $5ae4: $3c
	jr   jr_01a_5b65                                 ; $5ae5: $18 $7e

	ld   h, [hl]                                     ; $5ae7: $66
	ld   a, [hl]                                     ; $5ae8: $7e
	inc  a                                           ; $5ae9: $3c
	rst  $38                                         ; $5aea: $ff
	db   $db                                         ; $5aeb: $db
	rst  $20                                         ; $5aec: $e7
	ld   h, [hl]                                     ; $5aed: $66
	rst  $38                                         ; $5aee: $ff
	jp   $8000                                       ; $5aef: $c3 $00 $80


	add  b                                           ; $5af2: $80
	ld   [bc], a                                     ; $5af3: $02
	ret  nz                                          ; $5af4: $c0

	ld   b, b                                        ; $5af5: $40
	ld   h, b                                        ; $5af6: $60
	add  c                                           ; $5af7: $81
	jr   nz, jr_01a_5afa                             ; $5af8: $20 $00

jr_01a_5afa:
	jr   nc, jr_01a_5a7e                             ; $5afa: $30 $82

	db   $10                                         ; $5afc: $10
	ld   bc, $6090                                   ; $5afd: $01 $90 $60
	add  e                                           ; $5b00: $83
	nop                                              ; $5b01: $00
	add  d                                           ; $5b02: $82
	ld   [$7f80], sp                                 ; $5b03: $08 $80 $7f
	add  b                                           ; $5b06: $80
	ld   [$3880], sp                                 ; $5b07: $08 $80 $38
	adc  d                                           ; $5b0a: $8a
	nop                                              ; $5b0b: $00
	add  b                                           ; $5b0c: $80
	ld   bc, $0302                                   ; $5b0d: $01 $02 $03
	ld   [bc], a                                     ; $5b10: $02
	ld   bc, $0087                                   ; $5b11: $01 $87 $00
	add  c                                           ; $5b14: $81
	rst  $38                                         ; $5b15: $ff
	add  b                                           ; $5b16: $80
	nop                                              ; $5b17: $00
	nop                                              ; $5b18: $00
	rst  $38                                         ; $5b19: $ff
	adc  b                                           ; $5b1a: $88
	nop                                              ; $5b1b: $00
	add  c                                           ; $5b1c: $81
	rst  $38                                         ; $5b1d: $ff
	add  b                                           ; $5b1e: $80
	nop                                              ; $5b1f: $00
	ld   bc, $b601                                   ; $5b20: $01 $01 $b6
	add  c                                           ; $5b23: $81
	ld   c, b                                        ; $5b24: $48
	add  b                                           ; $5b25: $80
	jr   c, jr_01a_5aa8                              ; $5b26: $38 $80

	ld   [$1080], sp                                 ; $5b28: $08 $80 $10
	add  h                                           ; $5b2b: $84
	nop                                              ; $5b2c: $00
	add  b                                           ; $5b2d: $80
	ld   a, [hl]                                     ; $5b2e: $7e
	adc  h                                           ; $5b2f: $8c
	nop                                              ; $5b30: $00
	add  b                                           ; $5b31: $80
	ld   h, h                                        ; $5b32: $64
	add  b                                           ; $5b33: $80
	inc  [hl]                                        ; $5b34: $34
	add  b                                           ; $5b35: $80
	ld   b, h                                        ; $5b36: $44
	add  b                                           ; $5b37: $80
	ld   b, [hl]                                     ; $5b38: $46
	add  b                                           ; $5b39: $80
	add  [hl]                                        ; $5b3a: $86
	add  h                                           ; $5b3b: $84
	nop                                              ; $5b3c: $00
	nop                                              ; $5b3d: $00
	rrca                                             ; $5b3e: $0f
	add  d                                           ; $5b3f: $82
	add  hl, bc                                      ; $5b40: $09
	add  b                                           ; $5b41: $80
	dec  c                                           ; $5b42: $0d
	add  b                                           ; $5b43: $80
	ld   b, $06                                      ; $5b44: $06 $06
	inc  bc                                          ; $5b46: $03
	dec  bc                                          ; $5b47: $0b
	ld   bc, $0005                                   ; $5b48: $01 $05 $00
	inc  bc                                          ; $5b4b: $03
	nop                                              ; $5b4c: $00
	add  b                                           ; $5b4d: $80
	ld   c, d                                        ; $5b4e: $4a
	add  d                                           ; $5b4f: $82
	ld   c, b                                        ; $5b50: $48
	add  b                                           ; $5b51: $80
	adc  b                                           ; $5b52: $88
	add  b                                           ; $5b53: $80
	db   $10                                         ; $5b54: $10
	add  h                                           ; $5b55: $84
	nop                                              ; $5b56: $00
	add  b                                           ; $5b57: $80
	ld   a, h                                        ; $5b58: $7c
	add  b                                           ; $5b59: $80
	db   $10                                         ; $5b5a: $10
	add  b                                           ; $5b5b: $80
	ld   a, h                                        ; $5b5c: $7c
	add  b                                           ; $5b5d: $80
	db   $10                                         ; $5b5e: $10
	add  b                                           ; $5b5f: $80
	cp   $84                                         ; $5b60: $fe $84
	nop                                              ; $5b62: $00
	nop                                              ; $5b63: $00
	rlca                                             ; $5b64: $07

jr_01a_5b65:
	adc  l                                           ; $5b65: $8d
	dec  b                                           ; $5b66: $05
	nop                                              ; $5b67: $00
	db   $fd                                         ; $5b68: $fd
	adc  a                                           ; $5b69: $8f
	rst  $38                                         ; $5b6a: $ff
	nop                                              ; $5b6b: $00
	ld   bc, $9f80                                   ; $5b6c: $01 $80 $9f
	add  b                                           ; $5b6f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b70: $cf
	add  b                                           ; $5b71: $80
	sbc  a                                           ; $5b72: $9f
	add  b                                           ; $5b73: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b74: $cf
	add  b                                           ; $5b75: $80
	sbc  a                                           ; $5b76: $9f
	inc  b                                           ; $5b77: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b78: $cf
	or   c                                           ; $5b79: $b1
	add  c                                           ; $5b7a: $81
	rlca                                             ; $5b7b: $07
	ld   sp, hl                                      ; $5b7c: $f9
	add  b                                           ; $5b7d: $80
	or   b                                           ; $5b7e: $b0
	add  b                                           ; $5b7f: $80
	add  b                                           ; $5b80: $80
	add  b                                           ; $5b81: $80
	add  c                                           ; $5b82: $81
	add  d                                           ; $5b83: $82
	add  e                                           ; $5b84: $83
	add  b                                           ; $5b85: $80
	add  c                                           ; $5b86: $81
	add  b                                           ; $5b87: $80
	rst  $38                                         ; $5b88: $ff
	ld   [bc], a                                     ; $5b89: $02
	nop                                              ; $5b8a: $00
	rst  $38                                         ; $5b8b: $ff
	add  c                                           ; $5b8c: $81
	add  b                                           ; $5b8d: $80
	rst  $38                                         ; $5b8e: $ff
	ld   bc, $42c3                                   ; $5b8f: $01 $c3 $42
	add  b                                           ; $5b92: $80
	jp   $8180                                       ; $5b93: $c3 $80 $81


	add  b                                           ; $5b96: $80
	rst  $38                                         ; $5b97: $ff
	add  b                                           ; $5b98: $80
	ld   a, [hl]                                     ; $5b99: $7e
	ld   bc, $0f00                                   ; $5b9a: $01 $00 $0f
	add  d                                           ; $5b9d: $82
	sub  b                                           ; $5b9e: $90
	add  b                                           ; $5b9f: $80
	or   b                                           ; $5ba0: $b0
	add  b                                           ; $5ba1: $80
	ld   h, b                                        ; $5ba2: $60
	ld   b, $c0                                      ; $5ba3: $06 $c0
	ret  nc                                          ; $5ba5: $d0

	add  b                                           ; $5ba6: $80
	and  b                                           ; $5ba7: $a0
	nop                                              ; $5ba8: $00
	ret  nz                                          ; $5ba9: $c0

	nop                                              ; $5baa: $00
	add  b                                           ; $5bab: $80
	add  h                                           ; $5bac: $84
	add  b                                           ; $5bad: $80
	inc  e                                           ; $5bae: $1c
	add  b                                           ; $5baf: $80
	inc  h                                           ; $5bb0: $24
	add  b                                           ; $5bb1: $80
	ld   h, $80                                      ; $5bb2: $26 $80
	inc  e                                           ; $5bb4: $1c
	add  h                                           ; $5bb5: $84
	nop                                              ; $5bb6: $00
	add  b                                           ; $5bb7: $80
	adc  b                                           ; $5bb8: $88
	add  d                                           ; $5bb9: $82
	inc  b                                           ; $5bba: $04
	add  b                                           ; $5bbb: $80
	ld   [$3080], sp                                 ; $5bbc: $08 $80 $30
	add  h                                           ; $5bbf: $84
	nop                                              ; $5bc0: $00
	add  b                                           ; $5bc1: $80
	ld   b, b                                        ; $5bc2: $40
	add  d                                           ; $5bc3: $82
	add  b                                           ; $5bc4: $80
	add  b                                           ; $5bc5: $80
	sub  b                                           ; $5bc6: $90
	add  b                                           ; $5bc7: $80
	adc  [hl]                                        ; $5bc8: $8e
	add  h                                           ; $5bc9: $84
	nop                                              ; $5bca: $00
	add  b                                           ; $5bcb: $80
	ld   b, d                                        ; $5bcc: $42
	add  h                                           ; $5bcd: $84
	ld   [bc], a                                     ; $5bce: $02
	add  b                                           ; $5bcf: $80
	inc  a                                           ; $5bd0: $3c
	add  h                                           ; $5bd1: $84
	nop                                              ; $5bd2: $00
	add  b                                           ; $5bd3: $80
	cp   a                                           ; $5bd4: $bf
	ld   bc, $dedf                                   ; $5bd5: $01 $df $de
	add  b                                           ; $5bd8: $80
	sbc  [hl]                                        ; $5bd9: $9e
	add  b                                           ; $5bda: $80
	xor  d                                           ; $5bdb: $aa

jr_01a_5bdc:
	add  b                                           ; $5bdc: $80
	ld   d, h                                        ; $5bdd: $54
	add  b                                           ; $5bde: $80
	sbc  [hl]                                        ; $5bdf: $9e
	add  b                                           ; $5be0: $80
	cp   [hl]                                        ; $5be1: $be
	ld   [bc], a                                     ; $5be2: $02
	sbc  $df                                         ; $5be3: $de $df
	nop                                              ; $5be5: $00
	add  b                                           ; $5be6: $80
	add  c                                           ; $5be7: $81
	add  b                                           ; $5be8: $80
	inc  a                                           ; $5be9: $3c
	add  [hl]                                        ; $5bea: $86
	ld   a, [hl]                                     ; $5beb: $7e
	add  b                                           ; $5bec: $80
	inc  a                                           ; $5bed: $3c
	inc  b                                           ; $5bee: $04
	add  c                                           ; $5bef: $81
	halt                                             ; $5bf0: $76
	rst  $30                                         ; $5bf1: $f7
	ei                                               ; $5bf2: $fb
	ld   a, e                                        ; $5bf3: $7b
	add  b                                           ; $5bf4: $80
	ld   [hl], e                                     ; $5bf5: $73
	add  b                                           ; $5bf6: $80
	ld   d, l                                        ; $5bf7: $55
	add  b                                           ; $5bf8: $80
	ld   a, [hl+]                                    ; $5bf9: $2a
	add  b                                           ; $5bfa: $80
	ld   [hl], e                                     ; $5bfb: $73
	add  b                                           ; $5bfc: $80
	ld   [hl], a                                     ; $5bfd: $77
	ld   bc, $fb7b                                   ; $5bfe: $01 $7b $fb
	add  b                                           ; $5c01: $80
	rst  JumpTable                                         ; $5c02: $df
	inc  bc                                          ; $5c03: $03
	jp   $bdff                                       ; $5c04: $c3 $ff $bd


	rst  $38                                         ; $5c07: $ff
	add  b                                           ; $5c08: $80
	ld   a, a                                        ; $5c09: $7f
	add  b                                           ; $5c0a: $80
	cp   $80                                         ; $5c0b: $fe $80
	rst  $38                                         ; $5c0d: $ff
	inc  bc                                          ; $5c0e: $03
	cp   l                                           ; $5c0f: $bd
	rst  $38                                         ; $5c10: $ff
	db   $d3                                         ; $5c11: $d3
	rst  $28                                         ; $5c12: $ef
	add  b                                           ; $5c13: $80
	ld   a, l                                        ; $5c14: $7d
	add  b                                           ; $5c15: $80
	cp   [hl]                                        ; $5c16: $be
	add  b                                           ; $5c17: $80
	inc  a                                           ; $5c18: $3c
	add  b                                           ; $5c19: $80
	ld   d, l                                        ; $5c1a: $55
	add  b                                           ; $5c1b: $80
	xor  d                                           ; $5c1c: $aa
	add  b                                           ; $5c1d: $80
	inc  a                                           ; $5c1e: $3c
	add  b                                           ; $5c1f: $80
	ld   a, l                                        ; $5c20: $7d
	add  b                                           ; $5c21: $80

jr_01a_5c22:
	cp   [hl]                                        ; $5c22: $be
	add  b                                           ; $5c23: $80
	rst  JumpTable                                         ; $5c24: $df
	add  b                                           ; $5c25: $80
	rst  $28                                         ; $5c26: $ef
	add  b                                           ; $5c27: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c28: $cf
	add  b                                           ; $5c29: $80
	ld   d, l                                        ; $5c2a: $55
	add  b                                           ; $5c2b: $80
	xor  d                                           ; $5c2c: $aa
	add  b                                           ; $5c2d: $80
	call $df80                                       ; $5c2e: $cd $80 $df
	add  b                                           ; $5c31: $80
	rst  $28                                         ; $5c32: $ef
	adc  [hl]                                        ; $5c33: $8e
	nop                                              ; $5c34: $00
	ld   [bc], a                                     ; $5c35: $02
	ld   a, a                                        ; $5c36: $7f
	add  c                                           ; $5c37: $81
	rst  $38                                         ; $5c38: $ff
	add  b                                           ; $5c39: $80
	sbc  a                                           ; $5c3a: $9f
	add  b                                           ; $5c3b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c3c: $cf
	add  b                                           ; $5c3d: $80
	sbc  a                                           ; $5c3e: $9f
	add  b                                           ; $5c3f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c40: $cf
	add  b                                           ; $5c41: $80
	sbc  a                                           ; $5c42: $9f
	ld   [bc], a                                     ; $5c43: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c44: $cf
	ld   sp, $8eff                                   ; $5c45: $31 $ff $8e
	nop                                              ; $5c48: $00
	add  h                                           ; $5c49: $84
	ld   b, h                                        ; $5c4a: $44
	add  d                                           ; $5c4b: $82
	add  d                                           ; $5c4c: $82
	adc  b                                           ; $5c4d: $88
	nop                                              ; $5c4e: $00
	add  d                                           ; $5c4f: $82
	ld   a, [bc]                                     ; $5c50: $0a
	add  [hl]                                        ; $5c51: $86

jr_01a_5c52:
	ld   b, h                                        ; $5c52: $44
	adc  h                                           ; $5c53: $8c
	nop                                              ; $5c54: $00
	add  b                                           ; $5c55: $80
	add  b                                           ; $5c56: $80
	add  b                                           ; $5c57: $80
	nop                                              ; $5c58: $00
	add  d                                           ; $5c59: $82
	jr   nz, jr_01a_5bdc                             ; $5c5a: $20 $80

	db   $fc                                         ; $5c5c: $fc
	add  h                                           ; $5c5d: $84
	inc  h                                           ; $5c5e: $24
	add  b                                           ; $5c5f: $80
	and  h                                           ; $5c60: $a4
	add  d                                           ; $5c61: $82
	nop                                              ; $5c62: $00
	add  b                                           ; $5c63: $80
	ld   a, [bc]                                     ; $5c64: $0a
	add  b                                           ; $5c65: $80
	ld   c, d                                        ; $5c66: $4a
	add  b                                           ; $5c67: $80
	ld   b, h                                        ; $5c68: $44
	add  b                                           ; $5c69: $80
	ldh  a, [c]                                      ; $5c6a: $f2
	add  d                                           ; $5c6b: $82
	ld   c, d                                        ; $5c6c: $4a
	add  b                                           ; $5c6d: $80
	nop                                              ; $5c6e: $00
	add  b                                           ; $5c6f: $80
	inc  e                                           ; $5c70: $1c
	add  b                                           ; $5c71: $80
	ld   [hl], b                                     ; $5c72: $70

jr_01a_5c73:
	add  b                                           ; $5c73: $80
	cp   $80                                         ; $5c74: $fe $80
	db   $10                                         ; $5c76: $10
	add  b                                           ; $5c77: $80
	ld   a, h                                        ; $5c78: $7c
	add  b                                           ; $5c79: $80
	ld   d, h                                        ; $5c7a: $54
	add  b                                           ; $5c7b: $80
	ld   a, h                                        ; $5c7c: $7c
	add  h                                           ; $5c7d: $84
	nop                                              ; $5c7e: $00
	add  b                                           ; $5c7f: $80
	ld   b, b                                        ; $5c80: $40
	add  b                                           ; $5c81: $80
	ld   b, h                                        ; $5c82: $44
	add  b                                           ; $5c83: $80
	ldh  a, [c]                                      ; $5c84: $f2
	add  b                                           ; $5c85: $80
	ld   b, b                                        ; $5c86: $40
	add  b                                           ; $5c87: $80
	add  h                                           ; $5c88: $84
	adc  h                                           ; $5c89: $8c
	nop                                              ; $5c8a: $00
	add  b                                           ; $5c8b: $80
	ld   [hl], b                                     ; $5c8c: $70
	add  h                                           ; $5c8d: $84
	nop                                              ; $5c8e: $00
	add  b                                           ; $5c8f: $80
	ld   b, b                                        ; $5c90: $40
	add  b                                           ; $5c91: $80
	ldh  a, [$80]                                    ; $5c92: $f0 $80
	ld   b, b                                        ; $5c94: $40
	add  b                                           ; $5c95: $80
	ld   e, [hl]                                     ; $5c96: $5e
	add  b                                           ; $5c97: $80
	ld   b, d                                        ; $5c98: $42
	add  h                                           ; $5c99: $84
	nop                                              ; $5c9a: $00
	add  b                                           ; $5c9b: $80
	inc  h                                           ; $5c9c: $24
	add  b                                           ; $5c9d: $80
	ld   [hl+], a                                    ; $5c9e: $22
	add  d                                           ; $5c9f: $82
	jr   nz, jr_01a_5c22                             ; $5ca0: $20 $80

	inc  a                                           ; $5ca2: $3c
	rst  $38                                         ; $5ca3: $ff
	nop                                              ; $5ca4: $00
	rst  $38                                         ; $5ca5: $ff
	nop                                              ; $5ca6: $00
	rst  $38                                         ; $5ca7: $ff
	nop                                              ; $5ca8: $00
	rst  $38                                         ; $5ca9: $ff
	nop                                              ; $5caa: $00
	rst  $38                                         ; $5cab: $ff
	nop                                              ; $5cac: $00
	rst  $38                                         ; $5cad: $ff
	nop                                              ; $5cae: $00
	rst  $38                                         ; $5caf: $ff
	nop                                              ; $5cb0: $00
	rst  $38                                         ; $5cb1: $ff
	nop                                              ; $5cb2: $00
	rst  $38                                         ; $5cb3: $ff
	nop                                              ; $5cb4: $00
	rst  $38                                         ; $5cb5: $ff
	nop                                              ; $5cb6: $00
	rst  $38                                         ; $5cb7: $ff
	nop                                              ; $5cb8: $00
	rst  $38                                         ; $5cb9: $ff
	nop                                              ; $5cba: $00
	rst  $38                                         ; $5cbb: $ff
	nop                                              ; $5cbc: $00
	rst  $38                                         ; $5cbd: $ff
	nop                                              ; $5cbe: $00
	rst  $38                                         ; $5cbf: $ff
	nop                                              ; $5cc0: $00
	rst  $28                                         ; $5cc1: $ef
	nop                                              ; $5cc2: $00
	add  $01                                         ; $5cc3: $c6 $01
	add  [hl]                                        ; $5cc5: $86
	nop                                              ; $5cc6: $00
	ld   [$0001], sp                                 ; $5cc7: $08 $01 $00
	inc  bc                                          ; $5cca: $03
	nop                                              ; $5ccb: $00
	ld   b, $01                                      ; $5ccc: $06 $01
	dec  c                                           ; $5cce: $0d
	nop                                              ; $5ccf: $00
	jr   jr_01a_5c52                                 ; $5cd0: $18 $80

	inc  b                                           ; $5cd2: $04
	ld   bc, $3707                                   ; $5cd3: $01 $07 $37
	add  c                                           ; $5cd6: $81
	rrca                                             ; $5cd7: $0f
	ld   [$1f7f], sp                                 ; $5cd8: $08 $7f $1f
	ld   [de], a                                     ; $5cdb: $12
	ld   e, $1c                                      ; $5cdc: $1e $1c
	ld   e, $fe                                      ; $5cde: $1e $fe
	dec  a                                           ; $5ce0: $3d
	add  d                                           ; $5ce1: $82
	add  a                                           ; $5ce2: $87
	nop                                              ; $5ce3: $00
	add  b                                           ; $5ce4: $80
	ld   bc, $0280                                   ; $5ce5: $01 $80 $02
	add  b                                           ; $5ce8: $80
	rlca                                             ; $5ce9: $07
	add  b                                           ; $5cea: $80
	dec  bc                                          ; $5ceb: $0b
	add  b                                           ; $5cec: $80
	ld   [$1082], sp                                 ; $5ced: $08 $82 $10
	add  h                                           ; $5cf0: $84
	jr   nz, jr_01a_5c73                             ; $5cf1: $20 $80

	ld   b, b                                        ; $5cf3: $40
	ld   [bc], a                                     ; $5cf4: $02
	ld   e, a                                        ; $5cf5: $5f
	dec  sp                                          ; $5cf6: $3b
	ld   e, e                                        ; $5cf7: $5b
	add  b                                           ; $5cf8: $80
	dec  de                                          ; $5cf9: $1b
	rlca                                             ; $5cfa: $07
	dec  e                                           ; $5cfb: $1d
	dec  a                                           ; $5cfc: $3d
	dec  b                                           ; $5cfd: $05
	dec  e                                           ; $5cfe: $1d
	ld   bc, $0007                                   ; $5cff: $01 $07 $00
	ld   bc, $00a5                                   ; $5d02: $01 $a5 $00
	add  hl, bc                                      ; $5d05: $09
	ld   e, $00                                      ; $5d06: $1e $00
	ld   h, e                                        ; $5d08: $63
	ld   e, $83                                      ; $5d09: $1e $83
	ld   a, a                                        ; $5d0b: $7f
	inc  e                                           ; $5d0c: $1c
	db   $fc                                         ; $5d0d: $fc
	ld   a, e                                        ; $5d0e: $7b
	ei                                               ; $5d0f: $fb
	add  b                                           ; $5d10: $80
	rst  $30                                         ; $5d11: $f7
	nop                                              ; $5d12: $00
	rst  $38                                         ; $5d13: $ff
	adc  l                                           ; $5d14: $8d
	nop                                              ; $5d15: $00
	nop                                              ; $5d16: $00
	db   $fc                                         ; $5d17: $fc
	add  c                                           ; $5d18: $81
	ei                                               ; $5d19: $fb
	nop                                              ; $5d1a: $00
	ld   hl, sp-$7e                                  ; $5d1b: $f8 $82
	ei                                               ; $5d1d: $fb
	add  b                                           ; $5d1e: $80
	ld   hl, sp+$0d                                  ; $5d1f: $f8 $0d
	ld   a, a                                        ; $5d21: $7f
	rst  $38                                         ; $5d22: $ff
	rra                                              ; $5d23: $1f
	ld   a, a                                        ; $5d24: $7f
	rlca                                             ; $5d25: $07
	rra                                              ; $5d26: $1f
	ld   bc, $0007                                   ; $5d27: $01 $07 $00
	rlca                                             ; $5d2a: $07
	nop                                              ; $5d2b: $00
	dec  c                                           ; $5d2c: $0d
	ld   b, $1e                                      ; $5d2d: $06 $1e
	adc  b                                           ; $5d2f: $88
	rrca                                             ; $5d30: $0f

jr_01a_5d31:
	ld   b, $0e                                      ; $5d31: $06 $0e
	ld   d, $06                                      ; $5d33: $16 $06
	rlca                                             ; $5d35: $07
	dec  b                                           ; $5d36: $05
	add  hl, bc                                      ; $5d37: $09
	ld   bc, $0380                                   ; $5d38: $01 $80 $03
	nop                                              ; $5d3b: $00
	rrca                                             ; $5d3c: $0f
	add  e                                           ; $5d3d: $83
	rlca                                             ; $5d3e: $07
	nop                                              ; $5d3f: $00
	rra                                              ; $5d40: $1f
	add  a                                           ; $5d41: $87
	rrca                                             ; $5d42: $0f
	add  c                                           ; $5d43: $81
	nop                                              ; $5d44: $00
	ld   bc, $1f0f                                   ; $5d45: $01 $0f $1f
	add  b                                           ; $5d48: $80
	rlca                                             ; $5d49: $07
	inc  b                                           ; $5d4a: $04
	nop                                              ; $5d4b: $00
	ld   [$0002], sp                                 ; $5d4c: $08 $02 $00
	ld   [bc], a                                     ; $5d4f: $02
	add  d                                           ; $5d50: $82
	nop                                              ; $5d51: $00
	nop                                              ; $5d52: $00
	dec  c                                           ; $5d53: $0d
	add  c                                           ; $5d54: $81
	dec  b                                           ; $5d55: $05
	nop                                              ; $5d56: $00
	rrca                                             ; $5d57: $0f
	adc  l                                           ; $5d58: $8d
	nop                                              ; $5d59: $00
	ld   bc, $0205                                   ; $5d5a: $01 $05 $02
	add  b                                           ; $5d5d: $80
	nop                                              ; $5d5e: $00
	add  b                                           ; $5d5f: $80
	ld   [bc], a                                     ; $5d60: $02
	dec  b                                           ; $5d61: $05
	add  d                                           ; $5d62: $82
	ld   [bc], a                                     ; $5d63: $02
	ldh  [c], a                                      ; $5d64: $e2
	add  d                                           ; $5d65: $82
	ld   a, [$80e2]                                  ; $5d66: $fa $e2 $80
	adc  d                                           ; $5d69: $8a
	add  b                                           ; $5d6a: $80
	ld   a, [hl-]                                    ; $5d6b: $3a
	add  d                                           ; $5d6c: $82
	rst  $38                                         ; $5d6d: $ff
	nop                                              ; $5d6e: $00
	nop                                              ; $5d6f: $00
	add  d                                           ; $5d70: $82

jr_01a_5d71:
	rst  $38                                         ; $5d71: $ff
	ld   bc, $0300                                   ; $5d72: $01 $00 $03
	add  e                                           ; $5d75: $83
	ei                                               ; $5d76: $fb
	nop                                              ; $5d77: $00
	rst  $38                                         ; $5d78: $ff

jr_01a_5d79:
	add  b                                           ; $5d79: $80
	rst  $30                                         ; $5d7a: $f7
	dec  c                                           ; $5d7b: $0d
	ld   [hl], a                                     ; $5d7c: $77
	rst  $38                                         ; $5d7d: $ff
	rrca                                             ; $5d7e: $0f
	ld   l, a                                        ; $5d7f: $6f
	rrca                                             ; $5d80: $0f
	cp   a                                           ; $5d81: $bf
	rra                                              ; $5d82: $1f
	ld   b, d                                        ; $5d83: $42
	add  e                                           ; $5d84: $83
	cp   l                                           ; $5d85: $bd
	cp   h                                           ; $5d86: $bc
	rst  $38                                         ; $5d87: $ff
	ld   a, a                                        ; $5d88: $7f
	rst  $38                                         ; $5d89: $ff
	adc  l                                           ; $5d8a: $8d
	nop                                              ; $5d8b: $00
	add  c                                           ; $5d8c: $81
	rst  $38                                         ; $5d8d: $ff
	add  b                                           ; $5d8e: $80
	rlca                                             ; $5d8f: $07
	inc  bc                                          ; $5d90: $03
	ret  c                                           ; $5d91: $d8

	ld   c, e                                        ; $5d92: $4b
	ret  c                                           ; $5d93: $d8

	ld   c, b                                        ; $5d94: $48
	add  c                                           ; $5d95: $81
	nop                                              ; $5d96: $00
	nop                                              ; $5d97: $00
	dec  h                                           ; $5d98: $25
	add  c                                           ; $5d99: $81
	or   b                                           ; $5d9a: $b0
	nop                                              ; $5d9b: $00
	ld   l, c                                        ; $5d9c: $69
	adc  c                                           ; $5d9d: $89
	nop                                              ; $5d9e: $00
	add  b                                           ; $5d9f: $80
	stop                                             ; $5da0: $10 $00
	nop                                              ; $5da2: $00
	add  d                                           ; $5da3: $82
	jr   nc, jr_01a_5d31                             ; $5da4: $30 $8b

	nop                                              ; $5da6: $00
	ld   [bc], a                                     ; $5da7: $02
	db   $fc                                         ; $5da8: $fc
	ld   [hl], a                                     ; $5da9: $77
	ld   a, e                                        ; $5daa: $7b
	add  c                                           ; $5dab: $81
	ld   l, a                                        ; $5dac: $6f
	nop                                              ; $5dad: $00
	ld   a, a                                        ; $5dae: $7f
	add  b                                           ; $5daf: $80
	ld   e, a                                        ; $5db0: $5f
	add  b                                           ; $5db1: $80
	rra                                              ; $5db2: $1f
	inc  b                                           ; $5db3: $04
	rst  JumpTable                                         ; $5db4: $df
	ret  nz                                          ; $5db5: $c0

	nop                                              ; $5db6: $00
	ccf                                              ; $5db7: $3f
	cp   a                                           ; $5db8: $bf
	add  c                                           ; $5db9: $81
	add  b                                           ; $5dba: $80
	dec  b                                           ; $5dbb: $05
	rst  JumpTable                                         ; $5dbc: $df
	rst  $10                                         ; $5dbd: $d7
	rst  JumpTable                                         ; $5dbe: $df
	ret  c                                           ; $5dbf: $d8

	rst  JumpTable                                         ; $5dc0: $df
	rst  $10                                         ; $5dc1: $d7
	add  c                                           ; $5dc2: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dc3: $cf
	nop                                              ; $5dc4: $00
	rst  $38                                         ; $5dc5: $ff
	add  c                                           ; $5dc6: $81
	add  a                                           ; $5dc7: $87
	ld   [bc], a                                     ; $5dc8: $02
	ld   d, b                                        ; $5dc9: $50
	rst  $10                                         ; $5dca: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dcb: $cf
	add  c                                           ; $5dcc: $81
	db   $db                                         ; $5dcd: $db
	nop                                              ; $5dce: $00
	rst  JumpTable                                         ; $5dcf: $df
	add  b                                           ; $5dd0: $80
	call $cc80                                       ; $5dd1: $cd $80 $cc
	dec  b                                           ; $5dd4: $05
	call $0031                                       ; $5dd5: $cd $31 $00
	cp   $06                                         ; $5dd8: $fe $06
	ld   hl, sp-$80                                  ; $5dda: $f8 $80
	nop                                              ; $5ddc: $00
	inc  b                                           ; $5ddd: $04
	db   $fd                                         ; $5dde: $fd
	pop  af                                          ; $5ddf: $f1
	db   $fd                                         ; $5de0: $fd
	dec  c                                           ; $5de1: $0d
	db   $dd                                         ; $5de2: $dd
	add  d                                           ; $5de3: $82
	reti                                             ; $5de4: $d9


	nop                                              ; $5de5: $00
	rst  $10                                         ; $5de6: $d7
	add  b                                           ; $5de7: $80
	ret  nc                                          ; $5de8: $d0

	ld   bc, $99b0                                   ; $5de9: $01 $b0 $99
	add  e                                           ; $5dec: $83
	jr   nz, @-$7a                                   ; $5ded: $20 $84

	jr   nc, jr_01a_5d71                             ; $5def: $30 $80

	nop                                              ; $5df1: $00
	add  b                                           ; $5df2: $80
	ld   hl, sp-$7c                                  ; $5df3: $f8 $84
	nop                                              ; $5df5: $00
	add  [hl]                                        ; $5df6: $86
	jr   nz, jr_01a_5d79                             ; $5df7: $20 $80

	ld   b, b                                        ; $5df9: $40
	adc  l                                           ; $5dfa: $8d
	nop                                              ; $5dfb: $00
	add  d                                           ; $5dfc: $82
	ldh  a, [$8c]                                    ; $5dfd: $f0 $8c
	nop                                              ; $5dff: $00
	add  c                                           ; $5e00: $81
	rst  $38                                         ; $5e01: $ff
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	add  d                                           ; $5e04: $82
	rst  $38                                         ; $5e05: $ff
	inc  bc                                          ; $5e06: $03
	nop                                              ; $5e07: $00
	ld   h, b                                        ; $5e08: $60
	rst  $28                                         ; $5e09: $ef
	ld   l, a                                        ; $5e0a: $6f
	add  c                                           ; $5e0b: $81

jr_01a_5e0c:
	rst  $28                                         ; $5e0c: $ef
	db   $10                                         ; $5e0d: $10
	rst  $38                                         ; $5e0e: $ff
	or   $f7                                         ; $5e0f: $f6 $f7
	ldh  a, [$fa]                                    ; $5e11: $f0 $fa
	ld   hl, sp+$78                                  ; $5e13: $f8 $78
	ld   hl, sp-$02                                  ; $5e15: $f8 $fe
	db   $fc                                         ; $5e17: $fc
	and  c                                           ; $5e18: $a1
	ldh  [$de], a                                    ; $5e19: $e0 $de
	sbc  [hl]                                        ; $5e1b: $9e
	rst  $38                                         ; $5e1c: $ff
	ld   a, a                                        ; $5e1d: $7f
	rst  $38                                         ; $5e1e: $ff
	adc  l                                           ; $5e1f: $8d
	nop                                              ; $5e20: $00
	nop                                              ; $5e21: $00
	rst  $38                                         ; $5e22: $ff
	add  b                                           ; $5e23: $80
	ld   a, a                                        ; $5e24: $7f
	add  b                                           ; $5e25: $80

jr_01a_5e26:
	ld   hl, sp+$01                                  ; $5e26: $f8 $01
	ld   bc, $8261                                   ; $5e28: $01 $61 $82
	dec  c                                           ; $5e2b: $0d
	dec  b                                           ; $5e2c: $05
	nop                                              ; $5e2d: $00
	ld   b, c                                        ; $5e2e: $41
	adc  h                                           ; $5e2f: $8c
	sbc  l                                           ; $5e30: $9d
	add  [hl]                                        ; $5e31: $86
	ld   c, c                                        ; $5e32: $49
	adc  l                                           ; $5e33: $8d
	nop                                              ; $5e34: $00
	db   $10                                         ; $5e35: $10
	ldh  [rP1], a                                    ; $5e36: $e0 $00
	jr   @-$1e                                       ; $5e38: $18 $e0

	ld   d, $f8                                      ; $5e3a: $16 $f8
	ld   b, c                                        ; $5e3c: $41
	ld   c, [hl]                                     ; $5e3d: $4e
	jr   nc, @+$39                                   ; $5e3e: $30 $37

	adc  $cf                                         ; $5e40: $ce $cf
	inc  [hl]                                        ; $5e42: $34
	scf                                              ; $5e43: $37
	ei                                               ; $5e44: $fb
	rst  $38                                         ; $5e45: $ff
	rst  $20                                         ; $5e46: $e7
	add  c                                           ; $5e47: $81
	rst  $28                                         ; $5e48: $ef
	nop                                              ; $5e49: $00
	rrca                                             ; $5e4a: $0f
	add  d                                           ; $5e4b: $82
	rst  $28                                         ; $5e4c: $ef
	rrca                                             ; $5e4d: $0f
	ld   c, $0f                                      ; $5e4e: $0e $0f
	ld   hl, sp-$02                                  ; $5e50: $f8 $fe
	ldh  [$f8], a                                    ; $5e52: $e0 $f8
	add  b                                           ; $5e54: $80
	ldh  [rP1], a                                    ; $5e55: $e0 $00
	add  b                                           ; $5e57: $80
	nop                                              ; $5e58: $00
	jr   nc, jr_01a_5e5b                             ; $5e59: $30 $00

jr_01a_5e5b:
	ld   e, b                                        ; $5e5b: $58
	jr   nc, @-$42                                   ; $5e5c: $30 $bc

	add  b                                           ; $5e5e: $80
	ld   a, b                                        ; $5e5f: $78
	add  d                                           ; $5e60: $82
	ld   hl, sp-$7f                                  ; $5e61: $f8 $81
	ld   a, b                                        ; $5e63: $78
	rlca                                             ; $5e64: $07
	ld   hl, sp-$48                                  ; $5e65: $f8 $b8
	or   h                                           ; $5e67: $b4
	or   b                                           ; $5e68: $b0
	ldh  a, [$d0]                                    ; $5e69: $f0 $d0
	ret  z                                           ; $5e6b: $c8

	ret  nz                                          ; $5e6c: $c0

	add  b                                           ; $5e6d: $80
	ldh  [rP1], a                                    ; $5e6e: $e0 $00
	ld   hl, sp-$7d                                  ; $5e70: $f8 $83
	ldh  a, [rP1]                                    ; $5e72: $f0 $00
	db   $fc                                         ; $5e74: $fc
	add  e                                           ; $5e75: $83
	ld   hl, sp-$80                                  ; $5e76: $f8 $80
	ld   a, b                                        ; $5e78: $78
	add  b                                           ; $5e79: $80
	ld   hl, sp-$7f                                  ; $5e7a: $f8 $81
	nop                                              ; $5e7c: $00
	ld   bc, $04f8                                   ; $5e7d: $01 $f8 $04
	add  l                                           ; $5e80: $85
	nop                                              ; $5e81: $00
	ld   b, $80                                      ; $5e82: $06 $80
	nop                                              ; $5e84: $00
	ret  nz                                          ; $5e85: $c0

	nop                                              ; $5e86: $00
	ld   h, b                                        ; $5e87: $60
	nop                                              ; $5e88: $00
	jr   nc, jr_01a_5e0c                             ; $5e89: $30 $81

	ret  nz                                          ; $5e8b: $c0

	inc  b                                           ; $5e8c: $04
	ret  c                                           ; $5e8d: $d8

	ldh  [$80], a                                    ; $5e8e: $e0 $80
	ldh  [$7c], a                                    ; $5e90: $e0 $7c
	add  d                                           ; $5e92: $82
	ldh  a, [rSB]                                    ; $5e93: $f0 $01
	ld   [hl], b                                     ; $5e95: $70
	ld   a, [hl]                                     ; $5e96: $7e
	add  c                                           ; $5e97: $81
	ld   a, b                                        ; $5e98: $78
	nop                                              ; $5e99: $00
	add  d                                           ; $5e9a: $82
	add  a                                           ; $5e9b: $87
	nop                                              ; $5e9c: $00
	add  b                                           ; $5e9d: $80
	add  b                                           ; $5e9e: $80
	add  b                                           ; $5e9f: $80
	ret  nz                                          ; $5ea0: $c0

	add  d                                           ; $5ea1: $82
	jr   nz, jr_01a_5e26                             ; $5ea2: $20 $82

	db   $10                                         ; $5ea4: $10
	add  h                                           ; $5ea5: $84
	ld   [$0482], sp                                 ; $5ea6: $08 $82 $04
	nop                                              ; $5ea9: $00
	ld   a, [$b88b]                                  ; $5eaa: $fa $8b $b8
	ld   a, [bc]                                     ; $5ead: $0a
	or   [hl]                                        ; $5eae: $b6
	cp   b                                           ; $5eaf: $b8
	or   b                                           ; $5eb0: $b0
	cp   b                                           ; $5eb1: $b8
	cp   h                                           ; $5eb2: $bc
	ld   [hl], b                                     ; $5eb3: $70
	ld   a, b                                        ; $5eb4: $78
	ret  nz                                          ; $5eb5: $c0

	ldh  a, [rP1]                                    ; $5eb6: $f0 $00
	ret  nz                                          ; $5eb8: $c0

	add  l                                           ; $5eb9: $85
	nop                                              ; $5eba: $00
	adc  h                                           ; $5ebb: $8c
	inc  b                                           ; $5ebc: $04
	sub  b                                           ; $5ebd: $90
	nop                                              ; $5ebe: $00
	inc  bc                                          ; $5ebf: $03
	ei                                               ; $5ec0: $fb
	inc  b                                           ; $5ec1: $04
	di                                               ; $5ec2: $f3
	db   $d3                                         ; $5ec3: $d3
	add  d                                           ; $5ec4: $82
	rst  $10                                         ; $5ec5: $d7
	ld   bc, $d7c7                                   ; $5ec6: $01 $c7 $d7
	add  b                                           ; $5ec9: $80
	call nc, $d380                                   ; $5eca: $d4 $80 $d3
	add  b                                           ; $5ecd: $80
	rst  $10                                         ; $5ece: $d7
	inc  b                                           ; $5ecf: $04
	ld   hl, wBaseInitialStickyCounter                                   ; $5ed0: $21 $13 $c2
	and  [hl]                                        ; $5ed3: $a6
	or   [hl]                                        ; $5ed4: $b6
	add  b                                           ; $5ed5: $80
	or   c                                           ; $5ed6: $b1
	add  b                                           ; $5ed7: $80
	or   a                                           ; $5ed8: $b7
	ld   [de], a                                     ; $5ed9: $12
	or   [hl]                                        ; $5eda: $b6
	ld   [hl], a                                     ; $5edb: $77
	ld   de, $a5c1                                   ; $5edc: $11 $c1 $a5
	or   a                                           ; $5edf: $b7
	or   e                                           ; $5ee0: $b3
	ld   [$0161], sp                                 ; $5ee1: $08 $61 $01
	add  c                                           ; $5ee4: $81
	push de                                          ; $5ee5: $d5
	ld   d, l                                        ; $5ee6: $55
	ld   c, c                                        ; $5ee7: $49
	ld   b, b                                        ; $5ee8: $40
	ld   c, e                                        ; $5ee9: $4b
	ld   c, d                                        ; $5eea: $4a
	ld   l, d                                        ; $5eeb: $6a
	ld   l, e                                        ; $5eec: $6b
	add  b                                           ; $5eed: $80
	dec  hl                                          ; $5eee: $2b
	add  b                                           ; $5eef: $80
	xor  e                                           ; $5ef0: $ab
	ld   [$7303], sp                                 ; $5ef1: $08 $03 $73
	ld   a, e                                        ; $5ef4: $7b
	ld   l, e                                        ; $5ef5: $6b
	ld   l, h                                        ; $5ef6: $6c
	xor  l                                           ; $5ef7: $ad
	and  c                                           ; $5ef8: $a1
	nop                                              ; $5ef9: $00
	rst  $38                                         ; $5efa: $ff
	add  b                                           ; $5efb: $80
	rlca                                             ; $5efc: $07
	add  e                                           ; $5efd: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5efe: $cf
	ld   a, [bc]                                     ; $5eff: $0a
	pop  af                                          ; $5f00: $f1
	pop  bc                                          ; $5f01: $c1
	cp   e                                           ; $5f02: $bb
	xor  e                                           ; $5f03: $ab
	ld   l, l                                        ; $5f04: $6d
	ld   [hl], l                                     ; $5f05: $75
	dec  [hl]                                        ; $5f06: $35
	push af                                          ; $5f07: $f5
	push de                                          ; $5f08: $d5
	ld   [hl], l                                     ; $5f09: $75
	push af                                          ; $5f0a: $f5
	add  e                                           ; $5f0b: $83
	or   l                                           ; $5f0c: $b5
	nop                                              ; $5f0d: $00
	rst  $10                                         ; $5f0e: $d7
	add  d                                           ; $5f0f: $82
	cp   $82                                         ; $5f10: $fe $82
	db   $fc                                         ; $5f12: $fc
	nop                                              ; $5f13: $00
	ld   sp, hl                                      ; $5f14: $f9
	add  b                                           ; $5f15: $80
	ld   hl, sp+$01                                  ; $5f16: $f8 $01
	rst  $38                                         ; $5f18: $ff
	ld   sp, hl                                      ; $5f19: $f9
	add  b                                           ; $5f1a: $80
	and  $07                                         ; $5f1b: $e6 $07
	sbc  c                                           ; $5f1d: $99
	ld   e, $67                                      ; $5f1e: $1e $67
	ld   l, h                                        ; $5f20: $6c
	ld   l, a                                        ; $5f21: $6f
	di                                               ; $5f22: $f3
	sbc  $ce                                         ; $5f23: $de $ce
	add  b                                           ; $5f25: $80
	ccf                                              ; $5f26: $3f
	add  b                                           ; $5f27: $80
	db   $fc                                         ; $5f28: $fc
	add  b                                           ; $5f29: $80
	di                                               ; $5f2a: $f3
	add  b                                           ; $5f2b: $80
	call z, $ef06                                    ; $5f2c: $cc $06 $ef
	cpl                                              ; $5f2f: $2f
	rra                                              ; $5f30: $1f
	rrca                                             ; $5f31: $0f
	ld   l, a                                        ; $5f32: $6f
	add  e                                           ; $5f33: $83
	ld   b, e                                        ; $5f34: $43
	add  b                                           ; $5f35: $80
	ld   [hl], b                                     ; $5f36: $70
	ld   [bc], a                                     ; $5f37: $02
	ld   a, h                                        ; $5f38: $7c
	call c, $80df                                    ; $5f39: $dc $df $80
	rst  $38                                         ; $5f3c: $ff
	ld   [bc], a                                     ; $5f3d: $02
	dec  sp                                          ; $5f3e: $3b
	ei                                               ; $5f3f: $fb
	ld   a, [hl-]                                    ; $5f40: $3a
	add  e                                           ; $5f41: $83
	ld   a, [$f980]                                  ; $5f42: $fa $80 $f9

jr_01a_5f45:
	nop                                              ; $5f45: $00
	ei                                               ; $5f46: $fb
	add  b                                           ; $5f47: $80
	dec  sp                                          ; $5f48: $3b
	add  b                                           ; $5f49: $80
	dec  bc                                          ; $5f4a: $0b
	add  b                                           ; $5f4b: $80
	jp   $f301                                       ; $5f4c: $c3 $01 $f3


	rst  $28                                         ; $5f4f: $ef
	add  c                                           ; $5f50: $81
	rst  $10                                         ; $5f51: $d7
	inc  bc                                          ; $5f52: $03
	scf                                              ; $5f53: $37
	rlca                                             ; $5f54: $07
	and  $d6                                         ; $5f55: $e6 $d6
	add  b                                           ; $5f57: $80
	pop  de                                          ; $5f58: $d1
	inc  bc                                          ; $5f59: $03
	push de                                          ; $5f5a: $d5
	push bc                                          ; $5f5b: $c5
	db   $fc                                         ; $5f5c: $fc
	db   $dd                                         ; $5f5d: $dd
	add  b                                           ; $5f5e: $80
	or   c                                           ; $5f5f: $b1
	nop                                              ; $5f60: $00
	sub  $81                                         ; $5f61: $d6 $81
	or   a                                           ; $5f63: $b7
	add  b                                           ; $5f64: $80
	xor  a                                           ; $5f65: $af
	ld   bc, $0f6f                                   ; $5f66: $01 $6f $0f
	add  b                                           ; $5f69: $80
	reti                                             ; $5f6a: $d9


	add  b                                           ; $5f6b: $80
	rst  ToBoot                                         ; $5f6c: $c7
	dec  b                                           ; $5f6d: $05
	inc  a                                           ; $5f6e: $3c
	cp   h                                           ; $5f6f: $bc
	sbc  b                                           ; $5f70: $98
	ld   a, [de]                                     ; $5f71: $1a
	sub  c                                           ; $5f72: $91
	sub  e                                           ; $5f73: $93
	add  d                                           ; $5f74: $82
	rst  $38                                         ; $5f75: $ff
	add  b                                           ; $5f76: $80
	cp   a                                           ; $5f77: $bf
	add  b                                           ; $5f78: $80
	nop                                              ; $5f79: $00
	add  b                                           ; $5f7a: $80
	rst  $38                                         ; $5f7b: $ff
	add  d                                           ; $5f7c: $82
	nop                                              ; $5f7d: $00
	nop                                              ; $5f7e: $00
	rst  $38                                         ; $5f7f: $ff
	add  e                                           ; $5f80: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f81: $cf
	inc  bc                                          ; $5f82: $03
	adc  $82                                         ; $5f83: $ce $82
	ld   b, b                                        ; $5f85: $40
	inc  a                                           ; $5f86: $3c
	add  b                                           ; $5f87: $80
	rst  $38                                         ; $5f88: $ff
	add  b                                           ; $5f89: $80
	nop                                              ; $5f8a: $00
	add  b                                           ; $5f8b: $80
	ld   bc, $bd05                                   ; $5f8c: $01 $05 $bd
	or   l                                           ; $5f8f: $b5
	jp   nc, $f1ca                                   ; $5f90: $d2 $ca $f1

	pop  hl                                          ; $5f93: $e1
	add  b                                           ; $5f94: $80
	ei                                               ; $5f95: $fb
	add  b                                           ; $5f96: $80
	dec  c                                           ; $5f97: $0d
	add  b                                           ; $5f98: $80
	ld   sp, $de80                                   ; $5f99: $31 $80 $de
	inc  bc                                          ; $5f9c: $03
	db   $ec                                         ; $5f9d: $ec
	inc  l                                           ; $5f9e: $2c
	ld   e, c                                        ; $5f9f: $59
	sbc  c                                           ; $5fa0: $99
	add  b                                           ; $5fa1: $80
	ld   a, [hl]                                     ; $5fa2: $7e
	adc  b                                           ; $5fa3: $88
	rst  $38                                         ; $5fa4: $ff
	inc  bc                                          ; $5fa5: $03
	ld   b, a                                        ; $5fa6: $47
	ld   b, [hl]                                     ; $5fa7: $46
	ld   [hl-], a                                    ; $5fa8: $32
	inc  sp                                          ; $5fa9: $33
	add  b                                           ; $5faa: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fab: $cf
	add  b                                           ; $5fac: $80
	ccf                                              ; $5fad: $3f
	nop                                              ; $5fae: $00
	rst  $38                                         ; $5faf: $ff
	add  b                                           ; $5fb0: $80
	db   $fc                                         ; $5fb1: $fc
	add  b                                           ; $5fb2: $80
	ldh  a, [$80]                                    ; $5fb3: $f0 $80
	db   $e3                                         ; $5fb5: $e3
	add  b                                           ; $5fb6: $80
	adc  a                                           ; $5fb7: $8f
	inc  bc                                          ; $5fb8: $03
	rra                                              ; $5fb9: $1f
	dec  de                                          ; $5fba: $1b
	db   $e3                                         ; $5fbb: $e3
	push hl                                          ; $5fbc: $e5
	add  b                                           ; $5fbd: $80
	push bc                                          ; $5fbe: $c5
	inc  bc                                          ; $5fbf: $03
	dec  e                                           ; $5fc0: $1d
	ld   e, $3e                                      ; $5fc1: $1e $3e
	jr   c, jr_01a_5f45                              ; $5fc3: $38 $80

	cp   $05                                         ; $5fc5: $fe $05
	rst  $38                                         ; $5fc7: $ff
	rst  $20                                         ; $5fc8: $e7
	rst  $38                                         ; $5fc9: $ff
	sbc  a                                           ; $5fca: $9f
	rst  $38                                         ; $5fcb: $ff
	ccf                                              ; $5fcc: $3f
	add  h                                           ; $5fcd: $84
	dec  a                                           ; $5fce: $3d
	add  a                                           ; $5fcf: $87
	dec  sp                                          ; $5fd0: $3b
	inc  b                                           ; $5fd1: $04
	ld   [hl], h                                     ; $5fd2: $74
	rst  $38                                         ; $5fd3: $ff
	di                                               ; $5fd4: $f3
	rst  $38                                         ; $5fd5: $ff
	db   $fc                                         ; $5fd6: $fc
	add  b                                           ; $5fd7: $80
	rst  $38                                         ; $5fd8: $ff
	ld   bc, $fffe                                   ; $5fd9: $01 $fe $ff
	add  c                                           ; $5fdc: $81
	db   $fd                                         ; $5fdd: $fd
	nop                                              ; $5fde: $00
	rst  $38                                         ; $5fdf: $ff
	add  b                                           ; $5fe0: $80
	ld   hl, sp+$02                                  ; $5fe1: $f8 $02
	ei                                               ; $5fe3: $fb
	inc  bc                                          ; $5fe4: $03
	ei                                               ; $5fe5: $fb
	add  b                                           ; $5fe6: $80
	cp   d                                           ; $5fe7: $ba
	add  b                                           ; $5fe8: $80
	pop  hl                                          ; $5fe9: $e1
	add  b                                           ; $5fea: $80
	rra                                              ; $5feb: $1f
	add  c                                           ; $5fec: $81
	rst  $38                                         ; $5fed: $ff
	add  b                                           ; $5fee: $80
	ret  nz                                          ; $5fef: $c0

	add  b                                           ; $5ff0: $80
	ld   bc, $ff00                                   ; $5ff1: $01 $00 $ff
	add  b                                           ; $5ff4: $80
	ld   c, h                                        ; $5ff5: $4c
	add  b                                           ; $5ff6: $80
	dec  a                                           ; $5ff7: $3d
	ld   [bc], a                                     ; $5ff8: $02
	or   $f4                                         ; $5ff9: $f6 $f4
	db   $fc                                         ; $5ffb: $fc
	add  b                                           ; $5ffc: $80
	ld   hl, sp+$01                                  ; $5ffd: $f8 $01
	add  b                                           ; $5fff: $80
	add  c                                           ; $6000: $81
	add  b                                           ; $6001: $80
	rra                                              ; $6002: $1f
	add  c                                           ; $6003: $81
	rst  $38                                         ; $6004: $ff
	add  hl, bc                                      ; $6005: $09
	ldh  [$e1], a                                    ; $6006: $e0 $e1
	ld   sp, hl                                      ; $6008: $f9
	ld   hl, sp-$04                                  ; $6009: $f8 $fc
	rst  $38                                         ; $600b: $ff
	db   $fd                                         ; $600c: $fd
	rst  $38                                         ; $600d: $ff
	cp   $ff                                         ; $600e: $fe $ff
	add  b                                           ; $6010: $80
	ld   a, a                                        ; $6011: $7f
	add  b                                           ; $6012: $80
	inc  e                                           ; $6013: $1c
	ld   [bc], a                                     ; $6014: $02
	ld   l, b                                        ; $6015: $68
	ld   l, d                                        ; $6016: $6a
	ld   [bc], a                                     ; $6017: $02
	add  b                                           ; $6018: $80
	rst  $38                                         ; $6019: $ff
	add  b                                           ; $601a: $80
	nop                                              ; $601b: $00
	add  c                                           ; $601c: $81
	rst  $38                                         ; $601d: $ff
	ld   bc, $7f80                                   ; $601e: $01 $80 $7f
	add  b                                           ; $6021: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6022: $cf
	ld   [bc], a                                     ; $6023: $02
	jr   nc, @+$22                                   ; $6024: $30 $20

	db   $10                                         ; $6026: $10
	add  b                                           ; $6027: $80
	nop                                              ; $6028: $00
	add  b                                           ; $6029: $80
	cp   $80                                         ; $602a: $fe $80
	nop                                              ; $602c: $00
	add  c                                           ; $602d: $81
	rst  $38                                         ; $602e: $ff
	ld   bc, $bf40                                   ; $602f: $01 $40 $bf
	add  b                                           ; $6032: $80
	rst  $38                                         ; $6033: $ff
	add  d                                           ; $6034: $82
	nop                                              ; $6035: $00
	add  b                                           ; $6036: $80
	inc  bc                                          ; $6037: $03
	add  b                                           ; $6038: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6039: $cf
	dec  b                                           ; $603a: $05
	rra                                              ; $603b: $1f
	ccf                                              ; $603c: $3f
	rra                                              ; $603d: $1f
	rst  $38                                         ; $603e: $ff
	rra                                              ; $603f: $1f
	rst  JumpTable                                         ; $6040: $df
	add  b                                           ; $6041: $80
	rst  $38                                         ; $6042: $ff
	add  b                                           ; $6043: $80
	inc  e                                           ; $6044: $1c
	ld   [$2b0b], sp                                 ; $6045: $08 $0b $2b
	cp   c                                           ; $6048: $b9
	sbc  b                                           ; $6049: $98
	rst  JumpTable                                         ; $604a: $df
	sbc  $b7                                         ; $604b: $de $b7
	sub  a                                           ; $604d: $97
	sbc  a                                           ; $604e: $9f
	add  b                                           ; $604f: $80
	adc  a                                           ; $6050: $8f
	ld   bc, $4080                                   ; $6051: $01 $80 $40
	add  b                                           ; $6054: $80
	ld   a, h                                        ; $6055: $7c
	add  c                                           ; $6056: $81
	ld   a, a                                        ; $6057: $7f
	inc  bc                                          ; $6058: $03
	cp   $7f                                         ; $6059: $fe $7f
	cp   l                                           ; $605b: $bd
	ccf                                              ; $605c: $3f
	add  b                                           ; $605d: $80
	jp   $ff01                                       ; $605e: $c3 $01 $ff


	db   $fc                                         ; $6061: $fc
	add  c                                           ; $6062: $81
	rst  $38                                         ; $6063: $ff
	add  b                                           ; $6064: $80
	ld   bc, $c080                                   ; $6065: $01 $80 $c0
	ld   bc, $00ff                                   ; $6068: $01 $ff $00
	add  h                                           ; $606b: $84
	rst  $38                                         ; $606c: $ff
	ld   bc, $ff3f                                   ; $606d: $01 $3f $ff
	add  c                                           ; $6070: $81
	rst  JumpTable                                         ; $6071: $df
	nop                                              ; $6072: $00
	rst  $38                                         ; $6073: $ff
	add  b                                           ; $6074: $80
	rrca                                             ; $6075: $0f
	dec  b                                           ; $6076: $05
	rst  $28                                         ; $6077: $ef
	push af                                          ; $6078: $f5
	ei                                               ; $6079: $fb
	db   $fd                                         ; $607a: $fd
	rst  $38                                         ; $607b: $ff
	inc  bc                                          ; $607c: $03
	add  d                                           ; $607d: $82
	rst  $38                                         ; $607e: $ff
	add  b                                           ; $607f: $80
	nop                                              ; $6080: $00
	rrca                                             ; $6081: $0f
	jp   z, $f40a                                    ; $6082: $ca $0a $f4

	call nc, Call_01a_6afa                           ; $6085: $d4 $fa $6a
	ld   [hl], c                                     ; $6088: $71
	ld   a, c                                        ; $6089: $79
	ld   a, b                                        ; $608a: $78
	ld   a, h                                        ; $608b: $7c
	ld   a, a                                        ; $608c: $7f
	ld   a, l                                        ; $608d: $7d
	ld   a, a                                        ; $608e: $7f
	ld   a, [hl]                                     ; $608f: $7e
	ld   a, a                                        ; $6090: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6091: $cf
	add  c                                           ; $6092: $81
	rst  $38                                         ; $6093: $ff
	ld   b, $f7                                      ; $6094: $06 $f7
	rst  $28                                         ; $6096: $ef
	ld   h, b                                        ; $6097: $60
	ld   c, e                                        ; $6098: $4b
	inc  sp                                          ; $6099: $33
	jr   nc, jr_01a_609c                             ; $609a: $30 $00

jr_01a_609c:
	add  b                                           ; $609c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $609d: $cf
	ld   bc, $00ff                                   ; $609e: $01 $ff $00
	add  l                                           ; $60a1: $85
	rst  $38                                         ; $60a2: $ff
	nop                                              ; $60a3: $00
	nop                                              ; $60a4: $00
	add  b                                           ; $60a5: $80
	rst  $38                                         ; $60a6: $ff
	add  b                                           ; $60a7: $80
	nop                                              ; $60a8: $00
	add  c                                           ; $60a9: $81
	rst  $38                                         ; $60aa: $ff
	nop                                              ; $60ab: $00
	nop                                              ; $60ac: $00
	add  l                                           ; $60ad: $85
	rst  $38                                         ; $60ae: $ff
	ld   [$c707], sp                                 ; $60af: $08 $07 $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60b2: $cf
	rrca                                             ; $60b3: $0f
	rra                                              ; $60b4: $1f
	rst  $38                                         ; $60b5: $ff
	rst  JumpTable                                         ; $60b6: $df
	rst  $38                                         ; $60b7: $ff
	ccf                                              ; $60b8: $3f
	add  e                                           ; $60b9: $83
	rst  $38                                         ; $60ba: $ff
	add  b                                           ; $60bb: $80
	ei                                               ; $60bc: $fb
	inc  b                                           ; $60bd: $04
	cpl                                              ; $60be: $2f
	ld   l, a                                        ; $60bf: $6f
	ld   e, a                                        ; $60c0: $5f
	ld   a, a                                        ; $60c1: $7f
	ld   h, b                                        ; $60c2: $60
	add  d                                           ; $60c3: $82
	ld   a, a                                        ; $60c4: $7f
	add  hl, bc                                      ; $60c5: $09
	nop                                              ; $60c6: $00
	add  b                                           ; $60c7: $80
	xor  c                                           ; $60c8: $a9
	xor  b                                           ; $60c9: $a8
	sub  a                                           ; $60ca: $97
	sub  l                                           ; $60cb: $95
	xor  a                                           ; $60cc: $af
	call c, $8cfc                                    ; $60cd: $dc $fc $8c
	add  b                                           ; $60d0: $80
	db   $fc                                         ; $60d1: $fc
	ld   bc, $7efe                                   ; $60d2: $01 $fe $7e
	add  b                                           ; $60d5: $80
	cp   $80                                         ; $60d6: $fe $80
	ldh  a, [$80]                                    ; $60d8: $f0 $80
	ld   [$da80], a                                  ; $60da: $ea $80 $da
	rlca                                             ; $60dd: $07
	ld   [$ffcf], sp                                 ; $60de: $08 $cf $ff
	ei                                               ; $60e1: $fb
	rst  $38                                         ; $60e2: $ff
	db   $dd                                         ; $60e3: $dd
	rst  $38                                         ; $60e4: $ff
	cp   $81                                         ; $60e5: $fe $81
	rst  $38                                         ; $60e7: $ff
	nop                                              ; $60e8: $00
	rst  $28                                         ; $60e9: $ef
	add  d                                           ; $60ea: $82
	rst  $38                                         ; $60eb: $ff
	ld   bc, $f2fd                                   ; $60ec: $01 $fd $f2
	add  l                                           ; $60ef: $85
	rst  $38                                         ; $60f0: $ff
	add  hl, bc                                      ; $60f1: $09
	ld   a, a                                        ; $60f2: $7f
	rst  $38                                         ; $60f3: $ff
	cp   a                                           ; $60f4: $bf
	rst  $38                                         ; $60f5: $ff
	rst  JumpTable                                         ; $60f6: $df
	rst  $38                                         ; $60f7: $ff
	rst  $20                                         ; $60f8: $e7
	rst  $38                                         ; $60f9: $ff
	rlca                                             ; $60fa: $07
	rst  $38                                         ; $60fb: $ff
	add  h                                           ; $60fc: $84
	cp   $86                                         ; $60fd: $fe $86
	rst  $38                                         ; $60ff: $ff
	add  b                                           ; $6100: $80
	rra                                              ; $6101: $1f
	add  h                                           ; $6102: $84
	xor  a                                           ; $6103: $af
	add  b                                           ; $6104: $80
	rra                                              ; $6105: $1f
	add  d                                           ; $6106: $82
	rst  $38                                         ; $6107: $ff
	add  b                                           ; $6108: $80
	rst  JumpTable                                         ; $6109: $df
	ld   [bc], a                                     ; $610a: $02
	add  a                                           ; $610b: $87
	sbc  a                                           ; $610c: $9f
	sbc  b                                           ; $610d: $98
	add  b                                           ; $610e: $80
	sbc  a                                           ; $610f: $9f
	add  d                                           ; $6110: $82
	cp   a                                           ; $6111: $bf
	add  b                                           ; $6112: $80
	add  a                                           ; $6113: $87
	add  b                                           ; $6114: $80
	xor  e                                           ; $6115: $ab
	add  b                                           ; $6116: $80
	xor  l                                           ; $6117: $ad
	ld   [bc], a                                     ; $6118: $02
	adc  b                                           ; $6119: $88
	ld   h, a                                        ; $611a: $67
	ld   l, e                                        ; $611b: $6b
	add  l                                           ; $611c: $85
	ei                                               ; $611d: $fb
	add  b                                           ; $611e: $80
	di                                               ; $611f: $f3
	nop                                              ; $6120: $00
	rst  $30                                         ; $6121: $f7
	add  b                                           ; $6122: $80
	or   a                                           ; $6123: $b7
	add  b                                           ; $6124: $80
	rst  $30                                         ; $6125: $f7
	nop                                              ; $6126: $00
	adc  b                                           ; $6127: $88
	add  b                                           ; $6128: $80
	jp   nc, $d680                                   ; $6129: $d2 $80 $d6

	ld   bc, $4ece                                   ; $612c: $01 $ce $4e
	add  b                                           ; $612f: $80
	ret  c                                           ; $6130: $d8

	add  b                                           ; $6131: $80
	db   $db                                         ; $6132: $db
	add  b                                           ; $6133: $80
	ld   [$e680], a                                  ; $6134: $ea $80 $e6
	inc  bc                                          ; $6137: $03
	db   $e4                                         ; $6138: $e4
	inc  d                                           ; $6139: $14
	rst  $38                                         ; $613a: $ff
	rst  $30                                         ; $613b: $f7
	add  c                                           ; $613c: $81
	rst  $38                                         ; $613d: $ff
	dec  b                                           ; $613e: $05
	rlca                                             ; $613f: $07
	inc  bc                                          ; $6140: $03
	rlca                                             ; $6141: $07
	db   $f4                                         ; $6142: $f4
	rst  $30                                         ; $6143: $f7
	inc  bc                                          ; $6144: $03
	add  b                                           ; $6145: $80
	di                                               ; $6146: $f3
	ld   [bc], a                                     ; $6147: $02
	ld   bc, $0603                                   ; $6148: $01 $03 $06
	add  [hl]                                        ; $614b: $86
	rst  $38                                         ; $614c: $ff
	add  b                                           ; $614d: $80
	cp   $80                                         ; $614e: $fe $80
	ld   a, l                                        ; $6150: $7d
	dec  b                                           ; $6151: $05
	inc  bc                                          ; $6152: $03
	ld   [bc], a                                     ; $6153: $02
	ld   [hl], a                                     ; $6154: $77
	ld   c, c                                        ; $6155: $49
	rst  $38                                         ; $6156: $ff
	cp   a                                           ; $6157: $bf
	add  c                                           ; $6158: $81
	rst  $38                                         ; $6159: $ff
	ld   bc, $ff7f                                   ; $615a: $01 $7f $ff
	add  b                                           ; $615d: $80
	ccf                                              ; $615e: $3f
	ld   b, $df                                      ; $615f: $06 $df
	rra                                              ; $6161: $1f
	ldh  [$c0], a                                    ; $6162: $e0 $c0
	ld   d, b                                        ; $6164: $50
	rst  ToBoot                                         ; $6165: $c7
	adc  b                                           ; $6166: $88
	add  e                                           ; $6167: $83
	rst  $38                                         ; $6168: $ff
	add  b                                           ; $6169: $80
	ldh  [$08], a                                    ; $616a: $e0 $08
	sub  b                                           ; $616c: $90
	add  a                                           ; $616d: $87
	ld   h, a                                        ; $616e: $67
	nop                                              ; $616f: $00
	rlca                                             ; $6170: $07
	ld   h, a                                        ; $6171: $67
	ld   b, b                                        ; $6172: $40
	ld   h, b                                        ; $6173: $60
	or   b                                           ; $6174: $b0
	add  b                                           ; $6175: $80
	and  l                                           ; $6176: $a5
	add  b                                           ; $6177: $80
	or   l                                           ; $6178: $b5
	ld   bc, $39b9                                   ; $6179: $01 $b9 $39
	add  b                                           ; $617c: $80
	dec  c                                           ; $617d: $0d
	add  b                                           ; $617e: $80
	db   $ed                                         ; $617f: $ed
	ld   b, $2b                                      ; $6180: $06 $2b
	xor  e                                           ; $6182: $ab
	or   e                                           ; $6183: $b3
	inc  sp                                          ; $6184: $33
	inc  de                                          ; $6185: $13
	add  sp, -$15                                    ; $6186: $e8 $eb
	add  d                                           ; $6188: $82
	rst  $28                                         ; $6189: $ef
	nop                                              ; $618a: $00
	ld   l, a                                        ; $618b: $6f
	add  b                                           ; $618c: $80
	rst  $28                                         ; $618d: $ef
	add  b                                           ; $618e: $80
	rst  $20                                         ; $618f: $e7
	nop                                              ; $6190: $00
	rst  $30                                         ; $6191: $f7
	add  b                                           ; $6192: $80
	or   $02                                         ; $6193: $f6 $02
	rst  $20                                         ; $6195: $e7
	rst  $30                                         ; $6196: $f7
	ld   h, [hl]                                     ; $6197: $66
	add  d                                           ; $6198: $82
	rst  $20                                         ; $6199: $e7
	add  c                                           ; $619a: $81
	rst  $28                                         ; $619b: $ef
	add  b                                           ; $619c: $80
	ld   l, a                                        ; $619d: $6f
	dec  bc                                          ; $619e: $0b
	db   $ed                                         ; $619f: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61a0: $cf
	scf                                              ; $61a1: $37
	rlca                                             ; $61a2: $07

jr_01a_61a3:
	inc  bc                                          ; $61a3: $03
	ld   hl, sp-$07                                  ; $61a4: $f8 $f9
	push hl                                          ; $61a6: $e5
	db   $e4                                         ; $61a7: $e4
	db   $ec                                         ; $61a8: $ec
	rst  $28                                         ; $61a9: $ef
	db   $eb                                         ; $61aa: $eb
	add  b                                           ; $61ab: $80
	add  sp, -$80                                    ; $61ac: $e8 $80
	db   $eb                                         ; $61ae: $eb
	inc  bc                                          ; $61af: $03
	add  sp, -$28                                    ; $61b0: $e8 $d8
	rst  JumpTable                                         ; $61b2: $df
	rst  $10                                         ; $61b3: $d7
	add  b                                           ; $61b4: $80
	ret  nc                                          ; $61b5: $d0

	inc  bc                                          ; $61b6: $03
	add  hl, sp                                      ; $61b7: $39
	rst  $20                                         ; $61b8: $e7
	ld   b, $07                                      ; $61b9: $06 $07
	add  b                                           ; $61bb: $80
	rst  $20                                         ; $61bc: $e7
	add  b                                           ; $61bd: $80
	rlca                                             ; $61be: $07
	inc  bc                                          ; $61bf: $03
	rst  $20                                         ; $61c0: $e7
	and  $1e                                         ; $61c1: $e6 $1e
	ld   c, $80                                      ; $61c3: $0e $80
	adc  $80                                         ; $61c5: $ce $80
	ld   c, $02                                      ; $61c7: $0e $02
	dec  e                                           ; $61c9: $1d
	ld   [hl], a                                     ; $61ca: $77
	ld   a, e                                        ; $61cb: $7b
	add  c                                           ; $61cc: $81
	ld   l, a                                        ; $61cd: $6f
	nop                                              ; $61ce: $00
	ld   a, a                                        ; $61cf: $7f
	add  b                                           ; $61d0: $80
	ld   e, a                                        ; $61d1: $5f
	add  b                                           ; $61d2: $80
	rra                                              ; $61d3: $1f
	ld   [$c0df], sp                                 ; $61d4: $08 $df $c0
	nop                                              ; $61d7: $00
	ccf                                              ; $61d8: $3f
	cp   a                                           ; $61d9: $bf
	bit  6, e                                        ; $61da: $cb $73
	jr   nc, jr_01a_624e                             ; $61dc: $30 $70

	add  b                                           ; $61de: $80
	ld   [hl], e                                     ; $61df: $73
	add  b                                           ; $61e0: $80
	ld   [hl], b                                     ; $61e1: $70
	dec  c                                           ; $61e2: $0d
	ld   [hl], e                                     ; $61e3: $73
	inc  sp                                          ; $61e4: $33
	inc  a                                           ; $61e5: $3c
	cp   b                                           ; $61e6: $b8
	cp   c                                           ; $61e7: $b9
	add  hl, sp                                      ; $61e8: $39
	jr   c, jr_01a_61a3                              ; $61e9: $38 $b8

	ld   a, h                                        ; $61eb: $7c
	db   $d3                                         ; $61ec: $d3
	inc  de                                          ; $61ed: $13
	dec  de                                          ; $61ee: $1b
	ei                                               ; $61ef: $fb
	db   $eb                                         ; $61f0: $eb
	add  b                                           ; $61f1: $80
	dec  bc                                          ; $61f2: $0b
	add  b                                           ; $61f3: $80
	db   $eb                                         ; $61f4: $eb
	inc  bc                                          ; $61f5: $03
	dec  bc                                          ; $61f6: $0b
	dec  c                                           ; $61f7: $0d
	db   $fd                                         ; $61f8: $fd
	push af                                          ; $61f9: $f5
	add  b                                           ; $61fa: $80
	dec  b                                           ; $61fb: $05
	nop                                              ; $61fc: $00
	ld   a, [hl+]                                    ; $61fd: $2a
	add  d                                           ; $61fe: $82
	di                                               ; $61ff: $f3
	ld   bc, $e3fb                                   ; $6200: $01 $fb $e3
	add  c                                           ; $6203: $81
	ei                                               ; $6204: $fb
	inc  b                                           ; $6205: $04
	db   $db                                         ; $6206: $db
	ld   sp, hl                                      ; $6207: $f9
	cp   $f0                                         ; $6208: $fe $f0
	ldh  [$80], a                                    ; $620a: $e0 $80
	adc  a                                           ; $620c: $8f
	add  b                                           ; $620d: $80
	rrca                                             ; $620e: $0f
	ld   bc, $f0d0                                   ; $620f: $01 $d0 $f0
	add  b                                           ; $6212: $80
	ld   l, $09                                      ; $6213: $2e $09
	jr   nc, jr_01a_6268                             ; $6215: $30 $51

	ld   e, l                                        ; $6217: $5d
	ld   e, a                                        ; $6218: $5f
	ld   h, d                                        ; $6219: $62
	and  $f5                                         ; $621a: $e6 $f5
	db   $fd                                         ; $621c: $fd
	db   $ed                                         ; $621d: $ed
	ld   [hl+], a                                    ; $621e: $22
	add  b                                           ; $621f: $80
	cp   $80                                         ; $6220: $fe $80
	nop                                              ; $6222: $00
	add  b                                           ; $6223: $80
	rst  $38                                         ; $6224: $ff
	ld   bc, $ff3f                                   ; $6225: $01 $3f $ff
	add  b                                           ; $6228: $80
	ld   e, a                                        ; $6229: $5f
	ld   bc, $ffdf                                   ; $622a: $01 $df $ff
	add  c                                           ; $622d: $81
	rst  $28                                         ; $622e: $ef
	nop                                              ; $622f: $00
	rrca                                             ; $6230: $0f
	add  b                                           ; $6231: $80
	cp   a                                           ; $6232: $bf
	add  b                                           ; $6233: $80
	add  b                                           ; $6234: $80
	add  b                                           ; $6235: $80
	rst  $38                                         ; $6236: $ff
	ld   bc, $fffe                                   ; $6237: $01 $fe $ff
	add  c                                           ; $623a: $81
	db   $fd                                         ; $623b: $fd
	nop                                              ; $623c: $00
	rst  $38                                         ; $623d: $ff
	add  c                                           ; $623e: $81
	ei                                               ; $623f: $fb
	add  c                                           ; $6240: $81
	ld   hl, sp-$80                                  ; $6241: $f8 $80
	dec  b                                           ; $6243: $05
	add  b                                           ; $6244: $80
	cp   d                                           ; $6245: $ba
	add  hl, bc                                      ; $6246: $09
	ld   b, $c6                                      ; $6247: $06 $c6
	ld   e, l                                        ; $6249: $5d
	ld   a, l                                        ; $624a: $7d
	and  e                                           ; $624b: $a3
	or   e                                           ; $624c: $b3
	rst  $10                                         ; $624d: $d7

jr_01a_624e:
	rst  JumpTable                                         ; $624e: $df
	db   $db                                         ; $624f: $db
	call c, $00ff                                    ; $6250: $dc $ff $00
	rst  $38                                         ; $6253: $ff
	nop                                              ; $6254: $00
	rlc  b                                           ; $6255: $cb $00
	ld   [hl], c                                     ; $6257: $71
	ld   [bc], a                                     ; $6258: $02
	adc  b                                           ; $6259: $88
	nop                                              ; $625a: $00
	add  b                                           ; $625b: $80
	rlca                                             ; $625c: $07
	inc  b                                           ; $625d: $04
	inc  b                                           ; $625e: $04
	rlca                                             ; $625f: $07
	ld   b, $07                                      ; $6260: $06 $07
	ld   [bc], a                                     ; $6262: $02
	add  a                                           ; $6263: $87
	nop                                              ; $6264: $00
	add  b                                           ; $6265: $80
	rst  $38                                         ; $6266: $ff
	inc  b                                           ; $6267: $04

jr_01a_6268:
	ld   bc, $03ff                                   ; $6268: $01 $ff $03
	rst  $38                                         ; $626b: $ff
	ld   [bc], a                                     ; $626c: $02
	add  a                                           ; $626d: $87
	nop                                              ; $626e: $00
	add  b                                           ; $626f: $80
	rst  $38                                         ; $6270: $ff
	inc  b                                           ; $6271: $04
	nop                                              ; $6272: $00
	rst  $38                                         ; $6273: $ff
	nop                                              ; $6274: $00
	rst  $38                                         ; $6275: $ff
	dec  b                                           ; $6276: $05
	adc  l                                           ; $6277: $8d
	rlca                                             ; $6278: $07
	nop                                              ; $6279: $00
	ld   e, b                                        ; $627a: $58
	add  e                                           ; $627b: $83
	ld   a, [hl]                                     ; $627c: $7e
	ld   b, $de                                      ; $627d: $06 $de
	cp   $16                                         ; $627f: $fe $16
	cp   $10                                         ; $6281: $fe $10
	db   $fc                                         ; $6283: $fc
	ld   d, b                                        ; $6284: $50

jr_01a_6285:
	add  c                                           ; $6285: $81
	ld   [hl], b                                     ; $6286: $70
	nop                                              ; $6287: $00
	dec  h                                           ; $6288: $25
	add  a                                           ; $6289: $87
	rlca                                             ; $628a: $07
	ld   [$0705], sp                                 ; $628b: $08 $05 $07
	inc  b                                           ; $628e: $04

jr_01a_628f:
	rlca                                             ; $628f: $07
	ld   b, $07                                      ; $6290: $06 $07
	ld   [hl], d                                     ; $6292: $72
	ld   [hl], b                                     ; $6293: $70
	adc  b                                           ; $6294: $88
	add  e                                           ; $6295: $83
	ld   hl, sp+$01                                  ; $6296: $f8 $01
	jr   nz, jr_01a_630a                             ; $6298: $20 $70

	add  b                                           ; $629a: $80
	ldh  a, [$03]                                    ; $629b: $f0 $03
	jr   nc, jr_01a_628f                             ; $629d: $30 $f0

	db   $10                                         ; $629f: $10
	ldh  a, [$8e]                                    ; $62a0: $f0 $8e
	nop                                              ; $62a2: $00
	nop                                              ; $62a3: $00
	rst  $38                                         ; $62a4: $ff
	add  e                                           ; $62a5: $83
	nop                                              ; $62a6: $00
	ld   b, $55                                      ; $62a7: $06 $55
	nop                                              ; $62a9: $00
	rst  $38                                         ; $62aa: $ff
	nop                                              ; $62ab: $00
	rst  $38                                         ; $62ac: $ff
	nop                                              ; $62ad: $00
	xor  d                                           ; $62ae: $aa
	add  c                                           ; $62af: $81
	nop                                              ; $62b0: $00
	add  b                                           ; $62b1: $80
	rrca                                             ; $62b2: $0f
	nop                                              ; $62b3: $00
	rra                                              ; $62b4: $1f
	add  b                                           ; $62b5: $80
	db   $10                                         ; $62b6: $10
	dec  b                                           ; $62b7: $05

jr_01a_62b8:
	ld   de, $1310                                   ; $62b8: $11 $10 $13
	ld   de, $1417                                   ; $62bb: $11 $17 $14
	add  b                                           ; $62be: $80
	rla                                              ; $62bf: $17
	add  c                                           ; $62c0: $81
	db   $10                                         ; $62c1: $10

jr_01a_62c2:
	ld   [bc], a                                     ; $62c2: $02
	rst  $38                                         ; $62c3: $ff
	ldh  a, [$f8]                                    ; $62c4: $f0 $f8
	add  b                                           ; $62c6: $80
	ld   [$8805], sp                                 ; $62c7: $08 $05 $88
	ld   [$88c8], sp                                 ; $62ca: $08 $c8 $88
	add  sp, $28                                     ; $62cd: $e8 $28
	add  b                                           ; $62cf: $80
	add  sp, -$7f                                    ; $62d0: $e8 $81
	ld   [$ef10], sp                                 ; $62d2: $08 $10 $ef
	rra                                              ; $62d5: $1f
	ccf                                              ; $62d6: $3f
	ld   hl, $2320                                   ; $62d7: $21 $20 $23
	ld   hl, $2327                                   ; $62da: $21 $27 $23
	cpl                                              ; $62dd: $2f
	dec  hl                                          ; $62de: $2b
	daa                                              ; $62df: $27
	dec  h                                           ; $62e0: $25
	inc  hl                                          ; $62e1: $23
	ld   [hl+], a                                    ; $62e2: $22
	ld   hl, $80e1                                   ; $62e3: $21 $e1 $80
	ldh  [$80], a                                    ; $62e6: $e0 $80
	add  b                                           ; $62e8: $80
	add  b                                           ; $62e9: $80
	add  e                                           ; $62ea: $83
	add  b                                           ; $62eb: $80
	add  a                                           ; $62ec: $87
	add  d                                           ; $62ed: $82
	add  [hl]                                        ; $62ee: $86
	add  b                                           ; $62ef: $80
	add  e                                           ; $62f0: $83
	add  b                                           ; $62f1: $80
	add  b                                           ; $62f2: $80
	add  b                                           ; $62f3: $80
	rlca                                             ; $62f4: $07
	add  b                                           ; $62f5: $80
	ld   bc, $c180                                   ; $62f6: $01 $80 $c1
	add  b                                           ; $62f9: $80
	pop  hl                                          ; $62fa: $e1
	add  d                                           ; $62fb: $82

jr_01a_62fc:
	ld   hl, $c180                                   ; $62fc: $21 $80 $c1
	ld   bc, $c101                                   ; $62ff: $01 $01 $c1

jr_01a_6302:
	add  b                                           ; $6302: $80
	jr   nz, jr_01a_6285                             ; $6303: $20 $80

	ccf                                              ; $6305: $3f

jr_01a_6306:
	add  b                                           ; $6306: $80
	rra                                              ; $6307: $1f
	inc  bc                                          ; $6308: $03
	nop                                              ; $6309: $00

jr_01a_630a:
	jr   nz, jr_01a_630c                             ; $630a: $20 $00

jr_01a_630c:
	rra                                              ; $630c: $1f
	add  e                                           ; $630d: $83
	nop                                              ; $630e: $00
	nop                                              ; $630f: $00
	rst  $38                                         ; $6310: $ff
	add  b                                           ; $6311: $80
	nop                                              ; $6312: $00
	add  b                                           ; $6313: $80
	ldh  [$80], a                                    ; $6314: $e0 $80
	ldh  a, [rTIMA]                                  ; $6316: $f0 $05
	rla                                              ; $6318: $17
	inc  d                                           ; $6319: $14
	rla                                              ; $631a: $17
	push af                                          ; $631b: $f5
	inc  de                                          ; $631c: $13
	ld   [de], a                                     ; $631d: $12
	add  b                                           ; $631e: $80
	ld   de, $1001                                   ; $631f: $11 $01 $10
	rrca                                             ; $6322: $0f
	add  e                                           ; $6323: $83

jr_01a_6324:
	nop                                              ; $6324: $00
	add  d                                           ; $6325: $82
	jr   nz, @-$7e                                   ; $6326: $20 $80

	cp   $80                                         ; $6328: $fe $80
	db   $10                                         ; $632a: $10
	add  b                                           ; $632b: $80
	ld   [$0084], sp                                 ; $632c: $08 $84 $00
	add  b                                           ; $632f: $80
	inc  b                                           ; $6330: $04
	add  b                                           ; $6331: $80
	ld   [$1080], sp                                 ; $6332: $08 $80 $10
	add  b                                           ; $6335: $80
	jr   nz, jr_01a_62b8                             ; $6336: $20 $80

	ld   b, b                                        ; $6338: $40
	add  h                                           ; $6339: $84
	nop                                              ; $633a: $00
	add  b                                           ; $633b: $80
	inc  l                                           ; $633c: $2c
	add  b                                           ; $633d: $80
	ld   [hl+], a                                    ; $633e: $22
	add  d                                           ; $633f: $82
	jr   nz, jr_01a_62c2                             ; $6340: $20 $80

	inc  a                                           ; $6342: $3c
	add  d                                           ; $6343: $82
	nop                                              ; $6344: $00
	add  b                                           ; $6345: $80
	ld   a, [bc]                                     ; $6346: $0a
	add  b                                           ; $6347: $80
	ld   c, d                                        ; $6348: $4a
	add  b                                           ; $6349: $80
	ld   b, h                                        ; $634a: $44
	add  b                                           ; $634b: $80
	ldh  a, [c]                                      ; $634c: $f2
	add  d                                           ; $634d: $82
	ld   c, d                                        ; $634e: $4a
	add  d                                           ; $634f: $82
	nop                                              ; $6350: $00
	add  b                                           ; $6351: $80
	ld   e, [hl]                                     ; $6352: $5e
	add  b                                           ; $6353: $80
	ld   d, d                                        ; $6354: $52
	add  b                                           ; $6355: $80
	ldh  a, [c]                                      ; $6356: $f2
	add  b                                           ; $6357: $80
	ld   b, b                                        ; $6358: $40
	add  b                                           ; $6359: $80
	ld   e, [hl]                                     ; $635a: $5e
	add  b                                           ; $635b: $80
	ld   b, d                                        ; $635c: $42
	add  d                                           ; $635d: $82
	nop                                              ; $635e: $00
	add  d                                           ; $635f: $82
	ld   a, [bc]                                     ; $6360: $0a
	add  b                                           ; $6361: $80
	add  h                                           ; $6362: $84
	add  b                                           ; $6363: $80
	cp   [hl]                                        ; $6364: $be
	add  d                                           ; $6365: $82

jr_01a_6366:
	add  h                                           ; $6366: $84
	add  h                                           ; $6367: $84

jr_01a_6368:
	nop                                              ; $6368: $00
	add  b                                           ; $6369: $80
	ld   a, h                                        ; $636a: $7c
	add  b                                           ; $636b: $80
	ld   [$1080], sp                                 ; $636c: $08 $80 $10
	add  b                                           ; $636f: $80
	inc  a                                           ; $6370: $3c
	add  b                                           ; $6371: $80
	ld   b, d                                        ; $6372: $42
	add  d                                           ; $6373: $82
	nop                                              ; $6374: $00
	add  d                                           ; $6375: $82
	db   $10                                         ; $6376: $10
	add  b                                           ; $6377: $80
	cp   $82                                         ; $6378: $fe $82
	jr   c, jr_01a_62fc                              ; $637a: $38 $80

	ld   d, h                                        ; $637c: $54
	add  d                                           ; $637d: $82
	nop                                              ; $637e: $00
	add  d                                           ; $637f: $82
	jr   nz, jr_01a_6302                             ; $6380: $20 $80

	cp   $80                                         ; $6382: $fe $80
	jr   nz, jr_01a_6306                             ; $6384: $20 $80

	ld   h, b                                        ; $6386: $60
	add  b                                           ; $6387: $80
	inc  e                                           ; $6388: $1c
	add  h                                           ; $6389: $84
	nop                                              ; $638a: $00
	add  b                                           ; $638b: $80
	ld   b, b                                        ; $638c: $40
	add  b                                           ; $638d: $80
	ld   a, h                                        ; $638e: $7c
	add  d                                           ; $638f: $82
	ld   b, h                                        ; $6390: $44
	add  b                                           ; $6391: $80
	and  h                                           ; $6392: $a4
	add  h                                           ; $6393: $84
	nop                                              ; $6394: $00
	add  b                                           ; $6395: $80

jr_01a_6396:
	ld   [bc], a                                     ; $6396: $02
	add  b                                           ; $6397: $80
	inc  b                                           ; $6398: $04
	add  b                                           ; $6399: $80
	ld   [$1880], sp                                 ; $639a: $08 $80 $18
	add  b                                           ; $639d: $80
	jr   z, jr_01a_6324                              ; $639e: $28 $84

	nop                                              ; $63a0: $00
	add  b                                           ; $63a1: $80
	ld   [hl], b                                     ; $63a2: $70
	add  b                                           ; $63a3: $80
	inc  c                                           ; $63a4: $0c
	add  b                                           ; $63a5: $80

jr_01a_63a6:
	nop                                              ; $63a6: $00
	add  b                                           ; $63a7: $80
	ld   [hl], b                                     ; $63a8: $70
	add  b                                           ; $63a9: $80
	inc  c                                           ; $63aa: $0c
	add  h                                           ; $63ab: $84
	nop                                              ; $63ac: $00
	add  b                                           ; $63ad: $80
	ld   [bc], a                                     ; $63ae: $02
	add  b                                           ; $63af: $80
	ldh  a, [c]                                      ; $63b0: $f2
	add  h                                           ; $63b1: $84
	ld   [bc], a                                     ; $63b2: $02
	add  d                                           ; $63b3: $82
	nop                                              ; $63b4: $00
	add  b                                           ; $63b5: $80
	ld   a, [bc]                                     ; $63b6: $0a
	add  b                                           ; $63b7: $80
	ld   c, d                                        ; $63b8: $4a
	add  b                                           ; $63b9: $80
	ld   a, h                                        ; $63ba: $7c
	add  h                                           ; $63bb: $84
	ld   b, h                                        ; $63bc: $44
	add  d                                           ; $63bd: $82
	nop                                              ; $63be: $00
	add  b                                           ; $63bf: $80
	db   $10                                         ; $63c0: $10
	add  b                                           ; $63c1: $80
	ld   a, h                                        ; $63c2: $7c
	add  b                                           ; $63c3: $80
	ld   b, h                                        ; $63c4: $44
	add  b                                           ; $63c5: $80
	ld   a, h                                        ; $63c6: $7c
	add  b                                           ; $63c7: $80

jr_01a_63c8:
	ld   b, h                                        ; $63c8: $44
	add  b                                           ; $63c9: $80
	ld   a, h                                        ; $63ca: $7c
	add  d                                           ; $63cb: $82
	nop                                              ; $63cc: $00
	add  b                                           ; $63cd: $80
	ld   a, [hl]                                     ; $63ce: $7e
	add  b                                           ; $63cf: $80
	ld   b, d                                        ; $63d0: $42
	add  b                                           ; $63d1: $80
	ld   a, [hl]                                     ; $63d2: $7e
	add  b                                           ; $63d3: $80
	ld   c, b                                        ; $63d4: $48
	add  b                                           ; $63d5: $80
	ld   a, [hl]                                     ; $63d6: $7e
	add  b                                           ; $63d7: $80
	ld   c, b                                        ; $63d8: $48
	add  b                                           ; $63d9: $80
	inc  b                                           ; $63da: $04
	add  b                                           ; $63db: $80
	add  b                                           ; $63dc: $80
	add  b                                           ; $63dd: $80
	ld   b, b                                        ; $63de: $40
	add  b                                           ; $63df: $80
	jr   c, jr_01a_6368                              ; $63e0: $38 $86

	nop                                              ; $63e2: $00
	add  b                                           ; $63e3: $80
	jr   nz, jr_01a_6366                             ; $63e4: $20 $80

	db   $10                                         ; $63e6: $10
	add  b                                           ; $63e7: $80
	ld   [$0480], sp                                 ; $63e8: $08 $80 $04
	add  [hl]                                        ; $63eb: $86
	nop                                              ; $63ec: $00
	add  b                                           ; $63ed: $80

jr_01a_63ee:
	ld   b, d                                        ; $63ee: $42
	add  d                                           ; $63ef: $82
	ld   [bc], a                                     ; $63f0: $02
	add  b                                           ; $63f1: $80
	inc  a                                           ; $63f2: $3c
	add  [hl]                                        ; $63f3: $86
	nop                                              ; $63f4: $00
	add  b                                           ; $63f5: $80
	ld   c, d                                        ; $63f6: $4a
	add  b                                           ; $63f7: $80
	ld   c, b                                        ; $63f8: $48
	add  b                                           ; $63f9: $80
	adc  b                                           ; $63fa: $88
	add  b                                           ; $63fb: $80
	sub  b                                           ; $63fc: $90
	add  [hl]                                        ; $63fd: $86
	nop                                              ; $63fe: $00
	add  b                                           ; $63ff: $80
	jp   nc, Jump_01a_4c82                           ; $6400: $d2 $82 $4c

	add  b                                           ; $6403: $80
	sub  d                                           ; $6404: $92
	add  [hl]                                        ; $6405: $86
	nop                                              ; $6406: $00
	add  b                                           ; $6407: $80
	add  h                                           ; $6408: $84
	add  b                                           ; $6409: $80
	call nz, $0880                                   ; $640a: $c4 $80 $08
	add  b                                           ; $640d: $80
	jr   nc, jr_01a_6396                             ; $640e: $30 $86

	nop                                              ; $6410: $00
	add  b                                           ; $6411: $80
	ld   [bc], a                                     ; $6412: $02
	add  b                                           ; $6413: $80
	ld   [hl-], a                                    ; $6414: $32
	add  b                                           ; $6415: $80
	ld   c, d                                        ; $6416: $4a
	add  b                                           ; $6417: $80

jr_01a_6418:
	inc  a                                           ; $6418: $3c
	add  [hl]                                        ; $6419: $86
	nop                                              ; $641a: $00
	add  b                                           ; $641b: $80

jr_01a_641c:
	ld   d, h                                        ; $641c: $54
	add  b                                           ; $641d: $80
	sub  d                                           ; $641e: $92
	add  d                                           ; $641f: $82
	db   $10                                         ; $6420: $10
	add  [hl]                                        ; $6421: $86
	nop                                              ; $6422: $00
	add  b                                           ; $6423: $80
	jr   nc, jr_01a_63a6                             ; $6424: $30 $80

	ld   d, b                                        ; $6426: $50
	add  b                                           ; $6427: $80
	ld   b, b                                        ; $6428: $40
	add  b                                           ; $6429: $80

jr_01a_642a:
	inc  a                                           ; $642a: $3c
	add  [hl]                                        ; $642b: $86
	nop                                              ; $642c: $00
	add  b                                           ; $642d: $80
	inc  d                                           ; $642e: $14
	add  b                                           ; $642f: $80
	inc  c                                           ; $6430: $0c
	add  b                                           ; $6431: $80

jr_01a_6432:
	ld   [$7080], sp                                 ; $6432: $08 $80 $70
	add  [hl]                                        ; $6435: $86
	nop                                              ; $6436: $00
	add  b                                           ; $6437: $80
	ret  z                                           ; $6438: $c8

	add  h                                           ; $6439: $84
	ld   [$008a], sp                                 ; $643a: $08 $8a $00
	add  b                                           ; $643d: $80
	ld   [hl], b                                     ; $643e: $70
	add  b                                           ; $643f: $80
	inc  c                                           ; $6440: $0c
	add  [hl]                                        ; $6441: $86
	nop                                              ; $6442: $00
	add  d                                           ; $6443: $82
	inc  b                                           ; $6444: $04
	add  b                                           ; $6445: $80
	jr   jr_01a_63c8                                 ; $6446: $18 $80

	ld   h, b                                        ; $6448: $60
	add  [hl]                                        ; $6449: $86
	nop                                              ; $644a: $00
	add  b                                           ; $644b: $80
	add  h                                           ; $644c: $84
	add  b                                           ; $644d: $80
	inc  b                                           ; $644e: $04
	add  b                                           ; $644f: $80
	ld   [$7080], sp                                 ; $6450: $08 $80 $70
	add  [hl]                                        ; $6453: $86
	nop                                              ; $6454: $00
	add  b                                           ; $6455: $80
	ld   b, d                                        ; $6456: $42
	add  b                                           ; $6457: $80
	ld   d, h                                        ; $6458: $54
	add  b                                           ; $6459: $80
	ld   e, b                                        ; $645a: $58
	add  b                                           ; $645b: $80
	ld   h, [hl]                                     ; $645c: $66
	add  [hl]                                        ; $645d: $86
	nop                                              ; $645e: $00
	add  b                                           ; $645f: $80
	ld   a, [hl]                                     ; $6460: $7e
	add  b                                           ; $6461: $80
	ld   h, d                                        ; $6462: $62
	add  b                                           ; $6463: $80
	and  d                                           ; $6464: $a2
	add  b                                           ; $6465: $80
	cp   [hl]                                        ; $6466: $be
	adc  d                                           ; $6467: $8a
	nop                                              ; $6468: $00
	add  b                                           ; $6469: $80
	db   $10                                         ; $646a: $10
	add  d                                           ; $646b: $82
	jr   z, jr_01a_63ee                              ; $646c: $28 $80

	ld   b, h                                        ; $646e: $44
	add  b                                           ; $646f: $80
	cp   d                                           ; $6470: $ba
	adc  b                                           ; $6471: $88
	nop                                              ; $6472: $00
	add  b                                           ; $6473: $80
	add  b                                           ; $6474: $80
	add  b                                           ; $6475: $80
	add  h                                           ; $6476: $84
	add  d                                           ; $6477: $82
	add  d                                           ; $6478: $82
	add  b                                           ; $6479: $80
	nop                                              ; $647a: $00
	add  b                                           ; $647b: $80
	ld   b, d                                        ; $647c: $42
	add  b                                           ; $647d: $80
	db   $e4                                         ; $647e: $e4
	add  b                                           ; $647f: $80
	ld   c, b                                        ; $6480: $48
	add  b                                           ; $6481: $80
	rst  $28                                         ; $6482: $ef
	add  h                                           ; $6483: $84
	ld   [$0084], a                                  ; $6484: $ea $84 $00
	add  [hl]                                        ; $6487: $86

jr_01a_6488:
	ld   b, h                                        ; $6488: $44
	add  b                                           ; $6489: $80
	ld   h, h                                        ; $648a: $64
	add  d                                           ; $648b: $82
	ld   a, [bc]                                     ; $648c: $0a
	add  b                                           ; $648d: $80
	nop                                              ; $648e: $00
	add  b                                           ; $648f: $80
	cp   $80                                         ; $6490: $fe $80
	ld   [$1080], sp                                 ; $6492: $08 $80 $10
	add  d                                           ; $6495: $82
	jr   nz, jr_01a_6418                             ; $6496: $20 $80

	nop                                              ; $6498: $00
	add  b                                           ; $6499: $80
	jr   nz, jr_01a_641c                             ; $649a: $20 $80

jr_01a_649c:
	ld   d, b                                        ; $649c: $50
	add  b                                           ; $649d: $80
	jr   nz, jr_01a_642a                             ; $649e: $20 $8a

	nop                                              ; $64a0: $00
	add  b                                           ; $64a1: $80
	add  h                                           ; $64a2: $84
	add  b                                           ; $64a3: $80
	sbc  [hl]                                        ; $64a4: $9e
	add  [hl]                                        ; $64a5: $86
	add  h                                           ; $64a6: $84
	add  d                                           ; $64a7: $82
	nop                                              ; $64a8: $00
	add  d                                           ; $64a9: $82
	ld   c, d                                        ; $64aa: $4a
	add  [hl]                                        ; $64ab: $86

jr_01a_64ac:
	ld   b, b                                        ; $64ac: $40
	add  h                                           ; $64ad: $84
	nop                                              ; $64ae: $00
	add  b                                           ; $64af: $80
	jr   nz, jr_01a_6432                             ; $64b0: $20 $80

	db   $fc                                         ; $64b2: $fc
	add  b                                           ; $64b3: $80
	db   $10                                         ; $64b4: $10
	add  b                                           ; $64b5: $80
	cp   $80                                         ; $64b6: $fe $80
	ld   [$0082], sp                                 ; $64b8: $08 $82 $00
	add  b                                           ; $64bb: $80

jr_01a_64bc:
	sbc  [hl]                                        ; $64bc: $9e
	add  b                                           ; $64bd: $80
	ld   d, b                                        ; $64be: $50
	add  b                                           ; $64bf: $80
	ld   e, $80                                      ; $64c0: $1e $80
	ld   a, [$3a80]                                  ; $64c2: $fa $80 $3a
	add  b                                           ; $64c5: $80
	inc  [hl]                                        ; $64c6: $34
	add  d                                           ; $64c7: $82
	nop                                              ; $64c8: $00
	adc  d                                           ; $64c9: $8a
	ld   b, b                                        ; $64ca: $40
	add  d                                           ; $64cb: $82
	nop                                              ; $64cc: $00
	add  d                                           ; $64cd: $82
	db   $10                                         ; $64ce: $10
	add  b                                           ; $64cf: $80

jr_01a_64d0:
	cp   $80                                         ; $64d0: $fe $80
	db   $10                                         ; $64d2: $10
	add  b                                           ; $64d3: $80
	cp   $80                                         ; $64d4: $fe $80
	db   $10                                         ; $64d6: $10
	add  d                                           ; $64d7: $82
	nop                                              ; $64d8: $00
	add  d                                           ; $64d9: $82

jr_01a_64da:
	ld   [$fe80], sp                                 ; $64da: $08 $80 $fe
	add  b                                           ; $64dd: $80
	ld   [$3880], sp                                 ; $64de: $08 $80 $38
	add  b                                           ; $64e1: $80
	ld   c, b                                        ; $64e2: $48
	add  d                                           ; $64e3: $82
	nop                                              ; $64e4: $00
	add  b                                           ; $64e5: $80
	inc  d                                           ; $64e6: $14
	add  b                                           ; $64e7: $80
	ld   [de], a                                     ; $64e8: $12
	add  b                                           ; $64e9: $80
	db   $fc                                         ; $64ea: $fc
	add  b                                           ; $64eb: $80
	adc  b                                           ; $64ec: $88
	add  b                                           ; $64ed: $80

jr_01a_64ee:
	adc  d                                           ; $64ee: $8a
	add  b                                           ; $64ef: $80
	ld   [$0082], a                                  ; $64f0: $ea $82 $00
	add  d                                           ; $64f3: $82
	ld   [$3e80], sp                                 ; $64f4: $08 $80 $3e
	add  b                                           ; $64f7: $80

jr_01a_64f8:
	ld   [$4a82], a                                  ; $64f8: $ea $82 $4a
	add  d                                           ; $64fb: $82
	nop                                              ; $64fc: $00
	add  d                                           ; $64fd: $82
	ld   b, b                                        ; $64fe: $40
	add  b                                           ; $64ff: $80
	ld   b, d                                        ; $6500: $42
	add  b                                           ; $6501: $80
	ld   c, h                                        ; $6502: $4c
	add  b                                           ; $6503: $80
	jr   nc, @-$7e                                   ; $6504: $30 $80

	jr   nz, jr_01a_6488                             ; $6506: $20 $80

	ld   a, h                                        ; $6508: $7c
	add  d                                           ; $6509: $82
	ld   b, h                                        ; $650a: $44
	add  b                                           ; $650b: $80
	ld   a, h                                        ; $650c: $7c
	add  [hl]                                        ; $650d: $86
	nop                                              ; $650e: $00
	add  d                                           ; $650f: $82
	add  d                                           ; $6510: $82
	add  b                                           ; $6511: $80
	ld   d, b                                        ; $6512: $50
	add  b                                           ; $6513: $80
	jr   nz, jr_01a_649c                             ; $6514: $20 $86

	nop                                              ; $6516: $00
	add  b                                           ; $6517: $80
	ld   [$4a80], a                                  ; $6518: $ea $80 $4a
	add  b                                           ; $651b: $80
	ldh  a, [c]                                      ; $651c: $f2
	add  b                                           ; $651d: $80
	ld   d, d                                        ; $651e: $52
	add  [hl]                                        ; $651f: $86
	nop                                              ; $6520: $00
	add  d                                           ; $6521: $82
	inc  b                                           ; $6522: $04
	add  b                                           ; $6523: $80
	ld   [$3080], sp                                 ; $6524: $08 $80 $30
	add  [hl]                                        ; $6527: $86
	nop                                              ; $6528: $00
	add  d                                           ; $6529: $82
	jr   nz, jr_01a_64ac                             ; $652a: $20 $80

	db   $10                                         ; $652c: $10
	add  b                                           ; $652d: $80
	inc  c                                           ; $652e: $0c
	adc  d                                           ; $652f: $8a
	nop                                              ; $6530: $00
	add  b                                           ; $6531: $80
	ld   b, b                                        ; $6532: $40
	add  b                                           ; $6533: $80
	jr   nz, jr_01a_64bc                             ; $6534: $20 $86

	nop                                              ; $6536: $00
	add  b                                           ; $6537: $80
	sbc  h                                           ; $6538: $9c
	add  b                                           ; $6539: $80
	and  [hl]                                        ; $653a: $a6
	add  b                                           ; $653b: $80
	and  h                                           ; $653c: $a4
	add  b                                           ; $653d: $80
	ld   e, b                                        ; $653e: $58
	add  [hl]                                        ; $653f: $86
	nop                                              ; $6540: $00
	add  b                                           ; $6541: $80
	ld   b, b                                        ; $6542: $40
	add  b                                           ; $6543: $80
	ld   b, d                                        ; $6544: $42
	add  b                                           ; $6545: $80
	inc  h                                           ; $6546: $24
	add  b                                           ; $6547: $80
	jr   jr_01a_64d0                                 ; $6548: $18 $86

	nop                                              ; $654a: $00
	add  b                                           ; $654b: $80
	inc  b                                           ; $654c: $04
	add  b                                           ; $654d: $80
	add  b                                           ; $654e: $80
	add  b                                           ; $654f: $80
	ld   b, b                                        ; $6550: $40
	add  b                                           ; $6551: $80
	jr   c, jr_01a_64da                              ; $6552: $38 $86

	nop                                              ; $6554: $00
	add  b                                           ; $6555: $80
	ld   d, h                                        ; $6556: $54
	add  b                                           ; $6557: $80
	ld   e, d                                        ; $6558: $5a
	add  b                                           ; $6559: $80
	ld   h, b                                        ; $655a: $60
	add  b                                           ; $655b: $80
	cp   [hl]                                        ; $655c: $be
	add  [hl]                                        ; $655d: $86
	nop                                              ; $655e: $00
	add  b                                           ; $655f: $80
	ld   b, b                                        ; $6560: $40
	add  b                                           ; $6561: $80
	ld   b, d                                        ; $6562: $42
	add  b                                           ; $6563: $80
	inc  h                                           ; $6564: $24
	add  b                                           ; $6565: $80
	jr   jr_01a_64ee                                 ; $6566: $18 $86

	nop                                              ; $6568: $00
	add  b                                           ; $6569: $80
	ld   [hl], b                                     ; $656a: $70
	add  b                                           ; $656b: $80

jr_01a_656c:
	sbc  b                                           ; $656c: $98
	add  b                                           ; $656d: $80
	sub  h                                           ; $656e: $94
	add  b                                           ; $656f: $80
	ld   h, d                                        ; $6570: $62
	add  [hl]                                        ; $6571: $86
	nop                                              ; $6572: $00
	add  b                                           ; $6573: $80
	ld   c, b                                        ; $6574: $48
	add  b                                           ; $6575: $80
	jr   c, jr_01a_64f8                              ; $6576: $38 $80

	ld   [$3080], sp                                 ; $6578: $08 $80 $30
	add  [hl]                                        ; $657b: $86
	nop                                              ; $657c: $00
	add  b                                           ; $657d: $80
	xor  h                                           ; $657e: $ac
	add  b                                           ; $657f: $80
	xor  b                                           ; $6580: $a8
	add  b                                           ; $6581: $80
	or   h                                           ; $6582: $b4
	add  b                                           ; $6583: $80
	and  d                                           ; $6584: $a2
	add  [hl]                                        ; $6585: $86
	nop                                              ; $6586: $00
	add  b                                           ; $6587: $80
	ld   l, d                                        ; $6588: $6a
	add  b                                           ; $6589: $80
	sub  d                                           ; $658a: $92
	add  b                                           ; $658b: $80
	ld   [de], a                                     ; $658c: $12
	add  b                                           ; $658d: $80
	inc  b                                           ; $658e: $04
	add  [hl]                                        ; $658f: $86
	nop                                              ; $6590: $00
	add  h                                           ; $6591: $84
	ld   b, b                                        ; $6592: $40
	add  b                                           ; $6593: $80
	ld   a, $8c                                      ; $6594: $3e $8c
	nop                                              ; $6596: $00
	add  b                                           ; $6597: $80
	ld   a, [hl]                                     ; $6598: $7e
	add  b                                           ; $6599: $80
	ld   [bc], a                                     ; $659a: $02
	add  d                                           ; $659b: $82
	inc  b                                           ; $659c: $04
	add  b                                           ; $659d: $80
	ld   [$0082], sp                                 ; $659e: $08 $82 $00
	add  b                                           ; $65a1: $80
	ld   c, $80                                      ; $65a2: $0e $80
	ld   a, [bc]                                     ; $65a4: $0a
	add  b                                           ; $65a5: $80
	ld   c, [hl]                                     ; $65a6: $4e
	add  b                                           ; $65a7: $80
	ld   b, b                                        ; $65a8: $40
	add  b                                           ; $65a9: $80
	ld   a, [hl]                                     ; $65aa: $7e
	add  b                                           ; $65ab: $80
	ld   b, b                                        ; $65ac: $40
	adc  d                                           ; $65ad: $8a
	nop                                              ; $65ae: $00
	add  b                                           ; $65af: $80
	add  b                                           ; $65b0: $80
	add  b                                           ; $65b1: $80
	ld   a, [hl]                                     ; $65b2: $7e
	add  d                                           ; $65b3: $82
	nop                                              ; $65b4: $00
	add  b                                           ; $65b5: $80
	ld   a, [bc]                                     ; $65b6: $0a
	add  b                                           ; $65b7: $80
	ld   c, d                                        ; $65b8: $4a
	add  d                                           ; $65b9: $82
	ld   b, b                                        ; $65ba: $40
	add  b                                           ; $65bb: $80
	ld   h, b                                        ; $65bc: $60
	add  b                                           ; $65bd: $80
	ld   d, b                                        ; $65be: $50
	add  d                                           ; $65bf: $82
	nop                                              ; $65c0: $00
	add  h                                           ; $65c1: $84
	db   $10                                         ; $65c2: $10
	add  b                                           ; $65c3: $80
	inc  e                                           ; $65c4: $1c
	add  d                                           ; $65c5: $82
	db   $10                                         ; $65c6: $10
	add  d                                           ; $65c7: $82
	nop                                              ; $65c8: $00
	add  b                                           ; $65c9: $80
	ld   c, b                                        ; $65ca: $48
	add  b                                           ; $65cb: $80
	ld   a, [hl]                                     ; $65cc: $7e
	add  b                                           ; $65cd: $80
	ld   c, b                                        ; $65ce: $48
	add  b                                           ; $65cf: $80
	cp   [hl]                                        ; $65d0: $be
	add  d                                           ; $65d1: $82
	ld   l, d                                        ; $65d2: $6a
	add  d                                           ; $65d3: $82
	nop                                              ; $65d4: $00
	add  b                                           ; $65d5: $80
	ld   a, [hl]                                     ; $65d6: $7e
	add  d                                           ; $65d7: $82
	ld   d, d                                        ; $65d8: $52
	add  b                                           ; $65d9: $80
	ld   a, [hl]                                     ; $65da: $7e
	add  d                                           ; $65db: $82
	ld   d, d                                        ; $65dc: $52
	add  d                                           ; $65dd: $82
	nop                                              ; $65de: $00
	add  d                                           ; $65df: $82
	ld   c, b                                        ; $65e0: $48
	add  b                                           ; $65e1: $80
	cp   $82                                         ; $65e2: $fe $82
	ld   c, b                                        ; $65e4: $48
	add  b                                           ; $65e5: $80
	ld   b, b                                        ; $65e6: $40
	add  d                                           ; $65e7: $82
	nop                                              ; $65e8: $00
	add  h                                           ; $65e9: $84
	jr   nz, jr_01a_656c                             ; $65ea: $20 $80

	ld   b, b                                        ; $65ec: $40
	add  b                                           ; $65ed: $80
	ld   [hl], b                                     ; $65ee: $70
	add  b                                           ; $65ef: $80
	ld   c, b                                        ; $65f0: $48
	add  b                                           ; $65f1: $80
	rst  $38                                         ; $65f2: $ff
	nop                                              ; $65f3: $00
	add  b                                           ; $65f4: $80
	add  c                                           ; $65f5: $81
	rst  $38                                         ; $65f6: $ff
	ld   bc, $ffe0                                   ; $65f7: $01 $e0 $ff
	add  [hl]                                        ; $65fa: $86
	ldh  a, [rSC]                                    ; $65fb: $f0 $02
	sbc  a                                           ; $65fd: $9f
	rst  $38                                         ; $65fe: $ff
	nop                                              ; $65ff: $00
	add  c                                           ; $6600: $81
	rst  $38                                         ; $6601: $ff
	ld   bc, $ff00                                   ; $6602: $01 $00 $ff
	add  d                                           ; $6605: $82
	nop                                              ; $6606: $00
	add  b                                           ; $6607: $80
	sbc  h                                           ; $6608: $9c
	add  b                                           ; $6609: $80
	sub  h                                           ; $660a: $94
	add  b                                           ; $660b: $80
	rst  $38                                         ; $660c: $ff
	nop                                              ; $660d: $00
	nop                                              ; $660e: $00
	add  c                                           ; $660f: $81
	rst  $38                                         ; $6610: $ff
	ld   bc, $ff00                                   ; $6611: $01 $00 $ff
	add  d                                           ; $6614: $82
	nop                                              ; $6615: $00
	add  d                                           ; $6616: $82
	ld   [de], a                                     ; $6617: $12
	add  b                                           ; $6618: $80
	rst  $38                                         ; $6619: $ff
	nop                                              ; $661a: $00
	nop                                              ; $661b: $00
	add  c                                           ; $661c: $81
	rst  $38                                         ; $661d: $ff
	ld   bc, $ff00                                   ; $661e: $01 $00 $ff
	add  d                                           ; $6621: $82
	nop                                              ; $6622: $00
	add  b                                           ; $6623: $80
	ld   b, $80                                      ; $6624: $06 $80
	ld   bc, $ff80                                   ; $6626: $01 $80 $ff
	nop                                              ; $6629: $00
	nop                                              ; $662a: $00
	add  c                                           ; $662b: $81
	rst  $38                                         ; $662c: $ff
	ld   bc, $ff00                                   ; $662d: $01 $00 $ff
	add  d                                           ; $6630: $82
	nop                                              ; $6631: $00
	add  b                                           ; $6632: $80
	ld   bc, $1980                                   ; $6633: $01 $80 $19
	add  b                                           ; $6636: $80
	rst  $38                                         ; $6637: $ff
	nop                                              ; $6638: $00
	ld   bc, $ff81                                   ; $6639: $01 $81 $ff
	ld   bc, $ff07                                   ; $663c: $01 $07 $ff
	add  [hl]                                        ; $663f: $86
	rrca                                             ; $6640: $0f
	ld   bc, $f197                                   ; $6641: $01 $97 $f1
	add  h                                           ; $6644: $84
	ldh  a, [$80]                                    ; $6645: $f0 $80
	rst  $38                                         ; $6647: $ff
	nop                                              ; $6648: $00
	ldh  [$81], a                                    ; $6649: $e0 $81
	rst  $38                                         ; $664b: $ff
	ld   bc, $ff80                                   ; $664c: $01 $80 $ff
	add  b                                           ; $664f: $80
	ld   [$1480], sp                                 ; $6650: $08 $80 $14
	add  b                                           ; $6653: $80
	inc  h                                           ; $6654: $24
	add  b                                           ; $6655: $80
	ld   b, d                                        ; $6656: $42
	add  [hl]                                        ; $6657: $86
	nop                                              ; $6658: $00
	add  h                                           ; $6659: $84
	ld   b, b                                        ; $665a: $40
	add  b                                           ; $665b: $80
	ld   a, $96                                      ; $665c: $3e $96
	nop                                              ; $665e: $00
	add  b                                           ; $665f: $80
	ld   c, h                                        ; $6660: $4c
	add  h                                           ; $6661: $84
	ld   b, b                                        ; $6662: $40
	add  [hl]                                        ; $6663: $86
	nop                                              ; $6664: $00
	add  h                                           ; $6665: $84
	db   $10                                         ; $6666: $10
	add  b                                           ; $6667: $80
	cp   $86                                         ; $6668: $fe $86
	nop                                              ; $666a: $00
	add  b                                           ; $666b: $80
	ld   a, [hl]                                     ; $666c: $7e
	add  b                                           ; $666d: $80
	ld   c, b                                        ; $666e: $48
	add  b                                           ; $666f: $80
	ld   d, h                                        ; $6670: $54
	add  b                                           ; $6671: $80
	ld   h, [hl]                                     ; $6672: $66
	add  [hl]                                        ; $6673: $86
	nop                                              ; $6674: $00
	add  b                                           ; $6675: $80
	ld   a, [hl]                                     ; $6676: $7e
	add  d                                           ; $6677: $82
	ld   d, d                                        ; $6678: $52
	add  b                                           ; $6679: $80
	add  [hl]                                        ; $667a: $86
	add  [hl]                                        ; $667b: $86
	nop                                              ; $667c: $00
	add  h                                           ; $667d: $84
	ld   b, b                                        ; $667e: $40
	add  b                                           ; $667f: $80
	inc  a                                           ; $6680: $3c
	add  [hl]                                        ; $6681: $86
	nop                                              ; $6682: $00
	add  b                                           ; $6683: $80
	ld   c, b                                        ; $6684: $48
	add  d                                           ; $6685: $82
	adc  d                                           ; $6686: $8a
	add  b                                           ; $6687: $80
	add  h                                           ; $6688: $84
	add  [hl]                                        ; $6689: $86
	nop                                              ; $668a: $00
	ld   bc, $f393                                   ; $668b: $01 $93 $f3
	add  h                                           ; $668e: $84
	ldh  a, [$80]                                    ; $668f: $f0 $80
	di                                               ; $6691: $f3
	add  d                                           ; $6692: $82
	ldh  a, [$80]                                    ; $6693: $f0 $80
	ldh  a, [c]                                      ; $6695: $f2
	ld   bc, $ff9f                                   ; $6696: $01 $9f $ff
	add  b                                           ; $6699: $80
	push de                                          ; $669a: $d5
	add  b                                           ; $669b: $80
	rst  $30                                         ; $669c: $f7
	add  b                                           ; $669d: $80
	adc  b                                           ; $669e: $88
	add  b                                           ; $669f: $80
	cp   $80                                         ; $66a0: $fe $80
	adc  b                                           ; $66a2: $88
	add  b                                           ; $66a3: $80
	sbc  h                                           ; $66a4: $9c
	add  b                                           ; $66a5: $80
	xor  d                                           ; $66a6: $aa
	add  b                                           ; $66a7: $80
	ld   [de], a                                     ; $66a8: $12
	add  b                                           ; $66a9: $80
	rla                                              ; $66aa: $17
	add  b                                           ; $66ab: $80
	dec  h                                           ; $66ac: $25
	add  b                                           ; $66ad: $80
	ld   l, c                                        ; $66ae: $69
	add  [hl]                                        ; $66af: $86
	ld   hl, $1f80                                   ; $66b0: $21 $80 $1f
	add  b                                           ; $66b3: $80
	call nz, $0480                                   ; $66b4: $c4 $80 $04
	add  b                                           ; $66b7: $80
	rlca                                             ; $66b8: $07
	add  b                                           ; $66b9: $80
	call nz, $0880                                   ; $66ba: $c4 $80 $08
	add  b                                           ; $66bd: $80
	ret  z                                           ; $66be: $c8

	add  b                                           ; $66bf: $80
	db   $10                                         ; $66c0: $10
	add  b                                           ; $66c1: $80
	rst  ToBoot                                         ; $66c2: $c7
	add  b                                           ; $66c3: $80
	ld   bc, $1980                                   ; $66c4: $01 $80 $19
	add  b                                           ; $66c7: $80
	add  a                                           ; $66c8: $87
	add  b                                           ; $66c9: $80
	add  c                                           ; $66ca: $81
	add  b                                           ; $66cb: $80
	adc  c                                           ; $66cc: $89
	add  b                                           ; $66cd: $80
	adc  d                                           ; $66ce: $8a
	add  b                                           ; $66cf: $80
	sub  d                                           ; $66d0: $92
	ld   bc, $cfc9                                   ; $66d1: $01 $c9 $cf
	add  d                                           ; $66d4: $82
	rrca                                             ; $66d5: $0f
	add  b                                           ; $66d6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66d7: $cf
	add  h                                           ; $66d8: $84
	rrca                                             ; $66d9: $0f
	add  b                                           ; $66da: $80
	adc  a                                           ; $66db: $8f
	ld   bc, $c9cf                                   ; $66dc: $01 $cf $c9
	add  b                                           ; $66df: $80
	adc  b                                           ; $66e0: $88
	add  d                                           ; $66e1: $82
	nop                                              ; $66e2: $00
	add  b                                           ; $66e3: $80
	rst  $38                                         ; $66e4: $ff
	nop                                              ; $66e5: $00
	nop                                              ; $66e6: $00
	add  c                                           ; $66e7: $81
	rst  $38                                         ; $66e8: $ff
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00

jr_01a_66eb:
	add  b                                           ; $66eb: $80
	rst  $38                                         ; $66ec: $ff
	add  b                                           ; $66ed: $80
	nop                                              ; $66ee: $00
	add  b                                           ; $66ef: $80
	rlca                                             ; $66f0: $07
	add  b                                           ; $66f1: $80
	rrca                                             ; $66f2: $0f
	dec  b                                           ; $66f3: $05
	add  sp, $28                                     ; $66f4: $e8 $28
	add  sp, -$51                                    ; $66f6: $e8 $af
	ret  z                                           ; $66f8: $c8

	ld   c, b                                        ; $66f9: $48
	add  b                                           ; $66fa: $80
	adc  b                                           ; $66fb: $88
	ld   bc, $ef08                                   ; $66fc: $01 $08 $ef
	add  b                                           ; $66ff: $80
	rra                                              ; $6700: $1f
	add  b                                           ; $6701: $80
	rrca                                             ; $6702: $0f
	inc  bc                                          ; $6703: $03
	nop                                              ; $6704: $00
	stop                                             ; $6705: $10 $00
	rrca                                             ; $6707: $0f
	add  l                                           ; $6708: $85
	nop                                              ; $6709: $00
	add  c                                           ; $670a: $81
	ld   hl, sp-$80                                  ; $670b: $f8 $80
	ldh  a, [$03]                                    ; $670d: $f0 $03
	nop                                              ; $670f: $00
	ld   [$f000], sp                                 ; $6710: $08 $00 $f0
	add  a                                           ; $6713: $87
	nop                                              ; $6714: $00
	add  b                                           ; $6715: $80
	ld   bc, $0380                                   ; $6716: $01 $80 $03
	nop                                              ; $6719: $00
	rlca                                             ; $671a: $07
	add  c                                           ; $671b: $81
	dec  b                                           ; $671c: $05
	nop                                              ; $671d: $00
	dec  c                                           ; $671e: $0d
	add  e                                           ; $671f: $83
	add  hl, bc                                      ; $6720: $09
	ld   bc, $7e78                                   ; $6721: $01 $78 $7e
	add  b                                           ; $6724: $80
	rst  $38                                         ; $6725: $ff
	dec  c                                           ; $6726: $0d
	ld   bc, $82ff                                   ; $6727: $01 $ff $82
	rst  $38                                         ; $672a: $ff
	db   $fd                                         ; $672b: $fd
	jp   $ffc1                                       ; $672c: $c3 $c1 $ff


	add  d                                           ; $672f: $82
	rst  $38                                         ; $6730: $ff
	add  d                                           ; $6731: $82
	rst  $38                                         ; $6732: $ff
	add  e                                           ; $6733: $83
	nop                                              ; $6734: $00
	add  b                                           ; $6735: $80
	add  b                                           ; $6736: $80
	ld   [bc], a                                     ; $6737: $02
	ret  nz                                          ; $6738: $c0

	ld   b, b                                        ; $6739: $40
	ld   h, b                                        ; $673a: $60
	add  c                                           ; $673b: $81
	and  b                                           ; $673c: $a0
	nop                                              ; $673d: $00
	or   b                                           ; $673e: $b0
	add  b                                           ; $673f: $80
	sub  b                                           ; $6740: $90
	add  b                                           ; $6741: $80
	db   $10                                         ; $6742: $10
	ld   bc, $6f90                                   ; $6743: $01 $90 $6f
	add  d                                           ; $6746: $82
	add  hl, bc                                      ; $6747: $09
	add  b                                           ; $6748: $80
	dec  c                                           ; $6749: $0d
	add  b                                           ; $674a: $80
	ld   b, $0d                                      ; $674b: $06 $0d
	inc  bc                                          ; $674d: $03
	dec  bc                                          ; $674e: $0b
	ld   bc, $0005                                   ; $674f: $01 $05 $00
	inc  bc                                          ; $6752: $03
	nop                                              ; $6753: $00
	ld   a, [hl]                                     ; $6754: $7e
	jp   $ffc1                                       ; $6755: $c3 $c1 $ff


	add  d                                           ; $6758: $82
	rst  $38                                         ; $6759: $ff
	ld   bc, $fe80                                   ; $675a: $01 $80 $fe
	add  b                                           ; $675d: $80
	nop                                              ; $675e: $00
	add  b                                           ; $675f: $80
	rst  $38                                         ; $6760: $ff
	add  b                                           ; $6761: $80
	ld   a, [hl]                                     ; $6762: $7e
	ld   bc, $0f00                                   ; $6763: $01 $00 $0f
	add  d                                           ; $6766: $82
	sub  b                                           ; $6767: $90
	add  b                                           ; $6768: $80
	jr   nc, jr_01a_66eb                             ; $6769: $30 $80

	ld   h, b                                        ; $676b: $60
	dec  b                                           ; $676c: $05
	ret  nz                                          ; $676d: $c0

	ret  nc                                          ; $676e: $d0

	add  b                                           ; $676f: $80
	and  b                                           ; $6770: $a0
	nop                                              ; $6771: $00
	ret  nz                                          ; $6772: $c0

	add  c                                           ; $6773: $81
	nop                                              ; $6774: $00
	add  b                                           ; $6775: $80
	ld   bc, $0302                                   ; $6776: $01 $02 $03
	ld   [bc], a                                     ; $6779: $02
	ld   b, $81                                      ; $677a: $06 $81
	inc  b                                           ; $677c: $04
	nop                                              ; $677d: $00
	inc  c                                           ; $677e: $0c
	add  d                                           ; $677f: $82
	ld   [$0913], sp                                 ; $6780: $08 $13 $09
	ld   a, b                                        ; $6783: $78
	ld   a, [hl]                                     ; $6784: $7e
	rst  $38                                         ; $6785: $ff
	sbc  c                                           ; $6786: $99
	add  c                                           ; $6787: $81
	inc  a                                           ; $6788: $3c
	jr   jr_01a_6809                                 ; $6789: $18 $7e

	ld   h, [hl]                                     ; $678b: $66
	ld   a, [hl]                                     ; $678c: $7e
	inc  a                                           ; $678d: $3c
	rst  $38                                         ; $678e: $ff
	db   $db                                         ; $678f: $db
	rst  $20                                         ; $6790: $e7
	ld   h, [hl]                                     ; $6791: $66
	rst  $38                                         ; $6792: $ff
	jp   $81ff                                       ; $6793: $c3 $ff $81


	add  b                                           ; $6796: $80
	rst  $38                                         ; $6797: $ff
	ld   bc, $42c3                                   ; $6798: $01 $c3 $42
	add  b                                           ; $679b: $80
	jp   $8180                                       ; $679c: $c3 $80 $81


	add  b                                           ; $679f: $80
	rst  $38                                         ; $67a0: $ff
	add  b                                           ; $67a1: $80
	ld   a, [hl]                                     ; $67a2: $7e
	ld   bc, $de00                                   ; $67a3: $01 $00 $de
	add  c                                           ; $67a6: $81
	ld   hl, $0082                                   ; $67a7: $21 $82 $00
	add  b                                           ; $67aa: $80
	rst  $38                                         ; $67ab: $ff
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	add  c                                           ; $67ae: $81
	rst  $38                                         ; $67af: $ff
	ld   bc, $ff00                                   ; $67b0: $01 $00 $ff
	add  b                                           ; $67b3: $80
	db   $10                                         ; $67b4: $10
	add  b                                           ; $67b5: $80
	inc  bc                                          ; $67b6: $03
	add  d                                           ; $67b7: $82
	nop                                              ; $67b8: $00
	add  b                                           ; $67b9: $80
	rst  $38                                         ; $67ba: $ff
	nop                                              ; $67bb: $00
	nop                                              ; $67bc: $00
	add  c                                           ; $67bd: $81
	rst  $38                                         ; $67be: $ff
	ld   bc, $ff00                                   ; $67bf: $01 $00 $ff
	add  b                                           ; $67c2: $80
	sub  a                                           ; $67c3: $97
	add  b                                           ; $67c4: $80
	sub  h                                           ; $67c5: $94
	add  d                                           ; $67c6: $82
	nop                                              ; $67c7: $00
	add  b                                           ; $67c8: $80
	rst  $38                                         ; $67c9: $ff
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	add  c                                           ; $67cc: $81
	rst  $38                                         ; $67cd: $ff
	inc  bc                                          ; $67ce: $03
	nop                                              ; $67cf: $00
	rst  $38                                         ; $67d0: $ff
	ret                                              ; $67d1: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67d2: $cf
	add  b                                           ; $67d3: $80
	ld   c, a                                        ; $67d4: $4f
	add  d                                           ; $67d5: $82
	rrca                                             ; $67d6: $0f
	add  b                                           ; $67d7: $80
	rst  $38                                         ; $67d8: $ff
	nop                                              ; $67d9: $00
	rlca                                             ; $67da: $07
	add  c                                           ; $67db: $81
	rst  $38                                         ; $67dc: $ff
	ld   bc, $ff01                                   ; $67dd: $01 $01 $ff
	ld   b, b                                        ; $67e0: $40
	ld   [bc], a                                     ; $67e1: $02
	rst  $38                                         ; $67e2: $ff
	nop                                              ; $67e3: $00
	rst  $38                                         ; $67e4: $ff
	nop                                              ; $67e5: $00
	rst  $38                                         ; $67e6: $ff
	nop                                              ; $67e7: $00
	rst  $38                                         ; $67e8: $ff
	nop                                              ; $67e9: $00
	rst  $38                                         ; $67ea: $ff
	nop                                              ; $67eb: $00
	rst  $38                                         ; $67ec: $ff
	nop                                              ; $67ed: $00
	rst  $38                                         ; $67ee: $ff
	nop                                              ; $67ef: $00
	rst  $38                                         ; $67f0: $ff
	nop                                              ; $67f1: $00
	rst  $38                                         ; $67f2: $ff
	nop                                              ; $67f3: $00
	rst  $38                                         ; $67f4: $ff
	nop                                              ; $67f5: $00
	rst  $38                                         ; $67f6: $ff
	nop                                              ; $67f7: $00
	rst  $38                                         ; $67f8: $ff
	nop                                              ; $67f9: $00
	rst  $38                                         ; $67fa: $ff
	nop                                              ; $67fb: $00
	rst  $38                                         ; $67fc: $ff
	nop                                              ; $67fd: $00
	rst  $38                                         ; $67fe: $ff
	nop                                              ; $67ff: $00
	rst  $38                                         ; $6800: $ff
	nop                                              ; $6801: $00
	inc  b                                           ; $6802: $04
	inc  b                                           ; $6803: $04
	nop                                              ; $6804: $00
	ld   [bc], a                                     ; $6805: $02
	nop                                              ; $6806: $00
	dec  b                                           ; $6807: $05
	add  c                                           ; $6808: $81

jr_01a_6809:
	nop                                              ; $6809: $00
	ld   [bc], a                                     ; $680a: $02
	ld   [bc], a                                     ; $680b: $02
	nop                                              ; $680c: $00
	ld   bc, $0084                                   ; $680d: $01 $84 $00
	add  e                                           ; $6810: $83
	rra                                              ; $6811: $1f
	ld   a, [bc]                                     ; $6812: $0a
	jr   jr_01a_6854                                 ; $6813: $18 $3f

	inc  a                                           ; $6815: $3c
	ccf                                              ; $6816: $3f
	ld   a, $7f                                      ; $6817: $3e $7f
	ld   [hl], a                                     ; $6819: $77
	ld   a, a                                        ; $681a: $7f
	ld   a, c                                        ; $681b: $79
	rst  $38                                         ; $681c: $ff
	db   $f4                                         ; $681d: $f4
	add  e                                           ; $681e: $83
	rst  $38                                         ; $681f: $ff
	add  b                                           ; $6820: $80
	nop                                              ; $6821: $00
	add  b                                           ; $6822: $80
	rst  $38                                         ; $6823: $ff
	add  h                                           ; $6824: $84
	nop                                              ; $6825: $00
	add  h                                           ; $6826: $84
	rst  $38                                         ; $6827: $ff
	add  b                                           ; $6828: $80
	nop                                              ; $6829: $00
	add  b                                           ; $682a: $80
	rst  $38                                         ; $682b: $ff
	add  b                                           ; $682c: $80
	nop                                              ; $682d: $00
	add  b                                           ; $682e: $80
	ld   b, $80                                      ; $682f: $06 $80
	ld   h, h                                        ; $6831: $64
	add  h                                           ; $6832: $84
	rst  $38                                         ; $6833: $ff

jr_01a_6834:
	add  b                                           ; $6834: $80
	nop                                              ; $6835: $00
	add  b                                           ; $6836: $80
	rst  $38                                         ; $6837: $ff
	add  d                                           ; $6838: $82
	nop                                              ; $6839: $00
	add  b                                           ; $683a: $80
	ldh  [$84], a                                    ; $683b: $e0 $84
	rst  $38                                         ; $683d: $ff
	add  b                                           ; $683e: $80
	nop                                              ; $683f: $00
	add  b                                           ; $6840: $80
	rst  $38                                         ; $6841: $ff
	add  h                                           ; $6842: $84
	nop                                              ; $6843: $00
	add  h                                           ; $6844: $84
	rst  $38                                         ; $6845: $ff
	add  b                                           ; $6846: $80
	nop                                              ; $6847: $00
	add  b                                           ; $6848: $80
	rst  $38                                         ; $6849: $ff
	add  d                                           ; $684a: $82
	nop                                              ; $684b: $00
	add  b                                           ; $684c: $80
	ld   bc, $ff84                                   ; $684d: $01 $84 $ff
	add  b                                           ; $6850: $80
	nop                                              ; $6851: $00
	add  b                                           ; $6852: $80
	rst  $38                                         ; $6853: $ff

jr_01a_6854:
	add  d                                           ; $6854: $82
	nop                                              ; $6855: $00
	add  b                                           ; $6856: $80
	ld   hl, sp-$7c                                  ; $6857: $f8 $84
	rst  $38                                         ; $6859: $ff
	add  b                                           ; $685a: $80
	nop                                              ; $685b: $00
	add  b                                           ; $685c: $80
	rst  $38                                         ; $685d: $ff
	add  b                                           ; $685e: $80
	nop                                              ; $685f: $00
	add  b                                           ; $6860: $80
	ld   h, c                                        ; $6861: $61
	add  b                                           ; $6862: $80
	or   c                                           ; $6863: $b1
	nop                                              ; $6864: $00
	rst  $38                                         ; $6865: $ff
	add  b                                           ; $6866: $80
	ld   bc, $0780                                   ; $6867: $01 $80 $07
	add  b                                           ; $686a: $80
	rra                                              ; $686b: $1f

jr_01a_686c:
	dec  d                                           ; $686c: $15
	rst  $38                                         ; $686d: $ff
	db   $fc                                         ; $686e: $fc
	rst  $38                                         ; $686f: $ff
	ldh  [c], a                                      ; $6870: $e2
	rst  $38                                         ; $6871: $ff
	ldh  a, [rIE]                                    ; $6872: $f0 $ff
	ld   sp, hl                                      ; $6874: $f9
	rst  $38                                         ; $6875: $ff

jr_01a_6876:
	di                                               ; $6876: $f3
	rst  $38                                         ; $6877: $ff
	db   $d3                                         ; $6878: $d3
	rst  $38                                         ; $6879: $ff
	and  a                                           ; $687a: $a7
	rst  $38                                         ; $687b: $ff
	ld   c, a                                        ; $687c: $4f
	rst  $38                                         ; $687d: $ff
	sbc  a                                           ; $687e: $9f

jr_01a_687f:
	rst  $38                                         ; $687f: $ff
	ccf                                              ; $6880: $3f
	rst  $38                                         ; $6881: $ff
	ld   a, a                                        ; $6882: $7f
	add  d                                           ; $6883: $82

jr_01a_6884:
	rst  $38                                         ; $6884: $ff
	adc  l                                           ; $6885: $8d
	nop                                              ; $6886: $00
	add  b                                           ; $6887: $80
	pop  de                                          ; $6888: $d1
	add  b                                           ; $6889: $80
	db   $e3                                         ; $688a: $e3
	add  b                                           ; $688b: $80
	dec  de                                          ; $688c: $1b
	add  b                                           ; $688d: $80
	inc  sp                                          ; $688e: $33
	add  b                                           ; $688f: $80
	ld   d, c                                        ; $6890: $51
	add  d                                           ; $6891: $82
	ld   [hl], b                                     ; $6892: $70
	add  b                                           ; $6893: $80
	nop                                              ; $6894: $00
	add  d                                           ; $6895: $82

jr_01a_6896:
	ldh  a, [$80]                                    ; $6896: $f0 $80
	or   b                                           ; $6898: $b0
	add  b                                           ; $6899: $80
	add  b                                           ; $689a: $80
	add  b                                           ; $689b: $80
	ret  nz                                          ; $689c: $c0

	add  b                                           ; $689d: $80
	rst  $38                                         ; $689e: $ff
	add  b                                           ; $689f: $80
	ccf                                              ; $68a0: $3f
	add  b                                           ; $68a1: $80
	rlca                                             ; $68a2: $07
	add  [hl]                                        ; $68a3: $86
	nop                                              ; $68a4: $00
	add  b                                           ; $68a5: $80
	rlca                                             ; $68a6: $07
	add  b                                           ; $68a7: $80
	rst  $38                                         ; $68a8: $ff
	add  b                                           ; $68a9: $80
	db   $fc                                         ; $68aa: $fc
	add  b                                           ; $68ab: $80
	ldh  [$80], a                                    ; $68ac: $e0 $80
	rlca                                             ; $68ae: $07
	add  b                                           ; $68af: $80
	rrca                                             ; $68b0: $0f
	add  b                                           ; $68b1: $80
	jr   c, jr_01a_6834                              ; $68b2: $38 $80

jr_01a_68b4:
	ldh  a, [$80]                                    ; $68b4: $f0 $80
	pop  bc                                          ; $68b6: $c1
	add  d                                           ; $68b7: $82
	inc  bc                                          ; $68b8: $03
	add  b                                           ; $68b9: $80
	ld   bc, $fc82                                   ; $68ba: $01 $82 $fc
	add  b                                           ; $68bd: $80
	inc  e                                           ; $68be: $1c
	add  b                                           ; $68bf: $80
	ld   bc, $f880                                   ; $68c0: $01 $80 $f8
	add  b                                           ; $68c3: $80
	rst  $20                                         ; $68c4: $e7
	add  b                                           ; $68c5: $80
	sbc  b                                           ; $68c6: $98
	add  b                                           ; $68c7: $80
	cp   a                                           ; $68c8: $bf
	add  b                                           ; $68c9: $80

jr_01a_68ca:
	ei                                               ; $68ca: $fb
	add  b                                           ; $68cb: $80
	ld   bc, $f180                                   ; $68cc: $01 $80 $f1
	add  b                                           ; $68cf: $80
	res  0, b                                        ; $68d0: $cb $80
	ld   bc, $7180                                   ; $68d2: $01 $80 $71
	add  b                                           ; $68d5: $80
	ret  nz                                          ; $68d6: $c0

	add  b                                           ; $68d7: $80
	ld   c, b                                        ; $68d8: $48
	adc  [hl]                                        ; $68d9: $8e
	add  sp, -$72                                    ; $68da: $e8 $8e
	nop                                              ; $68dc: $00
	add  b                                           ; $68dd: $80
	ld   a, $80                                      ; $68de: $3e $80
	jr   jr_01a_686c                                 ; $68e0: $18 $8a

	nop                                              ; $68e2: $00
	add  b                                           ; $68e3: $80
	ld   a, b                                        ; $68e4: $78
	add  b                                           ; $68e5: $80
	jr   nc, jr_01a_687f                             ; $68e6: $30 $97

	nop                                              ; $68e8: $00
	add  b                                           ; $68e9: $80
	ld   bc, $0380                                   ; $68ea: $01 $80 $03
	adc  h                                           ; $68ed: $8c
	nop                                              ; $68ee: $00
	add  b                                           ; $68ef: $80
	add  b                                           ; $68f0: $80
	adc  d                                           ; $68f1: $8a
	nop                                              ; $68f2: $00
	add  b                                           ; $68f3: $80
	jr   nc, jr_01a_6876                             ; $68f4: $30 $80

	jr   c, jr_01a_6884                              ; $68f6: $38 $8c

	nop                                              ; $68f8: $00
	add  b                                           ; $68f9: $80
	ld   bc, $008a                                   ; $68fa: $01 $8a $00
	add  b                                           ; $68fd: $80
	rra                                              ; $68fe: $1f
	add  b                                           ; $68ff: $80
	rst  $38                                         ; $6900: $ff
	adc  d                                           ; $6901: $8a
	nop                                              ; $6902: $00
	add  b                                           ; $6903: $80
	add  b                                           ; $6904: $80
	add  b                                           ; $6905: $80
	ret  nz                                          ; $6906: $c0

	adc  h                                           ; $6907: $8c
	nop                                              ; $6908: $00
	add  b                                           ; $6909: $80
	jr   nz, jr_01a_6896                             ; $690a: $20 $8a

	nop                                              ; $690c: $00
	add  b                                           ; $690d: $80
	ret  nz                                          ; $690e: $c0

	add  b                                           ; $690f: $80
	ldh  [$8a], a                                    ; $6910: $e0 $8a
	nop                                              ; $6912: $00
	add  b                                           ; $6913: $80
	add  b                                           ; $6914: $80
	add  b                                           ; $6915: $80
	ret  nz                                          ; $6916: $c0

	add  b                                           ; $6917: $80
	inc  bc                                          ; $6918: $03
	add  d                                           ; $6919: $82
	rlca                                             ; $691a: $07
	add  b                                           ; $691b: $80
	ld   c, $80                                      ; $691c: $0e $80
	ld   [$1180], sp                                 ; $691e: $08 $80 $11
	add  b                                           ; $6921: $80
	inc  hl                                          ; $6922: $23
	add  b                                           ; $6923: $80
	ld   a, a                                        ; $6924: $7f
	add  d                                           ; $6925: $82
	add  b                                           ; $6926: $80
	add  d                                           ; $6927: $82
	nop                                              ; $6928: $00
	add  d                                           ; $6929: $82
	ret  nz                                          ; $692a: $c0

	add  b                                           ; $692b: $80
	pop  bc                                          ; $692c: $c1
	add  b                                           ; $692d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $692e: $cf
	add  [hl]                                        ; $692f: $86
	jr   c, jr_01a_68b4                              ; $6930: $38 $82

	ccf                                              ; $6932: $3f
	add  b                                           ; $6933: $80
	cp   $80                                         ; $6934: $fe $80
	ldh  a, [$86]                                    ; $6936: $f0 $86
	nop                                              ; $6938: $00
	add  d                                           ; $6939: $82
	add  b                                           ; $693a: $80
	add  d                                           ; $693b: $82
	nop                                              ; $693c: $00
	add  b                                           ; $693d: $80
	adc  a                                           ; $693e: $8f
	add  b                                           ; $693f: $80
	ld   b, b                                        ; $6940: $40
	add  b                                           ; $6941: $80
	ld   h, b                                        ; $6942: $60
	add  b                                           ; $6943: $80
	ld   a, a                                        ; $6944: $7f
	add  b                                           ; $6945: $80
	ccf                                              ; $6946: $3f
	add  b                                           ; $6947: $80

jr_01a_6948:
	jr   c, jr_01a_68ca                              ; $6948: $38 $80

	inc  e                                           ; $694a: $1c
	add  b                                           ; $694b: $80
	rra                                              ; $694c: $1f
	add  b                                           ; $694d: $80
	pop  bc                                          ; $694e: $c1
	add  b                                           ; $694f: $80
	call $fd82                                       ; $6950: $cd $82 $fd
	add  d                                           ; $6953: $82
	jp   $ff82                                       ; $6954: $c3 $82 $ff


	add  h                                           ; $6957: $84
	ret  nz                                          ; $6958: $c0

	add  h                                           ; $6959: $84
	add  b                                           ; $695a: $80
	add  h                                           ; $695b: $84
	nop                                              ; $695c: $00
	add  b                                           ; $695d: $80
	ld   bc, $0780                                   ; $695e: $01 $80 $07
	add  b                                           ; $6961: $80
	nop                                              ; $6962: $00
	add  b                                           ; $6963: $80
	inc  c                                           ; $6964: $0c
	add  b                                           ; $6965: $80
	ld   c, $80                                      ; $6966: $0e $80
	rlca                                             ; $6968: $07
	add  b                                           ; $6969: $80
	ld   bc, $7080                                   ; $696a: $01 $80 $70
	add  d                                           ; $696d: $82
	pop  af                                          ; $696e: $f1
	add  b                                           ; $696f: $80
	ld   h, a                                        ; $6970: $67
	add  b                                           ; $6971: $80
	db   $e3                                         ; $6972: $e3
	add  b                                           ; $6973: $80
	pop  hl                                          ; $6974: $e1
	add  d                                           ; $6975: $82
	ret  nz                                          ; $6976: $c0

	add  b                                           ; $6977: $80
	ldh  [$80], a                                    ; $6978: $e0 $80
	ret  nz                                          ; $697a: $c0

	add  b                                           ; $697b: $80
	adc  [hl]                                        ; $697c: $8e
	add  b                                           ; $697d: $80
	ld   c, $80                                      ; $697e: $0e $80
	sbc  [hl]                                        ; $6980: $9e
	add  b                                           ; $6981: $80
	db   $fc                                         ; $6982: $fc
	add  b                                           ; $6983: $80
	ldh  [$80], a                                    ; $6984: $e0 $80
	ld   [hl], b                                     ; $6986: $70
	sub  d                                           ; $6987: $92
	nop                                              ; $6988: $00
	add  b                                           ; $6989: $80
	rrca                                             ; $698a: $0f
	add  b                                           ; $698b: $80
	ccf                                              ; $698c: $3f
	add  d                                           ; $698d: $82
	nop                                              ; $698e: $00
	add  b                                           ; $698f: $80
	rlca                                             ; $6990: $07
	add  b                                           ; $6991: $80
	rra                                              ; $6992: $1f
	add  b                                           ; $6993: $80
	db   $e3                                         ; $6994: $e3
	add  d                                           ; $6995: $82
	rst  $38                                         ; $6996: $ff
	add  b                                           ; $6997: $80
	ldh  [$80], a                                    ; $6998: $e0 $80
	db   $e3                                         ; $699a: $e3
	add  d                                           ; $699b: $82
	rst  $38                                         ; $699c: $ff
	add  d                                           ; $699d: $82
	ret  nz                                          ; $699e: $c0

	add  d                                           ; $699f: $82
	ldh  [$80], a                                    ; $69a0: $e0 $80
	nop                                              ; $69a2: $00
	add  b                                           ; $69a3: $80
	ret  nz                                          ; $69a4: $c0

	add  d                                           ; $69a5: $82
	ldh  [$80], a                                    ; $69a6: $e0 $80
	nop                                              ; $69a8: $00
	add  b                                           ; $69a9: $80
	ld   a, l                                        ; $69aa: $7d
	add  b                                           ; $69ab: $80
	dec  sp                                          ; $69ac: $3b
	add  b                                           ; $69ad: $80
	inc  bc                                          ; $69ae: $03
	add  b                                           ; $69af: $80
	ld   b, $80                                      ; $69b0: $06 $80
	rrca                                             ; $69b2: $0f
	add  b                                           ; $69b3: $80
	ld   e, $80                                      ; $69b4: $1e $80
	dec  c                                           ; $69b6: $0d
	add  b                                           ; $69b7: $80
	inc  bc                                          ; $69b8: $03
	add  d                                           ; $69b9: $82
	add  b                                           ; $69ba: $80
	add  b                                           ; $69bb: $80
	nop                                              ; $69bc: $00
	add  b                                           ; $69bd: $80
	ret  nz                                          ; $69be: $c0

	add  b                                           ; $69bf: $80
	rst  $20                                         ; $69c0: $e7
	add  d                                           ; $69c1: $82
	ldh  [$80], a                                    ; $69c2: $e0 $80
	add  b                                           ; $69c4: $80
	add  b                                           ; $69c5: $80
	jr   nc, jr_01a_6948                             ; $69c6: $30 $80

	scf                                              ; $69c8: $37
	add  b                                           ; $69c9: $80
	ccf                                              ; $69ca: $3f
	add  b                                           ; $69cb: $80
	rst  $38                                         ; $69cc: $ff
	add  b                                           ; $69cd: $80
	ldh  a, [$82]                                    ; $69ce: $f0 $82
	nop                                              ; $69d0: $00
	add  b                                           ; $69d1: $80
	rrca                                             ; $69d2: $0f
	add  b                                           ; $69d3: $80
	nop                                              ; $69d4: $00
	add  d                                           ; $69d5: $82

jr_01a_69d6:
	add  b                                           ; $69d6: $80
	add  d                                           ; $69d7: $82
	nop                                              ; $69d8: $00
	add  b                                           ; $69d9: $80
	ld   bc, $0082                                   ; $69da: $01 $82 $00
	add  b                                           ; $69dd: $80
	inc  c                                           ; $69de: $0c
	add  d                                           ; $69df: $82
	nop                                              ; $69e0: $00
	add  b                                           ; $69e1: $80
	rlca                                             ; $69e2: $07
	add  b                                           ; $69e3: $80
	ld   a, a                                        ; $69e4: $7f
	add  b                                           ; $69e5: $80

jr_01a_69e6:
	rst  $38                                         ; $69e6: $ff
	add  b                                           ; $69e7: $80
	nop                                              ; $69e8: $00
	add  b                                           ; $69e9: $80
	jr   nc, @-$7e                                   ; $69ea: $30 $80

	rst  ToBoot                                         ; $69ec: $c7
	add  b                                           ; $69ed: $80
	ret  nz                                          ; $69ee: $c0

	add  h                                           ; $69ef: $84
	rst  $38                                         ; $69f0: $ff
	add  b                                           ; $69f1: $80
	ret  nz                                          ; $69f2: $c0

	add  b                                           ; $69f3: $80
	ret  z                                           ; $69f4: $c8

	add  b                                           ; $69f5: $80
	add  $80                                         ; $69f6: $c6 $80
	nop                                              ; $69f8: $00
	add  b                                           ; $69f9: $80
	ld   [hl], b                                     ; $69fa: $70
	add  d                                           ; $69fb: $82
	ld   hl, sp-$80                                  ; $69fc: $f8 $80
	ldh  a, [$84]                                    ; $69fe: $f0 $84
	nop                                              ; $6a00: $00
	add  b                                           ; $6a01: $80
	inc  bc                                          ; $6a02: $03
	add  b                                           ; $6a03: $80
	rlca                                             ; $6a04: $07
	add  b                                           ; $6a05: $80
	ld   e, $80                                      ; $6a06: $1e $80
	ld   a, b                                        ; $6a08: $78
	add  h                                           ; $6a09: $84
	nop                                              ; $6a0a: $00
	add  b                                           ; $6a0b: $80

jr_01a_6a0c:
	rlca                                             ; $6a0c: $07
	add  b                                           ; $6a0d: $80
	add  e                                           ; $6a0e: $83
	add  b                                           ; $6a0f: $80
	rra                                              ; $6a10: $1f
	add  b                                           ; $6a11: $80
	rst  $38                                         ; $6a12: $ff
	add  b                                           ; $6a13: $80
	ld   [hl], d                                     ; $6a14: $72
	add  d                                           ; $6a15: $82
	ld   [hl], e                                     ; $6a16: $73
	add  b                                           ; $6a17: $80
	ld   a, a                                        ; $6a18: $7f
	add  b                                           ; $6a19: $80
	rst  $38                                         ; $6a1a: $ff
	add  b                                           ; $6a1b: $80
	inc  a                                           ; $6a1c: $3c
	add  b                                           ; $6a1d: $80
	sbc  a                                           ; $6a1e: $9f
	add  b                                           ; $6a1f: $80
	adc  a                                           ; $6a20: $8f
	add  b                                           ; $6a21: $80
	inc  bc                                          ; $6a22: $03
	add  b                                           ; $6a23: $80
	nop                                              ; $6a24: $00
	add  b                                           ; $6a25: $80
	ld   [hl], b                                     ; $6a26: $70
	add  d                                           ; $6a27: $82
	ld   hl, sp-$7e                                  ; $6a28: $f8 $82

jr_01a_6a2a:
	nop                                              ; $6a2a: $00
	add  d                                           ; $6a2b: $82
	ret  nz                                          ; $6a2c: $c0

	add  b                                           ; $6a2d: $80
	ld   bc, $0088                                   ; $6a2e: $01 $88 $00
	add  b                                           ; $6a31: $80
	inc  bc                                          ; $6a32: $03
	add  b                                           ; $6a33: $80
	ld   a, a                                        ; $6a34: $7f
	add  b                                           ; $6a35: $80
	rst  $38                                         ; $6a36: $ff
	add  b                                           ; $6a37: $80
	rlca                                             ; $6a38: $07
	add  b                                           ; $6a39: $80
	rrca                                             ; $6a3a: $0f
	add  b                                           ; $6a3b: $80
	ld   c, $82                                      ; $6a3c: $0e $82
	ret  nz                                          ; $6a3e: $c0

	add  d                                           ; $6a3f: $82
	rst  $38                                         ; $6a40: $ff
	add  b                                           ; $6a41: $80
	ld   hl, sp-$80                                  ; $6a42: $f8 $80
	ld   [$0c80], sp                                 ; $6a44: $08 $80 $0c
	add  b                                           ; $6a47: $80
	inc  b                                           ; $6a48: $04
	add  b                                           ; $6a49: $80
	nop                                              ; $6a4a: $00
	add  b                                           ; $6a4b: $80
	ld   hl, sp-$7e                                  ; $6a4c: $f8 $82
	db   $fc                                         ; $6a4e: $fc
	add  b                                           ; $6a4f: $80
	nop                                              ; $6a50: $00
	add  b                                           ; $6a51: $80
	jr   jr_01a_69d6                                 ; $6a52: $18 $82

	jr   c, jr_01a_69d6                              ; $6a54: $38 $80

	inc  e                                           ; $6a56: $1c
	add  b                                           ; $6a57: $80
	nop                                              ; $6a58: $00
	add  b                                           ; $6a59: $80
	ld   b, c                                        ; $6a5a: $41
	add  b                                           ; $6a5b: $80
	ld   b, e                                        ; $6a5c: $43
	add  b                                           ; $6a5d: $80
	ld   a, h                                        ; $6a5e: $7c
	add  b                                           ; $6a5f: $80
	ld   a, b                                        ; $6a60: $78
	add  b                                           ; $6a61: $80
	ld   [hl], b                                     ; $6a62: $70
	add  b                                           ; $6a63: $80
	jr   nc, jr_01a_69e6                             ; $6a64: $30 $80

	ld   [bc], a                                     ; $6a66: $02
	add  b                                           ; $6a67: $80
	jp   nz, $e380                                   ; $6a68: $c2 $80 $e3

	add  h                                           ; $6a6b: $84
	ld   [hl], e                                     ; $6a6c: $73
	add  b                                           ; $6a6d: $80
	pop  af                                          ; $6a6e: $f1
	add  b                                           ; $6a6f: $80
	ld   h, c                                        ; $6a70: $61
	add  b                                           ; $6a71: $80
	rra                                              ; $6a72: $1f
	add  b                                           ; $6a73: $80
	ld   h, e                                        ; $6a74: $63
	add  b                                           ; $6a75: $80
	add  e                                           ; $6a76: $83
	add  b                                           ; $6a77: $80
	rlca                                             ; $6a78: $07
	add  b                                           ; $6a79: $80
	sbc  h                                           ; $6a7a: $9c
	add  b                                           ; $6a7b: $80
	cp   h                                           ; $6a7c: $bc
	add  b                                           ; $6a7d: $80
	sbc  a                                           ; $6a7e: $9f
	add  [hl]                                        ; $6a7f: $86

jr_01a_6a80:
	add  b                                           ; $6a80: $80
	add  d                                           ; $6a81: $82
	nop                                              ; $6a82: $00
	add  b                                           ; $6a83: $80
	inc  bc                                          ; $6a84: $03
	add  b                                           ; $6a85: $80

jr_01a_6a86:
	add  b                                           ; $6a86: $80
	add  b                                           ; $6a87: $80
	nop                                              ; $6a88: $00
	add  d                                           ; $6a89: $82
	jr   c, jr_01a_6a0c                              ; $6a8a: $38 $80

	ld   a, b                                        ; $6a8c: $78
	add  b                                           ; $6a8d: $80
	ld   [hl], h                                     ; $6a8e: $74
	add  b                                           ; $6a8f: $80
	ldh  [c], a                                      ; $6a90: $e2
	add  b                                           ; $6a91: $80
	add  e                                           ; $6a92: $83
	add  b                                           ; $6a93: $80
	inc  bc                                          ; $6a94: $03
	add  b                                           ; $6a95: $80
	ld   bc, $c380                                   ; $6a96: $01 $80 $c3
	add  d                                           ; $6a99: $82
	pop  bc                                          ; $6a9a: $c1
	add  [hl]                                        ; $6a9b: $86
	ret  nz                                          ; $6a9c: $c0

	add  d                                           ; $6a9d: $82
	add  b                                           ; $6a9e: $80
	add  b                                           ; $6a9f: $80
	ret  nz                                          ; $6aa0: $c0

	add  b                                           ; $6aa1: $80
	ldh  [$82], a                                    ; $6aa2: $e0 $82
	ldh  a, [$80]                                    ; $6aa4: $f0 $80
	ld   [hl], b                                     ; $6aa6: $70
	add  b                                           ; $6aa7: $80
	jr   nc, jr_01a_6a2a                             ; $6aa8: $30 $80

	nop                                              ; $6aaa: $00
	add  b                                           ; $6aab: $80
	ld   bc, $0084                                   ; $6aac: $01 $84 $00
	add  b                                           ; $6aaf: $80
	ld   bc, $0380                                   ; $6ab0: $01 $80 $03
	add  b                                           ; $6ab3: $80
	rlca                                             ; $6ab4: $07
	add  b                                           ; $6ab5: $80
	inc  e                                           ; $6ab6: $1c
	add  h                                           ; $6ab7: $84
	db   $e3                                         ; $6ab8: $e3
	add  d                                           ; $6ab9: $82
	jp   $8180                                       ; $6aba: $c3 $80 $81


	add  b                                           ; $6abd: $80
	ld   bc, $0080                                   ; $6abe: $01 $80 $00
	add  d                                           ; $6ac1: $82
	add  b                                           ; $6ac2: $80
	add  d                                           ; $6ac3: $82
	add  c                                           ; $6ac4: $81
	add  b                                           ; $6ac5: $80
	jp   $ff82                                       ; $6ac6: $c3 $82 $ff


	add  b                                           ; $6ac9: $80
	ld   a, a                                        ; $6aca: $7f
	add  h                                           ; $6acb: $84
	nop                                              ; $6acc: $00
	add  b                                           ; $6acd: $80
	inc  bc                                          ; $6ace: $03
	add  h                                           ; $6acf: $84
	add  b                                           ; $6ad0: $80
	add  b                                           ; $6ad1: $80
	nop                                              ; $6ad2: $00
	add  b                                           ; $6ad3: $80
	ld   e, $80                                      ; $6ad4: $1e $80
	ld   a, $80                                      ; $6ad6: $3e $80
	or   $80                                         ; $6ad8: $f6 $80
	add  $86                                         ; $6ada: $c6 $86
	rlca                                             ; $6adc: $07
	add  b                                           ; $6add: $80
	ld   b, $80                                      ; $6ade: $06 $80
	rlca                                             ; $6ae0: $07
	add  b                                           ; $6ae1: $80
	inc  hl                                          ; $6ae2: $23
	add  b                                           ; $6ae3: $80
	jp   $c180                                       ; $6ae4: $c3 $80 $c1


jr_01a_6ae7:
	add  d                                           ; $6ae7: $82
	add  b                                           ; $6ae8: $80
	add  b                                           ; $6ae9: $80
	nop                                              ; $6aea: $00
	add  b                                           ; $6aeb: $80
	ld   a, b                                        ; $6aec: $78
	add  b                                           ; $6aed: $80
	ldh  [$80], a                                    ; $6aee: $e0 $80
	add  b                                           ; $6af0: $80
	add  b                                           ; $6af1: $80
	ret  nz                                          ; $6af2: $c0

	add  b                                           ; $6af3: $80
	ldh  a, [$80]                                    ; $6af4: $f0 $80
	db   $fc                                         ; $6af6: $fc
	add  b                                           ; $6af7: $80
	ld   a, a                                        ; $6af8: $7f
	add  b                                           ; $6af9: $80

Call_01a_6afa:
	ld   e, $89                                      ; $6afa: $1e $89
	nop                                              ; $6afc: $00
	add  b                                           ; $6afd: $80
	jr   jr_01a_6a80                                 ; $6afe: $18 $80

	ld   a, $8a                                      ; $6b00: $3e $8a
	nop                                              ; $6b02: $00
	add  b                                           ; $6b03: $80
	jr   nc, jr_01a_6a86                             ; $6b04: $30 $80

	ld   a, b                                        ; $6b06: $78
	nop                                              ; $6b07: $00
	rst  $38                                         ; $6b08: $ff
	add  e                                           ; $6b09: $83
	nop                                              ; $6b0a: $00
	inc  b                                           ; $6b0b: $04
	rrca                                             ; $6b0c: $0f
	nop                                              ; $6b0d: $00
	inc  c                                           ; $6b0e: $0c
	nop                                              ; $6b0f: $00
	ld   b, d                                        ; $6b10: $42
	add  c                                           ; $6b11: $81

jr_01a_6b12:
	nop                                              ; $6b12: $00
	dec  bc                                          ; $6b13: $0b
	ld   [hl+], a                                    ; $6b14: $22
	nop                                              ; $6b15: $00
	ld   [hl], h                                     ; $6b16: $74
	rst  $38                                         ; $6b17: $ff
	ld   sp, hl                                      ; $6b18: $f9
	rst  $38                                         ; $6b19: $ff
	ldh  a, [rIE]                                    ; $6b1a: $f0 $ff
	ldh  [c], a                                      ; $6b1c: $e2
	rst  $38                                         ; $6b1d: $ff
	db   $fc                                         ; $6b1e: $fc
	rst  $38                                         ; $6b1f: $ff
	add  b                                           ; $6b20: $80
	rra                                              ; $6b21: $1f
	inc  b                                           ; $6b22: $04
	rrca                                             ; $6b23: $0f
	rlca                                             ; $6b24: $07
	dec  bc                                          ; $6b25: $0b
	ld   bc, $8102                                   ; $6b26: $01 $02 $81
	nop                                              ; $6b29: $00
	add  b                                           ; $6b2a: $80
	add  b                                           ; $6b2b: $80
	add  b                                           ; $6b2c: $80
	ld   b, b                                        ; $6b2d: $40
	add  b                                           ; $6b2e: $80
	jr   nz, @-$7e                                   ; $6b2f: $20 $80

	sub  b                                           ; $6b31: $90
	add  b                                           ; $6b32: $80
	ret  z                                           ; $6b33: $c8

	add  b                                           ; $6b34: $80
	db   $e4                                         ; $6b35: $e4

jr_01a_6b36:
	add  b                                           ; $6b36: $80
	nop                                              ; $6b37: $00
	add  d                                           ; $6b38: $82
	ld   [hl], b                                     ; $6b39: $70
	add  b                                           ; $6b3a: $80
	ld   d, c                                        ; $6b3b: $51
	add  b                                           ; $6b3c: $80
	inc  sp                                          ; $6b3d: $33
	add  b                                           ; $6b3e: $80
	dec  de                                          ; $6b3f: $1b
	add  b                                           ; $6b40: $80
	db   $e3                                         ; $6b41: $e3
	add  b                                           ; $6b42: $80
	pop  de                                          ; $6b43: $d1
	add  b                                           ; $6b44: $80
	rlca                                             ; $6b45: $07
	add  b                                           ; $6b46: $80
	ccf                                              ; $6b47: $3f
	add  b                                           ; $6b48: $80
	rst  $38                                         ; $6b49: $ff
	add  b                                           ; $6b4a: $80
	ret  nz                                          ; $6b4b: $c0

	add  b                                           ; $6b4c: $80
	add  b                                           ; $6b4d: $80
	add  b                                           ; $6b4e: $80
	or   b                                           ; $6b4f: $b0
	add  d                                           ; $6b50: $82
	ldh  a, [$80]                                    ; $6b51: $f0 $80
	ldh  [$80], a                                    ; $6b53: $e0 $80
	db   $fc                                         ; $6b55: $fc
	add  b                                           ; $6b56: $80
	rst  $38                                         ; $6b57: $ff
	add  b                                           ; $6b58: $80
	rlca                                             ; $6b59: $07
	add  [hl]                                        ; $6b5a: $86
	nop                                              ; $6b5b: $00
	add  b                                           ; $6b5c: $80
	ld   bc, $0382                                   ; $6b5d: $01 $82 $03
	add  b                                           ; $6b60: $80
	pop  bc                                          ; $6b61: $c1
	add  b                                           ; $6b62: $80
	ldh  a, [$80]                                    ; $6b63: $f0 $80
	jr   c, jr_01a_6ae7                              ; $6b65: $38 $80

	rrca                                             ; $6b67: $0f
	add  b                                           ; $6b68: $80
	rlca                                             ; $6b69: $07
	add  b                                           ; $6b6a: $80
	cp   a                                           ; $6b6b: $bf
	add  b                                           ; $6b6c: $80
	sbc  b                                           ; $6b6d: $98
	add  b                                           ; $6b6e: $80
	rst  $20                                         ; $6b6f: $e7
	add  b                                           ; $6b70: $80
	ld   hl, sp-$80                                  ; $6b71: $f8 $80
	ld   bc, $1c80                                   ; $6b73: $01 $80 $1c
	add  d                                           ; $6b76: $82
	db   $fc                                         ; $6b77: $fc
	add  b                                           ; $6b78: $80
	ld   c, b                                        ; $6b79: $48
	add  b                                           ; $6b7a: $80
	ret  nz                                          ; $6b7b: $c0

	add  b                                           ; $6b7c: $80
	ld   [hl], c                                     ; $6b7d: $71
	add  b                                           ; $6b7e: $80
	ld   bc, $cb80                                   ; $6b7f: $01 $80 $cb
	add  b                                           ; $6b82: $80
	pop  af                                          ; $6b83: $f1
	add  b                                           ; $6b84: $80
	ld   bc, $fb80                                   ; $6b85: $01 $80 $fb
	ld   [bc], a                                     ; $6b88: $02
	add  b                                           ; $6b89: $80
	nop                                              ; $6b8a: $00
	ld   b, b                                        ; $6b8b: $40
	add  c                                           ; $6b8c: $81
	nop                                              ; $6b8d: $00
	nop                                              ; $6b8e: $00
	jr   nz, jr_01a_6b12                             ; $6b8f: $20 $81

	nop                                              ; $6b91: $00
	ld   b, $10                                      ; $6b92: $06 $10
	nop                                              ; $6b94: $00
	ld   [$0400], sp                                 ; $6b95: $08 $00 $04
	nop                                              ; $6b98: $00
	db   $fd                                         ; $6b99: $fd
	add  c                                           ; $6b9a: $81
	nop                                              ; $6b9b: $00
	nop                                              ; $6b9c: $00
	ld   bc, $0089                                   ; $6b9d: $01 $89 $00
	inc  c                                           ; $6ba0: $0c
	db   $f4                                         ; $6ba1: $f4
	rst  $38                                         ; $6ba2: $ff
	ld   sp, hl                                      ; $6ba3: $f9
	ld   a, a                                        ; $6ba4: $7f
	ld   [hl], a                                     ; $6ba5: $77
	ld   a, a                                        ; $6ba6: $7f
	ld   a, [hl]                                     ; $6ba7: $7e
	ccf                                              ; $6ba8: $3f
	cp   h                                           ; $6ba9: $bc
	ccf                                              ; $6baa: $3f
	jr   c, jr_01a_6bcc                              ; $6bab: $38 $1f

	ld   e, a                                        ; $6bad: $5f
	add  c                                           ; $6bae: $81
	rra                                              ; $6baf: $1f
	nop                                              ; $6bb0: $00
	jr   nz, jr_01a_6b36                             ; $6bb1: $20 $83

	nop                                              ; $6bb3: $00
	add  b                                           ; $6bb4: $80
	rst  $38                                         ; $6bb5: $ff
	add  b                                           ; $6bb6: $80
	nop                                              ; $6bb7: $00
	add  h                                           ; $6bb8: $84
	rst  $38                                         ; $6bb9: $ff
	add  b                                           ; $6bba: $80
	ld   h, h                                        ; $6bbb: $64
	add  b                                           ; $6bbc: $80
	ld   b, $80                                      ; $6bbd: $06 $80
	nop                                              ; $6bbf: $00
	add  b                                           ; $6bc0: $80
	rst  $38                                         ; $6bc1: $ff
	add  b                                           ; $6bc2: $80
	nop                                              ; $6bc3: $00
	add  h                                           ; $6bc4: $84
	rst  $38                                         ; $6bc5: $ff
	add  b                                           ; $6bc6: $80
	ldh  [$82], a                                    ; $6bc7: $e0 $82
	nop                                              ; $6bc9: $00
	add  b                                           ; $6bca: $80
	rst  $38                                         ; $6bcb: $ff

jr_01a_6bcc:
	add  b                                           ; $6bcc: $80
	nop                                              ; $6bcd: $00
	add  h                                           ; $6bce: $84
	rst  $38                                         ; $6bcf: $ff
	add  h                                           ; $6bd0: $84
	nop                                              ; $6bd1: $00
	add  b                                           ; $6bd2: $80
	rst  $38                                         ; $6bd3: $ff
	add  b                                           ; $6bd4: $80
	nop                                              ; $6bd5: $00
	add  h                                           ; $6bd6: $84
	rst  $38                                         ; $6bd7: $ff
	add  b                                           ; $6bd8: $80
	ld   bc, $0082                                   ; $6bd9: $01 $82 $00
	add  b                                           ; $6bdc: $80
	rst  $38                                         ; $6bdd: $ff

Call_01a_6bde:
	add  b                                           ; $6bde: $80
	nop                                              ; $6bdf: $00
	add  h                                           ; $6be0: $84
	rst  $38                                         ; $6be1: $ff
	add  b                                           ; $6be2: $80
	ld   hl, sp-$7e                                  ; $6be3: $f8 $82
	nop                                              ; $6be5: $00
	add  b                                           ; $6be6: $80
	rst  $38                                         ; $6be7: $ff
	add  b                                           ; $6be8: $80
	nop                                              ; $6be9: $00
	add  h                                           ; $6bea: $84
	rst  $38                                         ; $6beb: $ff
	add  b                                           ; $6bec: $80
	or   c                                           ; $6bed: $b1
	add  b                                           ; $6bee: $80
	ld   h, c                                        ; $6bef: $61
	add  b                                           ; $6bf0: $80
	nop                                              ; $6bf1: $00
	add  b                                           ; $6bf2: $80
	rst  $38                                         ; $6bf3: $ff
	add  b                                           ; $6bf4: $80
	nop                                              ; $6bf5: $00
	add  l                                           ; $6bf6: $85
	rst  $38                                         ; $6bf7: $ff
	adc  c                                           ; $6bf8: $89
	nop                                              ; $6bf9: $00
	ld   a, [bc]                                     ; $6bfa: $0a
	inc  bc                                          ; $6bfb: $03
	nop                                              ; $6bfc: $00
	inc  c                                           ; $6bfd: $0c
	nop                                              ; $6bfe: $00
	ldh  a, [rP1]                                    ; $6bff: $f0 $00
	ret  nz                                          ; $6c01: $c0

	nop                                              ; $6c02: $00
	jr   c, jr_01a_6c05                              ; $6c03: $38 $00

jr_01a_6c05:
	rlca                                             ; $6c05: $07
	add  c                                           ; $6c06: $81
	nop                                              ; $6c07: $00
	ld   [bc], a                                     ; $6c08: $02
	ld   a, a                                        ; $6c09: $7f
	nop                                              ; $6c0a: $00
	add  b                                           ; $6c0b: $80
	add  c                                           ; $6c0c: $81
	nop                                              ; $6c0d: $00
	nop                                              ; $6c0e: $00
	ld   a, $81                                      ; $6c0f: $3e $81
	nop                                              ; $6c11: $00
	ld   [bc], a                                     ; $6c12: $02
	ld   e, l                                        ; $6c13: $5d
	nop                                              ; $6c14: $00
	and  d                                           ; $6c15: $a2
	add  e                                           ; $6c16: $83
	nop                                              ; $6c17: $00
	ld   c, $80                                      ; $6c18: $0e $80
	nop                                              ; $6c1a: $00
	ld   [hl+], a                                    ; $6c1b: $22
	nop                                              ; $6c1c: $00
	ld   h, e                                        ; $6c1d: $63
	nop                                              ; $6c1e: $00
	ld   bc, $0600                                   ; $6c1f: $01 $00 $06
	nop                                              ; $6c22: $00
	ld   hl, sp+$00                                  ; $6c23: $f8 $00
	rra                                              ; $6c25: $1f
	nop                                              ; $6c26: $00
	ld   h, b                                        ; $6c27: $60
	add  e                                           ; $6c28: $83
	nop                                              ; $6c29: $00
	ld   [bc], a                                     ; $6c2a: $02
	rst  $38                                         ; $6c2b: $ff
	nop                                              ; $6c2c: $00
	add  b                                           ; $6c2d: $80
	add  e                                           ; $6c2e: $83
	nop                                              ; $6c2f: $00
	ld   [$0080], sp                                 ; $6c30: $08 $80 $00
	ld   [hl], b                                     ; $6c33: $70
	nop                                              ; $6c34: $00
	inc  c                                           ; $6c35: $0c
	nop                                              ; $6c36: $00
	inc  bc                                          ; $6c37: $03
	nop                                              ; $6c38: $00
	rst  $38                                         ; $6c39: $ff
	sub  c                                           ; $6c3a: $91
	nop                                              ; $6c3b: $00
	ld   [bc], a                                     ; $6c3c: $02
	ld   bc, $0200                                   ; $6c3d: $01 $00 $02
	add  c                                           ; $6c40: $81
	nop                                              ; $6c41: $00
	nop                                              ; $6c42: $00
	inc  b                                           ; $6c43: $04
	add  c                                           ; $6c44: $81
	nop                                              ; $6c45: $00
	inc  b                                           ; $6c46: $04
	ld   [rROMB1], sp                                 ; $6c47: $08 $00 $30
	nop                                              ; $6c4a: $00
	ret  nz                                          ; $6c4b: $c0

	adc  e                                           ; $6c4c: $8b
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	rlca                                             ; $6c4f: $07
	add  e                                           ; $6c50: $83
	nop                                              ; $6c51: $00
	nop                                              ; $6c52: $00
	ld   [$0081], sp                                 ; $6c53: $08 $81 $00
	nop                                              ; $6c56: $00
	db   $10                                         ; $6c57: $10
	add  c                                           ; $6c58: $81
	nop                                              ; $6c59: $00
	ld   [bc], a                                     ; $6c5a: $02
	jr   nz, jr_01a_6c5d                             ; $6c5b: $20 $00

jr_01a_6c5d:
	ccf                                              ; $6c5d: $3f
	add  l                                           ; $6c5e: $85
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	add  b                                           ; $6c61: $80
	add  e                                           ; $6c62: $83
	nop                                              ; $6c63: $00
	inc  c                                           ; $6c64: $0c
	ld   b, b                                        ; $6c65: $40
	nop                                              ; $6c66: $00
	ccf                                              ; $6c67: $3f
	nop                                              ; $6c68: $00
	ret  nz                                          ; $6c69: $c0

	nop                                              ; $6c6a: $00
	jr   nz, jr_01a_6c6d                             ; $6c6b: $20 $00

jr_01a_6c6d:
	stop                                             ; $6c6d: $10 $00
	ld   [$0400], sp                                 ; $6c6f: $08 $00 $04
	add  c                                           ; $6c72: $81
	nop                                              ; $6c73: $00
	ld   b, $02                                      ; $6c74: $06 $02
	nop                                              ; $6c76: $00
	pop  bc                                          ; $6c77: $c1
	nop                                              ; $6c78: $00
	ld   b, b                                        ; $6c79: $40
	nop                                              ; $6c7a: $00
	add  b                                           ; $6c7b: $80
	add  e                                           ; $6c7c: $83
	nop                                              ; $6c7d: $00
	ld   [bc], a                                     ; $6c7e: $02
	ldh  [rP1], a                                    ; $6c7f: $e0 $00
	db   $10                                         ; $6c81: $10
	add  c                                           ; $6c82: $81
	nop                                              ; $6c83: $00
	nop                                              ; $6c84: $00
	ldh  a, [$83]                                    ; $6c85: $f0 $83
	nop                                              ; $6c87: $00
	ld   [bc], a                                     ; $6c88: $02
	ld   bc, $0200                                   ; $6c89: $01 $00 $02
	add  c                                           ; $6c8c: $81
	nop                                              ; $6c8d: $00
	ld   a, [bc]                                     ; $6c8e: $0a
	inc  b                                           ; $6c8f: $04
	nop                                              ; $6c90: $00
	add  hl, bc                                      ; $6c91: $09
	nop                                              ; $6c92: $00
	ld   [hl], c                                     ; $6c93: $71
	nop                                              ; $6c94: $00
	add  b                                           ; $6c95: $80
	nop                                              ; $6c96: $00
	inc  a                                           ; $6c97: $3c
	nop                                              ; $6c98: $00
	ld   b, d                                        ; $6c99: $42
	add  c                                           ; $6c9a: $81
	nop                                              ; $6c9b: $00
	nop                                              ; $6c9c: $00
	add  c                                           ; $6c9d: $81
	add  e                                           ; $6c9e: $83
	nop                                              ; $6c9f: $00
	ld   [bc], a                                     ; $6ca0: $02
	add  b                                           ; $6ca1: $80
	nop                                              ; $6ca2: $00
	ld   b, b                                        ; $6ca3: $40
	add  c                                           ; $6ca4: $81
	nop                                              ; $6ca5: $00
	ld   a, [bc]                                     ; $6ca6: $0a
	jr   nz, jr_01a_6ca9                             ; $6ca7: $20 $00

jr_01a_6ca9:
	stop                                             ; $6ca9: $10 $00
	ld   [$0600], sp                                 ; $6cab: $08 $00 $06
	nop                                              ; $6cae: $00
	add  c                                           ; $6caf: $81
	nop                                              ; $6cb0: $00
	ld   a, a                                        ; $6cb1: $7f
	adc  e                                           ; $6cb2: $8b
	nop                                              ; $6cb3: $00
	ld   c, $80                                      ; $6cb4: $0e $80
	nop                                              ; $6cb6: $00
	cp   a                                           ; $6cb7: $bf
	nop                                              ; $6cb8: $00
	jr   nz, jr_01a_6cbb                             ; $6cb9: $20 $00

jr_01a_6cbb:
	stop                                             ; $6cbb: $10 $00
	ld   [$7400], sp                                 ; $6cbd: $08 $00 $74
	nop                                              ; $6cc0: $00
	adc  b                                           ; $6cc1: $88
	nop                                              ; $6cc2: $00
	inc  b                                           ; $6cc3: $04
	add  c                                           ; $6cc4: $81
	nop                                              ; $6cc5: $00
	nop                                              ; $6cc6: $00
	inc  c                                           ; $6cc7: $0c
	add  c                                           ; $6cc8: $81
	nop                                              ; $6cc9: $00
	nop                                              ; $6cca: $00
	inc  b                                           ; $6ccb: $04
	add  c                                           ; $6ccc: $81
	nop                                              ; $6ccd: $00
	nop                                              ; $6cce: $00
	ld   [$0085], sp                                 ; $6ccf: $08 $85 $00
	inc  c                                           ; $6cd2: $0c
	ccf                                              ; $6cd3: $3f
	nop                                              ; $6cd4: $00
	jr   nz, jr_01a_6cd7                             ; $6cd5: $20 $00

jr_01a_6cd7:
	ld   bc, $0200                                   ; $6cd7: $01 $00 $02
	nop                                              ; $6cda: $00
	inc  h                                           ; $6cdb: $24
	nop                                              ; $6cdc: $00
	ret  c                                           ; $6cdd: $d8

	nop                                              ; $6cde: $00
	ldh  [$81], a                                    ; $6cdf: $e0 $81
	nop                                              ; $6ce1: $00
	ld   [bc], a                                     ; $6ce2: $02
	add  b                                           ; $6ce3: $80
	nop                                              ; $6ce4: $00
	add  b                                           ; $6ce5: $80
	adc  e                                           ; $6ce6: $8b
	nop                                              ; $6ce7: $00
	inc  b                                           ; $6ce8: $04
	ccf                                              ; $6ce9: $3f
	nop                                              ; $6cea: $00
	jr   nz, jr_01a_6ced                             ; $6ceb: $20 $00

jr_01a_6ced:
	db   $10                                         ; $6ced: $10
	add  c                                           ; $6cee: $81
	nop                                              ; $6cef: $00
	ld   [bc], a                                     ; $6cf0: $02
	inc  c                                           ; $6cf1: $0c
	nop                                              ; $6cf2: $00
	inc  bc                                          ; $6cf3: $03
	add  e                                           ; $6cf4: $83
	nop                                              ; $6cf5: $00
	ld   d, $fe                                      ; $6cf6: $16 $fe
	nop                                              ; $6cf8: $00
	ld   bc, $1c00                                   ; $6cf9: $01 $00 $1c
	nop                                              ; $6cfc: $00
	ld   [hl+], a                                    ; $6cfd: $22
	nop                                              ; $6cfe: $00
	ld   bc, $2000                                   ; $6cff: $01 $00 $20
	nop                                              ; $6d02: $00
	ret  nc                                          ; $6d03: $d0

	nop                                              ; $6d04: $00
	jr   nc, jr_01a_6d07                             ; $6d05: $30 $00

jr_01a_6d07:
	rra                                              ; $6d07: $1f
	nop                                              ; $6d08: $00
	jr   nz, jr_01a_6d0b                             ; $6d09: $20 $00

jr_01a_6d0b:
	jp   $fc00                                       ; $6d0b: $c3 $00 $fc


	add  a                                           ; $6d0e: $87
	nop                                              ; $6d0f: $00
	ld   b, $e1                                      ; $6d10: $06 $e1
	nop                                              ; $6d12: $00
	ld   h, b                                        ; $6d13: $60
	nop                                              ; $6d14: $00
	add  b                                           ; $6d15: $80
	nop                                              ; $6d16: $00
	ld   [bc], a                                     ; $6d17: $02
	add  a                                           ; $6d18: $87
	nop                                              ; $6d19: $00
	nop                                              ; $6d1a: $00
	db   $fc                                         ; $6d1b: $fc
	adc  l                                           ; $6d1c: $8d
	nop                                              ; $6d1d: $00
	nop                                              ; $6d1e: $00
	ld   a, a                                        ; $6d1f: $7f
	add  e                                           ; $6d20: $83
	nop                                              ; $6d21: $00
	nop                                              ; $6d22: $00
	ld   b, b                                        ; $6d23: $40
	add  a                                           ; $6d24: $87
	nop                                              ; $6d25: $00
	inc  b                                           ; $6d26: $04
	rst  JumpTable                                         ; $6d27: $df
	nop                                              ; $6d28: $00
	inc  e                                           ; $6d29: $1c
	nop                                              ; $6d2a: $00
	inc  bc                                          ; $6d2b: $03
	adc  c                                           ; $6d2c: $89
	nop                                              ; $6d2d: $00
	inc  b                                           ; $6d2e: $04
	add  b                                           ; $6d2f: $80
	nop                                              ; $6d30: $00
	ld   [hl], b                                     ; $6d31: $70
	nop                                              ; $6d32: $00
	ldh  a, [$89]                                    ; $6d33: $f0 $89
	nop                                              ; $6d35: $00
	ld   [bc], a                                     ; $6d36: $02
	inc  bc                                          ; $6d37: $03
	nop                                              ; $6d38: $00
	ld   [bc], a                                     ; $6d39: $02
	add  l                                           ; $6d3a: $85
	nop                                              ; $6d3b: $00
	nop                                              ; $6d3c: $00
	ld   bc, $0083                                   ; $6d3d: $01 $83 $00
	nop                                              ; $6d40: $00
	rst  $38                                         ; $6d41: $ff
	add  c                                           ; $6d42: $81
	nop                                              ; $6d43: $00
	inc  c                                           ; $6d44: $0c
	jr   jr_01a_6d47                                 ; $6d45: $18 $00

jr_01a_6d47:
	inc  h                                           ; $6d47: $24
	nop                                              ; $6d48: $00
	ld   b, d                                        ; $6d49: $42
	nop                                              ; $6d4a: $00
	ld   b, d                                        ; $6d4b: $42
	nop                                              ; $6d4c: $00
	add  c                                           ; $6d4d: $81
	nop                                              ; $6d4e: $00
	ld   b, d                                        ; $6d4f: $42
	nop                                              ; $6d50: $00
	ret  nz                                          ; $6d51: $c0

	add  c                                           ; $6d52: $81
	nop                                              ; $6d53: $00
	nop                                              ; $6d54: $00
	ld   b, b                                        ; $6d55: $40
	add  c                                           ; $6d56: $81
	nop                                              ; $6d57: $00
	nop                                              ; $6d58: $00
	add  b                                           ; $6d59: $80
	and  l                                           ; $6d5a: $a5
	nop                                              ; $6d5b: $00
	ld   l, a                                        ; $6d5c: $6f
	ld   bc, $0084                                   ; $6d5d: $01 $84 $00
	inc  c                                           ; $6d60: $0c
	ld   b, $00                                      ; $6d61: $06 $00
	ld   e, $06                                      ; $6d63: $1e $06
	jr   c, jr_01a_6d85                              ; $6d65: $38 $1e

	ld   b, $18                                      ; $6d67: $06 $18
	jr   c, jr_01a_6d71                              ; $6d69: $38 $06

	rra                                              ; $6d6b: $1f
	nop                                              ; $6d6c: $00
	rlca                                             ; $6d6d: $07
	sbc  l                                           ; $6d6e: $9d
	nop                                              ; $6d6f: $00
	ld   [bc], a                                     ; $6d70: $02

jr_01a_6d71:
	ld   bc, $0200                                   ; $6d71: $01 $00 $02
	add  c                                           ; $6d74: $81
	ld   bc, $0400                                   ; $6d75: $01 $00 $04
	add  c                                           ; $6d78: $81
	inc  bc                                          ; $6d79: $03
	nop                                              ; $6d7a: $00
	add  hl, bc                                      ; $6d7b: $09
	add  c                                           ; $6d7c: $81
	inc  b                                           ; $6d7d: $04
	nop                                              ; $6d7e: $00
	ld   [$008a], sp                                 ; $6d7f: $08 $8a $00
	add  c                                           ; $6d82: $81
	inc  bc                                          ; $6d83: $03
	ld   [bc], a                                     ; $6d84: $02

jr_01a_6d85:
	rrca                                             ; $6d85: $0f
	rlca                                             ; $6d86: $07
	inc  de                                          ; $6d87: $13
	adc  e                                           ; $6d88: $8b
	rrca                                             ; $6d89: $0f
	inc  b                                           ; $6d8a: $04
	ld   d, $00                                      ; $6d8b: $16 $00
	rlca                                             ; $6d8d: $07
	nop                                              ; $6d8e: $00
	ld   c, $80                                      ; $6d8f: $0e $80
	ld   bc, $0701                                   ; $6d91: $01 $01 $07
	dec  de                                          ; $6d94: $1b
	add  c                                           ; $6d95: $81
	dec  bc                                          ; $6d96: $0b
	nop                                              ; $6d97: $00
	dec  a                                           ; $6d98: $3d
	add  c                                           ; $6d99: $81
	dec  e                                           ; $6d9a: $1d
	ld   [$0e26], sp                                 ; $6d9b: $08 $26 $0e
	jr   z, jr_01a_6dae                              ; $6d9e: $28 $0e

	xor  $37                                         ; $6da0: $ee $37
	sub  a                                           ; $6da2: $97
	rst  $30                                         ; $6da3: $f7
	ld   [hl], a                                     ; $6da4: $77
	add  b                                           ; $6da5: $80
	jp   $3907                                       ; $6da6: $c3 $07 $39


	dec  a                                           ; $6da9: $3d
	ldh  [$fb], a                                    ; $6daa: $e0 $fb
	add  b                                           ; $6dac: $80
	ld   a, b                                        ; $6dad: $78

jr_01a_6dae:
	rrca                                             ; $6dae: $0f
	dec  de                                          ; $6daf: $1b
	add  e                                           ; $6db0: $83
	rlca                                             ; $6db1: $07
	nop                                              ; $6db2: $00
	dec  c                                           ; $6db3: $0d
	add  c                                           ; $6db4: $81
	inc  bc                                          ; $6db5: $03
	dec  b                                           ; $6db6: $05
	ld   b, $01                                      ; $6db7: $06 $01
	inc  bc                                          ; $6db9: $03
	nop                                              ; $6dba: $00
	ld   bc, $8000                                   ; $6dbb: $01 $00 $80
	ld   bc, $0680                                   ; $6dbe: $01 $80 $06
	adc  l                                           ; $6dc1: $8d
	nop                                              ; $6dc2: $00
	dec  bc                                          ; $6dc3: $0b
	inc  b                                           ; $6dc4: $04
	ld   b, b                                        ; $6dc5: $40
	nop                                              ; $6dc6: $00
	ld   b, h                                        ; $6dc7: $44
	nop                                              ; $6dc8: $00
	rlca                                             ; $6dc9: $07
	nop                                              ; $6dca: $00
	rra                                              ; $6dcb: $1f
	nop                                              ; $6dcc: $00
	ld   a, b                                        ; $6dcd: $78

jr_01a_6dce:
	inc  bc                                          ; $6dce: $03
	ld   h, e                                        ; $6dcf: $63
	sbc  l                                           ; $6dd0: $9d
	nop                                              ; $6dd1: $00
	add  e                                           ; $6dd2: $83
	rst  $38                                         ; $6dd3: $ff
	add  d                                           ; $6dd4: $82
	ld   a, a                                        ; $6dd5: $7f
	dec  b                                           ; $6dd6: $05
	cp   h                                           ; $6dd7: $bc
	cp   a                                           ; $6dd8: $bf
	or   b                                           ; $6dd9: $b0
	cp   h                                           ; $6dda: $bc
	nop                                              ; $6ddb: $00
	ldh  a, [$84]                                    ; $6ddc: $f0 $84
	nop                                              ; $6dde: $00
	ld   [$03c0], sp                                 ; $6ddf: $08 $c0 $03
	nop                                              ; $6de2: $00
	rst  ToBoot                                         ; $6de3: $c7
	inc  bc                                          ; $6de4: $03
	rrca                                             ; $6de5: $0f
	rlca                                             ; $6de6: $07
	ld   bc, $8007                                   ; $6de7: $01 $07 $80
	ld   b, $06                                      ; $6dea: $06 $06
	ld   c, $00                                      ; $6dec: $0e $00
	ld   b, b                                        ; $6dee: $40
	add  d                                           ; $6def: $82
	jp   nz, $0602                                   ; $6df0: $c2 $02 $06

	add  c                                           ; $6df3: $81
	ld   bc, $e103                                   ; $6df4: $01 $03 $e1
	ld   bc, $e0fd                                   ; $6df7: $01 $fd $e0
	add  b                                           ; $6dfa: $80
	ld   [hl-], a                                    ; $6dfb: $32
	nop                                              ; $6dfc: $00
	nop                                              ; $6dfd: $00
	add  b                                           ; $6dfe: $80
	cp   h                                           ; $6dff: $bc
	add  b                                           ; $6e00: $80
	cp   c                                           ; $6e01: $b9
	add  b                                           ; $6e02: $80
	or   d                                           ; $6e03: $b2
	add  b                                           ; $6e04: $80
	add  $80                                         ; $6e05: $c6 $80
	ei                                               ; $6e07: $fb
	add  b                                           ; $6e08: $80
	di                                               ; $6e09: $f3
	inc  bc                                          ; $6e0a: $03
	db   $ec                                         ; $6e0b: $ec
	xor  $e8                                         ; $6e0c: $ee $e8
	db   $ed                                         ; $6e0e: $ed
	add  c                                           ; $6e0f: $81
	ldh  a, [rAUD3LEVEL]                             ; $6e10: $f0 $1c
	ld   hl, sp-$40                                  ; $6e12: $f8 $c0
	ldh  a, [rP1]                                    ; $6e14: $f0 $00
	ret  nz                                          ; $6e16: $c0

	nop                                              ; $6e17: $00
	inc  bc                                          ; $6e18: $03
	nop                                              ; $6e19: $00
	ld   [bc], a                                     ; $6e1a: $02
	nop                                              ; $6e1b: $00
	ld   bc, $0100                                   ; $6e1c: $01 $00 $01
	nop                                              ; $6e1f: $00
	ld   b, $01                                      ; $6e20: $06 $01
	add  hl, sp                                      ; $6e22: $39
	ld   [bc], a                                     ; $6e23: $02
	inc  hl                                          ; $6e24: $23
	dec  c                                           ; $6e25: $0d
	rra                                              ; $6e26: $1f
	ld   [bc], a                                     ; $6e27: $02
	ld   b, $05                                      ; $6e28: $06 $05
	dec  e                                           ; $6e2a: $1d
	dec  c                                           ; $6e2b: $0d
	dec  a                                           ; $6e2c: $3d
	dec  de                                          ; $6e2d: $1b
	dec  sp                                          ; $6e2e: $3b
	sub  l                                           ; $6e2f: $95
	nop                                              ; $6e30: $00
	add  b                                           ; $6e31: $80
	ld   bc, $0282                                   ; $6e32: $01 $82 $02
	add  b                                           ; $6e35: $80
	inc  b                                           ; $6e36: $04
	sbc  [hl]                                        ; $6e37: $9e
	nop                                              ; $6e38: $00
	db   $10                                         ; $6e39: $10
	db   $10                                         ; $6e3a: $10
	rrca                                             ; $6e3b: $0f
	rlca                                             ; $6e3c: $07
	rrca                                             ; $6e3d: $0f
	cpl                                              ; $6e3e: $2f
	rra                                              ; $6e3f: $1f
	sbc  $1e                                         ; $6e40: $de $1e
	reti                                             ; $6e42: $d9


	jp   hl                                          ; $6e43: $e9


	db   $eb                                         ; $6e44: $eb
	rst  $20                                         ; $6e45: $e7
	and  l                                           ; $6e46: $a5
	adc  a                                           ; $6e47: $8f
	ld   l, a                                        ; $6e48: $6f
	ld   [hl], a                                     ; $6e49: $77
	ld   d, $80                                      ; $6e4a: $16 $80
	jr   c, jr_01a_6dce                              ; $6e4c: $38 $80

	rst  $20                                         ; $6e4e: $e7
	inc  bc                                          ; $6e4f: $03
	rra                                              ; $6e50: $1f
	rst  $38                                         ; $6e51: $ff
	nop                                              ; $6e52: $00
	sbc  a                                           ; $6e53: $9f
	add  c                                           ; $6e54: $81
	nop                                              ; $6e55: $00
	ld   c, $40                                      ; $6e56: $0e $40
	add  b                                           ; $6e58: $80
	add  c                                           ; $6e59: $81
	nop                                              ; $6e5a: $00
	jp   nz, $0400                                   ; $6e5b: $c2 $00 $04

	ld   bc, $0509                                   ; $6e5e: $01 $09 $05
	dec  d                                           ; $6e61: $15
	dec  bc                                          ; $6e62: $0b
	dec  hl                                          ; $6e63: $2b
	ld   a, [de]                                     ; $6e64: $1a
	jp   c, $3680                                    ; $6e65: $da $80 $36

	add  b                                           ; $6e68: $80
	ldh  [rSB], a                                    ; $6e69: $e0 $01
	ld   [hl], a                                     ; $6e6b: $77
	adc  b                                           ; $6e6c: $88
	adc  l                                           ; $6e6d: $8d
	nop                                              ; $6e6e: $00
	dec  c                                           ; $6e6f: $0d
	ld   de, $f8e0                                   ; $6e70: $11 $e0 $f8
	ldh  a, [$de]                                    ; $6e73: $f0 $de
	ret  c                                           ; $6e75: $d8

	ld   b, $16                                      ; $6e76: $06 $16
	or   $ee                                         ; $6e78: $f6 $ee

jr_01a_6e7a:
	ld   [$edee], a                                  ; $6e7a: $ea $ee $ed
	pop  hl                                          ; $6e7d: $e1
	add  b                                           ; $6e7e: $80
	dec  c                                           ; $6e7f: $0d
	nop                                              ; $6e80: $00
	rst  $38                                         ; $6e81: $ff
	add  h                                           ; $6e82: $84
	nop                                              ; $6e83: $00
	add  b                                           ; $6e84: $80
	rlca                                             ; $6e85: $07
	and  l                                           ; $6e86: $a5
	nop                                              ; $6e87: $00
	nop                                              ; $6e88: $00
	ret  nz                                          ; $6e89: $c0

	add  e                                           ; $6e8a: $83
	add  b                                           ; $6e8b: $80
	ld   a, [bc]                                     ; $6e8c: $0a
	rlca                                             ; $6e8d: $07
	add  b                                           ; $6e8e: $80
	cp   b                                           ; $6e8f: $b8
	add  a                                           ; $6e90: $87
	ld   bc, $063f                                   ; $6e91: $01 $3f $06
	rst  $38                                         ; $6e94: $ff
	ld   a, $ff                                      ; $6e95: $3e $ff
	ld   bc, $e380                                   ; $6e97: $01 $80 $e3
	rlca                                             ; $6e9a: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e9b: $cf
	adc  $cf                                         ; $6e9c: $ce $cf
	rst  $38                                         ; $6e9e: $ff
	add  a                                           ; $6e9f: $87
	add  [hl]                                        ; $6ea0: $86
	add  a                                           ; $6ea1: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ea2: $cf
	add  c                                           ; $6ea3: $81
	inc  bc                                          ; $6ea4: $03
	ld   [bc], a                                     ; $6ea5: $02
	add  a                                           ; $6ea6: $87
	ld   bc, $9d02                                   ; $6ea7: $01 $02 $9d
	nop                                              ; $6eaa: $00
	dec  b                                           ; $6eab: $05
	ld   [bc], a                                     ; $6eac: $02
	ld   bc, $037f                                   ; $6ead: $01 $7f $03
	or   $76                                         ; $6eb0: $f6 $76
	add  b                                           ; $6eb2: $80
	dec  c                                           ; $6eb3: $0d
	ld   [$f303], sp                                 ; $6eb4: $08 $03 $f3
	add  c                                           ; $6eb7: $81
	db   $fd                                         ; $6eb8: $fd
	ldh  a, [c]                                      ; $6eb9: $f2
	cp   $87                                         ; $6eba: $fe $87
	rst  ToBoot                                         ; $6ebc: $c7
	ccf                                              ; $6ebd: $3f
	add  b                                           ; $6ebe: $80
	jr   c, @-$63                                    ; $6ebf: $38 $9b

	nop                                              ; $6ec1: $00
	rlca                                             ; $6ec2: $07
	inc  e                                           ; $6ec3: $1c
	ld   hl, sp-$1e                                  ; $6ec4: $f8 $e2
	db   $fc                                         ; $6ec6: $fc
	ld   a, c                                        ; $6ec7: $79
	ld   a, [hl]                                     ; $6ec8: $7e
	cp   h                                           ; $6ec9: $bc
	cp   [hl]                                        ; $6eca: $be
	add  b                                           ; $6ecb: $80
	reti                                             ; $6ecc: $d9


	add  b                                           ; $6ecd: $80
	and  $80                                         ; $6ece: $e6 $80
	sbc  c                                           ; $6ed0: $99
	add  b                                           ; $6ed1: $80
	ld   h, [hl]                                     ; $6ed2: $66
	add  b                                           ; $6ed3: $80
	cp   c                                           ; $6ed4: $b9
	rlca                                             ; $6ed5: $07
	call nz, $fbc7                                   ; $6ed6: $c4 $c7 $fb
	rst  $38                                         ; $6ed9: $ff
	db   $e4                                         ; $6eda: $e4
	rst  $38                                         ; $6edb: $ff
	ld   h, b                                        ; $6edc: $60
	ld   a, h                                        ; $6edd: $7c
	add  b                                           ; $6ede: $80
	add  e                                           ; $6edf: $83
	add  b                                           ; $6ee0: $80
	rst  $38                                         ; $6ee1: $ff
	ld   [bc], a                                     ; $6ee2: $02
	inc  l                                           ; $6ee3: $2c
	ld   l, a                                        ; $6ee4: $6f
	jp   $be80                                       ; $6ee5: $c3 $80 $be


	add  d                                           ; $6ee8: $82
	cp   a                                           ; $6ee9: $bf
	inc  bc                                          ; $6eea: $03
	cp   h                                           ; $6eeb: $bc
	cp   a                                           ; $6eec: $bf
	or   b                                           ; $6eed: $b0
	cp   h                                           ; $6eee: $bc
	add  b                                           ; $6eef: $80
	add  b                                           ; $6ef0: $80
	add  c                                           ; $6ef1: $81
	and  b                                           ; $6ef2: $a0
	nop                                              ; $6ef3: $00
	jr   nz, jr_01a_6e7a                             ; $6ef4: $20 $84

	and  b                                           ; $6ef6: $a0
	add  c                                           ; $6ef7: $81
	jr   nz, jr_01a_6f1a                             ; $6ef8: $20 $20

	jr   nc, @-$7e                                   ; $6efa: $30 $80

	sub  b                                           ; $6efc: $90
	and  b                                           ; $6efd: $a0
	xor  h                                           ; $6efe: $ac
	ret  nc                                          ; $6eff: $d0

	rst  JumpTable                                         ; $6f00: $df
	ld   c, h                                        ; $6f01: $4c
	ld   c, c                                        ; $6f02: $49
	ld   l, b                                        ; $6f03: $68
	rst  $20                                         ; $6f04: $e7
	and  [hl]                                        ; $6f05: $a6
	ld   h, $16                                      ; $6f06: $26 $16
	ld   de, $f3f1                                   ; $6f08: $11 $f1 $f3
	add  a                                           ; $6f0b: $87
	add  h                                           ; $6f0c: $84
	inc  a                                           ; $6f0d: $3c
	dec  a                                           ; $6f0e: $3d
	or   e                                           ; $6f0f: $b3
	ld   [hl-], a                                    ; $6f10: $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f11: $cf
	adc  a                                           ; $6f12: $8f
	rst  JumpTable                                         ; $6f13: $df
	rra                                              ; $6f14: $1f
	inc  e                                           ; $6f15: $1c
	db   $fc                                         ; $6f16: $fc
	ld   l, e                                        ; $6f17: $6b
	ld   a, e                                        ; $6f18: $7b
	or   h                                           ; $6f19: $b4

jr_01a_6f1a:
	cp   a                                           ; $6f1a: $bf
	add  b                                           ; $6f1b: $80
	cp   b                                           ; $6f1c: $b8
	inc  bc                                          ; $6f1d: $03
	ret  c                                           ; $6f1e: $d8

	sbc  $dc                                         ; $6f1f: $de $dc
	sbc  $83                                         ; $6f21: $de $83
	nop                                              ; $6f23: $00
	add  b                                           ; $6f24: $80
	add  b                                           ; $6f25: $80
	add  d                                           ; $6f26: $82
	ld   b, b                                        ; $6f27: $40
	add  d                                           ; $6f28: $82
	jr   nz, @-$6e                                   ; $6f29: $20 $90

	nop                                              ; $6f2b: $00
	rlca                                             ; $6f2c: $07
	ld   e, $00                                      ; $6f2d: $1e $00
	ld   h, c                                        ; $6f2f: $61
	ld   e, $f8                                      ; $6f30: $1e $f8
	ld   h, a                                        ; $6f32: $67
	sbc  c                                           ; $6f33: $99
	sbc  e                                           ; $6f34: $9b
	add  b                                           ; $6f35: $80
	ld   h, e                                        ; $6f36: $63
	add  hl, bc                                      ; $6f37: $09
	add  b                                           ; $6f38: $80
	sbc  a                                           ; $6f39: $9f
	ld   a, [de]                                     ; $6f3a: $1a
	ld   a, [hl]                                     ; $6f3b: $7e
	ld   h, a                                        ; $6f3c: $67
	rst  $38                                         ; $6f3d: $ff
	sbc  a                                           ; $6f3e: $9f
	rst  $38                                         ; $6f3f: $ff
	ld   a, a                                        ; $6f40: $7f
	rst  $38                                         ; $6f41: $ff
	add  b                                           ; $6f42: $80
	db   $e3                                         ; $6f43: $e3
	add  b                                           ; $6f44: $80
	dec  e                                           ; $6f45: $1d
	add  b                                           ; $6f46: $80
	cp   $0a                                         ; $6f47: $fe $0a
	ldh  a, [$fe]                                    ; $6f49: $f0 $fe
	add  hl, bc                                      ; $6f4b: $09
	rst  $38                                         ; $6f4c: $ff
	ld   hl, sp-$1e                                  ; $6f4d: $f8 $e2
	ld   a, [$2602]                                  ; $6f4f: $fa $02 $26
	nop                                              ; $6f52: $00
	jp   $009d                                       ; $6f53: $c3 $9d $00


	ld   [de], a                                     ; $6f56: $12
	ret  nz                                          ; $6f57: $c0

	nop                                              ; $6f58: $00
	ldh  a, [$c0]                                    ; $6f59: $f0 $c0
	stop                                             ; $6f5b: $10 $00
	ldh  a, [$e0]                                    ; $6f5d: $f0 $e0
	db   $fc                                         ; $6f5f: $fc
	ldh  a, [$cf]                                    ; $6f60: $f0 $cf
	call z, $3033                                    ; $6f62: $cc $33 $30
	call z, $30c0                                    ; $6f65: $cc $c0 $30
	nop                                              ; $6f68: $00
	ret  nz                                          ; $6f69: $c0

	sbc  c                                           ; $6f6a: $99
	nop                                              ; $6f6b: $00
	inc  c                                           ; $6f6c: $0c
	adc  b                                           ; $6f6d: $88
	nop                                              ; $6f6e: $00
	ld   l, b                                        ; $6f6f: $68
	add  b                                           ; $6f70: $80
	sub  b                                           ; $6f71: $90
	ldh  [$08], a                                    ; $6f72: $e0 $08
	ldh  a, [$e4]                                    ; $6f74: $f0 $e4
	ld   hl, sp-$0e                                  ; $6f76: $f8 $f2
	db   $fc                                         ; $6f78: $fc
	dec  b                                           ; $6f79: $05
	add  d                                           ; $6f7a: $82
	cp   $07                                         ; $6f7b: $fe $07
	ld   a, a                                        ; $6f7d: $7f
	rst  $38                                         ; $6f7e: $ff
	rrca                                             ; $6f7f: $0f
	ld   a, a                                        ; $6f80: $7f
	ld   bc, $000f                                   ; $6f81: $01 $0f $00
	ld   bc, $0095                                   ; $6f84: $01 $95 $00
	nop                                              ; $6f87: $00
	add  b                                           ; $6f88: $80
	add  e                                           ; $6f89: $83
	nop                                              ; $6f8a: $00
	inc  b                                           ; $6f8b: $04
	ld   b, b                                        ; $6f8c: $40
	add  b                                           ; $6f8d: $80
	adc  b                                           ; $6f8e: $88
	add  b                                           ; $6f8f: $80
	adc  b                                           ; $6f90: $88
	adc  c                                           ; $6f91: $89
	add  b                                           ; $6f92: $80
	ld   b, $a1                                      ; $6f93: $06 $a1
	nop                                              ; $6f95: $00
	call c, $bec0                                    ; $6f96: $dc $c0 $be
	cp   h                                           ; $6f99: $bc
	rst  $38                                         ; $6f9a: $ff
	adc  l                                           ; $6f9b: $8d
	nop                                              ; $6f9c: $00
	nop                                              ; $6f9d: $00
	rst  $38                                         ; $6f9e: $ff
	add  b                                           ; $6f9f: $80
	ei                                               ; $6fa0: $fb
	add  b                                           ; $6fa1: $80
	db   $fc                                         ; $6fa2: $fc
	add  d                                           ; $6fa3: $82
	ld   a, a                                        ; $6fa4: $7f
	inc  bc                                          ; $6fa5: $03
	sbc  h                                           ; $6fa6: $9c
	sbc  a                                           ; $6fa7: $9f
	nop                                              ; $6fa8: $00
	db   $fc                                         ; $6fa9: $fc
	add  e                                           ; $6faa: $83
	nop                                              ; $6fab: $00
	dec  bc                                          ; $6fac: $0b
	ld   hl, sp+$00                                  ; $6fad: $f8 $00
	db   $fc                                         ; $6faf: $fc
	ld   hl, sp+$02                                  ; $6fb0: $f8 $02
	nop                                              ; $6fb2: $00
	cp   a                                           ; $6fb3: $bf
	add  b                                           ; $6fb4: $80
	daa                                              ; $6fb5: $27
	ld   bc, $051d                                   ; $6fb6: $01 $1d $05
	add  b                                           ; $6fb9: $80
	ld   [hl], h                                     ; $6fba: $74
	db   $10                                         ; $6fbb: $10
	or   e                                           ; $6fbc: $b3
	or   b                                           ; $6fbd: $b0
	adc  l                                           ; $6fbe: $8d
	add  b                                           ; $6fbf: $80
	ld   b, e                                        ; $6fc0: $43
	ld   b, c                                        ; $6fc1: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fc2: $cf
	jp   $b636                                       ; $6fc3: $c3 $36 $b6


	add  d                                           ; $6fc6: $82
	ld   [hl-], a                                    ; $6fc7: $32
	add  hl, sp                                      ; $6fc8: $39
	add  b                                           ; $6fc9: $80
	or   $00                                         ; $6fca: $f6 $00
	add  b                                           ; $6fcc: $80
	adc  c                                           ; $6fcd: $89
	nop                                              ; $6fce: $00
	inc  c                                           ; $6fcf: $0c
	stop                                             ; $6fd0: $10 $00
	ld   [hl], b                                     ; $6fd2: $70
	nop                                              ; $6fd3: $00
	ret  nz                                          ; $6fd4: $c0

	ld   b, b                                        ; $6fd5: $40
	and  b                                           ; $6fd6: $a0
	add  b                                           ; $6fd7: $80
	ld   b, b                                        ; $6fd8: $40
	nop                                              ; $6fd9: $00
	add  b                                           ; $6fda: $80
	nop                                              ; $6fdb: $00
	add  b                                           ; $6fdc: $80
	add  l                                           ; $6fdd: $85
	nop                                              ; $6fde: $00
	dec  b                                           ; $6fdf: $05
	add  b                                           ; $6fe0: $80
	cp   $06                                         ; $6fe1: $fe $06
	inc  b                                           ; $6fe3: $04
	ei                                               ; $6fe4: $fb
	ld   hl, sp-$80                                  ; $6fe5: $f8 $80
	db   $fd                                         ; $6fe7: $fd
	add  b                                           ; $6fe8: $80
	pop  bc                                          ; $6fe9: $c1
	ld   [bc], a                                     ; $6fea: $02
	ld   a, $ba                                      ; $6feb: $3e $ba
	sbc  d                                           ; $6fed: $9a
	add  c                                           ; $6fee: $81
	ld   a, d                                        ; $6fef: $7a
	dec  b                                           ; $6ff0: $05
	add  h                                           ; $6ff1: $84
	or   h                                           ; $6ff2: $b4
	or   l                                           ; $6ff3: $b5
	or   e                                           ; $6ff4: $b3
	and  d                                           ; $6ff5: $a2
	db   $db                                         ; $6ff6: $db
	add  d                                           ; $6ff7: $82
	ld   e, e                                        ; $6ff8: $5b
	rlca                                             ; $6ff9: $07
	ld   d, e                                        ; $6ffa: $53
	ld   l, l                                        ; $6ffb: $6d
	dec  l                                           ; $6ffc: $2d
	xor  l                                           ; $6ffd: $ad
	or   l                                           ; $6ffe: $b5
	and  c                                           ; $6fff: $a1
	ld   d, h                                        ; $7000: $54
	push de                                          ; $7001: $d5
	add  b                                           ; $7002: $80
	pop  de                                          ; $7003: $d1
	add  b                                           ; $7004: $80
	rst  $10                                         ; $7005: $d7
	add  b                                           ; $7006: $80
	rst  ToBoot                                         ; $7007: $c7
	add  hl, bc                                      ; $7008: $09
	sbc  b                                           ; $7009: $98
	cp   b                                           ; $700a: $b8
	jr   nc, @-$47                                   ; $700b: $30 $b7

	and  a                                           ; $700d: $a7
	ld   [hl], h                                     ; $700e: $74
	ld   [hl], a                                     ; $700f: $77
	ld   l, e                                        ; $7010: $6b
	sub  a                                           ; $7011: $97
	rst  $38                                         ; $7012: $ff
	add  b                                           ; $7013: $80
	cp   $02                                         ; $7014: $fe $02
	ldh  [$e1], a                                    ; $7016: $e0 $e1
	ld   bc, $1e80                                   ; $7018: $01 $80 $1e
	ld   [bc], a                                     ; $701b: $02
	ldh  [$e3], a                                    ; $701c: $e0 $e3
	inc  bc                                          ; $701e: $03

jr_01a_701f:
	add  b                                           ; $701f: $80
	ccf                                              ; $7020: $3f
	add  b                                           ; $7021: $80
	ei                                               ; $7022: $fb
	add  b                                           ; $7023: $80
	cp   e                                           ; $7024: $bb
	add  b                                           ; $7025: $80
	inc  bc                                          ; $7026: $03
	nop                                              ; $7027: $00
	nop                                              ; $7028: $00
	add  b                                           ; $7029: $80
	cp   h                                           ; $702a: $bc
	inc  b                                           ; $702b: $04
	nop                                              ; $702c: $00
	inc  e                                           ; $702d: $1c
	inc  a                                           ; $702e: $3c
	rst  JumpTable                                         ; $702f: $df
	rst  $38                                         ; $7030: $ff
	add  b                                           ; $7031: $80
	rst  $30                                         ; $7032: $f7
	add  b                                           ; $7033: $80
	rst  $38                                         ; $7034: $ff
	dec  b                                           ; $7035: $05
	sbc  [hl]                                        ; $7036: $9e
	cp   d                                           ; $7037: $ba
	jp   hl                                          ; $7038: $e9


	push bc                                          ; $7039: $c5
	ld   hl, sp-$10                                  ; $703a: $f8 $f0
	add  b                                           ; $703c: $80
	ld   a, e                                        ; $703d: $7b
	add  b                                           ; $703e: $80
	inc  a                                           ; $703f: $3c
	add  b                                           ; $7040: $80
	ld   e, $80                                      ; $7041: $1e $80
	db   $ec                                         ; $7043: $ec
	add  b                                           ; $7044: $80
	di                                               ; $7045: $f3
	ld   bc, $7c7e                                   ; $7046: $01 $7e $7c
	add  b                                           ; $7049: $80
	cp   h                                           ; $704a: $bc
	nop                                              ; $704b: $00
	db   $dd                                         ; $704c: $dd
	add  c                                           ; $704d: $81
	sbc  $0f                                         ; $704e: $de $0f
	db   $ec                                         ; $7050: $ec
	xor  $e3                                         ; $7051: $ee $e3
	rst  $28                                         ; $7053: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7054: $cf
	rst  $30                                         ; $7055: $f7
	scf                                              ; $7056: $37
	ld   [hl], a                                     ; $7057: $77
	dec  bc                                          ; $7058: $0b
	nop                                              ; $7059: $00
	add  a                                           ; $705a: $87
	ld   h, b                                        ; $705b: $60
	ld   l, e                                        ; $705c: $6b
	rst  $30                                         ; $705d: $f7
	db   $ec                                         ; $705e: $ec
	db   $eb                                         ; $705f: $eb
	add  d                                           ; $7060: $82
	rst  JumpTable                                         ; $7061: $df
	add  b                                           ; $7062: $80
	cp   a                                           ; $7063: $bf
	dec  c                                           ; $7064: $0d
	rrca                                             ; $7065: $0f
	cp   a                                           ; $7066: $bf
	ld   d, [hl]                                     ; $7067: $56
	ld   h, [hl]                                     ; $7068: $66
	ld   l, a                                        ; $7069: $6f
	inc  bc                                          ; $706a: $03
	inc  de                                          ; $706b: $13
	add  b                                           ; $706c: $80
	ld   a, b                                        ; $706d: $78
	db   $fc                                         ; $706e: $fc
	inc  hl                                          ; $706f: $23
	rst  JumpTable                                         ; $7070: $df
	ld   hl, sp-$01                                  ; $7071: $f8 $ff
	add  b                                           ; $7073: $80
	db   $fc                                         ; $7074: $fc
	add  b                                           ; $7075: $80
	jp   $1c16                                       ; $7076: $c3 $16 $1c


	sub  [hl]                                        ; $7079: $96
	or   [hl]                                        ; $707a: $b6
	halt                                             ; $707b: $76
	ld   d, d                                        ; $707c: $52
	ld   a, c                                        ; $707d: $79
	ld   [hl], c                                     ; $707e: $71
	ld   [hl], e                                     ; $707f: $73
	ld   l, e                                        ; $7080: $6b
	xor  b                                           ; $7081: $a8
	jr   c, jr_01a_701f                              ; $7082: $38 $9b

	dec  sp                                          ; $7084: $3b
	inc  sp                                          ; $7085: $33
	rst  $20                                         ; $7086: $e7
	push hl                                          ; $7087: $e5
	ld   c, $67                                      ; $7088: $0e $67
	ld   l, b                                        ; $708a: $68
	ret  z                                           ; $708b: $c8

	rst  ToBoot                                         ; $708c: $c7
	rst  $10                                         ; $708d: $d7
	ret  nc                                          ; $708e: $d0

	add  b                                           ; $708f: $80
	or   b                                           ; $7090: $b0
	add  b                                           ; $7091: $80
	ld   [hl], b                                     ; $7092: $70
	add  b                                           ; $7093: $80
	rst  $20                                         ; $7094: $e7
	inc  b                                           ; $7095: $04
	ldh  [$e1], a                                    ; $7096: $e0 $e1
	pop  de                                          ; $7098: $d1
	cpl                                              ; $7099: $2f
	rst  $38                                         ; $709a: $ff
	add  b                                           ; $709b: $80
	ld   hl, sp+$00                                  ; $709c: $f8 $00
	nop                                              ; $709e: $00
	add  b                                           ; $709f: $80
	rlca                                             ; $70a0: $07
	add  b                                           ; $70a1: $80
	jr   c, jr_01a_70a4                              ; $70a2: $38 $00

jr_01a_70a4:
	add  b                                           ; $70a4: $80
	add  b                                           ; $70a5: $80
	add  a                                           ; $70a6: $87
	ld   bc, $7fff                                   ; $70a7: $01 $ff $7f
	add  b                                           ; $70aa: $80
	rst  $38                                         ; $70ab: $ff
	add  b                                           ; $70ac: $80
	ret  nz                                          ; $70ad: $c0

	nop                                              ; $70ae: $00
	nop                                              ; $70af: $00
	add  b                                           ; $70b0: $80
	ccf                                              ; $70b1: $3f
	add  b                                           ; $70b2: $80
	ret  nz                                          ; $70b3: $c0

	inc  bc                                          ; $70b4: $03
	nop                                              ; $70b5: $00
	rra                                              ; $70b6: $1f
	ccf                                              ; $70b7: $3f
	rst  JumpTable                                         ; $70b8: $df
	add  e                                           ; $70b9: $83
	rst  $38                                         ; $70ba: $ff
	add  b                                           ; $70bb: $80
	ld   a, a                                        ; $70bc: $7f
	dec  b                                           ; $70bd: $05
	ccf                                              ; $70be: $3f
	cp   a                                           ; $70bf: $bf
	adc  a                                           ; $70c0: $8f
	ld   c, a                                        ; $70c1: $4f
	ld   b, [hl]                                     ; $70c2: $46
	ld   b, $80                                      ; $70c3: $06 $80
	ld   sp, hl                                      ; $70c5: $f9
	add  h                                           ; $70c6: $84
	rst  $38                                         ; $70c7: $ff
	ld   a, [bc]                                     ; $70c8: $0a
	ld   a, a                                        ; $70c9: $7f
	ld   b, b                                        ; $70ca: $40
	nop                                              ; $70cb: $00
	ld   a, a                                        ; $70cc: $7f
	ld   e, a                                        ; $70cd: $5f
	ld   a, a                                        ; $70ce: $7f
	ld   l, a                                        ; $70cf: $6f
	cp   a                                           ; $70d0: $bf
	or   b                                           ; $70d1: $b0
	or   a                                           ; $70d2: $b7
	scf                                              ; $70d3: $37
	add  b                                           ; $70d4: $80
	cp   a                                           ; $70d5: $bf
	inc  bc                                          ; $70d6: $03
	cp   h                                           ; $70d7: $bc
	cp   a                                           ; $70d8: $bf
	and  e                                           ; $70d9: $a3
	rst  JumpTable                                         ; $70da: $df
	add  c                                           ; $70db: $81
	rst  $38                                         ; $70dc: $ff
	ld   [bc], a                                     ; $70dd: $02
	ldh  a, [rIE]                                    ; $70de: $f0 $ff
	rrca                                             ; $70e0: $0f
	add  b                                           ; $70e1: $80
	cp   $80                                         ; $70e2: $fe $80
	pop  af                                          ; $70e4: $f1
	dec  b                                           ; $70e5: $05
	adc  a                                           ; $70e6: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70e7: $cf
	ld   e, [hl]                                     ; $70e8: $5e
	rst  $38                                         ; $70e9: $ff
	push hl                                          ; $70ea: $e5
	inc  b                                           ; $70eb: $04
	add  [hl]                                        ; $70ec: $86
	ld   [hl], a                                     ; $70ed: $77
	add  b                                           ; $70ee: $80
	rst  $30                                         ; $70ef: $f7
	ld   [bc], a                                     ; $70f0: $02
	add  b                                           ; $70f1: $80
	rst  $38                                         ; $70f2: $ff
	ld   a, a                                        ; $70f3: $7f
	add  b                                           ; $70f4: $80
	rst  $38                                         ; $70f5: $ff
	inc  b                                           ; $70f6: $04
	nop                                              ; $70f7: $00
	cp   h                                           ; $70f8: $bc
	cp   l                                           ; $70f9: $bd
	ld   a, l                                        ; $70fa: $7d
	ld   a, a                                        ; $70fb: $7f
	add  b                                           ; $70fc: $80
	ld   a, b                                        ; $70fd: $78
	add  e                                           ; $70fe: $83
	ld   a, e                                        ; $70ff: $7b
	nop                                              ; $7100: $00
	ld   a, b                                        ; $7101: $78
	add  c                                           ; $7102: $81
	ld   a, e                                        ; $7103: $7b
	ld   [bc], a                                     ; $7104: $02
	ld   b, h                                        ; $7105: $44
	ccf                                              ; $7106: $3f
	rst  $38                                         ; $7107: $ff
	add  b                                           ; $7108: $80
	ldh  a, [$80]                                    ; $7109: $f0 $80
	inc  bc                                          ; $710b: $03
	dec  b                                           ; $710c: $05
	rst  $38                                         ; $710d: $ff
	db   $fc                                         ; $710e: $fc
	rst  $38                                         ; $710f: $ff
	add  e                                           ; $7110: $83
	rst  $38                                         ; $7111: $ff
	ld   a, a                                        ; $7112: $7f
	add  c                                           ; $7113: $81
	rst  $38                                         ; $7114: $ff
	ld   [$0d03], sp                                 ; $7115: $08 $03 $0d
	dec  b                                           ; $7118: $05
	dec  a                                           ; $7119: $3d
	add  hl, sp                                      ; $711a: $39
	db   $fc                                         ; $711b: $fc
	call z, $3dfd                                    ; $711c: $cc $fd $3d
	add  b                                           ; $711f: $80
	or   $82                                         ; $7120: $f6 $82
	cp   $01                                         ; $7122: $fe $01
	nop                                              ; $7124: $00
	rlca                                             ; $7125: $07
	add  b                                           ; $7126: $80
	rst  ToBoot                                         ; $7127: $c7
	add  b                                           ; $7128: $80
	cp   a                                           ; $7129: $bf
	add  b                                           ; $712a: $80
	ld   a, a                                        ; $712b: $7f
	add  c                                           ; $712c: $81
	rst  $38                                         ; $712d: $ff
	nop                                              ; $712e: $00
	ei                                               ; $712f: $fb
	add  c                                           ; $7130: $81
	rst  $38                                         ; $7131: $ff
	ld   [bc], a                                     ; $7132: $02
	db   $fd                                         ; $7133: $fd
	rst  $38                                         ; $7134: $ff
	ld   bc, $ff99                                   ; $7135: $01 $99 $ff
	add  b                                           ; $7138: $80
	db   $fc                                         ; $7139: $fc
	add  b                                           ; $713a: $80
	ld   a, [$ff88]                                  ; $713b: $fa $88 $ff
	add  b                                           ; $713e: $80
	ei                                               ; $713f: $fb
	add  b                                           ; $7140: $80
	ld   a, a                                        ; $7141: $7f
	add  b                                           ; $7142: $80
	cp   a                                           ; $7143: $bf
	ld   b, $87                                      ; $7144: $06 $87
	sbc  a                                           ; $7146: $9f
	sub  a                                           ; $7147: $97
	sbc  a                                           ; $7148: $9f
	sub  [hl]                                        ; $7149: $96
	cp   [hl]                                        ; $714a: $be
	cp   b                                           ; $714b: $b8
	add  h                                           ; $714c: $84
	cp   l                                           ; $714d: $bd
	add  b                                           ; $714e: $80
	add  b                                           ; $714f: $80
	ld   [bc], a                                     ; $7150: $02
	cp   l                                           ; $7151: $bd
	add  $f8                                         ; $7152: $c6 $f8
	add  b                                           ; $7154: $80
	inc  bc                                          ; $7155: $03
	ld   bc, $dcdf                                   ; $7156: $01 $df $dc
	add  b                                           ; $7159: $80
	cp   a                                           ; $715a: $bf
	ld   [bc], a                                     ; $715b: $02
	inc  bc                                          ; $715c: $03
	cp   a                                           ; $715d: $bf
	cp   h                                           ; $715e: $bc
	add  b                                           ; $715f: $80
	cp   a                                           ; $7160: $bf
	add  b                                           ; $7161: $80
	rlca                                             ; $7162: $07
	ld   b, $58                                      ; $7163: $06 $58
	and  a                                           ; $7165: $a7
	nop                                              ; $7166: $00
	rst  $38                                         ; $7167: $ff
	cp   $00                                         ; $7168: $fe $00
	cp   $82                                         ; $716a: $fe $82
	ld   a, l                                        ; $716c: $7d
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	add  d                                           ; $716f: $82
	ld   a, l                                        ; $7170: $7d
	ld   [$81fd], sp                                 ; $7171: $08 $fd $81
	dec  e                                           ; $7174: $1d
	sbc  c                                           ; $7175: $99
	ldh  [$e9], a                                    ; $7176: $e0 $e9
	di                                               ; $7178: $f3
	ldh  a, [c]                                      ; $7179: $f2
	ldh  a, [$80]                                    ; $717a: $f0 $80
	rst  $30                                         ; $717c: $f7
	ld   [bc], a                                     ; $717d: $02
	jr   nc, @-$07                                   ; $717e: $30 $f7

	rst  ToBoot                                         ; $7180: $c7
	add  b                                           ; $7181: $80
	di                                               ; $7182: $f3
	add  b                                           ; $7183: $80
	ldh  a, [$80]                                    ; $7184: $f0 $80
	ld   a, b                                        ; $7186: $78
	add  h                                           ; $7187: $84
	cp   a                                           ; $7188: $bf
	rlca                                             ; $7189: $07
	sbc  $df                                         ; $718a: $de $df
	ret  c                                           ; $718c: $d8

	rst  JumpTable                                         ; $718d: $df
	pop  hl                                          ; $718e: $e1
	ld   a, a                                        ; $718f: $7f
	rlca                                             ; $7190: $07
	sbc  a                                           ; $7191: $9f
	add  b                                           ; $7192: $80
	nop                                              ; $7193: $00
	add  b                                           ; $7194: $80
	ld   a, [hl]                                     ; $7195: $7e
	add  b                                           ; $7196: $80
	ld   bc, $fb80                                   ; $7197: $01 $80 $fb
	add  b                                           ; $719a: $80
	inc  [hl]                                        ; $719b: $34
	add  b                                           ; $719c: $80
	ld   d, e                                        ; $719d: $53
	add  b                                           ; $719e: $80
	xor  e                                           ; $719f: $ab
	add  b                                           ; $71a0: $80
	db   $db                                         ; $71a1: $db
	add  b                                           ; $71a2: $80
	ld   [$e880], a                                  ; $71a3: $ea $80 $e8
	add  b                                           ; $71a6: $80
	or   $80                                         ; $71a7: $f6 $80
	ld   hl, sp-$80                                  ; $71a9: $f8 $80
	ccf                                              ; $71ab: $3f
	add  e                                           ; $71ac: $83
	rst  JumpTable                                         ; $71ad: $df
	ld   [bc], a                                     ; $71ae: $02
	sbc  $ff                                         ; $71af: $de $ff
	cp   $80                                         ; $71b1: $fe $80
	rst  $28                                         ; $71b3: $ef
	add  b                                           ; $71b4: $80
	rst  $38                                         ; $71b5: $ff
	add  h                                           ; $71b6: $84
	ld   a, a                                        ; $71b7: $7f
	add  b                                           ; $71b8: $80
	ld   a, l                                        ; $71b9: $7d
	ld   bc, $807f                                   ; $71ba: $01 $7f $80
	add  c                                           ; $71bd: $81
	rst  $38                                         ; $71be: $ff
	nop                                              ; $71bf: $00
	ld   a, a                                        ; $71c0: $7f
	add  c                                           ; $71c1: $81
	rst  $38                                         ; $71c2: $ff
	ld   [$ffbf], sp                                 ; $71c3: $08 $bf $ff
	rst  JumpTable                                         ; $71c6: $df
	rst  $38                                         ; $71c7: $ff
	rst  $28                                         ; $71c8: $ef
	rst  $38                                         ; $71c9: $ff
	rst  $30                                         ; $71ca: $f7
	rst  $38                                         ; $71cb: $ff
	ld   [bc], a                                     ; $71cc: $02
	add  c                                           ; $71cd: $81
	ld   a, [$fc80]                                  ; $71ce: $fa $80 $fc
	adc  b                                           ; $71d1: $88
	rst  $38                                         ; $71d2: $ff
	add  d                                           ; $71d3: $82
	cp   a                                           ; $71d4: $bf
	ld   bc, $7f73                                   ; $71d5: $01 $73 $7f
	add  b                                           ; $71d8: $80
	rst  $28                                         ; $71d9: $ef
	inc  b                                           ; $71da: $04
	db   $fd                                         ; $71db: $fd
	rst  $38                                         ; $71dc: $ff
	rst  $28                                         ; $71dd: $ef
	rst  $38                                         ; $71de: $ff
	cp   $81                                         ; $71df: $fe $81
	rst  $38                                         ; $71e1: $ff
	ld   [bc], a                                     ; $71e2: $02
	ld   h, a                                        ; $71e3: $67
	rra                                              ; $71e4: $1f
	sub  a                                           ; $71e5: $97
	add  b                                           ; $71e6: $80
	ld   a, a                                        ; $71e7: $7f
	ld   bc, $efff                                   ; $71e8: $01 $ff $ef
	add  c                                           ; $71eb: $81
	rst  $38                                         ; $71ec: $ff
	nop                                              ; $71ed: $00
	rst  JumpTable                                         ; $71ee: $df
	add  c                                           ; $71ef: $81
	rst  $38                                         ; $71f0: $ff
	ld   bc, $ffbf                                   ; $71f1: $01 $bf $ff
	add  c                                           ; $71f4: $81
	ld   a, a                                        ; $71f5: $7f
	add  d                                           ; $71f6: $82
	cp   a                                           ; $71f7: $bf
	add  b                                           ; $71f8: $80
	ccf                                              ; $71f9: $3f
	add  b                                           ; $71fa: $80
	nop                                              ; $71fb: $00
	add  b                                           ; $71fc: $80
	ld   a, [hl]                                     ; $71fd: $7e
	rlca                                             ; $71fe: $07
	ld   b, b                                        ; $71ff: $40
	ld   e, l                                        ; $7200: $5d
	call c, $ffc2                                    ; $7201: $dc $c2 $ff
	db   $fd                                         ; $7204: $fd
	rst  $38                                         ; $7205: $ff
	cp   $82                                         ; $7206: $fe $82
	rst  $38                                         ; $7208: $ff
	rlca                                             ; $7209: $07
	ld   a, [hl]                                     ; $720a: $7e
	rst  $38                                         ; $720b: $ff
	dec  a                                           ; $720c: $3d
	ccf                                              ; $720d: $3f
	ld   b, e                                        ; $720e: $43
	jp   $27db                                       ; $720f: $c3 $db $27


	add  c                                           ; $7212: $81
	rst  $38                                         ; $7213: $ff
	ld   [bc], a                                     ; $7214: $02
	ccf                                              ; $7215: $3f
	rst  $38                                         ; $7216: $ff
	ret  nz                                          ; $7217: $c0

	add  b                                           ; $7218: $80
	rst  $38                                         ; $7219: $ff
	rlca                                             ; $721a: $07
	ld   e, $fe                                      ; $721b: $1e $fe
	ld   h, b                                        ; $721d: $60
	ld   [hl], b                                     ; $721e: $70
	or   [hl]                                        ; $721f: $b6
	cp   [hl]                                        ; $7220: $be
	sbc  e                                           ; $7221: $9b
	and  e                                           ; $7222: $a3
	add  b                                           ; $7223: $80
	rst  $38                                         ; $7224: $ff
	add  b                                           ; $7225: $80
	ld   hl, sp+$06                                  ; $7226: $f8 $06
	add  $06                                         ; $7228: $c6 $06
	add  hl, sp                                      ; $722a: $39
	db   $fd                                         ; $722b: $fd
	dec  b                                           ; $722c: $05
	sbc  c                                           ; $722d: $99
	sbc  b                                           ; $722e: $98
	add  b                                           ; $722f: $80
	add  [hl]                                        ; $7230: $86
	add  hl, bc                                      ; $7231: $09
	db   $ec                                         ; $7232: $ec
	ld   c, h                                        ; $7233: $4c
	ld   h, c                                        ; $7234: $61
	add  b                                           ; $7235: $80
	cp   e                                           ; $7236: $bb
	cp   c                                           ; $7237: $b9
	add  c                                           ; $7238: $81
	ld   bc, $7377                                   ; $7239: $01 $77 $73
	add  b                                           ; $723c: $80
	inc  bc                                          ; $723d: $03
	ld   [bc], a                                     ; $723e: $02
	rst  $28                                         ; $723f: $ef
	rst  $20                                         ; $7240: $e7
	rrca                                             ; $7241: $0f
	add  b                                           ; $7242: $80
	ld   b, $01                                      ; $7243: $06 $01
	ld   a, [$81fd]                                  ; $7245: $fa $fd $81
	rst  $10                                         ; $7248: $d7
	nop                                              ; $7249: $00
	rst  JumpTable                                         ; $724a: $df
	add  d                                           ; $724b: $82
	xor  a                                           ; $724c: $af
	inc  b                                           ; $724d: $04
	cpl                                              ; $724e: $2f
	inc  l                                           ; $724f: $2c
	ld   c, h                                        ; $7250: $4c
	ld   b, e                                        ; $7251: $43
	db   $e3                                         ; $7252: $e3
	add  b                                           ; $7253: $80
	db   $ec                                         ; $7254: $ec
	nop                                              ; $7255: $00
	inc  e                                           ; $7256: $1c
	add  b                                           ; $7257: $80
	db   $dd                                         ; $7258: $dd
	ld   bc, $cfcd                                   ; $7259: $01 $cd $cf
	add  c                                           ; $725c: $81
	adc  $09                                         ; $725d: $ce $09
	di                                               ; $725f: $f3
	jp   $073f                                       ; $7260: $c3 $3f $07


	ld   hl, sp-$40                                  ; $7263: $f8 $c0
	nop                                              ; $7265: $00
	ccf                                              ; $7266: $3f
	inc  e                                           ; $7267: $1c
	ld   b, e                                        ; $7268: $43
	add  b                                           ; $7269: $80
	ld   c, [hl]                                     ; $726a: $4e
	ld   bc, $a171                                   ; $726b: $01 $71 $a1
	add  b                                           ; $726e: $80
	and  a                                           ; $726f: $a7
	ld   [bc], a                                     ; $7270: $02
	and  b                                           ; $7271: $a0
	jr   nz, @+$32                                   ; $7272: $20 $30

	add  b                                           ; $7274: $80
	ld   c, a                                        ; $7275: $4f
	add  b                                           ; $7276: $80
	ld   e, h                                        ; $7277: $5c
	add  b                                           ; $7278: $80
	ld   b, e                                        ; $7279: $43
	add  b                                           ; $727a: $80
	add  hl, sp                                      ; $727b: $39
	ld   a, [bc]                                     ; $727c: $0a
	call c, Call_01a_6bde                            ; $727d: $dc $de $6b
	db   $eb                                         ; $7280: $eb
	inc  sp                                          ; $7281: $33
	ld   [hl], $b7                                   ; $7282: $36 $b7
	rst  $30                                         ; $7284: $f7
	rst  $10                                         ; $7285: $d7
	rst  JumpTable                                         ; $7286: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7287: $cf
	add  b                                           ; $7288: $80
	rst  $28                                         ; $7289: $ef
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00

jr_01a_728c:
	add  b                                           ; $728c: $80
	db   $fd                                         ; $728d: $fd
	add  b                                           ; $728e: $80
	ld   bc, $ff85                                   ; $728f: $01 $85 $ff
	nop                                              ; $7292: $00
	ld   a, a                                        ; $7293: $7f
	add  b                                           ; $7294: $80
	rst  $38                                         ; $7295: $ff
	dec  b                                           ; $7296: $05
	cp   $7e                                         ; $7297: $fe $7e
	rst  $38                                         ; $7299: $ff
	pop  bc                                          ; $729a: $c1
	di                                               ; $729b: $f3
	ld   [hl-], a                                    ; $729c: $32
	add  e                                           ; $729d: $83
	di                                               ; $729e: $f3
	add  b                                           ; $729f: $80
	ldh  a, [c]                                      ; $72a0: $f2
	add  hl, bc                                      ; $72a1: $09
	ld   [hl], d                                     ; $72a2: $72
	or   $b4                                         ; $72a3: $f6 $b4
	db   $f4                                         ; $72a5: $f4
	ret                                              ; $72a6: $c9


	ld   a, a                                        ; $72a7: $7f
	ld   a, l                                        ; $72a8: $7d
	ld   a, a                                        ; $72a9: $7f
	ld   a, e                                        ; $72aa: $7b
	ld   a, a                                        ; $72ab: $7f
	add  b                                           ; $72ac: $80
	ld   a, [hl]                                     ; $72ad: $7e
	ld   [bc], a                                     ; $72ae: $02
	ld   [hl], l                                     ; $72af: $75
	ld   a, l                                        ; $72b0: $7d
	ld   a, e                                        ; $72b1: $7b
	add  c                                           ; $72b2: $81
	ei                                               ; $72b3: $fb
	add  b                                           ; $72b4: $80
	rst  $30                                         ; $72b5: $f7
	nop                                              ; $72b6: $00
	rrca                                             ; $72b7: $0f
	rst  $38                                         ; $72b8: $ff
	nop                                              ; $72b9: $00
	db   $fc                                         ; $72ba: $fc
	nop                                              ; $72bb: $00
	sub  h                                           ; $72bc: $94
	ld   bc, $0109                                   ; $72bd: $01 $09 $01
	nop                                              ; $72c0: $00
	ld   [bc], a                                     ; $72c1: $02
	ld   bc, $030f                                   ; $72c2: $01 $0f $03
	dec  de                                          ; $72c5: $1b
	ld   a, [bc]                                     ; $72c6: $0a
	add  hl, sp                                      ; $72c7: $39
	add  hl, de                                      ; $72c8: $19
	add  b                                           ; $72c9: $80
	dec  d                                           ; $72ca: $15
	add  b                                           ; $72cb: $80
	inc  c                                           ; $72cc: $0c
	ld   b, $18                                      ; $72cd: $06 $18
	ld   a, [de]                                     ; $72cf: $1a
	ld   [hl+], a                                    ; $72d0: $22
	ld   b, $1f                                      ; $72d1: $06 $1f
	nop                                              ; $72d3: $00
	ld   b, $9d                                      ; $72d4: $06 $9d
	nop                                              ; $72d6: $00
	ld   [$0003], sp                                 ; $72d7: $08 $03 $00
	inc  b                                           ; $72da: $04
	inc  bc                                          ; $72db: $03
	dec  bc                                          ; $72dc: $0b
	rlca                                             ; $72dd: $07
	ld   de, $260f                                   ; $72de: $11 $0f $26
	add  c                                           ; $72e1: $81
	rra                                              ; $72e2: $1f
	ld   b, $6f                                      ; $72e3: $06 $6f
	rra                                              ; $72e5: $1f
	ld   b, $1e                                      ; $72e6: $06 $1e
	ld   a, [de]                                     ; $72e8: $1a
	ld   e, $fc                                      ; $72e9: $1e $fc
	add  h                                           ; $72eb: $84
	dec  a                                           ; $72ec: $3d
	add  l                                           ; $72ed: $85
	dec  sp                                          ; $72ee: $3b
	nop                                              ; $72ef: $00
	db   $db                                         ; $72f0: $db
	add  c                                           ; $72f1: $81
	dec  sp                                          ; $72f2: $3b
	ld   [$1a5b], sp                                 ; $72f3: $08 $5b $1a
	dec  sp                                          ; $72f6: $3b
	dec  c                                           ; $72f7: $0d
	dec  e                                           ; $72f8: $1d
	dec  b                                           ; $72f9: $05
	inc  c                                           ; $72fa: $0c
	ld   bc, $8326                                   ; $72fb: $01 $26 $83
	jr   nz, jr_01a_728c                             ; $72fe: $20 $8c

	ld   b, b                                        ; $7300: $40
	adc  d                                           ; $7301: $8a

jr_01a_7302:
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	inc  bc                                          ; $7304: $03
	add  b                                           ; $7305: $80
	ld   bc, $0001                                   ; $7306: $01 $01 $00
	inc  bc                                          ; $7309: $03
	add  a                                           ; $730a: $87
	nop                                              ; $730b: $00
	ld   [$0001], sp                                 ; $730c: $08 $01 $00
	rlca                                             ; $730f: $07
	nop                                              ; $7310: $00
	ld   c, $01                                      ; $7311: $0e $01
	add  hl, sp                                      ; $7313: $39
	rlca                                             ; $7314: $07
	ld   [hl], a                                     ; $7315: $77
	add  b                                           ; $7316: $80
	rrca                                             ; $7317: $0f
	ld   bc, $df3f                                   ; $7318: $01 $3f $df
	add  c                                           ; $731b: $81
	ld   e, a                                        ; $731c: $5f
	add  b                                           ; $731d: $80
	ld   l, a                                        ; $731e: $6f
	nop                                              ; $731f: $00
	rst  $38                                         ; $7320: $ff
	adc  l                                           ; $7321: $8d
	nop                                              ; $7322: $00
	add  b                                           ; $7323: $80
	ld   bc, $0680                                   ; $7324: $01 $80 $06
	add  b                                           ; $7327: $80
	ld   [$3080], sp                                 ; $7328: $08 $80 $30
	add  [hl]                                        ; $732b: $86
	nop                                              ; $732c: $00
	ld   bc, $6f90                                   ; $732d: $01 $90 $6f
	add  b                                           ; $7330: $80
	ld   [hl], a                                     ; $7331: $77
	inc  b                                           ; $7332: $04
	ld   a, [hl-]                                    ; $7333: $3a
	dec  sp                                          ; $7334: $3b
	ld   sp, $8bbb                                   ; $7335: $31 $bb $8b
	add  b                                           ; $7338: $80
	sbc  l                                           ; $7339: $9d
	add  b                                           ; $733a: $80
	ld   l, [hl]                                     ; $733b: $6e
	dec  b                                           ; $733c: $05
	ret  nz                                          ; $733d: $c0

	rst  $38                                         ; $733e: $ff
	add  b                                           ; $733f: $80
	ret  nz                                          ; $7340: $c0

	nop                                              ; $7341: $00
	add  b                                           ; $7342: $80
	sbc  e                                           ; $7343: $9b
	nop                                              ; $7344: $00
	rlca                                             ; $7345: $07
	rra                                              ; $7346: $1f
	nop                                              ; $7347: $00
	db   $e3                                         ; $7348: $e3
	rra                                              ; $7349: $1f
	inc  bc                                          ; $734a: $03
	rst  $38                                         ; $734b: $ff
	rra                                              ; $734c: $1f
	rst  $38                                         ; $734d: $ff
	add  b                                           ; $734e: $80
	ld   hl, sp+$06                                  ; $734f: $f8 $06
	daa                                              ; $7351: $27
	rst  $20                                         ; $7352: $e7
	ld   e, a                                        ; $7353: $5f
	rst  JumpTable                                         ; $7354: $df
	rst  ToBoot                                         ; $7355: $c7
	cp   a                                           ; $7356: $bf
	jr   c, @-$7e                                    ; $7357: $38 $80

	rst  $38                                         ; $7359: $ff
	dec  c                                           ; $735a: $0d
	rrca                                             ; $735b: $0f
	adc  a                                           ; $735c: $8f
	db   $10                                         ; $735d: $10
	ld   [hl], b                                     ; $735e: $70
	rlca                                             ; $735f: $07
	rla                                              ; $7360: $17
	nop                                              ; $7361: $00
	inc  a                                           ; $7362: $3c
	ld   bc, $0e75                                   ; $7363: $01 $75 $0e
	adc  $3e                                         ; $7366: $ce $3e
	or   [hl]                                        ; $7368: $b6
	add  b                                           ; $7369: $80
	ld   a, l                                        ; $736a: $7d
	ld   bc, $edfd                                   ; $736b: $01 $fd $ed
	add  b                                           ; $736e: $80
	db   $fd                                         ; $736f: $fd
	ld   bc, $defe                                   ; $7370: $01 $fe $de
	add  c                                           ; $7373: $81
	rst  $38                                         ; $7374: $ff
	nop                                              ; $7375: $00
	cp   a                                           ; $7376: $bf
	add  c                                           ; $7377: $81
	rst  $38                                         ; $7378: $ff
	nop                                              ; $7379: $00
	add  b                                           ; $737a: $80
	add  a                                           ; $737b: $87
	nop                                              ; $737c: $00
	add  b                                           ; $737d: $80
	inc  c                                           ; $737e: $0c
	add  b                                           ; $737f: $80
	jr   nc, jr_01a_7302                             ; $7380: $30 $80

	ld   b, b                                        ; $7382: $40
	add  b                                           ; $7383: $80
	add  b                                           ; $7384: $80
	adc  h                                           ; $7385: $8c
	nop                                              ; $7386: $00
	add  e                                           ; $7387: $83
	rst  $38                                         ; $7388: $ff
	add  hl, bc                                      ; $7389: $09
	cp   $ff                                         ; $738a: $fe $ff
	ld   hl, sp-$02                                  ; $738c: $f8 $fe
	ldh  a, [$f8]                                    ; $738e: $f0 $f8
	ret  nz                                          ; $7390: $c0

	ldh  a, [rP1]                                    ; $7391: $f0 $00
	ret  nz                                          ; $7393: $c0

	adc  l                                           ; $7394: $8d
	nop                                              ; $7395: $00
	ld   [bc], a                                     ; $7396: $02
	ld   bc, $0e00                                   ; $7397: $01 $00 $0e
	add  b                                           ; $739a: $80
	ld   bc, $0605                                   ; $739b: $01 $05 $06
	ld   c, $03                                      ; $739e: $0e $03
	dec  bc                                          ; $73a0: $0b
	dec  b                                           ; $73a1: $05
	ld   [hl], l                                     ; $73a2: $75
	add  b                                           ; $73a3: $80

jr_01a_73a4:
	ld   c, $05                                      ; $73a4: $0e $05
	scf                                              ; $73a6: $37
	ld   [hl], a                                     ; $73a7: $77
	dec  de                                          ; $73a8: $1b
	dec  sp                                          ; $73a9: $3b
	dec  c                                           ; $73aa: $0d
	ld   [de], a                                     ; $73ab: $12
	adc  l                                           ; $73ac: $8d
	nop                                              ; $73ad: $00
	nop                                              ; $73ae: $00
	rst  $38                                         ; $73af: $ff
	add  b                                           ; $73b0: $80
	cp   l                                           ; $73b1: $bd
	add  b                                           ; $73b2: $80
	pop  de                                          ; $73b3: $d1
	add  b                                           ; $73b4: $80
	call $3580                                       ; $73b5: $cd $80 $35
	add  b                                           ; $73b8: $80
	ld   a, c                                        ; $73b9: $79
	dec  c                                           ; $73ba: $0d
	and  l                                           ; $73bb: $a5
	or   a                                           ; $73bc: $b7
	add  b                                           ; $73bd: $80
	xor  h                                           ; $73be: $ac
	add  b                                           ; $73bf: $80
	and  b                                           ; $73c0: $a0
	ret  nz                                          ; $73c1: $c0

	pop  hl                                          ; $73c2: $e1
	add  b                                           ; $73c3: $80
	ret  nz                                          ; $73c4: $c0

	nop                                              ; $73c5: $00
	add  b                                           ; $73c6: $80
	nop                                              ; $73c7: $00
	rrca                                             ; $73c8: $0f
	add  b                                           ; $73c9: $80
	nop                                              ; $73ca: $00
	add  b                                           ; $73cb: $80
	rlca                                             ; $73cc: $07
	nop                                              ; $73cd: $00
	inc  b                                           ; $73ce: $04
	add  b                                           ; $73cf: $80
	dec  b                                           ; $73d0: $05
	inc  bc                                          ; $73d1: $03
	inc  d                                           ; $73d2: $14
	inc  c                                           ; $73d3: $0c
	rrca                                             ; $73d4: $0f
	dec  bc                                          ; $73d5: $0b
	add  b                                           ; $73d6: $80
	ld   [$0b80], sp                                 ; $73d7: $08 $80 $0b
	ld   [$1828], sp                                 ; $73da: $08 $28 $18
	rst  JumpTable                                         ; $73dd: $df
	rla                                              ; $73de: $17
	db   $10                                         ; $73df: $10
	ld   d, b                                        ; $73e0: $50
	ld   d, a                                        ; $73e1: $57
	sub  a                                           ; $73e2: $97
	ld   l, a                                        ; $73e3: $6f
	sbc  [hl]                                        ; $73e4: $9e
	nop                                              ; $73e5: $00
	add  d                                           ; $73e6: $82
	ret  nz                                          ; $73e7: $c0

	adc  c                                           ; $73e8: $89
	nop                                              ; $73e9: $00

jr_01a_73ea:
	dec  c                                           ; $73ea: $0d
	db   $fc                                         ; $73eb: $fc

jr_01a_73ec:
	rst  $38                                         ; $73ec: $ff
	db   $fd                                         ; $73ed: $fd
	ld   a, a                                        ; $73ee: $7f
	ld   a, [hl]                                     ; $73ef: $7e
	ld   a, a                                        ; $73f0: $7f
	rst  $38                                         ; $73f1: $ff
	ccf                                              ; $73f2: $3f
	cp   a                                           ; $73f3: $bf
	rrca                                             ; $73f4: $0f
	rra                                              ; $73f5: $1f
	di                                               ; $73f6: $f3
	rst  $38                                         ; $73f7: $ff
	inc  c                                           ; $73f8: $0c
	add  b                                           ; $73f9: $80
	call $0d80                                       ; $73fa: $cd $80 $0d
	add  b                                           ; $73fd: $80
	res  0, b                                        ; $73fe: $cb $80
	dec  bc                                          ; $7400: $0b
	add  b                                           ; $7401: $80
	rlc  c                                           ; $7402: $cb $01
	daa                                              ; $7404: $27
	rla                                              ; $7405: $17
	add  b                                           ; $7406: $80
	sub  a                                           ; $7407: $97
	add  b                                           ; $7408: $80
	rla                                              ; $7409: $17
	add  b                                           ; $740a: $80
	sub  b                                           ; $740b: $90
	nop                                              ; $740c: $00
	rst  JumpTable                                         ; $740d: $df
	adc  c                                           ; $740e: $89
	nop                                              ; $740f: $00
	adc  d                                           ; $7410: $8a
	db   $10                                         ; $7411: $10
	add  [hl]                                        ; $7412: $86
	jr   nz, jr_01a_73a4                             ; $7413: $20 $8f

	nop                                              ; $7415: $00
	add  b                                           ; $7416: $80
	rlca                                             ; $7417: $07
	adc  e                                           ; $7418: $8b
	nop                                              ; $7419: $00
	ld   [bc], a                                     ; $741a: $02
	ld   a, a                                        ; $741b: $7f
	sbc  l                                           ; $741c: $9d
	dec  a                                           ; $741d: $3d
	add  b                                           ; $741e: $80
	dec  c                                           ; $741f: $0d
	dec  bc                                          ; $7420: $0b
	adc  h                                           ; $7421: $8c
	sbc  h                                           ; $7422: $9c
	add  a                                           ; $7423: $87
	rlca                                             ; $7424: $07
	add  a                                           ; $7425: $87
	adc  a                                           ; $7426: $8f
	add  e                                           ; $7427: $83
	ld   b, e                                        ; $7428: $43
	inc  bc                                          ; $7429: $03
	rlca                                             ; $742a: $07
	ld   bc, $8d82                                   ; $742b: $01 $82 $8d
	nop                                              ; $742e: $00
	ld   [$7cfe], sp                                 ; $742f: $08 $fe $7c
	ld   a, [hl]                                     ; $7432: $7e
	ld   [hl], b                                     ; $7433: $70
	ld   a, h                                        ; $7434: $7c
	ld   b, b                                        ; $7435: $40
	ld   [hl], b                                     ; $7436: $70
	nop                                              ; $7437: $00
	ld   b, b                                        ; $7438: $40
	add  c                                           ; $7439: $81
	nop                                              ; $743a: $00
	ld   c, $70                                      ; $743b: $0e $70
	nop                                              ; $743d: $00
	ld   hl, sp-$10                                  ; $743e: $f8 $f0
	ld   a, h                                        ; $7440: $7c
	ld   hl, sp-$02                                  ; $7441: $f8 $fe
	db   $fc                                         ; $7443: $fc
	or   c                                           ; $7444: $b1
	ldh  a, [$cf]                                    ; $7445: $f0 $cf
	adc  a                                           ; $7447: $8f
	sbc  b                                           ; $7448: $98
	ld   a, b                                        ; $7449: $78
	ld   h, b                                        ; $744a: $60
	add  b                                           ; $744b: $80
	ld   b, a                                        ; $744c: $47
	dec  b                                           ; $744d: $05
	ld   a, $3f                                      ; $744e: $3e $3f
	ld   [hl], c                                     ; $7450: $71
	ld   [hl], a                                     ; $7451: $77
	rrca                                             ; $7452: $0f
	ld   [$7880], sp                                 ; $7453: $08 $80 $78
	add  b                                           ; $7456: $80
	rst  $20                                         ; $7457: $e7
	add  hl, bc                                      ; $7458: $09
	adc  [hl]                                        ; $7459: $8e
	rst  $38                                         ; $745a: $ff
	ld   de, $db99                                   ; $745b: $11 $99 $db
	jp   c, $cdc8                                    ; $745e: $da $c8 $cd

	db   $ec                                         ; $7461: $ec
	xor  $95                                         ; $7462: $ee $95
	nop                                              ; $7464: $00
	add  b                                           ; $7465: $80
	ld   h, b                                        ; $7466: $60
	add  b                                           ; $7467: $80
	jr   nz, jr_01a_73ea                             ; $7468: $20 $80

	jr   nc, jr_01a_73ec                             ; $746a: $30 $80

	db   $10                                         ; $746c: $10
	adc  [hl]                                        ; $746d: $8e
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	rst  $38                                         ; $7470: $ff
	add  d                                           ; $7471: $82
	rst  JumpTable                                         ; $7472: $df
	add  b                                           ; $7473: $80
	rra                                              ; $7474: $1f
	adc  [hl]                                        ; $7475: $8e
	rst  $38                                         ; $7476: $ff
	add  hl, bc                                      ; $7477: $09
	db   $fc                                         ; $7478: $fc

jr_01a_7479:
	rst  $38                                         ; $7479: $ff
	ldh  a, [$fc]                                    ; $747a: $f0 $fc
	ldh  [$f0], a                                    ; $747c: $e0 $f0
	add  b                                           ; $747e: $80
	ldh  [rP1], a                                    ; $747f: $e0 $00
	add  b                                           ; $7481: $80
	add  c                                           ; $7482: $81
	nop                                              ; $7483: $00
	inc  de                                          ; $7484: $13
	add  b                                           ; $7485: $80
	nop                                              ; $7486: $00
	ret  nz                                          ; $7487: $c0

	add  b                                           ; $7488: $80
	ld   b, b                                        ; $7489: $40
	nop                                              ; $748a: $00
	ld   b, b                                        ; $748b: $40
	add  b                                           ; $748c: $80
	or   b                                           ; $748d: $b0
	nop                                              ; $748e: $00
	ld   hl, sp-$10                                  ; $748f: $f8 $f0
	ld   [$0800], sp                                 ; $7491: $08 $00 $08
	ldh  a, [$f4]                                    ; $7494: $f0 $f4
	ret  nz                                          ; $7496: $c0

	cp   $3c                                         ; $7497: $fe $3c
	add  b                                           ; $7499: $80
	ldh  [rSC], a                                    ; $749a: $e0 $02
	ld   e, $00                                      ; $749c: $1e $00
	ldh  [$81], a                                    ; $749e: $e0 $81
	nop                                              ; $74a0: $00
	dec  bc                                          ; $74a1: $0b
	and  b                                           ; $74a2: $a0
	add  b                                           ; $74a3: $80
	ret  nc                                          ; $74a4: $d0

	nop                                              ; $74a5: $00
	db   $fc                                         ; $74a6: $fc
	nop                                              ; $74a7: $00
	rrca                                             ; $74a8: $0f
	ldh  a, [$73]                                    ; $74a9: $f0 $73
	ld   a, h                                        ; $74ab: $7c
	inc  a                                           ; $74ac: $3c
	ccf                                              ; $74ad: $3f
	add  b                                           ; $74ae: $80
	rst  JumpTable                                         ; $74af: $df
	add  b                                           ; $74b0: $80
	rst  $28                                         ; $74b1: $ef
	ld   bc, $f4f7                                   ; $74b2: $01 $f7 $f4
	add  b                                           ; $74b5: $80
	ld   hl, sp+$06                                  ; $74b6: $f8 $06
	cp   $e1                                         ; $74b8: $fe $e1
	ld   h, d                                        ; $74ba: $62
	ld   b, $86                                      ; $74bb: $06 $86
	ld   e, $1f                                      ; $74bd: $1e $1f
	add  b                                           ; $74bf: $80
	ld   a, a                                        ; $74c0: $7f
	add  c                                           ; $74c1: $81
	rst  $38                                         ; $74c2: $ff
	ld   bc, $40bf                                   ; $74c3: $01 $bf $40
	add  b                                           ; $74c6: $80
	nop                                              ; $74c7: $00
	add  b                                           ; $74c8: $80
	ldh  a, [$80]                                    ; $74c9: $f0 $80
	inc  c                                           ; $74cb: $0c
	add  b                                           ; $74cc: $80
	inc  bc                                          ; $74cd: $03
	add  h                                           ; $74ce: $84
	nop                                              ; $74cf: $00
	add  d                                           ; $74d0: $82
	inc  bc                                          ; $74d1: $03
	add  b                                           ; $74d2: $80
	inc  e                                           ; $74d3: $1c
	add  b                                           ; $74d4: $80
	ld   a, b                                        ; $74d5: $78
	add  b                                           ; $74d6: $80
	ldh  [$80], a                                    ; $74d7: $e0 $80
	add  b                                           ; $74d9: $80
	add  d                                           ; $74da: $82
	nop                                              ; $74db: $00
	adc  e                                           ; $74dc: $8b
	rst  $38                                         ; $74dd: $ff
	add  hl, bc                                      ; $74de: $09
	db   $fc                                         ; $74df: $fc
	rst  $38                                         ; $74e0: $ff
	ld   hl, sp-$04                                  ; $74e1: $f8 $fc
	ldh  [$f8], a                                    ; $74e3: $e0 $f8
	add  b                                           ; $74e5: $80
	ldh  [rP1], a                                    ; $74e6: $e0 $00
	add  b                                           ; $74e8: $80
	adc  a                                           ; $74e9: $8f
	nop                                              ; $74ea: $00
	ld   b, $80                                      ; $74eb: $06 $80
	nop                                              ; $74ed: $00
	ret  nz                                          ; $74ee: $c0

	nop                                              ; $74ef: $00
	ld   h, b                                        ; $74f0: $60
	add  b                                           ; $74f1: $80
	or   b                                           ; $74f2: $b0
	add  c                                           ; $74f3: $81
	nop                                              ; $74f4: $00
	nop                                              ; $74f5: $00
	jr   jr_01a_7479                                 ; $74f6: $18 $81

	ldh  [rP1], a                                    ; $74f8: $e0 $00
	db   $ec                                         ; $74fa: $ec
	add  c                                           ; $74fb: $81
	ldh  a, [rTMA]                                   ; $74fc: $f0 $06
	halt                                             ; $74fe: $76
	ld   a, b                                        ; $74ff: $78
	ld   h, b                                        ; $7500: $60
	ld   a, b                                        ; $7501: $78
	sbc  b                                           ; $7502: $98
	cp   b                                           ; $7503: $b8
	jp   nz, $0087                                   ; $7504: $c2 $87 $00

	add  b                                           ; $7507: $80
	add  b                                           ; $7508: $80
	add  b                                           ; $7509: $80
	ld   b, b                                        ; $750a: $40
	add  d                                           ; $750b: $82
	ldh  [$82], a                                    ; $750c: $e0 $82
	db   $10                                         ; $750e: $10
	add  d                                           ; $750f: $82
	ld   [$0484], sp                                 ; $7510: $08 $84 $04
	adc  [hl]                                        ; $7513: $8e
	nop                                              ; $7514: $00
	nop                                              ; $7515: $00
	ld   a, [$dc81]                                  ; $7516: $fa $81 $dc
	ld   [$d8da], sp                                 ; $7519: $08 $da $d8
	call c, $f8e0                                    ; $751c: $dc $e0 $f8
	ret  nz                                          ; $751f: $c0

	ldh  [rP1], a                                    ; $7520: $e0 $00
	ret  nz                                          ; $7522: $c0

	pop  bc                                          ; $7523: $c1
	nop                                              ; $7524: $00
	inc  bc                                          ; $7525: $03
	cp   l                                           ; $7526: $bd
	ld   b, d                                        ; $7527: $42
	ld   de, $8609                                   ; $7528: $11 $09 $86
	ld   c, e                                        ; $752b: $4b
	rlca                                             ; $752c: $07
	ld   b, b                                        ; $752d: $40
	ld   c, h                                        ; $752e: $4c
	dec  a                                           ; $752f: $3d
	and  l                                           ; $7530: $a5
	add  h                                           ; $7531: $84
	dec  bc                                          ; $7532: $0b
	di                                               ; $7533: $f3
	db   $d3                                         ; $7534: $d3
	add  e                                           ; $7535: $83
	db   $db                                         ; $7536: $db
	inc  b                                           ; $7537: $04
	ret  c                                           ; $7538: $d8

	daa                                              ; $7539: $27
	rlca                                             ; $753a: $07
	db   $f4                                         ; $753b: $f4
	db   $e4                                         ; $753c: $e4
	add  b                                           ; $753d: $80
	push hl                                          ; $753e: $e5
	ld   [bc], a                                     ; $753f: $02
	ld   h, l                                        ; $7540: $65
	db   $f4                                         ; $7541: $f4
	add  b                                           ; $7542: $80
	add  b                                           ; $7543: $80
	db   $ec                                         ; $7544: $ec
	inc  b                                           ; $7545: $04
	call c, $80dd                                    ; $7546: $dc $dd $80
	cp   a                                           ; $7549: $bf
	ccf                                              ; $754a: $3f
	add  b                                           ; $754b: $80
	nop                                              ; $754c: $00
	nop                                              ; $754d: $00
	rst  $38                                         ; $754e: $ff
	add  b                                           ; $754f: $80
	ldh  [$0a], a                                    ; $7550: $e0 $0a
	cp   $01                                         ; $7552: $fe $01
	ld   a, $7f                                      ; $7554: $3e $7f
	ld   e, l                                        ; $7556: $5d
	ld   e, $5a                                      ; $7557: $1e $5a
	ld   e, b                                        ; $7559: $58
	ld   [bc], a                                     ; $755a: $02
	ld   a, [$80f8]                                  ; $755b: $fa $f8 $80
	nop                                              ; $755e: $00
	dec  b                                           ; $755f: $05
	cp   $00                                         ; $7560: $fe $00
	ld   bc, $3f7f                                   ; $7562: $01 $7f $3f
	cp   a                                           ; $7565: $bf
	add  b                                           ; $7566: $80
	ld   [hl], b                                     ; $7567: $70
	ld   bc, $c74f                                   ; $7568: $01 $4f $c7
	add  b                                           ; $756b: $80
	or   a                                           ; $756c: $b7
	ld   bc, $67e7                                   ; $756d: $01 $e7 $67
	add  c                                           ; $7570: $81
	rst  $30                                         ; $7571: $f7
	nop                                              ; $7572: $00
	rst  $28                                         ; $7573: $ef
	add  b                                           ; $7574: $80
	ld   c, a                                        ; $7575: $4f
	ld   bc, $7e6f                                   ; $7576: $01 $6f $7e
	add  b                                           ; $7579: $80
	cp   [hl]                                        ; $757a: $be
	ld   bc, $3c3e                                   ; $757b: $01 $3e $3c
	add  c                                           ; $757e: $81
	cp   h                                           ; $757f: $bc
	add  c                                           ; $7580: $81
	cp   c                                           ; $7581: $b9
	add  hl, bc                                      ; $7582: $09
	cp   b                                           ; $7583: $b8
	or   d                                           ; $7584: $b2
	or   l                                           ; $7585: $b5
	or   c                                           ; $7586: $b1
	sub  [hl]                                        ; $7587: $96
	rra                                              ; $7588: $1f
	ld   l, l                                        ; $7589: $6d
	ld   l, a                                        ; $758a: $6f
	ld   [hl], a                                     ; $758b: $77
	db   $f4                                         ; $758c: $f4
	add  b                                           ; $758d: $80
	di                                               ; $758e: $f3
	add  b                                           ; $758f: $80
	call z, $bb80                                    ; $7590: $cc $80 $bb
	add  b                                           ; $7593: $80
	ld   h, h                                        ; $7594: $64
	add  b                                           ; $7595: $80
	db   $db                                         ; $7596: $db
	ld   [bc], a                                     ; $7597: $02
	ld   a, a                                        ; $7598: $7f
	ld   [hl], e                                     ; $7599: $73
	di                                               ; $759a: $f3
	add  b                                           ; $759b: $80
	db   $fd                                         ; $759c: $fd
	nop                                              ; $759d: $00
	cp   $80                                         ; $759e: $fe $80
	rst  $38                                         ; $75a0: $ff
	ld   [$ff7f], sp                                 ; $75a1: $08 $7f $ff
	sbc  a                                           ; $75a4: $9f
	rst  $38                                         ; $75a5: $ff
	rst  $28                                         ; $75a6: $ef
	rst  $38                                         ; $75a7: $ff
	di                                               ; $75a8: $f3
	rst  $38                                         ; $75a9: $ff
	call nc, $a581                                   ; $75aa: $d4 $81 $a5
	add  b                                           ; $75ad: $80
	dec  h                                           ; $75ae: $25
	inc  bc                                          ; $75af: $03
	xor  l                                           ; $75b0: $ad
	and  c                                           ; $75b1: $a1
	sbc  c                                           ; $75b2: $99
	sub  l                                           ; $75b3: $95
	add  b                                           ; $75b4: $80
	or   h                                           ; $75b5: $b4
	ld   bc, $b3b7                                   ; $75b6: $01 $b7 $b3
	add  b                                           ; $75b9: $80
	or   b                                           ; $75ba: $b0
	ld   bc, $e36b                                   ; $75bb: $01 $6b $e3
	add  b                                           ; $75be: $80
	rst  JumpTable                                         ; $75bf: $df
	add  b                                           ; $75c0: $80
	cp   a                                           ; $75c1: $bf
	add  d                                           ; $75c2: $82
	ld   a, a                                        ; $75c3: $7f
	add  b                                           ; $75c4: $80
	and  $80                                         ; $75c5: $e6 $80
	rst  $38                                         ; $75c7: $ff
	add  b                                           ; $75c8: $80
	nop                                              ; $75c9: $00
	nop                                              ; $75ca: $00
	rst  $38                                         ; $75cb: $ff
	add  b                                           ; $75cc: $80
	cp   $80                                         ; $75cd: $fe $80
	db   $fc                                         ; $75cf: $fc
	add  b                                           ; $75d0: $80
	ld   sp, hl                                      ; $75d1: $f9
	add  c                                           ; $75d2: $81
	ei                                               ; $75d3: $fb
	dec  b                                           ; $75d4: $05
	dec  bc                                          ; $75d5: $0b
	inc  bc                                          ; $75d6: $03
	db   $f4                                         ; $75d7: $f4
	ret  z                                           ; $75d8: $c8

	scf                                              ; $75d9: $37
	rlca                                             ; $75da: $07
	adc  b                                           ; $75db: $88
	rst  $38                                         ; $75dc: $ff
	add  b                                           ; $75dd: $80
	sbc  a                                           ; $75de: $9f
	add  b                                           ; $75df: $80
	rst  $28                                         ; $75e0: $ef
	add  b                                           ; $75e1: $80
	scf                                              ; $75e2: $37
	nop                                              ; $75e3: $00
	ld   a, a                                        ; $75e4: $7f
	add  c                                           ; $75e5: $81
	ld   e, a                                        ; $75e6: $5f
	ld   bc, $bf9f                                   ; $75e7: $01 $9f $bf
	add  b                                           ; $75ea: $80
	sbc  $80                                         ; $75eb: $de $80
	pop  hl                                          ; $75ed: $e1
	add  b                                           ; $75ee: $80
	db   $fd                                         ; $75ef: $fd
	add  b                                           ; $75f0: $80
	ldh  [$03], a                                    ; $75f1: $e0 $03
	sbc  a                                           ; $75f3: $9f
	adc  a                                           ; $75f4: $8f
	ld   h, a                                        ; $75f5: $67
	ld   [hl], a                                     ; $75f6: $77
	add  b                                           ; $75f7: $80
	ld   b, [hl]                                     ; $75f8: $46
	add  b                                           ; $75f9: $80
	add  hl, de                                      ; $75fa: $19
	add  b                                           ; $75fb: $80
	and  $80                                         ; $75fc: $e6 $80
	ld   sp, hl                                      ; $75fe: $f9
	add  d                                           ; $75ff: $82
	rst  $38                                         ; $7600: $ff
	add  b                                           ; $7601: $80
	ld   a, a                                        ; $7602: $7f
	add  b                                           ; $7603: $80
	daa                                              ; $7604: $27
	add  b                                           ; $7605: $80
	rst  JumpTable                                         ; $7606: $df
	add  b                                           ; $7607: $80
	ccf                                              ; $7608: $3f
	add  e                                           ; $7609: $83
	rst  $38                                         ; $760a: $ff
	add  b                                           ; $760b: $80
	db   $fc                                         ; $760c: $fc
	inc  b                                           ; $760d: $04
	ldh  a, [$b0]                                    ; $760e: $f0 $b0
	and  e                                           ; $7610: $a3
	db   $eb                                         ; $7611: $eb
	db   $f4                                         ; $7612: $f4
	add  b                                           ; $7613: $80
	ld   hl, sp+$06                                  ; $7614: $f8 $06
	cp   $e1                                         ; $7616: $fe $e1
	ld   h, d                                        ; $7618: $62
	ld   b, $86                                      ; $7619: $06 $86
	ld   e, $1f                                      ; $761b: $1e $1f
	add  b                                           ; $761d: $80
	ld   a, a                                        ; $761e: $7f
	add  c                                           ; $761f: $81
	rst  $38                                         ; $7620: $ff
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	add  b                                           ; $7623: $80
	rst  $38                                         ; $7624: $ff
	dec  b                                           ; $7625: $05
	ldh  [rIE], a                                    ; $7626: $e0 $ff
	sbc  a                                           ; $7628: $9f
	rst  $38                                         ; $7629: $ff
	ld   a, a                                        ; $762a: $7f
	rst  $38                                         ; $762b: $ff
	add  b                                           ; $762c: $80
	nop                                              ; $762d: $00
	add  c                                           ; $762e: $81
	rst  $38                                         ; $762f: $ff
	ld   b, $00                                      ; $7630: $06 $00
	rst  $38                                         ; $7632: $ff
	rst  ToBoot                                         ; $7633: $c7
	or   d                                           ; $7634: $b2
	adc  d                                           ; $7635: $8a
	dec  b                                           ; $7636: $05
	db   $fd                                         ; $7637: $fd
	add  b                                           ; $7638: $80
	db   $fc                                         ; $7639: $fc
	ld   bc, $f6f5                                   ; $763a: $01 $f5 $f6
	add  b                                           ; $763d: $80
	dec  bc                                          ; $763e: $0b
	inc  bc                                          ; $763f: $03
	ei                                               ; $7640: $fb
	rst  $20                                         ; $7641: $e7
	rst  $30                                         ; $7642: $f7
	db   $10                                         ; $7643: $10
	add  b                                           ; $7644: $80
	ldh  a, [$80]                                    ; $7645: $f0 $80
	add  b                                           ; $7647: $80
	add  b                                           ; $7648: $80
	rst  $38                                         ; $7649: $ff
	add  b                                           ; $764a: $80
	nop                                              ; $764b: $00
	ld   [bc], a                                     ; $764c: $02
	rst  $38                                         ; $764d: $ff
	db   $10                                         ; $764e: $10
	rst  $28                                         ; $764f: $ef
	add  b                                           ; $7650: $80
	rst  $38                                         ; $7651: $ff
	add  b                                           ; $7652: $80
	rra                                              ; $7653: $1f
	add  b                                           ; $7654: $80
	ldh  [rP1], a                                    ; $7655: $e0 $00
	rlca                                             ; $7657: $07
	add  b                                           ; $7658: $80
	nop                                              ; $7659: $00
	ld   bc, $f0f7                                   ; $765a: $01 $f7 $f0
	add  b                                           ; $765d: $80
	nop                                              ; $765e: $00
	ld   [bc], a                                     ; $765f: $02
	rst  $38                                         ; $7660: $ff
	inc  b                                           ; $7661: $04
	ei                                               ; $7662: $fb
	add  d                                           ; $7663: $82
	rst  $38                                         ; $7664: $ff
	add  b                                           ; $7665: $80
	nop                                              ; $7666: $00
	add  b                                           ; $7667: $80
	rra                                              ; $7668: $1f
	add  b                                           ; $7669: $80
	cpl                                              ; $766a: $2f
	dec  b                                           ; $766b: $05
	jr   nc, jr_01a_76de                             ; $766c: $30 $70

	ld   a, $fe                                      ; $766e: $3e $fe
	ld   a, [hl]                                     ; $7670: $7e
	cp   $80                                         ; $7671: $fe $80
	db   $fc                                         ; $7673: $fc
	add  b                                           ; $7674: $80
	di                                               ; $7675: $f3
	add  b                                           ; $7676: $80
	cpl                                              ; $7677: $2f
	ld   a, [de]                                     ; $7678: $1a
	ld   [hl], a                                     ; $7679: $77
	ld   h, a                                        ; $767a: $67
	ld   l, a                                        ; $767b: $6f
	ld   h, a                                        ; $767c: $67
	rst  $20                                         ; $767d: $e7
	ldh  a, [$b0]                                    ; $767e: $f0 $b0
	cp   $46                                         ; $7680: $fe $46
	rst  $38                                         ; $7682: $ff
	ld   hl, sp+$07                                  ; $7683: $f8 $07
	rst  $38                                         ; $7685: $ff
	add  hl, de                                      ; $7686: $19
	rra                                              ; $7687: $1f
	ld   a, $5f                                      ; $7688: $3e $5f
	sbc  a                                           ; $768a: $9f
	rst  $20                                         ; $768b: $e7
	and  $f9                                         ; $768c: $e6 $f9
	ld   hl, sp-$10                                  ; $768e: $f8 $f0
	rlca                                             ; $7690: $07
	rla                                              ; $7691: $17
	rst  $28                                         ; $7692: $ef
	rrca                                             ; $7693: $0f
	add  b                                           ; $7694: $80
	rst  JumpTable                                         ; $7695: $df
	add  b                                           ; $7696: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7697: $cf
	ld   bc, $48b7                                   ; $7698: $01 $b7 $48
	add  b                                           ; $769b: $80
	adc  a                                           ; $769c: $8f
	add  b                                           ; $769d: $80
	rra                                              ; $769e: $1f
	dec  d                                           ; $769f: $15
	ld   a, a                                        ; $76a0: $7f
	rst  $38                                         ; $76a1: $ff
	ld   a, a                                        ; $76a2: $7f
	ccf                                              ; $76a3: $3f
	cp   a                                           ; $76a4: $bf
	cp   [hl]                                        ; $76a5: $be
	cp   a                                           ; $76a6: $bf
	sbc  l                                           ; $76a7: $9d
	rst  JumpTable                                         ; $76a8: $df
	db   $d3                                         ; $76a9: $d3
	rst  JumpTable                                         ; $76aa: $df
	jr   nc, @+$01                                   ; $76ab: $30 $ff

	db   $fc                                         ; $76ad: $fc
	rst  $38                                         ; $76ae: $ff
	di                                               ; $76af: $f3
	rst  $38                                         ; $76b0: $ff
	rst  $28                                         ; $76b1: $ef
	rst  $38                                         ; $76b2: $ff
	sbc  a                                           ; $76b3: $9f
	rst  $38                                         ; $76b4: $ff
	ld   a, a                                        ; $76b5: $7f
	add  e                                           ; $76b6: $83
	rst  $38                                         ; $76b7: $ff
	nop                                              ; $76b8: $00
	db   $fd                                         ; $76b9: $fd
	add  d                                           ; $76ba: $82
	cp   h                                           ; $76bb: $bc
	adc  c                                           ; $76bc: $89
	call c, $de00                                    ; $76bd: $dc $00 $de
	add  b                                           ; $76c0: $80
	db   $fc                                         ; $76c1: $fc
	add  b                                           ; $76c2: $80
	ld   hl, sp-$80                                  ; $76c3: $f8 $80
	ld   a, [hl-]                                    ; $76c5: $3a
	add  b                                           ; $76c6: $80
	add  e                                           ; $76c7: $83
	add  b                                           ; $76c8: $80
	ld   [hl], l                                     ; $76c9: $75
	add  b                                           ; $76ca: $80
	ld   c, l                                        ; $76cb: $4d
	add  b                                           ; $76cc: $80
	dec  a                                           ; $76cd: $3d
	inc  bc                                          ; $76ce: $03
	cp   l                                           ; $76cf: $bd
	sbc  l                                           ; $76d0: $9d
	jr   nz, jr_01a_76d3                             ; $76d1: $20 $00

jr_01a_76d3:
	add  b                                           ; $76d3: $80
	rrca                                             ; $76d4: $0f
	add  b                                           ; $76d5: $80
	nop                                              ; $76d6: $00
	add  l                                           ; $76d7: $85
	rst  $38                                         ; $76d8: $ff
	ld   [bc], a                                     ; $76d9: $02
	ldh  [rIE], a                                    ; $76da: $e0 $ff
	ldh  [$80], a                                    ; $76dc: $e0 $80

jr_01a_76de:
	nop                                              ; $76de: $00
	add  b                                           ; $76df: $80
	rst  $38                                         ; $76e0: $ff
	add  b                                           ; $76e1: $80
	nop                                              ; $76e2: $00
	add  b                                           ; $76e3: $80
	rst  $38                                         ; $76e4: $ff
	ld   b, $fe                                      ; $76e5: $06 $fe
	db   $fc                                         ; $76e7: $fc
	cp   $e2                                         ; $76e8: $fe $e2
	cp   $1e                                         ; $76ea: $fe $1e
	cp   $80                                         ; $76ec: $fe $80
	rra                                              ; $76ee: $1f
	inc  bc                                          ; $76ef: $03
	ccf                                              ; $76f0: $3f
	cp   a                                           ; $76f1: $bf
	db   $fc                                         ; $76f2: $fc
	ld   a, h                                        ; $76f3: $7c
	add  b                                           ; $76f4: $80
	ld   a, b                                        ; $76f5: $78
	add  b                                           ; $76f6: $80
	ldh  a, [c]                                      ; $76f7: $f2
	ld   b, $c2                                      ; $76f8: $06 $c2
	ldh  a, [c]                                      ; $76fa: $f2
	or   [hl]                                        ; $76fb: $b6
	or   $70                                         ; $76fc: $f6 $70
	ldh  a, [c]                                      ; $76fe: $f2
	dec  c                                           ; $76ff: $0d
	add  c                                           ; $7700: $81
	ccf                                              ; $7701: $3f
	ld   bc, $07c7                                   ; $7702: $01 $c7 $07
	add  b                                           ; $7705: $80
	jp   $1180                                       ; $7706: $c3 $80 $11


	add  b                                           ; $7709: $80
	pop  de                                          ; $770a: $d1
	add  b                                           ; $770b: $80
	reti                                             ; $770c: $d9


	inc  bc                                          ; $770d: $03
	ld   b, $16                                      ; $770e: $06 $16
	db   $10                                         ; $7710: $10
	scf                                              ; $7711: $37
	add  b                                           ; $7712: $80
	or   a                                           ; $7713: $b7
	inc  b                                           ; $7714: $04
	rst  $30                                         ; $7715: $f7
	ret  nz                                          ; $7716: $c0

	call c, $efdd                                    ; $7717: $dc $dd $ef
	add  c                                           ; $771a: $81
	xor  $06                                         ; $771b: $ee $06
	ldh  [c], a                                      ; $771d: $e2
	xor  $ec                                         ; $771e: $ee $ec
	xor  $11                                         ; $7720: $ee $11
	rst  $38                                         ; $7722: $ff
	rst  $28                                         ; $7723: $ef
	add  b                                           ; $7724: $80
	cp   a                                           ; $7725: $bf
	add  c                                           ; $7726: $81
	rst  $38                                         ; $7727: $ff
	nop                                              ; $7728: $00
	rst  $30                                         ; $7729: $f7
	add  e                                           ; $772a: $83
	rst  $38                                         ; $772b: $ff
	ld   [bc], a                                     ; $772c: $02
	ei                                               ; $772d: $fb
	rst  JumpTable                                         ; $772e: $df
	ld   [hl+], a                                    ; $772f: $22
	add  e                                           ; $7730: $83
	cp   $88                                         ; $7731: $fe $88
	rst  $38                                         ; $7733: $ff
	ld   bc, $ec0c                                   ; $7734: $01 $0c $ec
	add  b                                           ; $7737: $80
	xor  $08                                         ; $7738: $ee $08
	rst  $20                                         ; $773a: $e7
	rst  $30                                         ; $773b: $f7
	pop  af                                          ; $773c: $f1
	ld   a, c                                        ; $773d: $79
	ld   a, b                                        ; $773e: $78
	ld   a, h                                        ; $773f: $7c
	db   $fc                                         ; $7740: $fc
	cp   a                                           ; $7741: $bf
	rst  $38                                         ; $7742: $ff
	add  b                                           ; $7743: $80
	rst  JumpTable                                         ; $7744: $df
	ld   [bc], a                                     ; $7745: $02
	rst  $28                                         ; $7746: $ef
	pop  hl                                          ; $7747: $e1
	adc  $80                                         ; $7748: $ce $80
	dec  d                                           ; $774a: $15
	add  b                                           ; $774b: $80
	ld   e, c                                        ; $774c: $59
	ld   [bc], a                                     ; $774d: $02
	ld   h, c                                        ; $774e: $61
	ld   h, e                                        ; $774f: $63
	ld   [bc], a                                     ; $7750: $02
	add  b                                           ; $7751: $80
	rlca                                             ; $7752: $07
	add  d                                           ; $7753: $82
	rst  $38                                         ; $7754: $ff
	ld   bc, $1efe                                   ; $7755: $01 $fe $1e
	add  b                                           ; $7758: $80
	db   $ed                                         ; $7759: $ed
	add  b                                           ; $775a: $80
	db   $eb                                         ; $775b: $eb
	ld   bc, $c7e7                                   ; $775c: $01 $e7 $c7
	add  b                                           ; $775f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7760: $cf
	inc  bc                                          ; $7761: $03
	rst  JumpTable                                         ; $7762: $df
	sbc  a                                           ; $7763: $9f
	cp   a                                           ; $7764: $bf
	ccf                                              ; $7765: $3f
	add  b                                           ; $7766: $80
	ld   a, a                                        ; $7767: $7f
	ld   bc, $817e                                   ; $7768: $01 $7e $81
	add  e                                           ; $776b: $83

jr_01a_776c:
	rst  $38                                         ; $776c: $ff
	ld   a, [bc]                                     ; $776d: $0a
	ld   a, h                                        ; $776e: $7c
	rst  $38                                         ; $776f: $ff
	add  e                                           ; $7770: $83
	sbc  a                                           ; $7771: $9f
	rst  $38                                         ; $7772: $ff
	rlca                                             ; $7773: $07
	sbc  a                                           ; $7774: $9f
	db   $db                                         ; $7775: $db
	rst  JumpTable                                         ; $7776: $df
	call c, $80e0                                    ; $7777: $dc $e0 $80
	db   $d3                                         ; $777a: $d3
	ld   bc, $38f8                                   ; $777b: $01 $f8 $38
	add  d                                           ; $777e: $82
	ei                                               ; $777f: $fb
	ld   bc, $faf8                                   ; $7780: $01 $f8 $fa
	add  b                                           ; $7783: $80
	push af                                          ; $7784: $f5
	add  b                                           ; $7785: $80
	db   $ec                                         ; $7786: $ec
	ld   b, $0c                                      ; $7787: $06 $0c
	rrca                                             ; $7789: $0f
	ld   sp, hl                                      ; $778a: $f9
	ei                                               ; $778b: $fb
	inc  bc                                          ; $778c: $03
	dec  sp                                          ; $778d: $3b
	cp   e                                           ; $778e: $bb
	add  b                                           ; $778f: $80
	cp   l                                           ; $7790: $bd
	ld   [$0181], sp                                 ; $7791: $08 $81 $01
	pop  af                                          ; $7794: $f1
	db   $fd                                         ; $7795: $fd
	inc  c                                           ; $7796: $0c
	inc  b                                           ; $7797: $04
	db   $f4                                         ; $7798: $f4
	push af                                          ; $7799: $f5
	ei                                               ; $779a: $fb
	add  c                                           ; $779b: $81
	sbc  $88                                         ; $779c: $de $88
	rst  JumpTable                                         ; $779e: $df
	inc  b                                           ; $779f: $04
	jr   nz, jr_01a_77a2                             ; $77a0: $20 $00

jr_01a_77a2:
	ld   [bc], a                                     ; $77a2: $02
	db   $f4                                         ; $77a3: $f4
	rst  $30                                         ; $77a4: $f7
	add  b                                           ; $77a5: $80
	or   $80                                         ; $77a6: $f6 $80
	halt                                             ; $77a8: $76
	add  b                                           ; $77a9: $80
	ld   h, [hl]                                     ; $77aa: $66
	ld   a, [bc]                                     ; $77ab: $0a
	ld   e, d                                        ; $77ac: $5a
	db   $db                                         ; $77ad: $db
	or   e                                           ; $77ae: $b3
	inc  sp                                          ; $77af: $33
	dec  hl                                          ; $77b0: $2b
	db   $eb                                         ; $77b1: $eb
	db   $db                                         ; $77b2: $db
	dec  de                                          ; $77b3: $1b
	ld   b, $7e                                      ; $77b4: $06 $7e
	ld   a, d                                        ; $77b6: $7a
	add  b                                           ; $77b7: $80
	ld   [bc], a                                     ; $77b8: $02
	add  b                                           ; $77b9: $80
	ld   a, d                                        ; $77ba: $7a
	inc  bc                                          ; $77bb: $03
	ld   [bc], a                                     ; $77bc: $02
	inc  bc                                          ; $77bd: $03
	cp   a                                           ; $77be: $bf
	dec  a                                           ; $77bf: $3d
	add  b                                           ; $77c0: $80
	ld   bc, $3d80                                   ; $77c1: $01 $80 $3d
	ld   bc, $d081                                   ; $77c4: $01 $81 $d0
	add  b                                           ; $77c7: $80
	rst  JumpTable                                         ; $77c8: $df
	nop                                              ; $77c9: $00
	ret  nc                                          ; $77ca: $d0

	add  b                                           ; $77cb: $80
	ld   h, b                                        ; $77cc: $60
	dec  c                                           ; $77cd: $0d
	or   e                                           ; $77ce: $b3
	cp   a                                           ; $77cf: $bf
	pop  bc                                          ; $77d0: $c1
	db   $d3                                         ; $77d1: $d3
	ld   d, [hl]                                     ; $77d2: $56
	ld   [hl], a                                     ; $77d3: $77
	and  a                                           ; $77d4: $a7
	rst  $20                                         ; $77d5: $e7
	ld   l, a                                        ; $77d6: $6f
	ccf                                              ; $77d7: $3f
	rrca                                             ; $77d8: $0f
	db   $d3                                         ; $77d9: $d3
	di                                               ; $77da: $f3
	nop                                              ; $77db: $00
	add  b                                           ; $77dc: $80
	inc  b                                           ; $77dd: $04
	add  d                                           ; $77de: $82
	ei                                               ; $77df: $fb
	add  b                                           ; $77e0: $80
	db   $fd                                         ; $77e1: $fd
	add  b                                           ; $77e2: $80
	ld   a, l                                        ; $77e3: $7d
	dec  b                                           ; $77e4: $05
	ld   a, [hl]                                     ; $77e5: $7e
	add  c                                           ; $77e6: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77e7: $cf
	adc  $c6                                         ; $77e8: $ce $c6
	jr   c, jr_01a_776c                              ; $77ea: $38 $80

	ld   bc, $ff03                                   ; $77ec: $01 $03 $ff
	db   $fc                                         ; $77ef: $fc
	rst  $38                                         ; $77f0: $ff
	add  e                                           ; $77f1: $83
	add  c                                           ; $77f2: $81
	rst  $28                                         ; $77f3: $ef
	inc  b                                           ; $77f4: $04
	xor  a                                           ; $77f5: $af
	rst  $28                                         ; $77f6: $ef
	ld   d, b                                        ; $77f7: $50
	ld   bc, $8081                                   ; $77f8: $01 $81 $80
	rst  $38                                         ; $77fb: $ff
	add  b                                           ; $77fc: $80
	nop                                              ; $77fd: $00
	add  e                                           ; $77fe: $83
	cp   $00                                         ; $77ff: $fe $00
	rst  $38                                         ; $7801: $ff
	add  c                                           ; $7802: $81
	db   $fd                                         ; $7803: $fd
	nop                                              ; $7804: $00
	inc  bc                                          ; $7805: $03
	rst  $38                                         ; $7806: $ff
	nop                                              ; $7807: $00
	rst  $38                                         ; $7808: $ff
	nop                                              ; $7809: $00
	adc  e                                           ; $780a: $8b
	nop                                              ; $780b: $00
	adc  c                                           ; $780c: $89
	ld   bc, $0104                              ; $780d: $01 $04 $01
	nop                                              ; $7810: $00
	inc  bc                                          ; $7811: $03
	nop                                              ; $7812: $00
	ld   b, $81                                      ; $7813: $06 $81
	ld   bc, $0d00                                   ; $7815: $01 $00 $0d
	add  c                                           ; $7818: $81
	inc  bc                                          ; $7819: $03
	inc  b                                           ; $781a: $04
	rra                                              ; $781b: $1f
	rlca                                             ; $781c: $07
	inc  b                                           ; $781d: $04
	rlca                                             ; $781e: $07
	ccf                                              ; $781f: $3f
	adc  l                                           ; $7820: $8d
	rrca                                             ; $7821: $0f
	ld   bc, $0020                                   ; $7822: $01 $20 $00
	add  b                                           ; $7825: $80
	ld   bc, $0282                                   ; $7826: $01 $82 $02
	add  d                                           ; $7829: $82
	inc  b                                           ; $782a: $04
	add  d                                           ; $782b: $82
	ld   [$108e], sp                                 ; $782c: $08 $8e $10
	nop                                              ; $782f: $00
	cpl                                              ; $7830: $2f
	add  c                                           ; $7831: $81
	rrca                                             ; $7832: $0f
	nop                                              ; $7833: $00
	scf                                              ; $7834: $37
	add  c                                           ; $7835: $81
	rrca                                             ; $7836: $0f
	ld   b, $17                                      ; $7837: $06 $17
	rlca                                             ; $7839: $07
	rrca                                             ; $783a: $0f
	inc  bc                                          ; $783b: $03
	rlca                                             ; $783c: $07
	nop                                              ; $783d: $00
	inc  bc                                          ; $783e: $03
	adc  a                                           ; $783f: $8f
	nop                                              ; $7840: $00
	add  d                                           ; $7841: $82
	db   $10                                         ; $7842: $10
	and  d                                           ; $7843: $a2
	nop                                              ; $7844: $00
	rrca                                             ; $7845: $0f
	rlca                                             ; $7846: $07
	nop                                              ; $7847: $00
	jr   jr_01a_7851                                 ; $7848: $18 $07

	ld   h, b                                        ; $784a: $60
	rra                                              ; $784b: $1f
	sub  a                                           ; $784c: $97
	ld   a, a                                        ; $784d: $7f
	inc  sp                                          ; $784e: $33
	rst  $38                                         ; $784f: $ff
	ld   c, h                                        ; $7850: $4c

jr_01a_7851:
	cp   $f2                                         ; $7851: $fe $f2
	db   $fd                                         ; $7853: $fd
	ld   a, [$80fb]                                  ; $7854: $fa $fb $80
	rst  $30                                         ; $7857: $f7
	add  b                                           ; $7858: $80
	rst  $28                                         ; $7859: $ef
	add  b                                           ; $785a: $80
	db   $ed                                         ; $785b: $ed
	add  b                                           ; $785c: $80
	rst  JumpTable                                         ; $785d: $df
	nop                                              ; $785e: $00
	nop                                              ; $785f: $00
	adc  b                                           ; $7860: $88
	ld   a, a                                        ; $7861: $7f
	add  d                                           ; $7862: $82
	cp   a                                           ; $7863: $bf
	rlca                                             ; $7864: $07
	ccf                                              ; $7865: $3f
	rst  $38                                         ; $7866: $ff
	rrca                                             ; $7867: $0f
	ccf                                              ; $7868: $3f
	inc  bc                                          ; $7869: $03
	rrca                                             ; $786a: $0f
	nop                                              ; $786b: $00
	inc  bc                                          ; $786c: $03
	add  a                                           ; $786d: $87
	nop                                              ; $786e: $00
	nop                                              ; $786f: $00
	inc  bc                                          ; $7870: $03
	add  l                                           ; $7871: $85
	ld   bc, $8307                                   ; $7872: $01 $07 $83
	nop                                              ; $7875: $00
	ldh  [rP1], a                                    ; $7876: $e0 $00
	ld   a, b                                        ; $7878: $78
	ldh  [$de], a                                    ; $7879: $e0 $de
	ret  c                                           ; $787b: $d8

	add  b                                           ; $787c: $80
	ld   a, $81                                      ; $787d: $3e $81
	rst  $38                                         ; $787f: $ff
	add  b                                           ; $7880: $80
	ccf                                              ; $7881: $3f
	add  b                                           ; $7882: $80
	rrca                                             ; $7883: $0f
	add  b                                           ; $7884: $80
	jp   $f080                                       ; $7885: $c3 $80 $f0


	add  b                                           ; $7888: $80
	db   $fc                                         ; $7889: $fc
	add  b                                           ; $788a: $80
	rst  $38                                         ; $788b: $ff
	add  a                                           ; $788c: $87
	nop                                              ; $788d: $00
	add  b                                           ; $788e: $80
	add  b                                           ; $788f: $80
	add  [hl]                                        ; $7890: $86
	nop                                              ; $7891: $00
	add  b                                           ; $7892: $80
	ret  nz                                          ; $7893: $c0

	add  b                                           ; $7894: $80
	ldh  a, [$80]                                    ; $7895: $f0 $80
	inc  a                                           ; $7897: $3c
	add  b                                           ; $7898: $80
	rrca                                             ; $7899: $0f
	add  b                                           ; $789a: $80
	inc  bc                                          ; $789b: $03
	add  b                                           ; $789c: $80
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	rst  $38                                         ; $789f: $ff
	add  h                                           ; $78a0: $84
	db   $fd                                         ; $78a1: $fd
	add  b                                           ; $78a2: $80
	db   $fc                                         ; $78a3: $fc
	adc  h                                           ; $78a4: $8c
	rst  $38                                         ; $78a5: $ff
	rlca                                             ; $78a6: $07

jr_01a_78a7:
	ccf                                              ; $78a7: $3f
	rst  $38                                         ; $78a8: $ff
	rrca                                             ; $78a9: $0f
	ccf                                              ; $78aa: $3f
	inc  bc                                          ; $78ab: $03
	rrca                                             ; $78ac: $0f
	nop                                              ; $78ad: $00
	inc  bc                                          ; $78ae: $03
	sbc  e                                           ; $78af: $9b
	nop                                              ; $78b0: $00
	inc  b                                           ; $78b1: $04
	ld   bc, $0200                                   ; $78b2: $01 $00 $02
	nop                                              ; $78b5: $00
	db   $fc                                         ; $78b6: $fc
	add  b                                           ; $78b7: $80
	rst  $30                                         ; $78b8: $f7
	add  d                                           ; $78b9: $82
	ei                                               ; $78ba: $fb
	add  b                                           ; $78bb: $80
	db   $fd                                         ; $78bc: $fd
	add  b                                           ; $78bd: $80
	db   $fc                                         ; $78be: $fc
	add  d                                           ; $78bf: $82
	db   $fd                                         ; $78c0: $fd
	inc  bc                                          ; $78c1: $03
	dec  a                                           ; $78c2: $3d
	db   $fd                                         ; $78c3: $fd
	inc  c                                           ; $78c4: $0c
	inc  a                                           ; $78c5: $3c
	add  b                                           ; $78c6: $80
	ld   bc, $0580                                   ; $78c7: $01 $80 $05
	add  b                                           ; $78ca: $80
	inc  b                                           ; $78cb: $04
	add  c                                           ; $78cc: $81
	dec  b                                           ; $78cd: $05
	ld   e, $0d                                      ; $78ce: $1e $0d
	ld   [bc], a                                     ; $78d0: $02
	ld   b, $00                                      ; $78d1: $06 $00
	ld   [bc], a                                     ; $78d3: $02
	nop                                              ; $78d4: $00
	ld   [bc], a                                     ; $78d5: $02
	ld   bc, $0305                                   ; $78d6: $01 $05 $03
	dec  bc                                          ; $78d9: $0b
	nop                                              ; $78da: $00
	db   $10                                         ; $78db: $10
	rrca                                             ; $78dc: $0f
	cpl                                              ; $78dd: $2f
	nop                                              ; $78de: $00
	jr   nc, jr_01a_78e8                             ; $78df: $30 $07

	rla                                              ; $78e1: $17
	rrca                                             ; $78e2: $0f
	cpl                                              ; $78e3: $2f
	inc  bc                                          ; $78e4: $03
	ld   b, e                                        ; $78e5: $43
	inc  a                                           ; $78e6: $3c
	cp   h                                           ; $78e7: $bc

jr_01a_78e8:
	rlca                                             ; $78e8: $07
	rst  ToBoot                                         ; $78e9: $c7
	jr   jr_01a_7944                                 ; $78ea: $18 $58

jr_01a_78ec:
	ccf                                              ; $78ec: $3f
	cp   a                                           ; $78ed: $bf
	add  b                                           ; $78ee: $80
	rra                                              ; $78ef: $1f
	add  b                                           ; $78f0: $80
	ldh  [rSB], a                                    ; $78f1: $e0 $01
	ld   e, $e1                                      ; $78f3: $1e $e1
	add  e                                           ; $78f5: $83
	nop                                              ; $78f6: $00
	add  d                                           ; $78f7: $82
	inc  c                                           ; $78f8: $0c
	add  d                                           ; $78f9: $82
	nop                                              ; $78fa: $00
	add  d                                           ; $78fb: $82
	ld   h, e                                        ; $78fc: $63
	adc  h                                           ; $78fd: $8c
	nop                                              ; $78fe: $00
	inc  bc                                          ; $78ff: $03
	scf                                              ; $7900: $37
	jp   $e7fb                                       ; $7901: $c3 $fb $e7


	add  b                                           ; $7904: $80
	daa                                              ; $7905: $27
	nop                                              ; $7906: $00
	rla                                              ; $7907: $17
	add  b                                           ; $7908: $80
	add  $01                                         ; $7909: $c6 $01
	cp   $ff                                         ; $790b: $fe $ff
	add  c                                           ; $790d: $81
	db   $fc                                         ; $790e: $fc
	ld   [bc], a                                     ; $790f: $02
	cp   $f8                                         ; $7910: $fe $f8
	inc  b                                           ; $7912: $04
	adc  l                                           ; $7913: $8d
	nop                                              ; $7914: $00
	add  b                                           ; $7915: $80
	ld   [$1082], sp                                 ; $7916: $08 $82 $10
	xor  c                                           ; $7919: $a9
	nop                                              ; $791a: $00
	add  d                                           ; $791b: $82
	jr   nc, jr_01a_78a7                             ; $791c: $30 $89

	nop                                              ; $791e: $00
	ld   bc, $609f                                   ; $791f: $01 $9f $60
	add  b                                           ; $7922: $80
	rra                                              ; $7923: $1f
	ld   [bc], a                                     ; $7924: $02
	nop                                              ; $7925: $00
	jr   nz, @-$5e                                   ; $7926: $20 $a0

	add  c                                           ; $7928: $81
	ccf                                              ; $7929: $3f
	nop                                              ; $792a: $00
	ld   a, b                                        ; $792b: $78
	add  c                                           ; $792c: $81
	rra                                              ; $792d: $1f
	ld   [bc], a                                     ; $792e: $02
	dec  sp                                          ; $792f: $3b
	rrca                                             ; $7930: $0f
	inc  de                                          ; $7931: $13
	sbc  [hl]                                        ; $7932: $9e
	nop                                              ; $7933: $00
	add  b                                           ; $7934: $80
	rlca                                             ; $7935: $07
	adc  e                                           ; $7936: $8b
	nop                                              ; $7937: $00
	ld   [bc], a                                     ; $7938: $02
	rra                                              ; $7939: $1f
	db   $e3                                         ; $793a: $e3
	jp   $df80                                       ; $793b: $c3 $80 $df


	rlca                                             ; $793e: $07
	rst  ToBoot                                         ; $793f: $c7
	rst  JumpTable                                         ; $7940: $df
	ret  nz                                          ; $7941: $c0

	and  a                                           ; $7942: $a7
	add  b                                           ; $7943: $80

jr_01a_7944:
	jr   nc, jr_01a_7946                             ; $7944: $30 $00

jr_01a_7946:
	cp   b                                           ; $7946: $b8
	add  c                                           ; $7947: $81
	jr   nc, jr_01a_794f                             ; $7948: $30 $05

	inc  [hl]                                        ; $794a: $34
	jr   nc, @+$5c                                   ; $794b: $30 $5a

	sbc  b                                           ; $794d: $98
	sbc  e                                           ; $794e: $9b

jr_01a_794f:
	sbc  d                                           ; $794f: $9a
	add  b                                           ; $7950: $80
	sbc  e                                           ; $7951: $9b
	add  b                                           ; $7952: $80
	sbc  b                                           ; $7953: $98
	nop                                              ; $7954: $00
	inc  l                                           ; $7955: $2c
	add  c                                           ; $7956: $81
	ld   c, l                                        ; $7957: $4d
	ld   [bc], a                                     ; $7958: $02
	ld   b, b                                        ; $7959: $40
	ld   b, c                                        ; $795a: $41
	rst  JumpTable                                         ; $795b: $df
	adc  c                                           ; $795c: $89
	nop                                              ; $795d: $00
	add  h                                           ; $795e: $84
	add  b                                           ; $795f: $80
	add  [hl]                                        ; $7960: $86
	ld   b, b                                        ; $7961: $40
	add  h                                           ; $7962: $84
	jr   nz, jr_01a_78ec                             ; $7963: $20 $87

	rst  $38                                         ; $7965: $ff
	dec  b                                           ; $7966: $05
	rra                                              ; $7967: $1f
	rst  $38                                         ; $7968: $ff
	inc  bc                                          ; $7969: $03
	rra                                              ; $796a: $1f
	nop                                              ; $796b: $00
	inc  bc                                          ; $796c: $03
	add  e                                           ; $796d: $83
	nop                                              ; $796e: $00
	inc  e                                           ; $796f: $1c
	add  b                                           ; $7970: $80
	nop                                              ; $7971: $00
	ret  nz                                          ; $7972: $c0

	add  b                                           ; $7973: $80
	jr   nz, jr_01a_7976                             ; $7974: $20 $00

jr_01a_7976:
	ld   h, b                                        ; $7976: $60
	nop                                              ; $7977: $00
	ld   b, b                                        ; $7978: $40
	add  b                                           ; $7979: $80
	ld   [hl], b                                     ; $797a: $70
	ret  nz                                          ; $797b: $c0

	ld   hl, sp-$10                                  ; $797c: $f8 $f0
	inc  b                                           ; $797e: $04
	nop                                              ; $797f: $00
	call c, $30c0                                    ; $7980: $dc $c0 $30
	jr   nz, jr_01a_79dd                             ; $7983: $20 $58

	ret  nc                                          ; $7985: $d0

	ld   l, $e8                                      ; $7986: $2e $e8
	rst  $30                                         ; $7988: $f7
	or   $90                                         ; $7989: $f6 $90
	ldh  a, [$df]                                    ; $798b: $f0 $df
	sbc  l                                           ; $798d: $9d
	nop                                              ; $798e: $00
	ld   [de], a                                     ; $798f: $12
	ld   e, $f8                                      ; $7990: $1e $f8
	jp   hl                                          ; $7992: $e9


	cp   $28                                         ; $7993: $fe $28
	ccf                                              ; $7995: $3f
	sub  $cf                                         ; $7996: $d6 $cf
	sub  a                                           ; $7998: $97
	rst  $30                                         ; $7999: $f7
	ld   e, e                                        ; $799a: $5b
	ei                                               ; $799b: $fb
	xor  l                                           ; $799c: $ad
	db   $ed                                         ; $799d: $ed
	ld   a, [hl]                                     ; $799e: $7e
	cp   $80                                         ; $799f: $fe $80
	cp   a                                           ; $79a1: $bf
	rst  $38                                         ; $79a2: $ff
	add  b                                           ; $79a3: $80
	rst  JumpTable                                         ; $79a4: $df
	ld   bc, $3f1f                                   ; $79a5: $01 $1f $3f
	add  b                                           ; $79a8: $80
	rrca                                             ; $79a9: $0f
	add  c                                           ; $79aa: $81
	rst  $28                                         ; $79ab: $ef
	inc  d                                           ; $79ac: $14
	rst  $38                                         ; $79ad: $ff
	or   $f7                                         ; $79ae: $f6 $f7
	db   $f4                                         ; $79b0: $f4
	or   $f0                                         ; $79b1: $f6 $f0
	inc  b                                           ; $79b3: $04
	nop                                              ; $79b4: $00
	ld   [$f0e0], sp                                 ; $79b5: $08 $e0 $f0
	ret  nz                                          ; $79b8: $c0

	ldh  [$80], a                                    ; $79b9: $e0 $80
	ret  nz                                          ; $79bb: $c0

	nop                                              ; $79bc: $00
	add  b                                           ; $79bd: $80
	nop                                              ; $79be: $00
	add  b                                           ; $79bf: $80
	nop                                              ; $79c0: $00
	add  b                                           ; $79c1: $80
	add  c                                           ; $79c2: $81
	nop                                              ; $79c3: $00
	add  b                                           ; $79c4: $80

jr_01a_79c5:
	ret  nz                                          ; $79c5: $c0

	add  b                                           ; $79c6: $80
	ldh  [$96], a                                    ; $79c7: $e0 $96
	nop                                              ; $79c9: $00
	inc  b                                           ; $79ca: $04
	ld   h, b                                        ; $79cb: $60
	add  b                                           ; $79cc: $80
	ld   hl, sp-$20                                  ; $79cd: $f8 $e0
	db   $fc                                         ; $79cf: $fc
	add  b                                           ; $79d0: $80
	ld   a, b                                        ; $79d1: $78
	ld   bc, $1e18                                   ; $79d2: $01 $18 $1e
	add  b                                           ; $79d5: $80
	call nz, $f080                                   ; $79d6: $c4 $80 $f0
	ld   de, $fdfc                                   ; $79d9: $11 $fc $fd
	db   $fc                                         ; $79dc: $fc

jr_01a_79dd:
	ld   a, l                                        ; $79dd: $7d
	db   $fd                                         ; $79de: $fd
	sbc  e                                           ; $79df: $9b
	ei                                               ; $79e0: $fb
	db   $e3                                         ; $79e1: $e3
	ei                                               ; $79e2: $fb
	db   $fc                                         ; $79e3: $fc
	db   $f4                                         ; $79e4: $f4
	db   $fd                                         ; $79e5: $fd
	db   $ed                                         ; $79e6: $ed
	db   $e3                                         ; $79e7: $e3
	jp   $00f8                                       ; $79e8: $c3 $f8 $00


	rst  ToBoot                                         ; $79eb: $c7
	add  e                                           ; $79ec: $83
	nop                                              ; $79ed: $00
	add  b                                           ; $79ee: $80
	add  b                                           ; $79ef: $80
	add  b                                           ; $79f0: $80
	ldh  [$80], a                                    ; $79f1: $e0 $80
	jr   c, @-$7e                                    ; $79f3: $38 $80

	inc  c                                           ; $79f5: $0c
	and  b                                           ; $79f6: $a0
	nop                                              ; $79f7: $00
	ld   [bc], a                                     ; $79f8: $02
	add  b                                           ; $79f9: $80
	nop                                              ; $79fa: $00
	add  b                                           ; $79fb: $80
	sub  c                                           ; $79fc: $91
	nop                                              ; $79fd: $00
	ld   b, $80                                      ; $79fe: $06 $80
	nop                                              ; $7a00: $00
	ld   b, b                                        ; $7a01: $40
	add  b                                           ; $7a02: $80
	jr   nz, jr_01a_79c5                             ; $7a03: $20 $c0

	sub  b                                           ; $7a05: $90
	add  c                                           ; $7a06: $81
	ldh  [$03], a                                    ; $7a07: $e0 $03
	ret  z                                           ; $7a09: $c8

	ldh  a, [$f8]                                    ; $7a0a: $f0 $f8
	db   $10                                         ; $7a0c: $10
	adc  d                                           ; $7a0d: $8a
	ld   [$0080], sp                                 ; $7a0e: $08 $80 $00
	ld   [bc], a                                     ; $7a11: $02
	jr   z, @-$1e                                    ; $7a12: $28 $e0

	inc  a                                           ; $7a14: $3c
	add  h                                           ; $7a15: $84
	ld   [hl], b                                     ; $7a16: $70
	add  e                                           ; $7a17: $83
	or   b                                           ; $7a18: $b0
	nop                                              ; $7a19: $00
	xor  h                                           ; $7a1a: $ac
	add  c                                           ; $7a1b: $81
	or   b                                           ; $7a1c: $b0
	nop                                              ; $7a1d: $00
	xor  b                                           ; $7a1e: $a8
	add  c                                           ; $7a1f: $81
	and  b                                           ; $7a20: $a0
	ld   b, $b0                                      ; $7a21: $06 $b0
	add  b                                           ; $7a23: $80
	and  b                                           ; $7a24: $a0
	add  b                                           ; $7a25: $80
	ret  nz                                          ; $7a26: $c0

	nop                                              ; $7a27: $00
	add  b                                           ; $7a28: $80
	add  c                                           ; $7a29: $81
	nop                                              ; $7a2a: $00
	nop                                              ; $7a2b: $00
	add  b                                           ; $7a2c: $80
	add  e                                           ; $7a2d: $83
	nop                                              ; $7a2e: $00
	ld   [bc], a                                     ; $7a2f: $02
	add  b                                           ; $7a30: $80
	nop                                              ; $7a31: $00
	add  b                                           ; $7a32: $80
	add  c                                           ; $7a33: $81
	nop                                              ; $7a34: $00
	nop                                              ; $7a35: $00
	add  b                                           ; $7a36: $80
	or   c                                           ; $7a37: $b1
	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	add  a                                           ; $7a3a: $87
	add  d                                           ; $7a3b: $82
	db   $eb                                         ; $7a3c: $eb
	inc  bc                                          ; $7a3d: $03
	ld   [$8192], a                                  ; $7a3e: $ea $92 $81
	cp   c                                           ; $7a41: $b9
	add  b                                           ; $7a42: $80
	dec  [hl]                                        ; $7a43: $35
	add  e                                           ; $7a44: $83
	or   l                                           ; $7a45: $b5
	ld   b, $7d                                      ; $7a46: $06 $7d
	rst  $10                                         ; $7a48: $d7
	daa                                              ; $7a49: $27
	ld   b, $fe                                      ; $7a4a: $06 $fe
	jp   hl                                          ; $7a4c: $e9


	ld   l, c                                        ; $7a4d: $69
	add  d                                           ; $7a4e: $82
	db   $eb                                         ; $7a4f: $eb
	add  b                                           ; $7a50: $80
	jp   hl                                          ; $7a51: $e9


	inc  b                                           ; $7a52: $04
	ld   [$8392], a                                  ; $7a53: $ea $92 $83
	db   $eb                                         ; $7a56: $eb
	ld   h, e                                        ; $7a57: $63
	add  b                                           ; $7a58: $80
	db   $e3                                         ; $7a59: $e3
	rlca                                             ; $7a5a: $07
	ld   c, e                                        ; $7a5b: $4b
	jp   $babb                                       ; $7a5c: $c3 $bb $ba


	add  [hl]                                        ; $7a5f: $86
	add  h                                           ; $7a60: $84
	or   l                                           ; $7a61: $b5
	dec  [hl]                                        ; $7a62: $35
	add  b                                           ; $7a63: $80
	ld   b, l                                        ; $7a64: $45
	add  b                                           ; $7a65: $80
	dec  [hl]                                        ; $7a66: $35
	nop                                              ; $7a67: $00
	nop                                              ; $7a68: $00
	add  b                                           ; $7a69: $80
	sbc  $80                                         ; $7a6a: $de $80
	db   $dd                                         ; $7a6c: $dd
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	add  b                                           ; $7a6f: $80
	rst  $38                                         ; $7a70: $ff
	add  b                                           ; $7a71: $80
	nop                                              ; $7a72: $00
	add  c                                           ; $7a73: $81
	ld   a, a                                        ; $7a74: $7f
	add  b                                           ; $7a75: $80
	ld   a, [hl]                                     ; $7a76: $7e
	nop                                              ; $7a77: $00
	ld   a, a                                        ; $7a78: $7f
	add  b                                           ; $7a79: $80
	rst  $28                                         ; $7a7a: $ef
	rrca                                             ; $7a7b: $0f
	nop                                              ; $7a7c: $00
	xor  $ef                                         ; $7a7d: $ee $ef
	dec  e                                           ; $7a7f: $1d
	call c, $3bcb                                    ; $7a80: $dc $cb $3b
	inc  sp                                          ; $7a83: $33
	rst  $38                                         ; $7a84: $ff
	db   $fd                                         ; $7a85: $fd
	rst  $38                                         ; $7a86: $ff
	ld   c, $0f                                      ; $7a87: $0e $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a89: $cf
	adc  d                                           ; $7a8a: $8a
	cp   e                                           ; $7a8b: $bb
	add  b                                           ; $7a8c: $80
	dec  e                                           ; $7a8d: $1d
	dec  b                                           ; $7a8e: $05
	db   $ed                                         ; $7a8f: $ed
	xor  $ef                                         ; $7a90: $ee $ef
	db   $ed                                         ; $7a92: $ed
	ld   [hl], e                                     ; $7a93: $73
	di                                               ; $7a94: $f3
	add  b                                           ; $7a95: $80
	rst  $30                                         ; $7a96: $f7
	add  b                                           ; $7a97: $80
	or   $05                                         ; $7a98: $f6 $05
	pop  af                                          ; $7a9a: $f1
	ld   [hl], c                                     ; $7a9b: $71
	ccf                                              ; $7a9c: $3f
	cp   a                                           ; $7a9d: $bf
	ret  nz                                          ; $7a9e: $c0

	ld   b, b                                        ; $7a9f: $40
	add  b                                           ; $7aa0: $80
	db   $eb                                         ; $7aa1: $eb
	add  b                                           ; $7aa2: $80
	rst  $10                                         ; $7aa3: $d7
	add  b                                           ; $7aa4: $80
	xor  a                                           ; $7aa5: $af
	add  b                                           ; $7aa6: $80
	ld   e, a                                        ; $7aa7: $5f
	ld   b, $bf                                      ; $7aa8: $06 $bf
	cp   [hl]                                        ; $7aaa: $be
	ld   a, [hl]                                     ; $7aab: $7e
	ld   a, h                                        ; $7aac: $7c
	dec  sp                                          ; $7aad: $3b
	or   l                                           ; $7aae: $b5
	sub  c                                           ; $7aaf: $91
	add  c                                           ; $7ab0: $81
	ld   e, d                                        ; $7ab1: $5a
	ld   [bc], a                                     ; $7ab2: $02
	ld   b, [hl]                                     ; $7ab3: $46
	ld   b, b                                        ; $7ab4: $40
	ld   e, h                                        ; $7ab5: $5c
	add  b                                           ; $7ab6: $80
	ld   a, [hl-]                                    ; $7ab7: $3a
	ld   bc, $ea7a                                   ; $7ab8: $01 $7a $ea
	add  b                                           ; $7abb: $80
	ld   a, $03                                      ; $7abc: $3e $03
	dec  a                                           ; $7abe: $3d
	call $3574                                       ; $7abf: $cd $74 $35
	add  c                                           ; $7ac2: $81
	push af                                          ; $7ac3: $f5
	ld   [bc], a                                     ; $7ac4: $02
	add  sp, -$20                                    ; $7ac5: $e8 $e0
	ret  nz                                          ; $7ac7: $c0

	add  b                                           ; $7ac8: $80
	sub  a                                           ; $7ac9: $97
	add  b                                           ; $7aca: $80
	ld   a, e                                        ; $7acb: $7b
	inc  b                                           ; $7acc: $04
	pop  bc                                          ; $7acd: $c1
	rst  $38                                         ; $7ace: $ff
	jr   c, @+$01                                    ; $7acf: $38 $ff

	ld   sp, hl                                      ; $7ad1: $f9
	add  b                                           ; $7ad2: $80
	cp   $82                                         ; $7ad3: $fe $82
	rst  $38                                         ; $7ad5: $ff
	add  b                                           ; $7ad6: $80
	ld   a, a                                        ; $7ad7: $7f
	add  b                                           ; $7ad8: $80
	ld   a, c                                        ; $7ad9: $79
	inc  b                                           ; $7ada: $04
	inc  de                                          ; $7adb: $13
	ld   [hl], a                                     ; $7adc: $77
	ld   h, h                                        ; $7add: $64
	ld   l, [hl]                                     ; $7ade: $6e
	ld   de, $7f81                                   ; $7adf: $11 $81 $7f
	add  h                                           ; $7ae2: $84
	rst  $38                                         ; $7ae3: $ff
	add  b                                           ; $7ae4: $80
	add  h                                           ; $7ae5: $84
	add  b                                           ; $7ae6: $80
	rst  $38                                         ; $7ae7: $ff
	add  b                                           ; $7ae8: $80
	nop                                              ; $7ae9: $00
	nop                                              ; $7aea: $00
	rst  $38                                         ; $7aeb: $ff
	add  b                                           ; $7aec: $80
	rst  $20                                         ; $7aed: $e7
	add  h                                           ; $7aee: $84
	rst  $30                                         ; $7aef: $f7
	ld   [bc], a                                     ; $7af0: $02
	db   $e3                                         ; $7af1: $e3
	add  e                                           ; $7af2: $83
	sbc  a                                           ; $7af3: $9f
	add  b                                           ; $7af4: $80
	db   $fc                                         ; $7af5: $fc
	add  b                                           ; $7af6: $80
	inc  bc                                          ; $7af7: $03
	add  b                                           ; $7af8: $80
	and  [hl]                                        ; $7af9: $a6
	add  b                                           ; $7afa: $80
	xor  c                                           ; $7afb: $a9
	add  h                                           ; $7afc: $84
	rst  JumpTable                                         ; $7afd: $df
	add  b                                           ; $7afe: $80
	rst  $28                                         ; $7aff: $ef
	ld   [$7273], sp                                 ; $7b00: $08 $73 $72
	add  l                                           ; $7b03: $85
	add  h                                           ; $7b04: $84
	rst  $38                                         ; $7b05: $ff
	ld   sp, hl                                      ; $7b06: $f9
	ld   hl, sp-$0e                                  ; $7b07: $f8 $f2
	di                                               ; $7b09: $f3
	add  b                                           ; $7b0a: $80
	rst  $20                                         ; $7b0b: $e7
	add  b                                           ; $7b0c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b0d: $cf
	ld   b, $9f                                      ; $7b0e: $06 $9f
	cp   a                                           ; $7b10: $bf
	rra                                              ; $7b11: $1f
	ccf                                              ; $7b12: $3f
	ld   a, a                                        ; $7b13: $7f
	add  b                                           ; $7b14: $80
	nop                                              ; $7b15: $00
	add  b                                           ; $7b16: $80
	cp   $82                                         ; $7b17: $fe $82
	rst  $38                                         ; $7b19: $ff
	db   $10                                         ; $7b1a: $10
	cp   $ff                                         ; $7b1b: $fe $ff
	db   $fd                                         ; $7b1d: $fd
	rst  $38                                         ; $7b1e: $ff
	ei                                               ; $7b1f: $fb
	rst  $38                                         ; $7b20: $ff
	rst  $30                                         ; $7b21: $f7
	rst  $38                                         ; $7b22: $ff
	ld   l, a                                        ; $7b23: $6f
	ld   a, a                                        ; $7b24: $7f
	nop                                              ; $7b25: $00
	rst  JumpTable                                         ; $7b26: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b27: $cf
	cp   a                                           ; $7b28: $bf
	or   e                                           ; $7b29: $b3
	cp   a                                           ; $7b2a: $bf
	cp   h                                           ; $7b2b: $bc
	add  b                                           ; $7b2c: $80
	cp   a                                           ; $7b2d: $bf
	add  l                                           ; $7b2e: $85
	ld   a, a                                        ; $7b2f: $7f
	ld   bc, $dfa0                                   ; $7b30: $01 $a0 $df
	add  b                                           ; $7b33: $80
	rst  $38                                         ; $7b34: $ff
	add  b                                           ; $7b35: $80
	db   $fd                                         ; $7b36: $fd
	add  b                                           ; $7b37: $80
	rst  $38                                         ; $7b38: $ff
	inc  c                                           ; $7b39: $0c
	ccf                                              ; $7b3a: $3f
	rst  $38                                         ; $7b3b: $ff
	adc  $fe                                         ; $7b3c: $ce $fe
	ldh  a, [c]                                      ; $7b3e: $f2
	cp   $fc                                         ; $7b3f: $fe $fc
	db   $fd                                         ; $7b41: $fd
	ld   [hl], l                                     ; $7b42: $75
	cp   b                                           ; $7b43: $b8
	or   a                                           ; $7b44: $b7
	and  a                                           ; $7b45: $a7
	and  b                                           ; $7b46: $a0
	add  b                                           ; $7b47: $80
	add  b                                           ; $7b48: $80
	ld   bc, $1f9f                                   ; $7b49: $01 $9f $1f
	add  b                                           ; $7b4c: $80
	ld   a, [hl]                                     ; $7b4d: $7e
	add  b                                           ; $7b4e: $80
	db   $fd                                         ; $7b4f: $fd
	inc  e                                           ; $7b50: $1c
	pop  hl                                          ; $7b51: $e1
	rst  $38                                         ; $7b52: $ff
	sbc  $bf                                         ; $7b53: $de $bf
	ld   [hl], d                                     ; $7b55: $72
	di                                               ; $7b56: $f3
	add  $47                                         ; $7b57: $c6 $47
	rra                                              ; $7b59: $1f
	ld   a, a                                        ; $7b5a: $7f
	rra                                              ; $7b5b: $1f
	rrca                                             ; $7b5c: $0f
	rst  $28                                         ; $7b5d: $ef
	rst  $20                                         ; $7b5e: $e7
	rst  $30                                         ; $7b5f: $f7
	ldh  a, [$c0]                                    ; $7b60: $f0 $c0
	rst  $30                                         ; $7b62: $f7
	add  hl, sp                                      ; $7b63: $39
	adc  [hl]                                        ; $7b64: $8e
	sbc  l                                           ; $7b65: $9d
	db   $dd                                         ; $7b66: $dd
	ret  nz                                          ; $7b67: $c0

	call nz, $f9de                                   ; $7b68: $c4 $de $f9
	rst  $28                                         ; $7b6b: $ef
	db   $ed                                         ; $7b6c: $ed
	rst  $28                                         ; $7b6d: $ef
	add  b                                           ; $7b6e: $80
	xor  a                                           ; $7b6f: $af
	add  b                                           ; $7b70: $80
	rst  $28                                         ; $7b71: $ef

jr_01a_7b72:
	add  b                                           ; $7b72: $80
	ld   l, $00                                      ; $7b73: $2e $00
	ld   c, $80                                      ; $7b75: $0e $80
	nop                                              ; $7b77: $00
	add  b                                           ; $7b78: $80
	rst  $38                                         ; $7b79: $ff
	add  b                                           ; $7b7a: $80
	nop                                              ; $7b7b: $00
	ld   [bc], a                                     ; $7b7c: $02
	rst  $38                                         ; $7b7d: $ff
	add  b                                           ; $7b7e: $80
	ld   a, a                                        ; $7b7f: $7f
	add  b                                           ; $7b80: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b81: $cf
	add  b                                           ; $7b82: $80
	or   a                                           ; $7b83: $b7
	add  b                                           ; $7b84: $80
	ld   c, b                                        ; $7b85: $48
	nop                                              ; $7b86: $00
	inc  bc                                          ; $7b87: $03
	add  b                                           ; $7b88: $80
	nop                                              ; $7b89: $00
	ld   bc, $f8fb                                   ; $7b8a: $01 $fb $f8
	add  b                                           ; $7b8d: $80
	nop                                              ; $7b8e: $00
	ld   [bc], a                                     ; $7b8f: $02
	rst  $38                                         ; $7b90: $ff
	jr   nz, jr_01a_7b72                             ; $7b91: $20 $df

	add  d                                           ; $7b93: $82
	rst  $38                                         ; $7b94: $ff
	add  b                                           ; $7b95: $80
	nop                                              ; $7b96: $00
	add  hl, bc                                      ; $7b97: $09
	xor  a                                           ; $7b98: $af
	daa                                              ; $7b99: $27
	dec  h                                           ; $7b9a: $25
	and  c                                           ; $7b9b: $a1
	ld   a, e                                        ; $7b9c: $7b

jr_01a_7b9d:
	ld   [hl], b                                     ; $7b9d: $70
	ldh  a, [$f6]                                    ; $7b9e: $f0 $f6
	or   [hl]                                        ; $7ba0: $b6
	or   a                                           ; $7ba1: $b7
	add  b                                           ; $7ba2: $80
	ei                                               ; $7ba3: $fb
	add  b                                           ; $7ba4: $80
	ld   [$0b80], a                                  ; $7ba5: $ea $80 $0b
	add  e                                           ; $7ba8: $83
	rst  $38                                         ; $7ba9: $ff
	add  d                                           ; $7baa: $82
	nop                                              ; $7bab: $00
	add  l                                           ; $7bac: $85
	rst  $38                                         ; $7bad: $ff
	ld   bc, $be3e                                   ; $7bae: $01 $3e $be
	add  b                                           ; $7bb1: $80
	cp   l                                           ; $7bb2: $bd
	ld   [$3bbb], sp                                 ; $7bb3: $08 $bb $3b
	dec  de                                          ; $7bb6: $1b
	db   $db                                         ; $7bb7: $db
	add  $e7                                         ; $7bb8: $c6 $e7
	push hl                                          ; $7bba: $e5
	rst  $30                                         ; $7bbb: $f7
	di                                               ; $7bbc: $f3
	add  c                                           ; $7bbd: $81
	rst  $30                                         ; $7bbe: $f7
	inc  bc                                          ; $7bbf: $03
	nop                                              ; $7bc0: $00
	ei                                               ; $7bc1: $fb
	db   $ec                                         ; $7bc2: $ec
	ldh  [$80], a                                    ; $7bc3: $e0 $80
	reti                                             ; $7bc5: $d9


	ld   bc, $b0b6                                   ; $7bc6: $01 $b6 $b0
	add  b                                           ; $7bc9: $80
	ld   h, b                                        ; $7bca: $60
	ld   bc, $595f                                   ; $7bcb: $01 $5f $59
	add  b                                           ; $7bce: $80
	ld   c, [hl]                                     ; $7bcf: $4e
	dec  bc                                          ; $7bd0: $0b
	dec  [hl]                                        ; $7bd1: $35
	inc  b                                           ; $7bd2: $04
	pop  af                                          ; $7bd3: $f1
	db   $dd                                         ; $7bd4: $dd
	db   $fd                                         ; $7bd5: $fd
	ldh  [rSVBK], a                                  ; $7bd6: $e0 $70
	halt                                             ; $7bd8: $76
	or   [hl]                                        ; $7bd9: $b6
	or   a                                           ; $7bda: $b7
	rst  JumpTable                                         ; $7bdb: $df
	db   $db                                         ; $7bdc: $db
	add  d                                           ; $7bdd: $82
	ld   e, e                                        ; $7bde: $5b
	ld   b, $9b                                      ; $7bdf: $06 $9b
	dec  de                                          ; $7be1: $1b
	ei                                               ; $7be2: $fb
	ld   a, b                                        ; $7be3: $78
	jr   nc, jr_01a_7b9d                             ; $7be4: $30 $b7

	add  a                                           ; $7be6: $87
	add  b                                           ; $7be7: $80
	nop                                              ; $7be8: $00
	add  c                                           ; $7be9: $81
	rst  $38                                         ; $7bea: $ff
	nop                                              ; $7beb: $00
	ret  nz                                          ; $7bec: $c0

	add  e                                           ; $7bed: $83
	rst  $38                                         ; $7bee: $ff
	nop                                              ; $7bef: $00
	ret  nz                                          ; $7bf0: $c0

	add  b                                           ; $7bf1: $80
	nop                                              ; $7bf2: $00
	add  b                                           ; $7bf3: $80
	rst  $38                                         ; $7bf4: $ff
	add  b                                           ; $7bf5: $80
	nop                                              ; $7bf6: $00
	add  c                                           ; $7bf7: $81
	rst  $38                                         ; $7bf8: $ff
	nop                                              ; $7bf9: $00
	nop                                              ; $7bfa: $00
	add  e                                           ; $7bfb: $83
	rst  $38                                         ; $7bfc: $ff
	ld   [$4303], sp                                 ; $7bfd: $08 $03 $43
	ld   e, e                                        ; $7c00: $5b
	sbc  e                                           ; $7c01: $9b
	cp   e                                           ; $7c02: $bb
	dec  sp                                          ; $7c03: $3b
	ld   a, b                                        ; $7c04: $78
	ld   hl, sp+$78                                  ; $7c05: $f8 $78
	add  b                                           ; $7c07: $80
	ei                                               ; $7c08: $fb
	ld   bc, $fbf9                                   ; $7c09: $01 $f9 $fb
	add  c                                           ; $7c0c: $81
	ld   a, [$ff82]                                  ; $7c0d: $fa $82 $ff
	add  b                                           ; $7c10: $80
	ret  nz                                          ; $7c11: $c0

	nop                                              ; $7c12: $00
	nop                                              ; $7c13: $00
	add  b                                           ; $7c14: $80
	ccf                                              ; $7c15: $3f
	dec  c                                           ; $7c16: $0d
	sbc  a                                           ; $7c17: $9f
	rst  $38                                         ; $7c18: $ff
	ld   h, a                                        ; $7c19: $67
	ld   a, a                                        ; $7c1a: $7f
	ld   a, b                                        ; $7c1b: $78
	cp   [hl]                                        ; $7c1c: $be
	sbc  [hl]                                        ; $7c1d: $9e
	dec  d                                           ; $7c1e: $15
	inc  b                                           ; $7c1f: $04
	dec  sp                                          ; $7c20: $3b
	adc  d                                           ; $7c21: $8a
	sbc  a                                           ; $7c22: $9f
	rst  JumpTable                                         ; $7c23: $df
	ret  nz                                          ; $7c24: $c0

	add  b                                           ; $7c25: $80
	ldh  [$80], a                                    ; $7c26: $e0 $80
	rst  $38                                         ; $7c28: $ff
	add  b                                           ; $7c29: $80
	ccf                                              ; $7c2a: $3f
	add  b                                           ; $7c2b: $80
	ret  nz                                          ; $7c2c: $c0

	inc  bc                                          ; $7c2d: $03
	rst  $10                                         ; $7c2e: $d7
	ld   c, a                                        ; $7c2f: $4f
	dec  de                                          ; $7c30: $1b
	sub  e                                           ; $7c31: $93
	add  b                                           ; $7c32: $80
	scf                                              ; $7c33: $37
	ld   bc, $6777                                   ; $7c34: $01 $77 $67
	add  b                                           ; $7c37: $80
	rst  $28                                         ; $7c38: $ef
	add  b                                           ; $7c39: $80
	rst  JumpTable                                         ; $7c3a: $df
	add  b                                           ; $7c3b: $80
	ccf                                              ; $7c3c: $3f
	add  b                                           ; $7c3d: $80
	rst  $38                                         ; $7c3e: $ff
	ld   bc, $c4fb                                   ; $7c3f: $01 $fb $c4
	add  e                                           ; $7c42: $83
	rst  $38                                         ; $7c43: $ff
	nop                                              ; $7c44: $00
	rst  JumpTable                                         ; $7c45: $df
	add  e                                           ; $7c46: $83
	rst  $38                                         ; $7c47: $ff
	nop                                              ; $7c48: $00
	rst  $28                                         ; $7c49: $ef
	add  c                                           ; $7c4a: $81
	rst  $38                                         ; $7c4b: $ff
	ld   bc, $ff0f                                   ; $7c4c: $01 $0f $ff

jr_01a_7c4f:
	add  b                                           ; $7c4f: $80
	db   $fc                                         ; $7c50: $fc
	add  b                                           ; $7c51: $80
	ei                                               ; $7c52: $fb
	add  b                                           ; $7c53: $80
	ld   sp, hl                                      ; $7c54: $f9
	add  b                                           ; $7c55: $80
	ei                                               ; $7c56: $fb
	add  b                                           ; $7c57: $80
	db   $fc                                         ; $7c58: $fc
	add  d                                           ; $7c59: $82
	rst  $38                                         ; $7c5a: $ff
	add  b                                           ; $7c5b: $80
	cp   d                                           ; $7c5c: $ba
	ld   [bc], a                                     ; $7c5d: $02
	ld   hl, sp-$06                                  ; $7c5e: $f8 $fa
	ld   [hl], d                                     ; $7c60: $72
	add  b                                           ; $7c61: $80
	ld   [hl], l                                     ; $7c62: $75
	add  b                                           ; $7c63: $80
	ld   [hl], c                                     ; $7c64: $71
	rlca                                             ; $7c65: $07
	halt                                             ; $7c66: $76
	or   $f5                                         ; $7c67: $f6 $f5
	push hl                                          ; $7c69: $e5
	db   $ed                                         ; $7c6a: $ed
	ld   l, l                                        ; $7c6b: $6d
	ld   l, e                                        ; $7c6c: $6b
	call nc, $c780                                   ; $7c6d: $d4 $80 $c7
	inc  bc                                          ; $7c70: $03
	pop  bc                                          ; $7c71: $c1
	ld   b, c                                        ; $7c72: $41
	call c, $80bc                                    ; $7c73: $dc $bc $80
	cp   a                                           ; $7c76: $bf
	rlca                                             ; $7c77: $07
	ld   a, a                                        ; $7c78: $7f
	ld   e, a                                        ; $7c79: $5f
	rst  $38                                         ; $7c7a: $ff
	rst  $20                                         ; $7c7b: $e7
	rst  $38                                         ; $7c7c: $ff
	ld   sp, hl                                      ; $7c7d: $f9
	rst  $38                                         ; $7c7e: $ff
	cp   $80                                         ; $7c7f: $fe $80
	rla                                              ; $7c81: $17
	add  d                                           ; $7c82: $82
	rst  $10                                         ; $7c83: $d7
	add  b                                           ; $7c84: $80
	rla                                              ; $7c85: $17
	add  b                                           ; $7c86: $80
	rst  $10                                         ; $7c87: $d7
	add  b                                           ; $7c88: $80
	add  a                                           ; $7c89: $87
	add  b                                           ; $7c8a: $80
	halt                                             ; $7c8b: $76
	add  b                                           ; $7c8c: $80
	xor  $82                                         ; $7c8d: $ee $82
	cp   a                                           ; $7c8f: $bf
	add  d                                           ; $7c90: $82
	rst  JumpTable                                         ; $7c91: $df
	add  b                                           ; $7c92: $80
	rst  $38                                         ; $7c93: $ff
	rlca                                             ; $7c94: $07
	rra                                              ; $7c95: $1f
	rst  $38                                         ; $7c96: $ff
	pop  hl                                          ; $7c97: $e1
	rra                                              ; $7c98: $1f
	sbc  b                                           ; $7c99: $98
	adc  c                                           ; $7c9a: $89
	rst  $38                                         ; $7c9b: $ff
	rst  $30                                         ; $7c9c: $f7
	add  c                                           ; $7c9d: $81
	rst  $38                                         ; $7c9e: $ff
	nop                                              ; $7c9f: $00
	ei                                               ; $7ca0: $fb
	add  c                                           ; $7ca1: $81
	rst  $38                                         ; $7ca2: $ff
	add  b                                           ; $7ca3: $80
	cp   $80                                         ; $7ca4: $fe $80
	db   $fd                                         ; $7ca6: $fd
	ld   [bc], a                                     ; $7ca7: $02
	rst  $38                                         ; $7ca8: $ff
	dec  sp                                          ; $7ca9: $3b
	rst  ToBoot                                         ; $7caa: $c7
	add  a                                           ; $7cab: $87
	rst  $38                                         ; $7cac: $ff
	add  b                                           ; $7cad: $80
	ld   a, $01                                      ; $7cae: $3e $01
	db   $dd                                         ; $7cb0: $dd
	sbc  l                                           ; $7cb1: $9d
	add  b                                           ; $7cb2: $80
	and  c                                           ; $7cb3: $a1
	nop                                              ; $7cb4: $00
	ld   b, b                                        ; $7cb5: $40
	add  b                                           ; $7cb6: $80
	ld   bc, $fd80                                   ; $7cb7: $01 $80 $fd
	add  c                                           ; $7cba: $81
	ld   a, [$fb09]                                  ; $7cbb: $fa $09 $fb
	dec  b                                           ; $7cbe: $05
	inc  b                                           ; $7cbf: $04
	db   $f4                                         ; $7cc0: $f4
	rst  $30                                         ; $7cc1: $f7
	dec  bc                                          ; $7cc2: $0b
	nop                                              ; $7cc3: $00
	add  sp, -$7d                                    ; $7cc4: $e8 $83
	ld   h, d                                        ; $7cc6: $62
	add  b                                           ; $7cc7: $80
	inc  e                                           ; $7cc8: $1c
	add  b                                           ; $7cc9: $80
	ldh  [rSB], a                                    ; $7cca: $e0 $01
	dec  de                                          ; $7ccc: $1b
	jr   jr_01a_7c4f                                 ; $7ccd: $18 $80

	ret  nz                                          ; $7ccf: $c0

	ld   [$3036], sp                                 ; $7cd0: $08 $36 $30
	ret  nz                                          ; $7cd3: $c0

	pop  bc                                          ; $7cd4: $c1
	dec  l                                           ; $7cd5: $2d
	inc  hl                                          ; $7cd6: $23
	adc  h                                           ; $7cd7: $8c
	rlca                                             ; $7cd8: $07
	adc  a                                           ; $7cd9: $8f
	add  c                                           ; $7cda: $81
	ld   l, a                                        ; $7cdb: $6f
	nop                                              ; $7cdc: $00
	ld   a, a                                        ; $7cdd: $7f
	add  b                                           ; $7cde: $80
	rst  JumpTable                                         ; $7cdf: $df
	ld   bc, $7f5f                                   ; $7ce0: $01 $5f $7f
	add  b                                           ; $7ce3: $80
	cp   a                                           ; $7ce4: $bf
	rlca                                             ; $7ce5: $07
	ccf                                              ; $7ce6: $3f
	rra                                              ; $7ce7: $1f
	sbc  a                                           ; $7ce8: $9f
	ld   [hl], c                                     ; $7ce9: $71
	sub  l                                           ; $7cea: $95
	sub  h                                           ; $7ceb: $94
	sub  $de                                         ; $7cec: $d6 $de
	add  b                                           ; $7cee: $80
	jp   c, $d801                                    ; $7cef: $da $01 $d8

	call c, $cc80                                    ; $7cf2: $dc $80 $cc
	add  c                                           ; $7cf5: $81
	call $cf06                                       ; $7cf6: $cd $06 $cf
	adc  $3f                                         ; $7cf9: $ce $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cfb: $cf
	pop  bc                                          ; $7cfc: $c1
	ld   hl, $8020                                   ; $7cfd: $21 $20 $80
	xor  [hl]                                        ; $7d00: $ae
	ld   a, [bc]                                     ; $7d01: $0a
	rlca                                             ; $7d02: $07
	ccf                                              ; $7d03: $3f
	xor  e                                           ; $7d04: $ab
	rst  $28                                         ; $7d05: $ef
	ld   c, l                                        ; $7d06: $4d
	call $dfdd                                       ; $7d07: $cd $dd $df
	sbc  $20                                         ; $7d0a: $de $20
	nop                                              ; $7d0c: $00
	add  b                                           ; $7d0d: $80
	cp   $81                                         ; $7d0e: $fe $81
	nop                                              ; $7d10: $00
	dec  b                                           ; $7d11: $05
	db   $fd                                         ; $7d12: $fd
	ld   sp, hl                                      ; $7d13: $f9
	db   $fd                                         ; $7d14: $fd
	dec  b                                           ; $7d15: $05
	call $81c9                                       ; $7d16: $cd $c9 $81
	db   $db                                         ; $7d19: $db
	dec  b                                           ; $7d1a: $05
	ld   b, d                                        ; $7d1b: $42
	ld   a, l                                        ; $7d1c: $7d
	inc  e                                           ; $7d1d: $1c
	add  b                                           ; $7d1e: $80
	add  l                                           ; $7d1f: $85
	db   $fd                                         ; $7d20: $fd
	add  b                                           ; $7d21: $80
	cp   $01                                         ; $7d22: $fe $01
	or   $fe                                         ; $7d24: $f6 $fe
	add  b                                           ; $7d26: $80
	db   $fd                                         ; $7d27: $fd
	add  d                                           ; $7d28: $82
	ei                                               ; $7d29: $fb
	nop                                              ; $7d2a: $00
	rrca                                             ; $7d2b: $0f
	rst  $38                                         ; $7d2c: $ff
	nop                                              ; $7d2d: $00
	db   $fc                                         ; $7d2e: $fc
	nop                                              ; $7d2f: $00
	inc  b                                           ; $7d30: $04
	inc  b                                           ; $7d31: $04
	inc  b                                           ; $7d32: $04
	inc  b                                           ; $7d33: $04
	inc  b                                           ; $7d34: $04
	inc  b                                           ; $7d35: $04
	inc  b                                           ; $7d36: $04
	inc  b                                           ; $7d37: $04
	inc  b                                           ; $7d38: $04
	inc  b                                           ; $7d39: $04
	inc  b                                           ; $7d3a: $04
	inc  b                                           ; $7d3b: $04
	inc  b                                           ; $7d3c: $04
	inc  b                                           ; $7d3d: $04
	inc  b                                           ; $7d3e: $04
	inc  b                                           ; $7d3f: $04
	inc  b                                           ; $7d40: $04
	inc  b                                           ; $7d41: $04
	inc  b                                           ; $7d42: $04
	inc  b                                           ; $7d43: $04
	rlca                                             ; $7d44: $07
	rlca                                             ; $7d45: $07
	rlca                                             ; $7d46: $07
	rlca                                             ; $7d47: $07
	rlca                                             ; $7d48: $07
	rlca                                             ; $7d49: $07
	rlca                                             ; $7d4a: $07
	rlca                                             ; $7d4b: $07
	rlca                                             ; $7d4c: $07
	rlca                                             ; $7d4d: $07
	rlca                                             ; $7d4e: $07
	rlca                                             ; $7d4f: $07
	rlca                                             ; $7d50: $07
	rlca                                             ; $7d51: $07
	rlca                                             ; $7d52: $07
	rlca                                             ; $7d53: $07
	rlca                                             ; $7d54: $07
	rlca                                             ; $7d55: $07
	rlca                                             ; $7d56: $07
	rlca                                             ; $7d57: $07
	rlca                                             ; $7d58: $07
	rlca                                             ; $7d59: $07
	rlca                                             ; $7d5a: $07
	rlca                                             ; $7d5b: $07
	rlca                                             ; $7d5c: $07
	inc  bc                                          ; $7d5d: $03
	rlca                                             ; $7d5e: $07
	rlca                                             ; $7d5f: $07
	rlca                                             ; $7d60: $07
	rlca                                             ; $7d61: $07
	rlca                                             ; $7d62: $07
	rlca                                             ; $7d63: $07
	rlca                                             ; $7d64: $07
	rlca                                             ; $7d65: $07
	rlca                                             ; $7d66: $07
	rlca                                             ; $7d67: $07
	rlca                                             ; $7d68: $07
	rlca                                             ; $7d69: $07
	rlca                                             ; $7d6a: $07
	rlca                                             ; $7d6b: $07
	rlca                                             ; $7d6c: $07
	rlca                                             ; $7d6d: $07
	rlca                                             ; $7d6e: $07
	rlca                                             ; $7d6f: $07
	rlca                                             ; $7d70: $07
	rlca                                             ; $7d71: $07
	rlca                                             ; $7d72: $07
	rlca                                             ; $7d73: $07
	rlca                                             ; $7d74: $07
	rlca                                             ; $7d75: $07
	rlca                                             ; $7d76: $07
	rlca                                             ; $7d77: $07
	rlca                                             ; $7d78: $07
	rlca                                             ; $7d79: $07
	rlca                                             ; $7d7a: $07
	rlca                                             ; $7d7b: $07
	rlca                                             ; $7d7c: $07
	rlca                                             ; $7d7d: $07
	rlca                                             ; $7d7e: $07
	rlca                                             ; $7d7f: $07
	rlca                                             ; $7d80: $07
	rlca                                             ; $7d81: $07
	rlca                                             ; $7d82: $07
	rlca                                             ; $7d83: $07
	rlca                                             ; $7d84: $07
	rlca                                             ; $7d85: $07
	rlca                                             ; $7d86: $07
	rlca                                             ; $7d87: $07
	rlca                                             ; $7d88: $07
	rlca                                             ; $7d89: $07
	rlca                                             ; $7d8a: $07
	rlca                                             ; $7d8b: $07
	rlca                                             ; $7d8c: $07
	rlca                                             ; $7d8d: $07
	rlca                                             ; $7d8e: $07
	rlca                                             ; $7d8f: $07
	rlca                                             ; $7d90: $07
	rlca                                             ; $7d91: $07
	rlca                                             ; $7d92: $07
	rlca                                             ; $7d93: $07
	ld   b, l                                        ; $7d94: $45
	ld   b, l                                        ; $7d95: $45
	ld   b, l                                        ; $7d96: $45
	ld   b, l                                        ; $7d97: $45
	ld   b, $06                                      ; $7d98: $06 $06
	ld   b, l                                        ; $7d9a: $45
	ld   b, l                                        ; $7d9b: $45
	ld   b, l                                        ; $7d9c: $45
	ld   b, l                                        ; $7d9d: $45
	ld   b, l                                        ; $7d9e: $45
	ld   b, l                                        ; $7d9f: $45
	ld   b, l                                        ; $7da0: $45
	ld   b, l                                        ; $7da1: $45
	ld   b, l                                        ; $7da2: $45
	ld   b, l                                        ; $7da3: $45
	ld   b, l                                        ; $7da4: $45
	ld   b, l                                        ; $7da5: $45
	ld   b, l                                        ; $7da6: $45
	ld   b, l                                        ; $7da7: $45
	ld   b, $06                                      ; $7da8: $06 $06
	ld   b, $06                                      ; $7daa: $06 $06
	ld   b, $06                                      ; $7dac: $06 $06
	ld   b, $06                                      ; $7dae: $06 $06
	ld   b, $08                                      ; $7db0: $06 $08
	ld   [$0808], sp                                 ; $7db2: $08 $08 $08
	ld   [$0808], sp                                 ; $7db5: $08 $08 $08
	ld   [$0808], sp                                 ; $7db8: $08 $08 $08
	ld   b, $06                                      ; $7dbb: $06 $06
	ld   b, $06                                      ; $7dbd: $06 $06
	ld   b, $06                                      ; $7dbf: $06 $06
	ld   b, $06                                      ; $7dc1: $06 $06
	ld   b, $06                                      ; $7dc3: $06 $06
	ld   [$0808], sp                                 ; $7dc5: $08 $08 $08
	ld   [$0808], sp                                 ; $7dc8: $08 $08 $08
	ld   [$0808], sp                                 ; $7dcb: $08 $08 $08
	ld   [$0606], sp                                 ; $7dce: $08 $06 $06
	ld   b, $06                                      ; $7dd1: $06 $06
	ld   b, $06                                      ; $7dd3: $06 $06
	ld   b, $06                                      ; $7dd5: $06 $06
	ld   b, $08                                      ; $7dd7: $06 $08
	ld   [$0808], sp                                 ; $7dd9: $08 $08 $08
	ld   [$0808], sp                                 ; $7ddc: $08 $08 $08
	ld   [$0808], sp                                 ; $7ddf: $08 $08 $08
	ld   [$0608], sp                                 ; $7de2: $08 $08 $06
	ld   b, $06                                      ; $7de5: $06 $06
	ld   b, $06                                      ; $7de7: $06 $06
	ld   b, $06                                      ; $7de9: $06 $06
	ld   b, $06                                      ; $7deb: $06 $06
	ld   b, $06                                      ; $7ded: $06 $06
	ld   b, $06                                      ; $7def: $06 $06
	ld   [$0808], sp                                 ; $7df1: $08 $08 $08
	ld   [$0808], sp                                 ; $7df4: $08 $08 $08
	ld   [$0606], sp                                 ; $7df7: $08 $06 $06
	ld   b, $07                                      ; $7dfa: $06 $07
	ld   b, $06                                      ; $7dfc: $06 $06
	ld   b, $06                                      ; $7dfe: $06 $06
	ld   b, $06                                      ; $7e00: $06 $06
	ld   b, $06                                      ; $7e02: $06 $06
	ld   b, $08                                      ; $7e04: $06 $08
	ld   [$0808], sp                                 ; $7e06: $08 $08 $08
	ld   [$0808], sp                                 ; $7e09: $08 $08 $08
	dec  b                                           ; $7e0c: $05
	dec  b                                           ; $7e0d: $05
	rlca                                             ; $7e0e: $07
	rlca                                             ; $7e0f: $07
	rlca                                             ; $7e10: $07
	rlca                                             ; $7e11: $07
	rlca                                             ; $7e12: $07
	dec  b                                           ; $7e13: $05
	dec  b                                           ; $7e14: $05
	dec  b                                           ; $7e15: $05
	dec  b                                           ; $7e16: $05
	dec  b                                           ; $7e17: $05
	dec  b                                           ; $7e18: $05
	dec  b                                           ; $7e19: $05
	dec  b                                           ; $7e1a: $05
	dec  b                                           ; $7e1b: $05
	dec  b                                           ; $7e1c: $05
	dec  b                                           ; $7e1d: $05
	dec  b                                           ; $7e1e: $05
	dec  b                                           ; $7e1f: $05
	rlca                                             ; $7e20: $07
	rlca                                             ; $7e21: $07
	rlca                                             ; $7e22: $07
	rlca                                             ; $7e23: $07
	rlca                                             ; $7e24: $07
	rlca                                             ; $7e25: $07
	rlca                                             ; $7e26: $07
	rlca                                             ; $7e27: $07
	rlca                                             ; $7e28: $07
	rlca                                             ; $7e29: $07
	rlca                                             ; $7e2a: $07
	inc  bc                                          ; $7e2b: $03
	inc  bc                                          ; $7e2c: $03
	inc  bc                                          ; $7e2d: $03
	inc  bc                                          ; $7e2e: $03
	inc  bc                                          ; $7e2f: $03
	rlca                                             ; $7e30: $07
	rlca                                             ; $7e31: $07
	rlca                                             ; $7e32: $07
	rlca                                             ; $7e33: $07
	rlca                                             ; $7e34: $07
	rlca                                             ; $7e35: $07
	rlca                                             ; $7e36: $07
	rlca                                             ; $7e37: $07
	rlca                                             ; $7e38: $07
	rlca                                             ; $7e39: $07
	rlca                                             ; $7e3a: $07
	rlca                                             ; $7e3b: $07
	rlca                                             ; $7e3c: $07
	rlca                                             ; $7e3d: $07
	rlca                                             ; $7e3e: $07
	rlca                                             ; $7e3f: $07
	inc  bc                                          ; $7e40: $03
	inc  bc                                          ; $7e41: $03
	inc  bc                                          ; $7e42: $03
	rlca                                             ; $7e43: $07
	rlca                                             ; $7e44: $07
	rlca                                             ; $7e45: $07
	rlca                                             ; $7e46: $07
	rlca                                             ; $7e47: $07
	rlca                                             ; $7e48: $07
	rlca                                             ; $7e49: $07
	rlca                                             ; $7e4a: $07
	rlca                                             ; $7e4b: $07
	rlca                                             ; $7e4c: $07
	rlca                                             ; $7e4d: $07
	rlca                                             ; $7e4e: $07
	rlca                                             ; $7e4f: $07
	rlca                                             ; $7e50: $07
	rlca                                             ; $7e51: $07
	rlca                                             ; $7e52: $07
	inc  bc                                          ; $7e53: $03
	inc  bc                                          ; $7e54: $03
	inc  bc                                          ; $7e55: $03
	inc  bc                                          ; $7e56: $03
	inc  bc                                          ; $7e57: $03
	rlca                                             ; $7e58: $07
	rlca                                             ; $7e59: $07
	rlca                                             ; $7e5a: $07
	rlca                                             ; $7e5b: $07
	rlca                                             ; $7e5c: $07
	rlca                                             ; $7e5d: $07
	rlca                                             ; $7e5e: $07
	rlca                                             ; $7e5f: $07
	rlca                                             ; $7e60: $07
	rlca                                             ; $7e61: $07
	rlca                                             ; $7e62: $07
	rlca                                             ; $7e63: $07
	rlca                                             ; $7e64: $07
	rlca                                             ; $7e65: $07
	rlca                                             ; $7e66: $07
	rlca                                             ; $7e67: $07
	rlca                                             ; $7e68: $07
	rlca                                             ; $7e69: $07
	rlca                                             ; $7e6a: $07
	rlca                                             ; $7e6b: $07
	rlca                                             ; $7e6c: $07
	rlca                                             ; $7e6d: $07
	rlca                                             ; $7e6e: $07
	rlca                                             ; $7e6f: $07
	rlca                                             ; $7e70: $07
	rlca                                             ; $7e71: $07
	rlca                                             ; $7e72: $07
	rlca                                             ; $7e73: $07
	rlca                                             ; $7e74: $07
	rlca                                             ; $7e75: $07
	rlca                                             ; $7e76: $07
	rlca                                             ; $7e77: $07
	rlca                                             ; $7e78: $07
	rlca                                             ; $7e79: $07
	rlca                                             ; $7e7a: $07
	rlca                                             ; $7e7b: $07
	rlca                                             ; $7e7c: $07
	rlca                                             ; $7e7d: $07
	rlca                                             ; $7e7e: $07
	rlca                                             ; $7e7f: $07
	rlca                                             ; $7e80: $07
	rlca                                             ; $7e81: $07
	rlca                                             ; $7e82: $07
	rlca                                             ; $7e83: $07
	ld   b, h                                        ; $7e84: $44
	ld   b, h                                        ; $7e85: $44
	inc  b                                           ; $7e86: $04
	inc  b                                           ; $7e87: $04
	inc  b                                           ; $7e88: $04
	inc  b                                           ; $7e89: $04
	inc  b                                           ; $7e8a: $04
	inc  b                                           ; $7e8b: $04
	ld   b, h                                        ; $7e8c: $44
	ld   b, h                                        ; $7e8d: $44
	ld   b, h                                        ; $7e8e: $44
	ld   b, h                                        ; $7e8f: $44
	ld   b, h                                        ; $7e90: $44
	ld   b, h                                        ; $7e91: $44
	ld   b, h                                        ; $7e92: $44
	ld   b, h                                        ; $7e93: $44
	ld   b, h                                        ; $7e94: $44
	ld   b, h                                        ; $7e95: $44
	ld   b, h                                        ; $7e96: $44
	ld   b, h                                        ; $7e97: $44
	sub  b                                           ; $7e98: $90
	sub  b                                           ; $7e99: $90
	sub  b                                           ; $7e9a: $90
	sub  b                                           ; $7e9b: $90
	sub  b                                           ; $7e9c: $90
	sub  b                                           ; $7e9d: $90
	sub  b                                           ; $7e9e: $90
	sub  b                                           ; $7e9f: $90
	sub  b                                           ; $7ea0: $90
	sub  b                                           ; $7ea1: $90
	sub  b                                           ; $7ea2: $90
	sub  b                                           ; $7ea3: $90
	sub  b                                           ; $7ea4: $90
	sub  b                                           ; $7ea5: $90
	sub  b                                           ; $7ea6: $90
	sub  b                                           ; $7ea7: $90
	sub  b                                           ; $7ea8: $90
	sub  b                                           ; $7ea9: $90
	sub  b                                           ; $7eaa: $90
	sub  b                                           ; $7eab: $90
	xor  c                                           ; $7eac: $a9
	xor  c                                           ; $7ead: $a9
	xor  c                                           ; $7eae: $a9
	add  c                                           ; $7eaf: $81
	add  d                                           ; $7eb0: $82
	add  e                                           ; $7eb1: $83
	add  h                                           ; $7eb2: $84
	xor  c                                           ; $7eb3: $a9
	xor  c                                           ; $7eb4: $a9
	xor  c                                           ; $7eb5: $a9
	xor  c                                           ; $7eb6: $a9
	xor  c                                           ; $7eb7: $a9
	xor  c                                           ; $7eb8: $a9
	xor  c                                           ; $7eb9: $a9
	xor  c                                           ; $7eba: $a9
	xor  c                                           ; $7ebb: $a9
	xor  c                                           ; $7ebc: $a9
	xor  c                                           ; $7ebd: $a9
	xor  c                                           ; $7ebe: $a9
	xor  c                                           ; $7ebf: $a9
	xor  c                                           ; $7ec0: $a9
	xor  c                                           ; $7ec1: $a9
	xor  c                                           ; $7ec2: $a9
	sub  c                                           ; $7ec3: $91
	sub  d                                           ; $7ec4: $92
	sub  e                                           ; $7ec5: $93
	sub  h                                           ; $7ec6: $94
	xor  c                                           ; $7ec7: $a9
	xor  c                                           ; $7ec8: $a9
	xor  c                                           ; $7ec9: $a9
	xor  c                                           ; $7eca: $a9
	xor  c                                           ; $7ecb: $a9
	xor  c                                           ; $7ecc: $a9
	xor  c                                           ; $7ecd: $a9
	xor  c                                           ; $7ece: $a9
	xor  c                                           ; $7ecf: $a9
	xor  c                                           ; $7ed0: $a9
	xor  c                                           ; $7ed1: $a9
	xor  c                                           ; $7ed2: $a9
	xor  c                                           ; $7ed3: $a9
	xor  c                                           ; $7ed4: $a9
	xor  c                                           ; $7ed5: $a9
	xor  c                                           ; $7ed6: $a9
	add  l                                           ; $7ed7: $85
	add  [hl]                                        ; $7ed8: $86
	add  a                                           ; $7ed9: $87
	adc  b                                           ; $7eda: $88
	adc  c                                           ; $7edb: $89
	adc  d                                           ; $7edc: $8a
	adc  e                                           ; $7edd: $8b
	xor  c                                           ; $7ede: $a9
	xor  c                                           ; $7edf: $a9
	xor  c                                           ; $7ee0: $a9
	xor  c                                           ; $7ee1: $a9
	xor  c                                           ; $7ee2: $a9
	xor  c                                           ; $7ee3: $a9
	xor  c                                           ; $7ee4: $a9
	xor  c                                           ; $7ee5: $a9
	xor  c                                           ; $7ee6: $a9
	xor  c                                           ; $7ee7: $a9
	xor  c                                           ; $7ee8: $a9
	xor  c                                           ; $7ee9: $a9
	xor  c                                           ; $7eea: $a9
	sub  l                                           ; $7eeb: $95
	sub  [hl]                                        ; $7eec: $96
	sub  a                                           ; $7eed: $97
	sbc  b                                           ; $7eee: $98
	sbc  c                                           ; $7eef: $99
	sbc  d                                           ; $7ef0: $9a
	sbc  e                                           ; $7ef1: $9b
	xor  c                                           ; $7ef2: $a9
	xor  c                                           ; $7ef3: $a9
	xor  c                                           ; $7ef4: $a9
	xor  c                                           ; $7ef5: $a9
	xor  c                                           ; $7ef6: $a9
	xor  c                                           ; $7ef7: $a9
	xor  c                                           ; $7ef8: $a9
	xor  c                                           ; $7ef9: $a9
	xor  c                                           ; $7efa: $a9
	xor  c                                           ; $7efb: $a9
	add  b                                           ; $7efc: $80
	add  b                                           ; $7efd: $80
	add  b                                           ; $7efe: $80
	add  b                                           ; $7eff: $80
	adc  l                                           ; $7f00: $8d
	adc  [hl]                                        ; $7f01: $8e
	add  b                                           ; $7f02: $80
	add  b                                           ; $7f03: $80
	add  b                                           ; $7f04: $80
	add  b                                           ; $7f05: $80
	add  b                                           ; $7f06: $80
	add  b                                           ; $7f07: $80
	add  b                                           ; $7f08: $80
	add  b                                           ; $7f09: $80
	add  b                                           ; $7f0a: $80
	add  b                                           ; $7f0b: $80
	add  b                                           ; $7f0c: $80
	add  b                                           ; $7f0d: $80
	add  b                                           ; $7f0e: $80
	add  b                                           ; $7f0f: $80
	xor  c                                           ; $7f10: $a9
	xor  c                                           ; $7f11: $a9
	xor  c                                           ; $7f12: $a9
	sbc  h                                           ; $7f13: $9c
	sbc  l                                           ; $7f14: $9d
	sbc  [hl]                                        ; $7f15: $9e
	sbc  a                                           ; $7f16: $9f
	xor  c                                           ; $7f17: $a9
	xor  c                                           ; $7f18: $a9
	add  b                                           ; $7f19: $80
	add  c                                           ; $7f1a: $81
	add  d                                           ; $7f1b: $82
	add  e                                           ; $7f1c: $83
	add  h                                           ; $7f1d: $84
	add  l                                           ; $7f1e: $85
	add  [hl]                                        ; $7f1f: $86
	add  a                                           ; $7f20: $87
	adc  b                                           ; $7f21: $88
	adc  c                                           ; $7f22: $89
	xor  c                                           ; $7f23: $a9
	xor  c                                           ; $7f24: $a9
	xor  c                                           ; $7f25: $a9
	xor  c                                           ; $7f26: $a9
	and  b                                           ; $7f27: $a0
	and  c                                           ; $7f28: $a1
	and  d                                           ; $7f29: $a2
	and  e                                           ; $7f2a: $a3
	xor  c                                           ; $7f2b: $a9
	xor  c                                           ; $7f2c: $a9
	sub  b                                           ; $7f2d: $90
	sub  c                                           ; $7f2e: $91
	sub  d                                           ; $7f2f: $92
	sub  e                                           ; $7f30: $93
	sub  h                                           ; $7f31: $94
	sub  l                                           ; $7f32: $95
	sub  [hl]                                        ; $7f33: $96
	sub  a                                           ; $7f34: $97
	sbc  b                                           ; $7f35: $98
	sbc  c                                           ; $7f36: $99
	xor  c                                           ; $7f37: $a9
	xor  c                                           ; $7f38: $a9
	xor  c                                           ; $7f39: $a9
	xor  c                                           ; $7f3a: $a9
	or   b                                           ; $7f3b: $b0
	or   c                                           ; $7f3c: $b1
	or   d                                           ; $7f3d: $b2
	or   e                                           ; $7f3e: $b3
	xor  c                                           ; $7f3f: $a9
	and  d                                           ; $7f40: $a2
	and  e                                           ; $7f41: $a3
	and  h                                           ; $7f42: $a4
	and  l                                           ; $7f43: $a5
	and  [hl]                                        ; $7f44: $a6
	and  a                                           ; $7f45: $a7
	xor  b                                           ; $7f46: $a8
	xor  c                                           ; $7f47: $a9
	xor  d                                           ; $7f48: $aa
	xor  e                                           ; $7f49: $ab
	xor  h                                           ; $7f4a: $ac
	xor  l                                           ; $7f4b: $ad
	xor  c                                           ; $7f4c: $a9
	xor  c                                           ; $7f4d: $a9
	and  h                                           ; $7f4e: $a4
	and  l                                           ; $7f4f: $a5
	and  [hl]                                        ; $7f50: $a6
	and  a                                           ; $7f51: $a7
	xor  b                                           ; $7f52: $a8
	xor  c                                           ; $7f53: $a9
	xor  c                                           ; $7f54: $a9
	xor  c                                           ; $7f55: $a9
	xor  c                                           ; $7f56: $a9
	xor  c                                           ; $7f57: $a9
	xor  c                                           ; $7f58: $a9
	adc  d                                           ; $7f59: $8a
	adc  e                                           ; $7f5a: $8b
	adc  h                                           ; $7f5b: $8c
	adc  l                                           ; $7f5c: $8d
	adc  [hl]                                        ; $7f5d: $8e
	adc  a                                           ; $7f5e: $8f
	and  b                                           ; $7f5f: $a0
	xor  c                                           ; $7f60: $a9
	xor  c                                           ; $7f61: $a9
	or   h                                           ; $7f62: $b4
	or   l                                           ; $7f63: $b5
	or   [hl]                                        ; $7f64: $b6
	or   a                                           ; $7f65: $b7
	cp   b                                           ; $7f66: $b8
	cp   c                                           ; $7f67: $b9
	xor  c                                           ; $7f68: $a9
	xor  c                                           ; $7f69: $a9
	xor  c                                           ; $7f6a: $a9
	xor  c                                           ; $7f6b: $a9
	xor  c                                           ; $7f6c: $a9
	sbc  d                                           ; $7f6d: $9a
	sbc  e                                           ; $7f6e: $9b
	sbc  h                                           ; $7f6f: $9c
	sbc  l                                           ; $7f70: $9d
	sbc  [hl]                                        ; $7f71: $9e
	sbc  a                                           ; $7f72: $9f
	and  c                                           ; $7f73: $a1
	add  b                                           ; $7f74: $80
	add  b                                           ; $7f75: $80
	xor  e                                           ; $7f76: $ab
	xor  h                                           ; $7f77: $ac
	xor  l                                           ; $7f78: $ad
	xor  [hl]                                        ; $7f79: $ae
	xor  a                                           ; $7f7a: $af
	add  b                                           ; $7f7b: $80
	add  b                                           ; $7f7c: $80
	add  b                                           ; $7f7d: $80
	add  b                                           ; $7f7e: $80
	add  b                                           ; $7f7f: $80
	add  b                                           ; $7f80: $80
	add  b                                           ; $7f81: $80
	add  b                                           ; $7f82: $80
	add  b                                           ; $7f83: $80
	add  b                                           ; $7f84: $80
	add  b                                           ; $7f85: $80
	add  b                                           ; $7f86: $80
	add  b                                           ; $7f87: $80
	xor  c                                           ; $7f88: $a9
	cp   d                                           ; $7f89: $ba
	cp   e                                           ; $7f8a: $bb
	cp   h                                           ; $7f8b: $bc
	cp   l                                           ; $7f8c: $bd
	cp   [hl]                                        ; $7f8d: $be
	cp   a                                           ; $7f8e: $bf
	rst  $28                                         ; $7f8f: $ef
	xor  c                                           ; $7f90: $a9
	xor  c                                           ; $7f91: $a9
	xor  c                                           ; $7f92: $a9
	pop  hl                                          ; $7f93: $e1
	ldh  [c], a                                      ; $7f94: $e2
	db   $e3                                         ; $7f95: $e3
	db   $e4                                         ; $7f96: $e4
	push hl                                          ; $7f97: $e5
	xor  c                                           ; $7f98: $a9
	xor  c                                           ; $7f99: $a9
	xor  c                                           ; $7f9a: $a9
	xor  c                                           ; $7f9b: $a9
	ret  nz                                          ; $7f9c: $c0

	pop  bc                                          ; $7f9d: $c1
	jp   nz, $c4c3                                   ; $7f9e: $c2 $c3 $c4

	push bc                                          ; $7fa1: $c5
	add  $c7                                         ; $7fa2: $c6 $c7
	xor  c                                           ; $7fa4: $a9
	xor  c                                           ; $7fa5: $a9
	xor  c                                           ; $7fa6: $a9
	xor  c                                           ; $7fa7: $a9
	and  $e7                                         ; $7fa8: $e6 $e7
	add  sp, -$57                                    ; $7faa: $e8 $a9
	xor  c                                           ; $7fac: $a9
	xor  c                                           ; $7fad: $a9
	xor  c                                           ; $7fae: $a9
	xor  c                                           ; $7faf: $a9
	ret  nc                                          ; $7fb0: $d0

	pop  de                                          ; $7fb1: $d1
	jp   nc, $d4d3                                   ; $7fb2: $d2 $d3 $d4

	push de                                          ; $7fb5: $d5
	sub  $d7                                         ; $7fb6: $d6 $d7
	xor  c                                           ; $7fb8: $a9
	xor  c                                           ; $7fb9: $a9
	xor  c                                           ; $7fba: $a9
	jp   hl                                          ; $7fbb: $e9


	ld   [$eceb], a                                  ; $7fbc: $ea $eb $ec
	db   $ed                                         ; $7fbf: $ed
	xor  c                                           ; $7fc0: $a9
	xor  c                                           ; $7fc1: $a9
	xor  c                                           ; $7fc2: $a9
	xor  c                                           ; $7fc3: $a9
	xor  c                                           ; $7fc4: $a9
	xor  c                                           ; $7fc5: $a9
	ret  z                                           ; $7fc6: $c8

	ret                                              ; $7fc7: $c9


	jp   z, $cccb                                    ; $7fc8: $ca $cb $cc

	xor  c                                           ; $7fcb: $a9
	xor  c                                           ; $7fcc: $a9
	xor  c                                           ; $7fcd: $a9
	xor  c                                           ; $7fce: $a9
	xor  c                                           ; $7fcf: $a9
	xor  c                                           ; $7fd0: $a9
	xor  c                                           ; $7fd1: $a9
	xor  c                                           ; $7fd2: $a9
	xor  c                                           ; $7fd3: $a9
	xor  c                                           ; $7fd4: $a9
	xor  c                                           ; $7fd5: $a9
	xor  c                                           ; $7fd6: $a9
	xor  c                                           ; $7fd7: $a9
	xor  c                                           ; $7fd8: $a9
	xor  c                                           ; $7fd9: $a9
	ret  c                                           ; $7fda: $d8

	reti                                             ; $7fdb: $d9


	jp   c, $dcdb                                    ; $7fdc: $da $db $dc

	db   $dd                                         ; $7fdf: $dd
	xor  c                                           ; $7fe0: $a9
	xor  c                                           ; $7fe1: $a9
	xor  c                                           ; $7fe2: $a9
	xor  c                                           ; $7fe3: $a9
	xor  c                                           ; $7fe4: $a9
	xor  c                                           ; $7fe5: $a9
	xor  c                                           ; $7fe6: $a9
	xor  c                                           ; $7fe7: $a9
	xor  c                                           ; $7fe8: $a9
	xor  c                                           ; $7fe9: $a9
	xor  c                                           ; $7fea: $a9
	xor  c                                           ; $7feb: $a9
	sub  b                                           ; $7fec: $90
	sub  b                                           ; $7fed: $90
	call $cfce                                       ; $7fee: $cd $ce $cf
	sbc  $df                                         ; $7ff1: $de $df
	ldh  [$90], a                                    ; $7ff3: $e0 $90
	sub  b                                           ; $7ff5: $90
	sub  b                                           ; $7ff6: $90
	sub  b                                           ; $7ff7: $90
	sub  b                                           ; $7ff8: $90
	sub  b                                           ; $7ff9: $90
	sub  b                                           ; $7ffa: $90
	sub  b                                           ; $7ffb: $90
	sub  b                                           ; $7ffc: $90
	sub  b                                           ; $7ffd: $90
	sub  b                                           ; $7ffe: $90
	sub  b                                           ; $7fff: $90
