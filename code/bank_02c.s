; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

	ld   [$0904], sp                                 ; $4000: $08 $04 $09
	ld   c, $00                                      ; $4003: $0e $00
	add  hl, bc                                      ; $4005: $09
	nop                                              ; $4006: $00
	jr   jr_02c_4009                                 ; $4007: $18 $00

jr_02c_4009:
	jr   nz, jr_02c_400b                             ; $4009: $20 $00

jr_02c_400b:
	ld   d, b                                        ; $400b: $50
	db   $10                                         ; $400c: $10
	add  b                                           ; $400d: $80
	inc  c                                           ; $400e: $0c
	add  c                                           ; $400f: $81
	nop                                              ; $4010: $00
	add  b                                           ; $4011: $80
	inc  b                                           ; $4012: $04
	add  b                                           ; $4013: $80
	inc  c                                           ; $4014: $0c
	rlca                                             ; $4015: $07
	nop                                              ; $4016: $00
	ld   [$2d29], sp                                 ; $4017: $08 $29 $2d
	ld   a, l                                        ; $401a: $7d
	ld   sp, hl                                      ; $401b: $f9
	add  hl, de                                      ; $401c: $19
	ld   de, $cf80                                   ; $401d: $11 $80 $cf
	inc  c                                           ; $4020: $0c
	rst  ToBoot                                         ; $4021: $c7
	rst  JumpTable                                         ; $4022: $df

jr_02c_4023:
	jr   @+$01                                       ; $4023: $18 $ff

	nop                                              ; $4025: $00
	ld   [hl], b                                     ; $4026: $70
	nop                                              ; $4027: $00
	adc  b                                           ; $4028: $88
	nop                                              ; $4029: $00
	inc  b                                           ; $402a: $04
	nop                                              ; $402b: $00
	ld   a, [bc]                                     ; $402c: $0a
	ld   [$7080], sp                                 ; $402d: $08 $80 $70
	add  c                                           ; $4030: $81
	nop                                              ; $4031: $00
	add  b                                           ; $4032: $80
	add  b                                           ; $4033: $80
	add  b                                           ; $4034: $80
	sub  b                                           ; $4035: $90
	rlca                                             ; $4036: $07
	add  b                                           ; $4037: $80
	sub  b                                           ; $4038: $90
	sub  h                                           ; $4039: $94
	call nc, $9fde                                   ; $403a: $d4 $de $9f
	sbc  b                                           ; $403d: $98
	adc  b                                           ; $403e: $88
	add  b                                           ; $403f: $80
	di                                               ; $4040: $f3
	inc  bc                                          ; $4041: $03
	db   $e3                                         ; $4042: $e3
	ei                                               ; $4043: $fb
	jr   @+$01                                       ; $4044: $18 $ff

	add  e                                           ; $4046: $83
	nop                                              ; $4047: $00
	ld   [$0030], sp                                 ; $4048: $08 $30 $00
	inc  c                                           ; $404b: $0c
	nop                                              ; $404c: $00
	or   b                                           ; $404d: $b0
	jr   nc, jr_02c_409e                             ; $404e: $30 $4e

	inc  c                                           ; $4050: $0c
	ld   b, d                                        ; $4051: $42
	add  c                                           ; $4052: $81
	nop                                              ; $4053: $00
	ld   [bc], a                                     ; $4054: $02
	adc  h                                           ; $4055: $8c
	nop                                              ; $4056: $00
	db   $30, $89                                    ; $4057: $30 $89
	nop                                              ; $4059: $00
	add  hl, bc                                      ; $405a: $09
	add  e                                           ; $405b: $83
	ld   a, l                                        ; $405c: $7d
	ld   a, a                                        ; $405d: $7f
	ld   a, [hl]                                     ; $405e: $7e
	add  d                                           ; $405f: $82
	ld   [bc], a                                     ; $4060: $02
	ld   c, h                                        ; $4061: $4c
	inc  c                                           ; $4062: $0c
	halt                                             ; $4063: $76
	ld   [hl], $80                                   ; $4064: $36 $80
	nop                                              ; $4066: $00
	inc  b                                           ; $4067: $04
	add  a                                           ; $4068: $87
	ld   [hl], b                                     ; $4069: $70
	ld   [hl], a                                     ; $406a: $77
	nop                                              ; $406b: $00
	rst  $38                                         ; $406c: $ff
	adc  l                                           ; $406d: $8d
	nop                                              ; $406e: $00
	add  hl, bc                                      ; $406f: $09
	pop  bc                                          ; $4070: $c1
	cp   [hl]                                        ; $4071: $be
	cp   $7e                                         ; $4072: $fe $7e
	pop  bc                                          ; $4074: $c1
	ret  nz                                          ; $4075: $c0

	ld   [hl-], a                                    ; $4076: $32
	jr   nc, @+$70                                   ; $4077: $30 $6e

	ld   l, h                                        ; $4079: $6c
	add  b                                           ; $407a: $80
	nop                                              ; $407b: $00
	inc  b                                           ; $407c: $04
	pop  hl                                          ; $407d: $e1
	ld   c, $ee                                      ; $407e: $0e $ee
	nop                                              ; $4080: $00
	rst  $38                                         ; $4081: $ff
	sub  b                                           ; $4082: $90
	nop                                              ; $4083: $00
	add  b                                           ; $4084: $80
	ld   b, b                                        ; $4085: $40
	add  b                                           ; $4086: $80
	nop                                              ; $4087: $00
	add  b                                           ; $4088: $80
	db   $10                                         ; $4089: $10
	add  b                                           ; $408a: $80
	nop                                              ; $408b: $00
	add  b                                           ; $408c: $80
	inc  h                                           ; $408d: $24
	add  e                                           ; $408e: $83
	nop                                              ; $408f: $00
	ld   [$0030], sp                                 ; $4090: $08 $30 $00
	inc  c                                           ; $4093: $0c
	nop                                              ; $4094: $00
	or   b                                           ; $4095: $b0
	jr   nc, @+$50                                   ; $4096: $30 $4e

	inc  c                                           ; $4098: $0c
	ld   b, d                                        ; $4099: $42
	add  c                                           ; $409a: $81
	nop                                              ; $409b: $00
	ld   [bc], a                                     ; $409c: $02
	adc  h                                           ; $409d: $8c

jr_02c_409e:
	nop                                              ; $409e: $00
	jr   nc, jr_02c_4023                             ; $409f: $30 $82

	nop                                              ; $40a1: $00
	add  b                                           ; $40a2: $80
	sub  b                                           ; $40a3: $90
	add  b                                           ; $40a4: $80
	nop                                              ; $40a5: $00
	add  b                                           ; $40a6: $80
	ld   c, b                                        ; $40a7: $48
	add  l                                           ; $40a8: $85
	nop                                              ; $40a9: $00
	ld   [$0030], sp                                 ; $40aa: $08 $30 $00
	inc  c                                           ; $40ad: $0c
	nop                                              ; $40ae: $00
	or   b                                           ; $40af: $b0
	jr   nc, jr_02c_4100                             ; $40b0: $30 $4e

	inc  c                                           ; $40b2: $0c
	ld   b, d                                        ; $40b3: $42
	add  c                                           ; $40b4: $81
	nop                                              ; $40b5: $00
	rlca                                             ; $40b6: $07
	adc  h                                           ; $40b7: $8c
	nop                                              ; $40b8: $00
	ld   c, $00                                      ; $40b9: $0e $00
	ld   hl, $2000                                   ; $40bb: $21 $00 $20
	nop                                              ; $40be: $00
	add  b                                           ; $40bf: $80
	db   $10                                         ; $40c0: $10
	ld   bc, $1050                                   ; $40c1: $01 $50 $10
	add  b                                           ; $40c4: $80
	inc  c                                           ; $40c5: $0c
	add  c                                           ; $40c6: $81
	nop                                              ; $40c7: $00
	add  b                                           ; $40c8: $80
	inc  b                                           ; $40c9: $04
	ld   bc, $8000                                   ; $40ca: $01 $00 $80
	add  b                                           ; $40cd: $80
	xor  [hl]                                        ; $40ce: $ae
	add  b                                           ; $40cf: $80
	db   $e3                                         ; $40d0: $e3
	add  b                                           ; $40d1: $80
	dec  e                                           ; $40d2: $1d
	add  b                                           ; $40d3: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40d4: $cf
	ld   a, [bc]                                     ; $40d5: $0a
	rst  ToBoot                                         ; $40d6: $c7
	rst  JumpTable                                         ; $40d7: $df
	jr   jr_02c_4156                                 ; $40d8: $18 $7c

	ld   a, l                                        ; $40da: $7d
	ld   c, $00                                      ; $40db: $0e $00
	ld   [$0400], sp                                 ; $40dd: $08 $00 $04
	nop                                              ; $40e0: $00
	add  b                                           ; $40e1: $80
	ld   [$0a01], sp                                 ; $40e2: $08 $01 $0a
	ld   [$7080], sp                                 ; $40e5: $08 $80 $70
	add  c                                           ; $40e8: $81
	nop                                              ; $40e9: $00
	add  b                                           ; $40ea: $80
	sub  b                                           ; $40eb: $90
	ld   bc, $8180                                   ; $40ec: $01 $80 $81
	add  b                                           ; $40ef: $80
	sbc  l                                           ; $40f0: $9d
	add  b                                           ; $40f1: $80
	rst  ToBoot                                         ; $40f2: $c7
	add  b                                           ; $40f3: $80
	cp   b                                           ; $40f4: $b8
	add  b                                           ; $40f5: $80
	di                                               ; $40f6: $f3
	ld   [$fbe3], sp                                 ; $40f7: $08 $e3 $fb
	jr   jr_02c_413a                                 ; $40fa: $18 $3e

	cp   [hl]                                        ; $40fc: $be
	adc  [hl]                                        ; $40fd: $8e
	ld   c, $d6                                      ; $40fe: $0e $d6

jr_02c_4100:
	ld   d, $80                                      ; $4100: $16 $80
	ld   [$760a], sp                                 ; $4102: $08 $0a $76
	ld   [hl], $39                                   ; $4105: $36 $39
	jr   c, jr_02c_410b                              ; $4107: $38 $02

	nop                                              ; $4109: $00
	add  h                                           ; $410a: $84

jr_02c_410b:
	ld   [hl], b                                     ; $410b: $70
	ld   [hl], a                                     ; $410c: $77
	nop                                              ; $410d: $00
	rst  $38                                         ; $410e: $ff
	adc  l                                           ; $410f: $8d
	nop                                              ; $4110: $00
	inc  bc                                          ; $4111: $03
	adc  a                                           ; $4112: $8f
	ld   [hl], b                                     ; $4113: $70
	db   $eb                                         ; $4114: $eb
	add  sp, -$80                                    ; $4115: $e8 $80
	db   $10                                         ; $4117: $10
	ld   a, [bc]                                     ; $4118: $0a
	ld   l, [hl]                                     ; $4119: $6e
	ld   l, h                                        ; $411a: $6c
	sbc  h                                           ; $411b: $9c
	inc  e                                           ; $411c: $1c
	ld   b, b                                        ; $411d: $40
	nop                                              ; $411e: $00
	ld   hl, $ee0e                                   ; $411f: $21 $0e $ee
	nop                                              ; $4122: $00
	rst  $38                                         ; $4123: $ff
	sub  e                                           ; $4124: $93
	nop                                              ; $4125: $00
	dec  b                                           ; $4126: $05
	ld   a, $00                                      ; $4127: $3e $00
	ld   hl, $2800                                   ; $4129: $21 $00 $28
	ld   [$1080], sp                                 ; $412c: $08 $80 $10
	ld   bc, $1050                                   ; $412f: $01 $50 $10
	add  b                                           ; $4132: $80
	inc  c                                           ; $4133: $0c
	add  c                                           ; $4134: $81
	nop                                              ; $4135: $00
	add  c                                           ; $4136: $81
	inc  b                                           ; $4137: $04
	nop                                              ; $4138: $00
	add  h                                           ; $4139: $84

jr_02c_413a:
	add  b                                           ; $413a: $80
	and  b                                           ; $413b: $a0
	dec  b                                           ; $413c: $05
	rst  $38                                         ; $413d: $ff
	ccf                                              ; $413e: $3f
	ld   de, $0f31                                   ; $413f: $11 $31 $0f
	db   $10                                         ; $4142: $10
	add  e                                           ; $4143: $83
	nop                                              ; $4144: $00
	dec  b                                           ; $4145: $05
	ldh  a, [rP1]                                    ; $4146: $f0 $00
	ld   [$1400], sp                                 ; $4148: $08 $00 $14
	db   $10                                         ; $414b: $10
	add  b                                           ; $414c: $80
	ld   [$0a01], sp                                 ; $414d: $08 $01 $0a
	ld   [$7080], sp                                 ; $4150: $08 $80 $70
	add  c                                           ; $4153: $81
	nop                                              ; $4154: $00
	add  b                                           ; $4155: $80

jr_02c_4156:
	add  b                                           ; $4156: $80
	ld   bc, $9190                                   ; $4157: $01 $90 $91
	add  b                                           ; $415a: $80
	sub  l                                           ; $415b: $95
	dec  b                                           ; $415c: $05
	rst  $38                                         ; $415d: $ff
	db   $fc                                         ; $415e: $fc
	adc  b                                           ; $415f: $88
	adc  h                                           ; $4160: $8c
	ldh  a, [$08]                                    ; $4161: $f0 $08
	adc  l                                           ; $4163: $8d
	nop                                              ; $4164: $00
	add  d                                           ; $4165: $82
	inc  b                                           ; $4166: $04
	add  b                                           ; $4167: $80
	ld   b, $01                                      ; $4168: $06 $01
	ld   a, [bc]                                     ; $416a: $0a
	ld   c, $80                                      ; $416b: $0e $80
	rrca                                             ; $416d: $0f
	nop                                              ; $416e: $00
	dec  bc                                          ; $416f: $0b
	add  c                                           ; $4170: $81
	rrca                                             ; $4171: $0f
	add  b                                           ; $4172: $80
	ld   b, $03                                      ; $4173: $06 $03
	inc  c                                           ; $4175: $0c
	nop                                              ; $4176: $00
	jr   nc, jr_02c_4179                             ; $4177: $30 $00

jr_02c_4179:
	add  b                                           ; $4179: $80
	inc  c                                           ; $417a: $0c
	ld   [bc], a                                     ; $417b: $02
	ld   [hl], e                                     ; $417c: $73
	jr   nc, @+$45                                   ; $417d: $30 $43

	add  c                                           ; $417f: $81
	nop                                              ; $4180: $00
	inc  b                                           ; $4181: $04
	ld   sp, $7200                                   ; $4182: $31 $00 $72
	nop                                              ; $4185: $00
	ld   a, a                                        ; $4186: $7f
	adc  l                                           ; $4187: $8d
	nop                                              ; $4188: $00
	db   $10                                         ; $4189: $10
	rra                                              ; $418a: $1f
	rlca                                             ; $418b: $07
	ccf                                              ; $418c: $3f
	jr   jr_02c_41d3                                 ; $418d: $18 $44

	dec  b                                           ; $418f: $05
	cp   e                                           ; $4190: $bb
	ld   a, [hl-]                                    ; $4191: $3a
	cp   l                                           ; $4192: $bd
	dec  a                                           ; $4193: $3d
	add  [hl]                                        ; $4194: $86
	ld   b, $03                                      ; $4195: $06 $03
	cp   e                                           ; $4197: $bb
	cp   b                                           ; $4198: $b8
	nop                                              ; $4199: $00
	rst  $38                                         ; $419a: $ff
	adc  l                                           ; $419b: $8d
	nop                                              ; $419c: $00
	ld   [bc], a                                     ; $419d: $02
	rst  $38                                         ; $419e: $ff
	nop                                              ; $419f: $00
	rst  $38                                         ; $41a0: $ff
	sbc  e                                           ; $41a1: $9b
	nop                                              ; $41a2: $00
	rla                                              ; $41a3: $17
	rlca                                             ; $41a4: $07
	ld   [$1f07], sp                                 ; $41a5: $08 $07 $1f
	dec  bc                                          ; $41a8: $0b
	inc  sp                                          ; $41a9: $33
	or   a                                           ; $41aa: $b7
	ld   l, a                                        ; $41ab: $6f
	adc  b                                           ; $41ac: $88
	ld   e, $02                                      ; $41ad: $1e $02
	inc  a                                           ; $41af: $3c
	ld   e, d                                        ; $41b0: $5a
	ld   a, d                                        ; $41b1: $7a
	ld   [hl], b                                     ; $41b2: $70
	or   $e8                                         ; $41b3: $f6 $e8
	ldh  [$cd], a                                    ; $41b5: $e0 $cd
	ret  nz                                          ; $41b7: $c0

	add  [hl]                                        ; $41b8: $86
	sbc  b                                           ; $41b9: $98
	sub  d                                           ; $41ba: $92
	sub  b                                           ; $41bb: $90
	add  b                                           ; $41bc: $80
	nop                                              ; $41bd: $00
	add  hl, hl                                      ; $41be: $29
	ret  nc                                          ; $41bf: $d0

	nop                                              ; $41c0: $00
	ld   [$d700], sp                                 ; $41c1: $08 $00 $d7
	nop                                              ; $41c4: $00
	ld   l, a                                        ; $41c5: $6f
	nop                                              ; $41c6: $00
	ld   hl, sp-$80                                  ; $41c7: $f8 $80
	or   h                                           ; $41c9: $b4
	cp   b                                           ; $41ca: $b8
	ld   a, [$68fc]                                  ; $41cb: $fa $fc $68
	ld   a, h                                        ; $41ce: $7c
	ld   b, b                                        ; $41cf: $40
	ld   e, b                                        ; $41d0: $58
	ld   c, l                                        ; $41d1: $4d
	ld   c, h                                        ; $41d2: $4c

jr_02c_41d3:
	ld   b, $f6                                      ; $41d3: $06 $f6
	ld   a, [bc]                                     ; $41d5: $0a
	ld   [bc], a                                     ; $41d6: $02
	inc  a                                           ; $41d7: $3c
	nop                                              ; $41d8: $00
	ld   d, h                                        ; $41d9: $54
	jr   z, jr_02c_4226                              ; $41da: $28 $4a

	ld   [$0002], sp                                 ; $41dc: $08 $02 $00
	dec  bc                                          ; $41df: $0b
	nop                                              ; $41e0: $00
	stop                                             ; $41e1: $10 $00
	db   $eb                                         ; $41e3: $eb
	nop                                              ; $41e4: $00
	ld   [hl], l                                     ; $41e5: $75
	add  e                                           ; $41e6: $83
	add  b                                           ; $41e7: $80
	add  c                                           ; $41e8: $81
	add  b                                           ; $41e9: $80
	ld   a, c                                        ; $41ea: $79
	add  b                                           ; $41eb: $80
	rra                                              ; $41ec: $1f
	rlca                                             ; $41ed: $07
	ccf                                              ; $41ee: $3f
	nop                                              ; $41ef: $00
	jr   nc, jr_02c_4262                             ; $41f0: $30 $70

	sbc  a                                           ; $41f2: $9f
	ldh  a, [$ef]                                    ; $41f3: $f0 $ef
	rst  $38                                         ; $41f5: $ff
	adc  [hl]                                        ; $41f6: $8e
	nop                                              ; $41f7: $00
	inc  bc                                          ; $41f8: $03
	ld   b, c                                        ; $41f9: $41
	pop  bc                                          ; $41fa: $c1
	ld   bc, $8081                                   ; $41fb: $01 $81 $80
	ld   e, $80                                      ; $41fe: $1e $80
	ld   hl, sp+$07                                  ; $4200: $f8 $07
	db   $fc                                         ; $4202: $fc
	nop                                              ; $4203: $00
	inc  c                                           ; $4204: $0c
	ld   c, $f9                                      ; $4205: $0e $f9
	rrca                                             ; $4207: $0f
	rst  $30                                         ; $4208: $f7
	rst  $38                                         ; $4209: $ff
	adc  a                                           ; $420a: $8f
	nop                                              ; $420b: $00
	add  c                                           ; $420c: $81
	ld   a, a                                        ; $420d: $7f
	nop                                              ; $420e: $00
	ld   [hl], e                                     ; $420f: $73
	add  c                                           ; $4210: $81
	inc  sp                                          ; $4211: $33
	nop                                              ; $4212: $00
	ccf                                              ; $4213: $3f
	add  b                                           ; $4214: $80
	rra                                              ; $4215: $1f
	add  b                                           ; $4216: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4217: $cf
	ld   b, $c7                                      ; $4218: $06 $c7
	rst  $10                                         ; $421a: $d7
	db   $10                                         ; $421b: $10
	ld   a, h                                        ; $421c: $7c
	ld   a, l                                        ; $421d: $7d
	ld   a, a                                        ; $421e: $7f
	ld   a, [hl]                                     ; $421f: $7e
	add  b                                           ; $4220: $80
	rlca                                             ; $4221: $07

Jump_02c_4222:
	adc  b                                           ; $4222: $88
	nop                                              ; $4223: $00
	ld   b, b                                        ; $4224: $40
	rlca                                             ; $4225: $07

jr_02c_4226:
	ld   [$1f07], sp                                 ; $4226: $08 $07 $1f
	dec  bc                                          ; $4229: $0b
	inc  sp                                          ; $422a: $33
	or   a                                           ; $422b: $b7
	ld   l, a                                        ; $422c: $6f
	adc  b                                           ; $422d: $88
	ld   e, $02                                      ; $422e: $1e $02
	inc  a                                           ; $4230: $3c
	ld   e, d                                        ; $4231: $5a
	ld   a, d                                        ; $4232: $7a
	ld   [hl], b                                     ; $4233: $70
	or   $e8                                         ; $4234: $f6 $e8
	ldh  [$cd], a                                    ; $4236: $e0 $cd
	ret  nz                                          ; $4238: $c0

	add  [hl]                                        ; $4239: $86
	sbc  b                                           ; $423a: $98
	sub  d                                           ; $423b: $92
	sub  b                                           ; $423c: $90
	ld   bc, $d300                                   ; $423d: $01 $00 $d3
	ld   bc, $0109                                   ; $4240: $01 $09 $01
	call nc, Call_02c_6f00                           ; $4243: $d4 $00 $6f
	nop                                              ; $4246: $00
	ld   hl, sp-$80                                  ; $4247: $f8 $80
	or   h                                           ; $4249: $b4
	cp   b                                           ; $424a: $b8
	ld   a, [$68fc]                                  ; $424b: $fa $fc $68
	ld   a, h                                        ; $424e: $7c
	ld   b, b                                        ; $424f: $40
	ld   e, b                                        ; $4250: $58
	ld   c, l                                        ; $4251: $4d
	ld   c, h                                        ; $4252: $4c
	ld   b, $f6                                      ; $4253: $06 $f6
	ld   a, [bc]                                     ; $4255: $0a
	ld   [bc], a                                     ; $4256: $02
	inc  a                                           ; $4257: $3c
	nop                                              ; $4258: $00
	ld   d, h                                        ; $4259: $54
	jr   z, jr_02c_42a6                              ; $425a: $28 $4a

	ld   [$0082], sp                                 ; $425c: $08 $82 $00
	res  0, b                                        ; $425f: $cb $80
	sub  b                                           ; $4261: $90

jr_02c_4262:
	add  b                                           ; $4262: $80
	dec  hl                                          ; $4263: $2b
	nop                                              ; $4264: $00
	ld   [hl], l                                     ; $4265: $75
	add  b                                           ; $4266: $80
	add  d                                           ; $4267: $82
	nop                                              ; $4268: $00
	add  e                                           ; $4269: $83
	add  b                                           ; $426a: $80
	ld   a, e                                        ; $426b: $7b
	nop                                              ; $426c: $00
	ld   [$0981], sp                                 ; $426d: $08 $81 $09
	inc  bc                                          ; $4270: $03
	rrca                                             ; $4271: $0f
	nop                                              ; $4272: $00
	dec  b                                           ; $4273: $05
	ld   a, [bc]                                     ; $4274: $0a
	add  c                                           ; $4275: $81
	rrca                                             ; $4276: $0f
	add  b                                           ; $4277: $80
	nop                                              ; $4278: $00
	inc  c                                           ; $4279: $0c
	db   $10                                         ; $427a: $10
	add  hl, de                                      ; $427b: $19
	jr   jr_02c_4290                                 ; $427c: $18 $12

	jr   nc, jr_02c_4284                             ; $427e: $30 $04

	nop                                              ; $4280: $00
	jr   c, jr_02c_42f3                              ; $4281: $38 $70

	sub  b                                           ; $4283: $90

jr_02c_4284:
	ldh  a, [$ef]                                    ; $4284: $f0 $ef
	rst  $38                                         ; $4286: $ff
	add  c                                           ; $4287: $81
	ld   b, c                                        ; $4288: $41
	nop                                              ; $4289: $00
	pop  bc                                          ; $428a: $c1
	add  b                                           ; $428b: $80
	sbc  $01                                         ; $428c: $de $01
	db   $10                                         ; $428e: $10
	sub  b                                           ; $428f: $90

jr_02c_4290:
	add  b                                           ; $4290: $80
	db   $10                                         ; $4291: $10
	inc  bc                                          ; $4292: $03
	ldh  a, [rP1]                                    ; $4293: $f0 $00
	ldh  [rAUD1SWEEP], a                             ; $4295: $e0 $10
	add  c                                           ; $4297: $81
	ldh  a, [rIF]                                    ; $4298: $f0 $0f
	nop                                              ; $429a: $00
	ld   [$9800], sp                                 ; $429b: $08 $00 $98
	jr   @+$4a                                       ; $429e: $18 $48

	inc  c                                           ; $42a0: $0c
	jr   nz, jr_02c_42a3                             ; $42a1: $20 $00

jr_02c_42a3:
	inc  e                                           ; $42a3: $1c
	ld   c, $09                                      ; $42a4: $0e $09

jr_02c_42a6:
	rrca                                             ; $42a6: $0f
	rst  $30                                         ; $42a7: $f7
	rst  $38                                         ; $42a8: $ff
	nop                                              ; $42a9: $00
	add  c                                           ; $42aa: $81
	ld   a, a                                        ; $42ab: $7f
	nop                                              ; $42ac: $00
	ld   [hl], e                                     ; $42ad: $73
	add  c                                           ; $42ae: $81
	inc  sp                                          ; $42af: $33
	nop                                              ; $42b0: $00
	ccf                                              ; $42b1: $3f
	add  b                                           ; $42b2: $80
	rra                                              ; $42b3: $1f
	add  b                                           ; $42b4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42b5: $cf

jr_02c_42b6:
	inc  bc                                          ; $42b6: $03
	rst  ToBoot                                         ; $42b7: $c7
	rst  $10                                         ; $42b8: $d7
	db   $10                                         ; $42b9: $10
	ld   a, h                                        ; $42ba: $7c
	add  b                                           ; $42bb: $80
	ld   a, l                                        ; $42bc: $7d
	nop                                              ; $42bd: $00
	ld   a, h                                        ; $42be: $7c
	add  b                                           ; $42bf: $80
	inc  b                                           ; $42c0: $04
	add  b                                           ; $42c1: $80
	ld   b, $80                                      ; $42c2: $06 $80
	rlca                                             ; $42c4: $07
	add  b                                           ; $42c5: $80
	nop                                              ; $42c6: $00
	add  b                                           ; $42c7: $80
	rlca                                             ; $42c8: $07
	add  b                                           ; $42c9: $80
	nop                                              ; $42ca: $00
	inc  c                                           ; $42cb: $0c
	rrca                                             ; $42cc: $0f
	nop                                              ; $42cd: $00
	ld   [$1800], sp                                 ; $42ce: $08 $00 $18
	nop                                              ; $42d1: $00
	jr   z, jr_02c_42dc                              ; $42d2: $28 $08

	ld   b, a                                        ; $42d4: $47
	rlca                                             ; $42d5: $07
	ld   b, b                                        ; $42d6: $40
	nop                                              ; $42d7: $00
	ld   b, b                                        ; $42d8: $40
	add  d                                           ; $42d9: $82
	ld   [bc], a                                     ; $42da: $02
	add  b                                           ; $42db: $80

jr_02c_42dc:
	ld   [de], a                                     ; $42dc: $12
	inc  b                                           ; $42dd: $04
	db   $10                                         ; $42de: $10
	ld   d, d                                        ; $42df: $52
	ld   [de], a                                     ; $42e0: $12
	ld   a, [de]                                     ; $42e1: $1a
	dec  de                                          ; $42e2: $1b
	add  b                                           ; $42e3: $80
	inc  de                                          ; $42e4: $13
	rrca                                             ; $42e5: $0f
	ld   sp, $7f0f                                   ; $42e6: $31 $0f $7f
	rlca                                             ; $42e9: $07
	sbc  a                                           ; $42ea: $9f
	ld   h, b                                        ; $42eb: $60
	sub  a                                           ; $42ec: $97
	nop                                              ; $42ed: $00
	ldh  a, [rP1]                                    ; $42ee: $f0 $00
	ld   [$0400], sp                                 ; $42f0: $08 $00 $04

jr_02c_42f3:
	nop                                              ; $42f3: $00
	ld   a, [bc]                                     ; $42f4: $0a
	ld   [$3080], sp                                 ; $42f5: $08 $80 $30
	nop                                              ; $42f8: $00
	ld   bc, $0082                                   ; $42f9: $01 $82 $00
	add  c                                           ; $42fc: $81
	add  b                                           ; $42fd: $80

jr_02c_42fe:
	nop                                              ; $42fe: $00
	add  c                                           ; $42ff: $81
	add  b                                           ; $4300: $80
	add  b                                           ; $4301: $80
	ld   bc, $a2a0                                   ; $4302: $01 $a0 $a2
	add  b                                           ; $4305: $80
	ldh  [$09], a                                    ; $4306: $e0 $09
	ret  nz                                          ; $4308: $c0

	call nz, $c8c0                                   ; $4309: $c4 $c0 $c8
	nop                                              ; $430c: $00
	inc  c                                           ; $430d: $0c
	ld   h, e                                        ; $430e: $63
	ld   l, [hl]                                     ; $430f: $6e
	ld   c, $bf                                      ; $4310: $0e $bf
	add  e                                           ; $4312: $83
	ccf                                              ; $4313: $3f
	inc  bc                                          ; $4314: $03
	ld   b, l                                        ; $4315: $45
	dec  b                                           ; $4316: $05
	jr   nc, jr_02c_4319                             ; $4317: $30 $00

jr_02c_4319:
	add  b                                           ; $4319: $80
	rlca                                             ; $431a: $07
	add  b                                           ; $431b: $80
	nop                                              ; $431c: $00
	ld   bc, $0a1a                                   ; $431d: $01 $1a $0a
	add  b                                           ; $4320: $80
	nop                                              ; $4321: $00
	add  b                                           ; $4322: $80
	rrca                                             ; $4323: $0f
	add  b                                           ; $4324: $80
	ld   c, $09                                      ; $4325: $0e $09
	ld   hl, $4000                                   ; $4327: $21 $00 $40
	inc  a                                           ; $432a: $3c
	cp   l                                           ; $432b: $bd
	nop                                              ; $432c: $00
	rst  $20                                         ; $432d: $e7
	ldh  [rAUD3LEVEL], a                             ; $432e: $e0 $1c
	jr   jr_02c_42b6                                 ; $4330: $18 $84

	ld   hl, sp+$01                                  ; $4332: $f8 $01
	ld   d, h                                        ; $4334: $54
	ld   d, b                                        ; $4335: $50
	add  b                                           ; $4336: $80
	nop                                              ; $4337: $00
	add  b                                           ; $4338: $80
	ldh  a, [$80]                                    ; $4339: $f0 $80
	nop                                              ; $433b: $00
	ld   bc, $a8ac                                   ; $433c: $01 $ac $a8
	add  b                                           ; $433f: $80
	nop                                              ; $4340: $00
	add  b                                           ; $4341: $80
	jr   c, jr_02c_4346                              ; $4342: $38 $02

	cp   [hl]                                        ; $4344: $be
	inc  a                                           ; $4345: $3c

jr_02c_4346:
	ld   b, b                                        ; $4346: $40
	add  b                                           ; $4347: $80
	nop                                              ; $4348: $00
	ld   a, [bc]                                     ; $4349: $0a
	inc  e                                           ; $434a: $1c
	db   $dd                                         ; $434b: $dd
	nop                                              ; $434c: $00
	pop  hl                                          ; $434d: $e1
	nop                                              ; $434e: $00
	ld   de, $1000                                   ; $434f: $11 $00 $10
	nop                                              ; $4352: $00
	jr   nz, jr_02c_4355                             ; $4353: $20 $00

jr_02c_4355:
	add  b                                           ; $4355: $80
	db   $10                                         ; $4356: $10
	ld   bc, $0848                                   ; $4357: $01 $48 $08
	add  c                                           ; $435a: $81
	nop                                              ; $435b: $00
	add  b                                           ; $435c: $80
	ld   [bc], a                                     ; $435d: $02
	add  b                                           ; $435e: $80
	ld   [de], a                                     ; $435f: $12
	ld   bc, $4a02                                   ; $4360: $01 $02 $4a
	add  b                                           ; $4363: $80
	dec  bc                                          ; $4364: $0b
	add  c                                           ; $4365: $81
	rrca                                             ; $4366: $0f
	ld   [bc], a                                     ; $4367: $02
	daa                                              ; $4368: $27
	rrca                                             ; $4369: $0f
	rra                                              ; $436a: $1f
	add  b                                           ; $436b: $80
	rlca                                             ; $436c: $07
	ld   [$0f00], sp                                 ; $436d: $08 $00 $0f
	nop                                              ; $4370: $00
	ld   [hl], b                                     ; $4371: $70
	nop                                              ; $4372: $00
	adc  b                                           ; $4373: $88
	nop                                              ; $4374: $00
	inc  b                                           ; $4375: $04
	nop                                              ; $4376: $00
	add  b                                           ; $4377: $80
	ld   [$3201], sp                                 ; $4378: $08 $01 $32
	jr   nc, jr_02c_42fe                             ; $437b: $30 $81

	nop                                              ; $437d: $00
	add  b                                           ; $437e: $80
	ld   b, b                                        ; $437f: $40
	add  b                                           ; $4380: $80
	ld   h, b                                        ; $4381: $60
	ld   de, $2000                                   ; $4382: $11 $00 $20
	ld   a, [hl+]                                    ; $4385: $2a
	xor  d                                           ; $4386: $aa
	cp   [hl]                                        ; $4387: $be
	inc  a                                           ; $4388: $3c
	jr   c, jr_02c_43a7                              ; $4389: $38 $1c

	ldh  a, [$f8]                                    ; $438b: $f0 $f8
	ldh  [$e8], a                                    ; $438d: $e0 $e8
	nop                                              ; $438f: $00
	rlca                                             ; $4390: $07
	nop                                              ; $4391: $00
	ld   a, h                                        ; $4392: $7c
	ld   a, l                                        ; $4393: $7d
	ld   a, a                                        ; $4394: $7f
	add  c                                           ; $4395: $81
	ld   a, [hl]                                     ; $4396: $7e
	add  b                                           ; $4397: $80
	ld   b, $01                                      ; $4398: $06 $01
	push af                                          ; $439a: $f5
	dec  b                                           ; $439b: $05
	add  b                                           ; $439c: $80
	nop                                              ; $439d: $00
	add  b                                           ; $439e: $80
	dec  b                                           ; $439f: $05
	add  b                                           ; $43a0: $80
	ld   [bc], a                                     ; $43a1: $02
	inc  d                                           ; $43a2: $14
	ld   a, [de]                                     ; $43a3: $1a
	ld   a, [bc]                                     ; $43a4: $0a
	jr   nz, jr_02c_43a7                             ; $43a5: $20 $00

jr_02c_43a7:
	dec  e                                           ; $43a7: $1d
	inc  e                                           ; $43a8: $1c
	ld   a, d                                        ; $43a9: $7a
	jr   c, jr_02c_43b0                              ; $43aa: $38 $04

	nop                                              ; $43ac: $00
	add  b                                           ; $43ad: $80
	ld   [hl], b                                     ; $43ae: $70
	ld   [hl], a                                     ; $43af: $77

jr_02c_43b0:
	nop                                              ; $43b0: $00
	rlca                                             ; $43b1: $07
	nop                                              ; $43b2: $00
	inc  a                                           ; $43b3: $3c
	cp   b                                           ; $43b4: $b8
	adc  $4c                                         ; $43b5: $ce $4c
	add  h                                           ; $43b7: $84
	add  c                                           ; $43b8: $81
	or   h                                           ; $43b9: $b4
	inc  bc                                          ; $43ba: $03
	ld   a, [$04c8]                                  ; $43bb: $fa $c8 $04
	nop                                              ; $43be: $00
	add  b                                           ; $43bf: $80
	ld   [hl], b                                     ; $43c0: $70
	add  b                                           ; $43c1: $80
	add  b                                           ; $43c2: $80
	ld   bc, $a8ac                                   ; $43c3: $01 $ac $a8
	add  b                                           ; $43c6: $80
	nop                                              ; $43c7: $00
	inc  b                                           ; $43c8: $04
	cp   [hl]                                        ; $43c9: $be
	inc  a                                           ; $43ca: $3c
	ld   e, a                                        ; $43cb: $5f
	ld   e, $20                                      ; $43cc: $1e $20
	add  b                                           ; $43ce: $80
	nop                                              ; $43cf: $00
	inc  bc                                          ; $43d0: $03
	ld   c, $ee                                      ; $43d1: $0e $ee
	nop                                              ; $43d3: $00
	rst  $38                                         ; $43d4: $ff
	adc  e                                           ; $43d5: $8b
	nop                                              ; $43d6: $00
	ld   [bc], a                                     ; $43d7: $02

Jump_02c_43d8:
	rlca                                             ; $43d8: $07
	nop                                              ; $43d9: $00
	ld   [$0780], sp                                 ; $43da: $08 $80 $07
	add  b                                           ; $43dd: $80
	ld   b, $01                                      ; $43de: $06 $01
	nop                                              ; $43e0: $00
	rrca                                             ; $43e1: $0f
	add  a                                           ; $43e2: $87
	nop                                              ; $43e3: $00
	dec  b                                           ; $43e4: $05
	inc  de                                          ; $43e5: $13
	dec  c                                           ; $43e6: $0d
	dec  a                                           ; $43e7: $3d
	dec  e                                           ; $43e8: $1d
	rra                                              ; $43e9: $1f
	ld   e, $80                                      ; $43ea: $1e $80
	ld   b, $01                                      ; $43ec: $06 $01
	ld   b, [hl]                                     ; $43ee: $46
	ld   [hl], $80                                   ; $43ef: $36 $80
	dec  [hl]                                        ; $43f1: $35
	inc  bc                                          ; $43f2: $03
	ld   [hl], b                                     ; $43f3: $70
	nop                                              ; $43f4: $00
	ld   [hl], $06                                   ; $43f5: $36 $06
	add  b                                           ; $43f7: $80
	ld   bc, $1a01                                   ; $43f8: $01 $01 $1a
	ld   a, [bc]                                     ; $43fb: $0a
	add  b                                           ; $43fc: $80
	nop                                              ; $43fd: $00
	add  b                                           ; $43fe: $80
	ld   c, $01                                      ; $43ff: $0e $01
	dec  a                                           ; $4401: $3d
	inc  e                                           ; $4402: $1c
	add  b                                           ; $4403: $80
	nop                                              ; $4404: $00
	ld   b, $40                                      ; $4405: $06 $40
	inc  a                                           ; $4407: $3c
	dec  a                                           ; $4408: $3d
	nop                                              ; $4409: $00
	sbc  e                                           ; $440a: $9b
	sbc  b                                           ; $440b: $98
	adc  [hl]                                        ; $440c: $8e
	add  c                                           ; $440d: $81
	ld   l, h                                        ; $440e: $6c
	ld   bc, $9cfc                                   ; $440f: $01 $fc $9c
	add  b                                           ; $4412: $80
	cp   h                                           ; $4413: $bc
	inc  bc                                          ; $4414: $03
	jp   nz, $04c0                                   ; $4415: $c2 $c0 $04

	nop                                              ; $4418: $00
	add  b                                           ; $4419: $80
	or   b                                           ; $441a: $b0
	add  b                                           ; $441b: $80
	ld   b, b                                        ; $441c: $40
	ld   bc, $a8ac                                   ; $441d: $01 $ac $a8
	add  b                                           ; $4420: $80
	nop                                              ; $4421: $00
	inc  bc                                          ; $4422: $03
	cp   b                                           ; $4423: $b8
	jr   c, jr_02c_4484                              ; $4424: $38 $5e

	inc  e                                           ; $4426: $1c
	add  c                                           ; $4427: $81
	nop                                              ; $4428: $00
	inc  b                                           ; $4429: $04
	inc  e                                           ; $442a: $1c
	call c, Boot                                     ; $442b: $dc $00 $01
	nop                                              ; $442e: $00
	add  b                                           ; $442f: $80
	ld   a, a                                        ; $4430: $7f
	add  b                                           ; $4431: $80
	ld   a, [hl]                                     ; $4432: $7e
	add  b                                           ; $4433: $80
	ld   a, a                                        ; $4434: $7f
	add  b                                           ; $4435: $80
	rrca                                             ; $4436: $0f
	ld   bc, $0aea                                   ; $4437: $01 $ea $0a
	add  b                                           ; $443a: $80
	nop                                              ; $443b: $00
	dec  b                                           ; $443c: $05
	rla                                              ; $443d: $17
	rlca                                             ; $443e: $07
	stop                                             ; $443f: $10 $00
	dec  [hl]                                        ; $4441: $35
	dec  d                                           ; $4442: $15
	add  b                                           ; $4443: $80
	nop                                              ; $4444: $00
	add  b                                           ; $4445: $80
	inc  e                                           ; $4446: $1c
	ld   bc, $387b                                   ; $4447: $01 $7b $38
	add  b                                           ; $444a: $80
	nop                                              ; $444b: $00
	dec  b                                           ; $444c: $05
	add  b                                           ; $444d: $80
	ld   a, b                                        ; $444e: $78
	ld   a, e                                        ; $444f: $7b
	nop                                              ; $4450: $00
	rlca                                             ; $4451: $07
	nop                                              ; $4452: $00
	add  b                                           ; $4453: $80
	ldh  a, [rSB]                                    ; $4454: $f0 $01
	inc  e                                           ; $4456: $1c
	jr   @-$7c                                       ; $4457: $18 $82

	ld   hl, sp-$80                                  ; $4459: $f8 $80
	xor  b                                           ; $445b: $a8
	ld   bc, $0004                                   ; $445c: $01 $04 $00
	add  b                                           ; $445f: $80
	ldh  a, [$80]                                    ; $4460: $f0 $80
	nop                                              ; $4462: $00
	ld   bc, $5054                                   ; $4463: $01 $54 $50
	add  b                                           ; $4466: $80
	nop                                              ; $4467: $00
	inc  b                                           ; $4468: $04
	cp   [hl]                                        ; $4469: $be
	inc  a                                           ; $446a: $3c
	ld   c, a                                        ; $446b: $4f
	ld   c, $20                                      ; $446c: $0e $20
	add  b                                           ; $446e: $80
	nop                                              ; $446f: $00
	ld   a, [bc]                                     ; $4470: $0a
	ld   c, $ee                                      ; $4471: $0e $ee
	nop                                              ; $4473: $00
	rst  ToBoot                                         ; $4474: $c7
	nop                                              ; $4475: $00
	dec  h                                           ; $4476: $25
	nop                                              ; $4477: $00
	ld   [hl+], a                                    ; $4478: $22
	nop                                              ; $4479: $00
	ld   b, b                                        ; $447a: $40
	nop                                              ; $447b: $00
	add  b                                           ; $447c: $80
	jr   nz, jr_02c_4480                             ; $447d: $20 $01

	sub  c                                           ; $447f: $91

jr_02c_4480:
	ld   de, $0081                                   ; $4480: $11 $81 $00
	add  b                                           ; $4483: $80

jr_02c_4484:
	inc  b                                           ; $4484: $04
	ld   b, $24                                      ; $4485: $06 $24
	dec  a                                           ; $4487: $3d
	dec  e                                           ; $4488: $1d
	inc  d                                           ; $4489: $14
	ld   d, $96                                      ; $448a: $16 $96
	ld   [hl], $80                                   ; $448c: $36 $80
	ccf                                              ; $448e: $3f
	dec  c                                           ; $448f: $0d
	ld   h, [hl]                                     ; $4490: $66
	rra                                              ; $4491: $1f
	ccf                                              ; $4492: $3f

jr_02c_4493:
	rrca                                             ; $4493: $0f
	rra                                              ; $4494: $1f
	nop                                              ; $4495: $00
	rrca                                             ; $4496: $0f
	nop                                              ; $4497: $00
	ret  nz                                          ; $4498: $c0

	nop                                              ; $4499: $00
	jr   nc, jr_02c_449c                             ; $449a: $30 $00

jr_02c_449c:
	ld   [$8000], sp                                 ; $449c: $08 $00 $80
	db   $10                                         ; $449f: $10
	ld   bc, $e0e4                                   ; $44a0: $01 $e4 $e0
	add  c                                           ; $44a3: $81
	nop                                              ; $44a4: $00
	add  b                                           ; $44a5: $80
	add  b                                           ; $44a6: $80
	nop                                              ; $44a7: $00
	nop                                              ; $44a8: $00
	add  c                                           ; $44a9: $81
	ret  nz                                          ; $44aa: $c0

	add  b                                           ; $44ab: $80
	call nc, $fc10                                   ; $44ac: $d4 $10 $fc
	ld   hl, sp-$20                                  ; $44af: $f8 $e0
	jr   z, jr_02c_4493                              ; $44b1: $28 $e0

	ldh  a, [$c0]                                    ; $44b3: $f0 $c0
	ret  nc                                          ; $44b5: $d0

	nop                                              ; $44b6: $00
	ldh  a, [rP1]                                    ; $44b7: $f0 $00
	ret  nz                                          ; $44b9: $c0

	nop                                              ; $44ba: $00
	jr   nc, jr_02c_44bd                             ; $44bb: $30 $00

jr_02c_44bd:
	ld   [$8000], sp                                 ; $44bd: $08 $00 $80
	db   $10                                         ; $44c0: $10
	ld   bc, $e0e4                                   ; $44c1: $01 $e4 $e0
	add  c                                           ; $44c4: $81
	nop                                              ; $44c5: $00
	add  b                                           ; $44c6: $80
	add  b                                           ; $44c7: $80
	nop                                              ; $44c8: $00
	nop                                              ; $44c9: $00
	add  c                                           ; $44ca: $81
	ret  nz                                          ; $44cb: $c0

	add  b                                           ; $44cc: $80
	call nc, $fc0e                                   ; $44cd: $d4 $0e $fc
	ld   hl, sp-$20                                  ; $44d0: $f8 $e0
	jr   z, @-$1e                                    ; $44d2: $28 $e0

	rst  $28                                         ; $44d4: $ef
	ret  nz                                          ; $44d5: $c0

	ret  c                                           ; $44d6: $d8

	dec  de                                          ; $44d7: $1b
	db   $e3                                         ; $44d8: $e3
	ld   b, $77                                      ; $44d9: $06 $77
	dec  d                                           ; $44db: $15
	dec  a                                           ; $44dc: $3d
	add  hl, sp                                      ; $44dd: $39
	add  b                                           ; $44de: $80
	dec  sp                                          ; $44df: $3b
	add  b                                           ; $44e0: $80
	dec  hl                                          ; $44e1: $2b
	add  b                                           ; $44e2: $80
	dec  bc                                          ; $44e3: $0b
	ld   bc, $0070                                   ; $44e4: $01 $70 $00
	add  b                                           ; $44e7: $80
	rlca                                             ; $44e8: $07
	add  b                                           ; $44e9: $80
	ld   [bc], a                                     ; $44ea: $02
	add  b                                           ; $44eb: $80
	dec  b                                           ; $44ec: $05
	add  b                                           ; $44ed: $80
	nop                                              ; $44ee: $00
	inc  b                                           ; $44ef: $04
	dec  bc                                          ; $44f0: $0b
	inc  bc                                          ; $44f1: $03
	dec  b                                           ; $44f2: $05
	ld   bc, $8102                                   ; $44f3: $01 $02 $81
	nop                                              ; $44f6: $00
	ld   [$00fe], sp                                 ; $44f7: $08 $fe $00
	rst  $20                                         ; $44fa: $e7
	ldh  [$fc], a                                    ; $44fb: $e0 $fc
	ld   hl, sp-$06                                  ; $44fd: $f8 $fa
	ld   hl, sp-$0f                                  ; $44ff: $f8 $f1
	add  c                                           ; $4501: $81
	or   $05                                         ; $4502: $f6 $05
	add  a                                           ; $4504: $87
	add  b                                           ; $4505: $80
	halt                                             ; $4506: $76
	ld   [hl], b                                     ; $4507: $70
	add  h                                           ; $4508: $84
	add  b                                           ; $4509: $80
	add  b                                           ; $450a: $80
	xor  b                                           ; $450b: $a8
	add  b                                           ; $450c: $80
	ld   b, b                                        ; $450d: $40
	inc  bc                                          ; $450e: $03
	ld   a, $3c                                      ; $450f: $3e $3c
	cp   c                                           ; $4511: $b9
	cp   d                                           ; $4512: $ba
	add  b                                           ; $4513: $80
	jp   c, $020c                                    ; $4514: $da $0c $02

	ld   [hl+], a                                    ; $4517: $22
	ld   a, [hl+]                                    ; $4518: $2a
	ldh  [c], a                                      ; $4519: $e2
	ld   [$6100], a                                  ; $451a: $ea $00 $61
	ld   l, l                                        ; $451d: $6d
	ld   l, a                                        ; $451e: $6f
	ld   l, e                                        ; $451f: $6b
	ld   a, e                                        ; $4520: $7b
	ld   [hl], e                                     ; $4521: $73
	or   a                                           ; $4522: $b7
	add  c                                           ; $4523: $81
	scf                                              ; $4524: $37
	ld   bc, $1757                                   ; $4525: $01 $57 $17
	add  b                                           ; $4528: $80
	nop                                              ; $4529: $00
	add  b                                           ; $452a: $80
	rra                                              ; $452b: $1f
	ld   bc, $0525                                   ; $452c: $01 $25 $05
	add  b                                           ; $452f: $80
	ld   a, [bc]                                     ; $4530: $0a
	add  b                                           ; $4531: $80
	nop                                              ; $4532: $00
	db   $10                                         ; $4533: $10
	rla                                              ; $4534: $17
	rlca                                             ; $4535: $07
	dec  bc                                          ; $4536: $0b
	inc  bc                                          ; $4537: $03
	inc  b                                           ; $4538: $04
	nop                                              ; $4539: $00
	inc  bc                                          ; $453a: $03
	nop                                              ; $453b: $00
	rst  $38                                         ; $453c: $ff
	nop                                              ; $453d: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $453e: $cf
	ret  nz                                          ; $453f: $c0

	ld   hl, sp-$10                                  ; $4540: $f8 $f0
	db   $f4                                         ; $4542: $f4
	ldh  a, [$e2]                                    ; $4543: $f0 $e2
	add  c                                           ; $4545: $81
	db   $ec                                         ; $4546: $ec
	dec  b                                           ; $4547: $05
	ld   c, $00                                      ; $4548: $0e $00
	db   $ec                                         ; $454a: $ec
	ldh  [$08], a                                    ; $454b: $e0 $08
	nop                                              ; $454d: $00
	add  b                                           ; $454e: $80
	ld   d, b                                        ; $454f: $50
	inc  bc                                          ; $4550: $03
	adc  a                                           ; $4551: $8f
	adc  b                                           ; $4552: $88
	ld   a, b                                        ; $4553: $78
	ld   a, d                                        ; $4554: $7a
	add  b                                           ; $4555: $80
	ld   a, [hl-]                                    ; $4556: $3a
	add  b                                           ; $4557: $80
	jp   nz, $0e0e                                   ; $4558: $c2 $0e $0e

	jr   nz, @+$25                                   ; $455b: $20 $23

	ld   h, b                                        ; $455d: $60
	ld   l, a                                        ; $455e: $6f
	nop                                              ; $455f: $00
	or   b                                           ; $4560: $b0
	ld   [hl], $37                                   ; $4561: $36 $37
	dec  [hl]                                        ; $4563: $35
	dec  a                                           ; $4564: $3d
	add  hl, sp                                      ; $4565: $39
	ld   e, e                                        ; $4566: $5b
	dec  de                                          ; $4567: $1b
	dec  hl                                          ; $4568: $2b
	add  c                                           ; $4569: $81
	dec  bc                                          ; $456a: $0b
	ld   bc, $0010                                   ; $456b: $01 $10 $00
	add  b                                           ; $456e: $80
	rlca                                             ; $456f: $07
	add  b                                           ; $4570: $80

jr_02c_4571:
	ld   [bc], a                                     ; $4571: $02
	add  b                                           ; $4572: $80
	dec  b                                           ; $4573: $05
	add  b                                           ; $4574: $80
	nop                                              ; $4575: $00
	inc  b                                           ; $4576: $04
	dec  bc                                          ; $4577: $0b
	inc  bc                                          ; $4578: $03
	dec  b                                           ; $4579: $05
	ld   bc, $8102                                   ; $457a: $01 $02 $81
	nop                                              ; $457d: $00
	ld   [$00fe], sp                                 ; $457e: $08 $fe $00
	ldh  a, [$f6]                                    ; $4581: $f0 $f6
	rst  $38                                         ; $4583: $ff
	ld   hl, sp-$1a                                  ; $4584: $f8 $e6
	ldh  [$e8], a                                    ; $4586: $e0 $e8
	add  c                                           ; $4588: $81
	ldh  [$80], a                                    ; $4589: $e0 $80
	add  b                                           ; $458b: $80
	inc  bc                                          ; $458c: $03
	ld   a, b                                        ; $458d: $78
	ld   [hl], b                                     ; $458e: $70
	add  h                                           ; $458f: $84
	add  b                                           ; $4590: $80
	add  b                                           ; $4591: $80
	xor  b                                           ; $4592: $a8
	add  b                                           ; $4593: $80
	ld   b, b                                        ; $4594: $40
	inc  bc                                          ; $4595: $03
	ld   a, $3c                                      ; $4596: $3e $3c
	cp   c                                           ; $4598: $b9
	cp   d                                           ; $4599: $ba
	add  b                                           ; $459a: $80
	jp   c, $020b                                    ; $459b: $da $0b $02

	ld   [hl+], a                                    ; $459e: $22
	ld   a, [hl+]                                    ; $459f: $2a
	ldh  [c], a                                      ; $45a0: $e2
	ld   [$a100], a                                  ; $45a1: $ea $00 $a1
	dec  l                                           ; $45a4: $2d
	rst  $28                                         ; $45a5: $ef
	ld   l, e                                        ; $45a6: $6b
	ld   a, e                                        ; $45a7: $7b
	ld   [hl], e                                     ; $45a8: $73
	add  d                                           ; $45a9: $82
	ld   [hl], a                                     ; $45aa: $77
	add  b                                           ; $45ab: $80
	scf                                              ; $45ac: $37
	ld   bc, $00c0                                   ; $45ad: $01 $c0 $00
	add  b                                           ; $45b0: $80
	rra                                              ; $45b1: $1f
	ld   bc, $0525                                   ; $45b2: $01 $25 $05
	add  b                                           ; $45b5: $80
	ld   a, [bc]                                     ; $45b6: $0a
	add  b                                           ; $45b7: $80
	nop                                              ; $45b8: $00
	db   $10                                         ; $45b9: $10
	rla                                              ; $45ba: $17
	rlca                                             ; $45bb: $07
	dec  bc                                          ; $45bc: $0b
	inc  bc                                          ; $45bd: $03
	inc  b                                           ; $45be: $04
	nop                                              ; $45bf: $00
	inc  bc                                          ; $45c0: $03
	nop                                              ; $45c1: $00
	rst  $38                                         ; $45c2: $ff
	nop                                              ; $45c3: $00
	pop  hl                                          ; $45c4: $e1
	db   $ec                                         ; $45c5: $ec
	cp   $f0                                         ; $45c6: $fe $f0
	call z, $d0c0                                    ; $45c8: $cc $c0 $d0
	add  c                                           ; $45cb: $81
	ret  nz                                          ; $45cc: $c0

	add  b                                           ; $45cd: $80
	add  b                                           ; $45ce: $80
	inc  bc                                          ; $45cf: $03
	ld   [hl], b                                     ; $45d0: $70
	ld   h, b                                        ; $45d1: $60
	ld   [$8000], sp                                 ; $45d2: $08 $00 $80
	ld   d, b                                        ; $45d5: $50
	inc  bc                                          ; $45d6: $03
	adc  a                                           ; $45d7: $8f
	adc  b                                           ; $45d8: $88
	ld   a, b                                        ; $45d9: $78
	ld   a, d                                        ; $45da: $7a
	add  b                                           ; $45db: $80
	ld   a, [hl-]                                    ; $45dc: $3a
	add  b                                           ; $45dd: $80
	jp   nz, $0e0e                                   ; $45de: $c2 $0e $0e

	jr   nz, @+$25                                   ; $45e1: $20 $23

	ld   h, b                                        ; $45e3: $60
	ld   l, a                                        ; $45e4: $6f
	nop                                              ; $45e5: $00
	rst  $38                                         ; $45e6: $ff
	nop                                              ; $45e7: $00
	dec  e                                           ; $45e8: $1d
	nop                                              ; $45e9: $00
	ld   [de], a                                     ; $45ea: $12
	nop                                              ; $45eb: $00
	stop                                             ; $45ec: $10 $00
	jr   nc, jr_02c_4571                             ; $45ee: $30 $81

	db   $10                                         ; $45f0: $10
	ld   [bc], a                                     ; $45f1: $02
	ld   c, b                                        ; $45f2: $48
	ld   [$8200], sp                                 ; $45f3: $08 $00 $82
	ld   [bc], a                                     ; $45f6: $02
	add  c                                           ; $45f7: $81
	ld   [de], a                                     ; $45f8: $12
	nop                                              ; $45f9: $00
	ld   d, d                                        ; $45fa: $52
	add  b                                           ; $45fb: $80
	rlca                                             ; $45fc: $07
	inc  bc                                          ; $45fd: $03
	dec  de                                          ; $45fe: $1b
	ld   e, e                                        ; $45ff: $5b
	ld   l, $ae                                      ; $4600: $2e $ae
	add  b                                           ; $4602: $80
	ld   h, [hl]                                     ; $4603: $66
	ld   [$ff00], sp                                 ; $4604: $08 $00 $ff
	nop                                              ; $4607: $00
	ldh  [rP1], a                                    ; $4608: $e0 $00
	jr   jr_02c_460c                                 ; $460a: $18 $00

jr_02c_460c:
	inc  b                                           ; $460c: $04
	nop                                              ; $460d: $00
	add  b                                           ; $460e: $80
	ld   [$0a01], sp                                 ; $460f: $08 $01 $0a
	ld   [$7080], sp                                 ; $4612: $08 $80 $70
	add  c                                           ; $4615: $81
	nop                                              ; $4616: $00
	add  b                                           ; $4617: $80
	ld   b, b                                        ; $4618: $40
	ld   bc, $6160                                   ; $4619: $01 $60 $61
	add  b                                           ; $461c: $80
	ld   h, b                                        ; $461d: $60
	inc  bc                                          ; $461e: $03
	ld   a, [de]                                     ; $461f: $1a
	dec  de                                          ; $4620: $1b
	ld   bc, $811f                                   ; $4621: $01 $1f $81
	rst  JumpTable                                         ; $4624: $df
	ld   [bc], a                                     ; $4625: $02
	ret  nz                                          ; $4626: $c0

	nop                                              ; $4627: $00
	rst  $38                                         ; $4628: $ff
	adc  c                                           ; $4629: $89
	nop                                              ; $462a: $00
	ld   [bc], a                                     ; $462b: $02
	dec  de                                          ; $462c: $1b
	nop                                              ; $462d: $00
	ld   h, h                                        ; $462e: $64
	add  b                                           ; $462f: $80
	ld   [de], a                                     ; $4630: $12
	ld   [bc], a                                     ; $4631: $02
	ld   [hl], $b6                                   ; $4632: $36 $b6
	nop                                              ; $4634: $00
	add  b                                           ; $4635: $80
	ld   l, [hl]                                     ; $4636: $6e
	add  b                                           ; $4637: $80
	adc  [hl]                                        ; $4638: $8e
	add  b                                           ; $4639: $80
	ld   l, $80                                      ; $463a: $2e $80
	adc  [hl]                                        ; $463c: $8e
	inc  b                                           ; $463d: $04
	xor  l                                           ; $463e: $ad
	xor  h                                           ; $463f: $ac
	ld   bc, $ff00                                   ; $4640: $01 $00 $ff
	add  c                                           ; $4643: $81
	nop                                              ; $4644: $00
	ld   de, $0003                                   ; $4645: $11 $03 $00
	inc  bc                                          ; $4648: $03
	rrca                                             ; $4649: $0f
	rlca                                             ; $464a: $07
	rra                                              ; $464b: $1f
	adc  e                                           ; $464c: $8b
	ld   [hl], a                                     ; $464d: $77
	sub  e                                           ; $464e: $93
	rrca                                             ; $464f: $0f
	ld   c, a                                        ; $4650: $4f
	rra                                              ; $4651: $1f
	ld   h, b                                        ; $4652: $60
	dec  a                                           ; $4653: $3d
	ld   a, h                                        ; $4654: $7c
	ei                                               ; $4655: $fb
	or   l                                           ; $4656: $b5
	or   a                                           ; $4657: $b7
	add  b                                           ; $4658: $80
	daa                                              ; $4659: $27
	dec  b                                           ; $465a: $05
	adc  [hl]                                        ; $465b: $8e
	ld   c, $2c                                      ; $465c: $0e $2c
	inc  c                                           ; $465e: $0c
	ld   c, h                                        ; $465f: $4c
	inc  c                                           ; $4660: $0c
	add  b                                           ; $4661: $80
	ld   [$1f00], sp                                 ; $4662: $08 $00 $1f
	add  c                                           ; $4665: $81
	nop                                              ; $4666: $00
	ld   b, $80                                      ; $4667: $06 $80
	nop                                              ; $4669: $00
	db   $fc                                         ; $466a: $fc
	add  b                                           ; $466b: $80
	or   [hl]                                        ; $466c: $b6
	cp   h                                           ; $466d: $bc
	ldh  a, [$81]                                    ; $466e: $f0 $81
	db   $fc                                         ; $4670: $fc
	add  hl, bc                                      ; $4671: $09
	di                                               ; $4672: $f3
	cp   $c0                                         ; $4673: $fe $c0
	ld   hl, sp+$2d                                  ; $4675: $f8 $2d
	db   $fc                                         ; $4677: $fc
	inc  a                                           ; $4678: $3c
	db   $fc                                         ; $4679: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $467a: $cf
	xor  $80                                         ; $467b: $ee $80
	ld   h, [hl]                                     ; $467d: $66
	dec  d                                           ; $467e: $15
	jp   c, $81c2                                    ; $467f: $da $c2 $81

	add  b                                           ; $4682: $80
	inc  l                                           ; $4683: $2c
	nop                                              ; $4684: $00
	jp   z, $0300                                    ; $4685: $ca $00 $03

	nop                                              ; $4688: $00
	rra                                              ; $4689: $1f
	inc  bc                                          ; $468a: $03
	ccf                                              ; $468b: $3f
	rra                                              ; $468c: $1f
	ld   d, $1f                                      ; $468d: $16 $1f
	pop  bc                                          ; $468f: $c1
	ld   e, $ca                                      ; $4690: $1e $ca
	ld   e, $7f                                      ; $4692: $1e $7f
	dec  a                                           ; $4694: $3d
	add  b                                           ; $4695: $80
	dec  l                                           ; $4696: $2d
	ld   bc, $59d9                                   ; $4697: $01 $d9 $59
	add  b                                           ; $469a: $80
	add  hl, de                                      ; $469b: $19
	rra                                              ; $469c: $1f
	ld   d, l                                        ; $469d: $55
	ld   de, $1092                                   ; $469e: $11 $92 $10
	dec  b                                           ; $46a1: $05
	nop                                              ; $46a2: $00
	ld   d, $04                                      ; $46a3: $16 $04
	ld   hl, $3f00                                   ; $46a5: $21 $00 $3f
	nop                                              ; $46a8: $00
	ld   hl, sp+$30                                  ; $46a9: $f8 $30
	or   h                                           ; $46ab: $b4
	or   b                                           ; $46ac: $b0
	xor  l                                           ; $46ad: $ad
	xor  $6d                                         ; $46ae: $ee $6d
	ld   l, h                                        ; $46b0: $6c
	inc  c                                           ; $46b1: $0c
	db   $ec                                         ; $46b2: $ec
	rst  ToBoot                                         ; $46b3: $c7
	and  $42                                         ; $46b4: $e6 $42
	jp   c, $82a2                                    ; $46b6: $da $a2 $82

	or   b                                           ; $46b9: $b0
	add  b                                           ; $46ba: $80
	ld   [de], a                                     ; $46bb: $12
	ld   h, b                                        ; $46bc: $60
	add  b                                           ; $46bd: $80
	ld   b, b                                        ; $46be: $40
	add  hl, bc                                      ; $46bf: $09
	add  c                                           ; $46c0: $81
	nop                                              ; $46c1: $00
	inc  c                                           ; $46c2: $0c
	nop                                              ; $46c3: $00
	jr   jr_02c_46c6                                 ; $46c4: $18 $00

jr_02c_46c6:
	ldh  a, [rP1]                                    ; $46c6: $f0 $00
	jp   hl                                          ; $46c8: $e9


	add  hl, bc                                      ; $46c9: $09
	add  b                                           ; $46ca: $80
	ld   [$1080], sp                                 ; $46cb: $08 $80 $10
	add  d                                           ; $46ce: $82
	ld   [de], a                                     ; $46cf: $12
	inc  bc                                          ; $46d0: $03
	inc  de                                          ; $46d1: $13
	ld   [de], a                                     ; $46d2: $12
	rra                                              ; $46d3: $1f
	ld   e, $80                                      ; $46d4: $1e $80
	inc  de                                          ; $46d6: $13
	inc  bc                                          ; $46d7: $03
	rrca                                             ; $46d8: $0f
	inc  c                                           ; $46d9: $0c
	ld   b, $02                                      ; $46da: $06 $02
	add  b                                           ; $46dc: $80
	rlca                                             ; $46dd: $07
	add  b                                           ; $46de: $80
	inc  b                                           ; $46df: $04
	add  b                                           ; $46e0: $80
	nop                                              ; $46e1: $00
	add  b                                           ; $46e2: $80
	rlca                                             ; $46e3: $07
	inc  bc                                          ; $46e4: $03
	ld   c, $0f                                      ; $46e5: $0e $0f
	ld   sp, hl                                      ; $46e7: $f9
	rst  $38                                         ; $46e8: $ff
	add  b                                           ; $46e9: $80
	jr   nz, jr_02c_46ef                             ; $46ea: $20 $03

jr_02c_46ec:
	and  b                                           ; $46ec: $a0
	ldh  [rAUD4LEN], a                               ; $46ed: $e0 $20

jr_02c_46ef:
	ld   h, b                                        ; $46ef: $60
	add  d                                           ; $46f0: $82
	jr   nz, @+$05                                   ; $46f1: $20 $03

	ldh  [rAUD4LEN], a                               ; $46f3: $e0 $20
	ldh  [rAUD4LEN], a                               ; $46f5: $e0 $20
	add  b                                           ; $46f7: $80
	ldh  [rP1], a                                    ; $46f8: $e0 $00
	ret  nz                                          ; $46fa: $c0

	add  c                                           ; $46fb: $81
	nop                                              ; $46fc: $00
	add  b                                           ; $46fd: $80
	ld   b, b                                        ; $46fe: $40
	add  d                                           ; $46ff: $82
	nop                                              ; $4700: $00
	add  b                                           ; $4701: $80
	ret  nz                                          ; $4702: $c0

	inc  b                                           ; $4703: $04
	ld   [hl], b                                     ; $4704: $70
	ldh  a, [$be]                                    ; $4705: $f0 $be
	cp   $00                                         ; $4707: $fe $00
	add  d                                           ; $4709: $82
	inc  bc                                          ; $470a: $03
	adc  b                                           ; $470b: $88
	rlca                                             ; $470c: $07
	nop                                              ; $470d: $00
	nop                                              ; $470e: $00
	add  b                                           ; $470f: $80
	ld   b, $80                                      ; $4710: $06 $80
	rlca                                             ; $4712: $07
	add  b                                           ; $4713: $80
	rrca                                             ; $4714: $0f
	add  d                                           ; $4715: $82
	dec  c                                           ; $4716: $0d
	add  b                                           ; $4717: $80
	inc  c                                           ; $4718: $0c
	add  b                                           ; $4719: $80
	ld   bc, $0000                                   ; $471a: $01 $00 $00

jr_02c_471d:
	add  b                                           ; $471d: $80
	inc  c                                           ; $471e: $0c
	add  c                                           ; $471f: $81
	ld   hl, sp-$80                                  ; $4720: $f8 $80
	add  sp, -$80                                    ; $4722: $e8 $80
	ret  z                                           ; $4724: $c8

	add  c                                           ; $4725: $81
	ld   hl, sp-$80                                  ; $4726: $f8 $80
	ldh  a, [$80]                                    ; $4728: $f0 $80
	ldh  [$80], a                                    ; $472a: $e0 $80
	nop                                              ; $472c: $00
	add  b                                           ; $472d: $80
	ret  nz                                          ; $472e: $c0

	nop                                              ; $472f: $00
	nop                                              ; $4730: $00
	add  b                                           ; $4731: $80
	add  b                                           ; $4732: $80
	add  d                                           ; $4733: $82
	ret  nz                                          ; $4734: $c0

	add  b                                           ; $4735: $80
	nop                                              ; $4736: $00
	add  b                                           ; $4737: $80
	ret  nz                                          ; $4738: $c0

	add  b                                           ; $4739: $80
	nop                                              ; $473a: $00
	add  b                                           ; $473b: $80
	add  hl, de                                      ; $473c: $19
	add  b                                           ; $473d: $80
	daa                                              ; $473e: $27
	add  b                                           ; $473f: $80
	ld   b, b                                        ; $4740: $40
	add  b                                           ; $4741: $80
	ld   c, b                                        ; $4742: $48
	add  b                                           ; $4743: $80
	ld   b, a                                        ; $4744: $47
	add  b                                           ; $4745: $80
	ld   c, c                                        ; $4746: $49
	add  b                                           ; $4747: $80
	add  hl, hl                                      ; $4748: $29
	add  e                                           ; $4749: $83
	rra                                              ; $474a: $1f
	ld   b, $00                                      ; $474b: $06 $00
	jr   nc, jr_02c_475f                             ; $474d: $30 $10

	add  hl, sp                                      ; $474f: $39
	jr   c, jr_02c_4798                              ; $4750: $38 $46

	nop                                              ; $4752: $00
	add  b                                           ; $4753: $80
	ld   a, b                                        ; $4754: $78
	inc  bc                                          ; $4755: $03
	sbc  b                                           ; $4756: $98
	ldh  a, [$ef]                                    ; $4757: $f0 $ef
	rst  $38                                         ; $4759: $ff
	add  b                                           ; $475a: $80
	ld   [hl], b                                     ; $475b: $70
	add  b                                           ; $475c: $80
	adc  b                                           ; $475d: $88
	add  b                                           ; $475e: $80

jr_02c_475f:
	inc  b                                           ; $475f: $04
	add  b                                           ; $4760: $80
	inc  h                                           ; $4761: $24
	add  b                                           ; $4762: $80
	call nz, $2480                                   ; $4763: $c4 $80 $24
	add  b                                           ; $4766: $80
	jr   z, jr_02c_46ec                              ; $4767: $28 $83

	ldh  a, [$80]                                    ; $4769: $f0 $80
	nop                                              ; $476b: $00
	inc  b                                           ; $476c: $04
	ld   [$0c88], sp                                 ; $476d: $08 $88 $0c
	ld   h, b                                        ; $4770: $60
	nop                                              ; $4771: $00
	add  b                                           ; $4772: $80
	inc  e                                           ; $4773: $1c
	inc  b                                           ; $4774: $04
	rrca                                             ; $4775: $0f
	rra                                              ; $4776: $1f
	di                                               ; $4777: $f3
	rst  $38                                         ; $4778: $ff
	nop                                              ; $4779: $00
	add  h                                           ; $477a: $84
	rra                                              ; $477b: $1f
	add  d                                           ; $477c: $82
	ccf                                              ; $477d: $3f
	add  d                                           ; $477e: $82
	rra                                              ; $477f: $1f
	ld   [bc], a                                     ; $4780: $02
	rrca                                             ; $4781: $0f
	db   $10                                         ; $4782: $10
	rra                                              ; $4783: $1f
	add  b                                           ; $4784: $80
	ccf                                              ; $4785: $3f
	add  h                                           ; $4786: $84
	ld   a, a                                        ; $4787: $7f
	ld   bc, $7f79                                   ; $4788: $01 $79 $7f
	add  b                                           ; $478b: $80
	ccf                                              ; $478c: $3f
	ld   [bc], a                                     ; $478d: $02
	add  hl, de                                      ; $478e: $19
	rra                                              ; $478f: $1f

jr_02c_4790:
	nop                                              ; $4790: $00
	adc  h                                           ; $4791: $8c

jr_02c_4792:
	db   $fc                                         ; $4792: $fc
	ld   [bc], a                                     ; $4793: $02
	ld   hl, sp+$18                                  ; $4794: $f8 $18
	ldh  [$86], a                                    ; $4796: $e0 $86

jr_02c_4798:
	ld   hl, sp+$00                                  ; $4798: $f8 $00
	jr   c, jr_02c_471d                              ; $479a: $38 $81

	ld   hl, sp+$01                                  ; $479c: $f8 $01
	jr   nc, jr_02c_4790                             ; $479e: $30 $f0

	add  d                                           ; $47a0: $82
	nop                                              ; $47a1: $00
	rla                                              ; $47a2: $17
	rlca                                             ; $47a3: $07
	nop                                              ; $47a4: $00
	rrca                                             ; $47a5: $0f
	rra                                              ; $47a6: $1f
	rrca                                             ; $47a7: $0f
	ccf                                              ; $47a8: $3f
	dec  sp                                          ; $47a9: $3b
	ld   h, a                                        ; $47aa: $67
	add  h                                           ; $47ab: $84
	rrca                                             ; $47ac: $0f
	pop  bc                                          ; $47ad: $c1
	ld   e, $6d                                      ; $47ae: $1e $6d
	dec  a                                           ; $47b0: $3d
	ld   a, b                                        ; $47b1: $78
	ld   a, e                                        ; $47b2: $7b
	ld   [hl], h                                     ; $47b3: $74
	ldh  a, [$a6]                                    ; $47b4: $f0 $a6
	and  b                                           ; $47b6: $a0
	ld   h, e                                        ; $47b7: $63
	ld   l, h                                        ; $47b8: $6c
	reti                                             ; $47b9: $d9


	ld   c, b                                        ; $47ba: $48
	add  b                                           ; $47bb: $80
	nop                                              ; $47bc: $00
	ld   [bc], a                                     ; $47bd: $02
	jr   nc, jr_02c_47c0                             ; $47be: $30 $00

jr_02c_47c0:
	ld   d, b                                        ; $47c0: $50
	add  c                                           ; $47c1: $81
	nop                                              ; $47c2: $00
	dec  e                                           ; $47c3: $1d
	add  b                                           ; $47c4: $80
	nop                                              ; $47c5: $00
	db   $fc                                         ; $47c6: $fc
	add  b                                           ; $47c7: $80
	or   [hl]                                        ; $47c8: $b6
	cp   h                                           ; $47c9: $bc
	ldh  a, [$fc]                                    ; $47ca: $f0 $fc
	jr   nz, jr_02c_480a                             ; $47cc: $20 $3c

	jr   nc, jr_02c_47fc                             ; $47ce: $30 $2c

	and  e                                           ; $47d0: $a3
	and  [hl]                                        ; $47d1: $a6
	ld   [bc], a                                     ; $47d2: $02
	or   d                                           ; $47d3: $b2
	jp   z, $9802                                    ; $47d4: $ca $02 $98

	nop                                              ; $47d7: $00
	ld   a, [hl+]                                    ; $47d8: $2a

jr_02c_47d9:
	stop                                             ; $47d9: $10 $00
	jr   nz, jr_02c_47de                             ; $47db: $20 $01

	nop                                              ; $47dd: $00

jr_02c_47de:
	inc  c                                           ; $47de: $0c
	nop                                              ; $47df: $00
	jr   nz, jr_02c_480a                             ; $47e0: $20 $28

	add  b                                           ; $47e2: $80
	ld   b, a                                        ; $47e3: $47
	add  b                                           ; $47e4: $80
	ld   b, h                                        ; $47e5: $44
	inc  bc                                          ; $47e6: $03
	add  h                                           ; $47e7: $84
	add  a                                           ; $47e8: $87
	add  b                                           ; $47e9: $80
	add  e                                           ; $47ea: $83
	add  b                                           ; $47eb: $80
	add  d                                           ; $47ec: $82
	inc  bc                                          ; $47ed: $03
	ld   a, a                                        ; $47ee: $7f

jr_02c_47ef:
	ld   h, b                                        ; $47ef: $60
	dec  sp                                          ; $47f0: $3b
	inc  h                                           ; $47f1: $24
	add  c                                           ; $47f2: $81
	ccf                                              ; $47f3: $3f
	ld   b, $00                                      ; $47f4: $06 $00
	jr   nc, jr_02c_4868                             ; $47f6: $30 $70

	inc  de                                          ; $47f8: $13
	db   $10                                         ; $47f9: $10
	inc  b                                           ; $47fa: $04
	nop                                              ; $47fb: $00

jr_02c_47fc:
	add  b                                           ; $47fc: $80
	ld   a, b                                        ; $47fd: $78
	inc  bc                                          ; $47fe: $03
	sbc  b                                           ; $47ff: $98
	ldh  a, [$ef]                                    ; $4800: $f0 $ef
	rst  $38                                         ; $4802: $ff
	add  b                                           ; $4803: $80
	db   $10                                         ; $4804: $10
	add  b                                           ; $4805: $80
	ldh  a, [$82]                                    ; $4806: $f0 $82
	adc  b                                           ; $4808: $88
	add  d                                           ; $4809: $82

jr_02c_480a:
	ld   [$f003], sp                                 ; $480a: $08 $03 $f0
	jr   nc, jr_02c_47ef                             ; $480d: $30 $e0

	jr   nz, jr_02c_4792                             ; $480f: $20 $81

	ldh  [$80], a                                    ; $4811: $e0 $80
	nop                                              ; $4813: $00
	add  b                                           ; $4814: $80
	db   $10                                         ; $4815: $10
	add  hl, bc                                      ; $4816: $09
	jr   jr_02c_47d9                                 ; $4817: $18 $c0

	nop                                              ; $4819: $00
	jr   c, @+$3e                                    ; $481a: $38 $3c

	cpl                                              ; $481c: $2f
	rra                                              ; $481d: $1f
	di                                               ; $481e: $f3
	rst  $38                                         ; $481f: $ff
	nop                                              ; $4820: $00
	add  h                                           ; $4821: $84
	rra                                              ; $4822: $1f
	nop                                              ; $4823: $00
	ccf                                              ; $4824: $3f
	add  b                                           ; $4825: $80
	dec  a                                           ; $4826: $3d
	add  b                                           ; $4827: $80
	add  hl, sp                                      ; $4828: $39
	add  c                                           ; $4829: $81
	ccf                                              ; $482a: $3f
	inc  b                                           ; $482b: $04
	rra                                              ; $482c: $1f
	rrca                                             ; $482d: $0f
	rra                                              ; $482e: $1f
	inc  sp                                          ; $482f: $33
	ccf                                              ; $4830: $3f
	add  b                                           ; $4831: $80
	ld   a, a                                        ; $4832: $7f
	nop                                              ; $4833: $00
	ld   a, h                                        ; $4834: $7c
	add  e                                           ; $4835: $83
	ld   a, a                                        ; $4836: $7f
	add  d                                           ; $4837: $82
	ccf                                              ; $4838: $3f
	nop                                              ; $4839: $00
	nop                                              ; $483a: $00
	add  l                                           ; $483b: $85
	db   $fc                                         ; $483c: $fc
	add  b                                           ; $483d: $80
	db   $f4                                         ; $483e: $f4
	add  b                                           ; $483f: $80
	db   $e4                                         ; $4840: $e4
	add  c                                           ; $4841: $81
	db   $fc                                         ; $4842: $fc
	add  b                                           ; $4843: $80
	ld   hl, sp+$02                                  ; $4844: $f8 $02
	ldh  a, [rP1]                                    ; $4846: $f0 $00
	ldh  a, [$86]                                    ; $4848: $f0 $86
	ld   hl, sp-$7e                                  ; $484a: $f8 $82
	ret  nz                                          ; $484c: $c0

	add  l                                           ; $484d: $85
	nop                                              ; $484e: $00
	rlca                                             ; $484f: $07
	rlca                                             ; $4850: $07
	inc  b                                           ; $4851: $04
	inc  bc                                          ; $4852: $03
	nop                                              ; $4853: $00
	ld   a, a                                        ; $4854: $7f
	ld   a, [hl]                                     ; $4855: $7e
	nop                                              ; $4856: $00
	ld   bc, $2080                                   ; $4857: $01 $80 $20
	add  b                                           ; $485a: $80
	rra                                              ; $485b: $1f
	add  hl, bc                                      ; $485c: $09
	nop                                              ; $485d: $00
	inc  bc                                          ; $485e: $03
	ld   bc, $0003                                   ; $485f: $01 $03 $00
	ld   a, $3f                                      ; $4862: $3e $3f
	nop                                              ; $4864: $00
	rlca                                             ; $4865: $07
	inc  b                                           ; $4866: $04
	add  b                                           ; $4867: $80

jr_02c_4868:
	inc  de                                          ; $4868: $13
	ld   bc, $0300                                   ; $4869: $01 $00 $03
	add  c                                           ; $486c: $81
	nop                                              ; $486d: $00
	inc  e                                           ; $486e: $1c

jr_02c_486f:
	ld   [hl], b                                     ; $486f: $70
	nop                                              ; $4870: $00
	ld   a, b                                        ; $4871: $78
	ldh  a, [rAUD4LEN]                               ; $4872: $f0 $20
	ret  nz                                          ; $4874: $c0

	jr   jr_02c_486f                                 ; $4875: $18 $f8

	inc  b                                           ; $4877: $04
	nop                                              ; $4878: $00
	jr   @+$62                                       ; $4879: $18 $60

	ldh  [rP1], a                                    ; $487b: $e0 $00
	sbc  b                                           ; $487d: $98
	nop                                              ; $487e: $00
	ld   hl, sp-$20                                  ; $487f: $f8 $e0
	jr   jr_02c_4883                                 ; $4881: $18 $00

jr_02c_4883:
	ld   hl, sp+$00                                  ; $4883: $f8 $00
	ld   [bc], a                                     ; $4885: $02
	ld   hl, sp+$14                                  ; $4886: $f8 $14
	db   $e4                                         ; $4888: $e4
	db   $f4                                         ; $4889: $f4
	inc  b                                           ; $488a: $04
	cp   $8b                                         ; $488b: $fe $8b
	nop                                              ; $488d: $00
	nop                                              ; $488e: $00
	rrca                                             ; $488f: $0f
	add  b                                           ; $4890: $80
	nop                                              ; $4891: $00
	ld   bc, $0e06                                   ; $4892: $01 $06 $0e
	add  b                                           ; $4895: $80
	ld   [bc], a                                     ; $4896: $02

jr_02c_4897:
	ld   bc, $0700                                   ; $4897: $01 $00 $07
	add  a                                           ; $489a: $87
	nop                                              ; $489b: $00
	rla                                              ; $489c: $17
	rlca                                             ; $489d: $07
	nop                                              ; $489e: $00
	rrca                                             ; $489f: $0f
	rra                                              ; $48a0: $1f
	rrca                                             ; $48a1: $0f
	ccf                                              ; $48a2: $3f
	dec  sp                                          ; $48a3: $3b
	ld   h, a                                        ; $48a4: $67
	add  h                                           ; $48a5: $84
	rrca                                             ; $48a6: $0f
	pop  bc                                          ; $48a7: $c1
	ld   e, $6d                                      ; $48a8: $1e $6d
	dec  a                                           ; $48aa: $3d
	ld   a, b                                        ; $48ab: $78
	ld   a, e                                        ; $48ac: $7b
	ld   [hl], h                                     ; $48ad: $74
	ldh  a, [$a6]                                    ; $48ae: $f0 $a6
	and  b                                           ; $48b0: $a0
	push hl                                          ; $48b1: $e5
	ld   l, d                                        ; $48b2: $6a
	ld   d, e                                        ; $48b3: $53
	ld   b, d                                        ; $48b4: $42
	add  b                                           ; $48b5: $80
	nop                                              ; $48b6: $00
	dec  hl                                          ; $48b7: $2b
	jr   nc, jr_02c_48ba                             ; $48b8: $30 $00

jr_02c_48ba:
	ld   c, b                                        ; $48ba: $48
	nop                                              ; $48bb: $00
	rst  $28                                         ; $48bc: $ef
	nop                                              ; $48bd: $00
	ld   [hl], a                                     ; $48be: $77
	nop                                              ; $48bf: $00
	db   $fc                                         ; $48c0: $fc
	add  b                                           ; $48c1: $80
	or   [hl]                                        ; $48c2: $b6
	cp   h                                           ; $48c3: $bc
	ldh  a, [$fc]                                    ; $48c4: $f0 $fc
	jr   nz, jr_02c_4904                             ; $48c6: $20 $3c

	jr   nc, @+$2e                                   ; $48c8: $30 $2c

	and  e                                           ; $48ca: $a3
	and  [hl]                                        ; $48cb: $a6
	ld   [bc], a                                     ; $48cc: $02
	or   d                                           ; $48cd: $b2
	jp   z, $9802                                    ; $48ce: $ca $02 $98

	nop                                              ; $48d1: $00
	ld   [hl-], a                                    ; $48d2: $32
	ld   [$0828], sp                                 ; $48d3: $08 $28 $08
	ld   bc, $0c00                                   ; $48d6: $01 $00 $0c
	nop                                              ; $48d9: $00
	stop                                             ; $48da: $10 $00
	db   $fc                                         ; $48dc: $fc
	nop                                              ; $48dd: $00
	xor  [hl]                                        ; $48de: $ae
	ld   c, d                                        ; $48df: $4a
	ld   b, d                                        ; $48e0: $42
	ld   b, e                                        ; $48e1: $43
	ld   b, b                                        ; $48e2: $40
	ld   b, c                                        ; $48e3: $41
	add  b                                           ; $48e4: $80
	jr   nc, @+$05                                   ; $48e5: $30 $03

	rrca                                             ; $48e7: $0f
	nop                                              ; $48e8: $00
	ld   b, $09                                      ; $48e9: $06 $09
	add  c                                           ; $48eb: $81
	rrca                                             ; $48ec: $0f
	add  c                                           ; $48ed: $81
	nop                                              ; $48ee: $00
	add  b                                           ; $48ef: $80
	inc  b                                           ; $48f0: $04
	add  b                                           ; $48f1: $80
	ld   c, $03                                      ; $48f2: $0e $03
	add  hl, de                                      ; $48f4: $19
	ld   [$0002], sp                                 ; $48f5: $08 $02 $00
	add  b                                           ; $48f8: $80
	inc  e                                           ; $48f9: $1c
	inc  bc                                          ; $48fa: $03
	ld   a, [bc]                                     ; $48fb: $0a
	ld   e, $f7                                      ; $48fc: $1e $f7
	rst  $38                                         ; $48fe: $ff
	add  b                                           ; $48ff: $80
	ld   b, h                                        ; $4900: $44
	ld   bc, $c848                                   ; $4901: $01 $48 $c8

jr_02c_4904:
	add  b                                           ; $4904: $80
	ret  nc                                          ; $4905: $d0

	dec  b                                           ; $4906: $05
	db   $10                                         ; $4907: $10
	sub  b                                           ; $4908: $90
	ldh  a, [rP1]                                    ; $4909: $f0 $00
	ldh  [rAUD1SWEEP], a                             ; $490b: $e0 $10
	add  c                                           ; $490d: $81
	ldh  a, [$83]                                    ; $490e: $f0 $83
	nop                                              ; $4910: $00
	ld   bc, $1090                                   ; $4911: $01 $90 $10
	add  b                                           ; $4914: $80
	jr   nc, jr_02c_4897                             ; $4915: $30 $80

	nop                                              ; $4917: $00
	add  b                                           ; $4918: $80
	ld   [hl], b                                     ; $4919: $70
	inc  b                                           ; $491a: $04
	inc  a                                           ; $491b: $3c
	ld   a, h                                        ; $491c: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $491d: $cf
	rst  $38                                         ; $491e: $ff
	nop                                              ; $491f: $00
	add  c                                           ; $4920: $81
	rlca                                             ; $4921: $07
	nop                                              ; $4922: $00
	dec  bc                                          ; $4923: $0b
	add  b                                           ; $4924: $80
	inc  bc                                          ; $4925: $03
	nop                                              ; $4926: $00
	inc  de                                          ; $4927: $13
	add  e                                           ; $4928: $83
	rra                                              ; $4929: $1f
	ld   b, $0f                                      ; $492a: $06 $0f
	rlca                                             ; $492c: $07
	ld   [$3d3c], sp                                 ; $492d: $08 $3c $3d
	ccf                                              ; $4930: $3f
	ld   a, $80                                      ; $4931: $3e $80
	ccf                                              ; $4933: $3f
	add  b                                           ; $4934: $80
	rra                                              ; $4935: $1f
	add  d                                           ; $4936: $82
	rlca                                             ; $4937: $07
	add  e                                           ; $4938: $83
	nop                                              ; $4939: $00
	add  c                                           ; $493a: $81
	ld   hl, sp+$00                                  ; $493b: $f8 $00
	ret  z                                           ; $493d: $c8

	add  c                                           ; $493e: $81
	ret  nz                                          ; $493f: $c0

	nop                                              ; $4940: $00
	ldh  a, [$80]                                    ; $4941: $f0 $80
	ld   hl, sp+$08                                  ; $4943: $f8 $08
	ldh  a, [$f8]                                    ; $4945: $f0 $f8
	add  sp, -$04                                    ; $4947: $e8 $fc
	inc  e                                           ; $4949: $1c
	jr   c, jr_02c_4904                              ; $494a: $38 $b8

	or   b                                           ; $494c: $b0
	jr   nc, @-$7e                                   ; $494d: $30 $80

	ld   [hl], b                                     ; $494f: $70
	add  h                                           ; $4950: $84
	ldh  a, [$82]                                    ; $4951: $f0 $82
	nop                                              ; $4953: $00
	add  c                                           ; $4954: $81
	add  d                                           ; $4955: $82
	ld   [bc], a                                     ; $4956: $02
	add  e                                           ; $4957: $83
	ldh  a, [$f1]                                    ; $4958: $f0 $f1
	add  b                                           ; $495a: $80
	ld   [$0f03], sp                                 ; $495b: $08 $03 $0f
	nop                                              ; $495e: $00
	ld   b, $09                                      ; $495f: $06 $09
	add  c                                           ; $4961: $81
	rrca                                             ; $4962: $0f
	add  c                                           ; $4963: $81
	nop                                              ; $4964: $00
	add  b                                           ; $4965: $80
	inc  b                                           ; $4966: $04
	add  b                                           ; $4967: $80
	ld   c, $03                                      ; $4968: $0e $03
	add  hl, de                                      ; $496a: $19
	ld   [$0002], sp                                 ; $496b: $08 $02 $00
	add  b                                           ; $496e: $80
	inc  e                                           ; $496f: $1c
	inc  b                                           ; $4970: $04
	ld   a, [bc]                                     ; $4971: $0a
	ld   e, $f7                                      ; $4972: $1e $f7
	rst  $38                                         ; $4974: $ff
	nop                                              ; $4975: $00
	add  c                                           ; $4976: $81
	rlca                                             ; $4977: $07
	nop                                              ; $4978: $00
	dec  bc                                          ; $4979: $0b
	add  b                                           ; $497a: $80
	inc  bc                                          ; $497b: $03
	nop                                              ; $497c: $00
	inc  de                                          ; $497d: $13
	add  e                                           ; $497e: $83
	rra                                              ; $497f: $1f
	ld   b, $0f                                      ; $4980: $06 $0f
	inc  de                                          ; $4982: $13
	inc  e                                           ; $4983: $1c
	ld   a, h                                        ; $4984: $7c
	ld   a, l                                        ; $4985: $7d
	ld   a, a                                        ; $4986: $7f
	ld   a, [hl]                                     ; $4987: $7e
	add  b                                           ; $4988: $80
	rrca                                             ; $4989: $0f
	add  h                                           ; $498a: $84
	rlca                                             ; $498b: $07
	add  d                                           ; $498c: $82
	nop                                              ; $498d: $00
	ld   de, $0007                                   ; $498e: $11 $07 $00
	rrca                                             ; $4991: $0f
	rra                                              ; $4992: $1f
	rrca                                             ; $4993: $0f

jr_02c_4994:
	ccf                                              ; $4994: $3f
	dec  sp                                          ; $4995: $3b
	ld   h, a                                        ; $4996: $67
	add  h                                           ; $4997: $84
	rrca                                             ; $4998: $0f
	pop  bc                                          ; $4999: $c1
	ld   e, $6d                                      ; $499a: $1e $6d
	dec  a                                           ; $499c: $3d
	ld   a, b                                        ; $499d: $78
	ld   a, e                                        ; $499e: $7b
	ld   [hl], h                                     ; $499f: $74
	ldh  a, [$80]                                    ; $49a0: $f0 $80
	and  b                                           ; $49a2: $a0
	ld   sp, $60ee                                   ; $49a3: $31 $ee $60
	ld   e, a                                        ; $49a6: $5f
	ld   b, b                                        ; $49a7: $40
	add  hl, bc                                      ; $49a8: $09
	nop                                              ; $49a9: $00
	inc  sp                                          ; $49aa: $33
	inc  bc                                          ; $49ab: $03
	ld   c, e                                        ; $49ac: $4b
	inc  bc                                          ; $49ad: $03
	ccf                                              ; $49ae: $3f
	nop                                              ; $49af: $00
	and  a                                           ; $49b0: $a7
	nop                                              ; $49b1: $00
	db   $fc                                         ; $49b2: $fc
	add  b                                           ; $49b3: $80
	or   [hl]                                        ; $49b4: $b6
	cp   h                                           ; $49b5: $bc
	ldh  a, [$fc]                                    ; $49b6: $f0 $fc
	jr   nz, jr_02c_49f6                             ; $49b8: $20 $3c

	jr   nc, @+$2e                                   ; $49ba: $30 $2c

	and  e                                           ; $49bc: $a3
	and  [hl]                                        ; $49bd: $a6
	ld   [bc], a                                     ; $49be: $02
	or   d                                           ; $49bf: $b2
	jp   z, $8002                                    ; $49c0: $ca $02 $80

	nop                                              ; $49c3: $00
	ld   [de], a                                     ; $49c4: $12
	nop                                              ; $49c5: $00
	jr   c, jr_02c_49c8                              ; $49c6: $38 $00

jr_02c_49c8:
	add  hl, hl                                      ; $49c8: $29
	nop                                              ; $49c9: $00
	db   $ec                                         ; $49ca: $ec
	ret  nz                                          ; $49cb: $c0

	ret  nc                                          ; $49cc: $d0

	ldh  [$fc], a                                    ; $49cd: $e0 $fc
	nop                                              ; $49cf: $00
	add  $22                                         ; $49d0: $c6 $22
	ld   [hl-], a                                    ; $49d2: $32
	inc  sp                                          ; $49d3: $33
	jr   @+$1b                                       ; $49d4: $18 $19

	add  b                                           ; $49d6: $80
	ld   [$0f03], sp                                 ; $49d7: $08 $03 $0f
	nop                                              ; $49da: $00
	ld   b, $09                                      ; $49db: $06 $09
	add  c                                           ; $49dd: $81
	rrca                                             ; $49de: $0f
	add  c                                           ; $49df: $81
	nop                                              ; $49e0: $00
	add  b                                           ; $49e1: $80
	inc  b                                           ; $49e2: $04
	add  b                                           ; $49e3: $80
	ld   c, $03                                      ; $49e4: $0e $03
	add  hl, de                                      ; $49e6: $19
	ld   [$0002], sp                                 ; $49e7: $08 $02 $00
	add  b                                           ; $49ea: $80
	inc  e                                           ; $49eb: $1c
	inc  b                                           ; $49ec: $04
	ld   a, [bc]                                     ; $49ed: $0a
	ld   e, $f7                                      ; $49ee: $1e $f7
	rst  $38                                         ; $49f0: $ff
	nop                                              ; $49f1: $00
	add  d                                           ; $49f2: $82
	rlca                                             ; $49f3: $07
	add  b                                           ; $49f4: $80
	rrca                                             ; $49f5: $0f

jr_02c_49f6:
	add  e                                           ; $49f6: $83
	rra                                              ; $49f7: $1f
	rlca                                             ; $49f8: $07
	rrca                                             ; $49f9: $0f
	rra                                              ; $49fa: $1f
	inc  sp                                          ; $49fb: $33
	inc  a                                           ; $49fc: $3c
	inc  e                                           ; $49fd: $1c
	dec  e                                           ; $49fe: $1d
	rrca                                             ; $49ff: $0f
	ld   c, $80                                      ; $4a00: $0e $80
	rrca                                             ; $4a02: $0f
	add  h                                           ; $4a03: $84
	rlca                                             ; $4a04: $07
	add  e                                           ; $4a05: $83
	nop                                              ; $4a06: $00
	adc  b                                           ; $4a07: $88
	ld   hl, sp-$80                                  ; $4a08: $f8 $80
	ldh  a, [rTMA]                                   ; $4a0a: $f0 $06
	ldh  [$f8], a                                    ; $4a0c: $e0 $f8
	jr   jr_02c_4a48                                 ; $4a0e: $18 $38

	cp   b                                           ; $4a10: $b8
	or   b                                           ; $4a11: $b0
	jr   nc, jr_02c_4994                             ; $4a12: $30 $80

	ld   [hl], b                                     ; $4a14: $70
	add  h                                           ; $4a15: $84
	ldh  a, [$82]                                    ; $4a16: $f0 $82
	nop                                              ; $4a18: $00
	dec  b                                           ; $4a19: $05
	rlca                                             ; $4a1a: $07
	nop                                              ; $4a1b: $00
	jr   jr_02c_4a20                                 ; $4a1c: $18 $02

	inc  hl                                          ; $4a1e: $23
	add  hl, de                                      ; $4a1f: $19

jr_02c_4a20:
	add  b                                           ; $4a20: $80
	dec  de                                          ; $4a21: $1b
	ld   bc, $071f                                   ; $4a22: $01 $1f $07
	add  b                                           ; $4a25: $80
	rra                                              ; $4a26: $1f
	inc  bc                                          ; $4a27: $03
	cpl                                              ; $4a28: $2f
	rrca                                             ; $4a29: $0f
	stop                                             ; $4a2a: $10 $00
	add  b                                           ; $4a2c: $80
	rlca                                             ; $4a2d: $07
	add  b                                           ; $4a2e: $80
	nop                                              ; $4a2f: $00
	ld   bc, $0d1d                                   ; $4a30: $01 $1d $0d
	add  b                                           ; $4a33: $80
	nop                                              ; $4a34: $00
	add  b                                           ; $4a35: $80
	ld   c, $80                                      ; $4a36: $0e $80
	nop                                              ; $4a38: $00
	rlca                                             ; $4a39: $07
	jr   nz, jr_02c_4a5a                             ; $4a3a: $20 $1e

	ld   e, [hl]                                     ; $4a3c: $5e
	nop                                              ; $4a3d: $00
	adc  a                                           ; $4a3e: $8f
	nop                                              ; $4a3f: $00
	jr   c, @+$32                                    ; $4a40: $38 $30

	add  b                                           ; $4a42: $80
	ret  nz                                          ; $4a43: $c0

	add  h                                           ; $4a44: $84
	ldh  a, [$80]                                    ; $4a45: $f0 $80
	ld   d, b                                        ; $4a47: $50

jr_02c_4a48:
	add  b                                           ; $4a48: $80
	nop                                              ; $4a49: $00
	add  b                                           ; $4a4a: $80
	ldh  a, [$80]                                    ; $4a4b: $f0 $80
	nop                                              ; $4a4d: $00
	add  b                                           ; $4a4e: $80
	ld   d, b                                        ; $4a4f: $50
	add  b                                           ; $4a50: $80

jr_02c_4a51:
	nop                                              ; $4a51: $00
	ld   bc, $30b0                                   ; $4a52: $01 $b0 $30
	add  b                                           ; $4a55: $80
	nop                                              ; $4a56: $00
	dec  c                                           ; $4a57: $0d
	add  b                                           ; $4a58: $80
	ld   [hl], b                                     ; $4a59: $70

jr_02c_4a5a:
	ld   [hl], a                                     ; $4a5a: $77
	nop                                              ; $4a5b: $00
	ld   hl, sp+$00                                  ; $4a5c: $f8 $00
	inc  a                                           ; $4a5e: $3c
	dec  b                                           ; $4a5f: $05
	ld   b, l                                        ; $4a60: $45
	dec  [hl]                                        ; $4a61: $35
	scf                                              ; $4a62: $37
	ld   [hl], $7e                                   ; $4a63: $36 $7e
	ld   c, $80                                      ; $4a65: $0e $80
	ld   e, $03                                      ; $4a67: $1e $03
	dec  l                                           ; $4a69: $2d
	dec  c                                           ; $4a6a: $0d
	stop                                             ; $4a6b: $10 $00
	add  b                                           ; $4a6d: $80
	ld   b, $80                                      ; $4a6e: $06 $80
	ld   bc, $1a01                                   ; $4a70: $01 $01 $1a
	ld   a, [bc]                                     ; $4a73: $0a
	add  b                                           ; $4a74: $80
	nop                                              ; $4a75: $00
	add  b                                           ; $4a76: $80
	ld   c, $0a                                      ; $4a77: $0e $0a
	ld   hl, $4000                                   ; $4a79: $21 $00 $40
	inc  a                                           ; $4a7c: $3c
	dec  a                                           ; $4a7d: $3d
	nop                                              ; $4a7e: $00
	add  a                                           ; $4a7f: $87
	nop                                              ; $4a80: $00
	inc  e                                           ; $4a81: $1c
	sbc  b                                           ; $4a82: $98
	adc  [hl]                                        ; $4a83: $8e
	add  c                                           ; $4a84: $81
	ld   l, h                                        ; $4a85: $6c
	ld   bc, $9cfc                                   ; $4a86: $01 $fc $9c
	add  b                                           ; $4a89: $80
	cp   h                                           ; $4a8a: $bc
	inc  bc                                          ; $4a8b: $03
	jp   nz, $04c0                                   ; $4a8c: $c2 $c0 $04

	nop                                              ; $4a8f: $00
	add  b                                           ; $4a90: $80
	or   b                                           ; $4a91: $b0
	add  b                                           ; $4a92: $80
	ld   b, b                                        ; $4a93: $40
	ld   bc, $a8ac                                   ; $4a94: $01 $ac $a8
	add  b                                           ; $4a97: $80
	nop                                              ; $4a98: $00
	ld   [bc], a                                     ; $4a99: $02
	cp   [hl]                                        ; $4a9a: $be
	inc  a                                           ; $4a9b: $3c
	ld   b, b                                        ; $4a9c: $40
	add  b                                           ; $4a9d: $80
	nop                                              ; $4a9e: $00

jr_02c_4a9f:
	add  hl, bc                                      ; $4a9f: $09
	inc  e                                           ; $4aa0: $1c
	db   $dd                                         ; $4aa1: $dd
	nop                                              ; $4aa2: $00
	ld   hl, sp+$00                                  ; $4aa3: $f8 $00
	ld   l, a                                        ; $4aa5: $6f
	rlca                                             ; $4aa6: $07
	sbc  [hl]                                        ; $4aa7: $9e
	ld   l, [hl]                                     ; $4aa8: $6e
	ld   a, a                                        ; $4aa9: $7f
	add  b                                           ; $4aaa: $80
	ld   e, a                                        ; $4aab: $5f
	ld   b, $1f                                      ; $4aac: $06 $1f
	cp   a                                           ; $4aae: $bf
	ccf                                              ; $4aaf: $3f
	ld   b, l                                        ; $4ab0: $45
	dec  b                                           ; $4ab1: $05
	jr   nc, jr_02c_4ab4                             ; $4ab2: $30 $00

jr_02c_4ab4:
	add  b                                           ; $4ab4: $80
	rlca                                             ; $4ab5: $07
	add  b                                           ; $4ab6: $80
	nop                                              ; $4ab7: $00
	ld   bc, $0a1a                                   ; $4ab8: $01 $1a $0a
	add  b                                           ; $4abb: $80
	nop                                              ; $4abc: $00
	dec  c                                           ; $4abd: $0d
	ld   a, $1e                                      ; $4abe: $3e $1e
	ld   bc, $4000                                   ; $4ac0: $01 $00 $40
	inc  a                                           ; $4ac3: $3c
	cp   l                                           ; $4ac4: $bd
	nop                                              ; $4ac5: $00
	rrca                                             ; $4ac6: $0f
	nop                                              ; $4ac7: $00
	add  sp, -$20                                    ; $4ac8: $e8 $e0
	inc  e                                           ; $4aca: $1c
	jr   jr_02c_4a51                                 ; $4acb: $18 $84

	ld   hl, sp-$80                                  ; $4acd: $f8 $80
	ld   d, b                                        ; $4acf: $50
	ld   bc, $0004                                   ; $4ad0: $01 $04 $00
	add  b                                           ; $4ad3: $80
	ldh  a, [$80]                                    ; $4ad4: $f0 $80
	nop                                              ; $4ad6: $00
	ld   bc, $a8ac                                   ; $4ad7: $01 $ac $a8
	add  b                                           ; $4ada: $80
	nop                                              ; $4adb: $00
	ld   bc, $38b8                                   ; $4adc: $01 $b8 $38
	add  c                                           ; $4adf: $81
	nop                                              ; $4ae0: $00
	rlca                                             ; $4ae1: $07
	jr   c, jr_02c_4a9f                              ; $4ae2: $38 $bb

	nop                                              ; $4ae4: $00
	db   $fc                                         ; $4ae5: $fc
	ld   bc, $0205                                   ; $4ae6: $01 $05 $02
	inc  bc                                          ; $4ae9: $03
	add  a                                           ; $4aea: $87
	ld   bc, $0280                                   ; $4aeb: $01 $80 $02
	nop                                              ; $4aee: $00
	nop                                              ; $4aef: $00
	add  d                                           ; $4af0: $82
	ld   bc, $0001                                   ; $4af1: $01 $01 $00
	dec  b                                           ; $4af4: $05
	add  c                                           ; $4af5: $81
	ld   bc, $0080                                   ; $4af6: $01 $80 $00
	ld   b, $04                                      ; $4af9: $06 $04
	inc  bc                                          ; $4afb: $03
	ld   a, e                                        ; $4afc: $7b
	nop                                              ; $4afd: $00
	sbc  a                                           ; $4afe: $9f
	nop                                              ; $4aff: $00
	ret  nc                                          ; $4b00: $d0

	adc  c                                           ; $4b01: $89
	ret  nz                                          ; $4b02: $c0

	add  b                                           ; $4b03: $80
	jr   nz, jr_02c_4b07                             ; $4b04: $20 $01

	nop                                              ; $4b06: $00

jr_02c_4b07:
	add  b                                           ; $4b07: $80
	add  b                                           ; $4b08: $80
	and  b                                           ; $4b09: $a0
	ld   [bc], a                                     ; $4b0a: $02
	add  b                                           ; $4b0b: $80
	nop                                              ; $4b0c: $00
	ret  nc                                          ; $4b0d: $d0

	add  c                                           ; $4b0e: $81
	ret  nz                                          ; $4b0f: $c0

	add  c                                           ; $4b10: $81
	nop                                              ; $4b11: $00
	ld   [$dfc0], sp                                 ; $4b12: $08 $c0 $df
	nop                                              ; $4b15: $00
	db   $fc                                         ; $4b16: $fc
	ld   bc, $000d                                   ; $4b17: $01 $0d $00
	ld   de, $800d                                   ; $4b1a: $11 $0d $80
	inc  c                                           ; $4b1d: $0c
	nop                                              ; $4b1e: $00
	rrca                                             ; $4b1f: $0f
	add  b                                           ; $4b20: $80
	inc  bc                                          ; $4b21: $03
	inc  b                                           ; $4b22: $04
	dec  bc                                          ; $4b23: $0b
	jr   jr_02c_4b26                                 ; $4b24: $18 $00

jr_02c_4b26:
	dec  bc                                          ; $4b26: $0b
	inc  bc                                          ; $4b27: $03
	add  b                                           ; $4b28: $80
	nop                                              ; $4b29: $00
	add  b                                           ; $4b2a: $80
	ld   [bc], a                                     ; $4b2b: $02
	add  b                                           ; $4b2c: $80
	nop                                              ; $4b2d: $00
	nop                                              ; $4b2e: $00
	dec  b                                           ; $4b2f: $05
	add  c                                           ; $4b30: $81
	ld   bc, $0080                                   ; $4b31: $01 $80 $00
	rlca                                             ; $4b34: $07
	inc  b                                           ; $4b35: $04
	inc  bc                                          ; $4b36: $03
	ld   a, e                                        ; $4b37: $7b
	nop                                              ; $4b38: $00
	sbc  a                                           ; $4b39: $9f
	nop                                              ; $4b3a: $00
	ret  nc                                          ; $4b3b: $d0

	ret  nz                                          ; $4b3c: $c0

	add  [hl]                                        ; $4b3d: $86
	ldh  [$80], a                                    ; $4b3e: $e0 $80
	nop                                              ; $4b40: $00
	add  b                                           ; $4b41: $80
	ldh  [$80], a                                    ; $4b42: $e0 $80
	nop                                              ; $4b44: $00
	add  b                                           ; $4b45: $80
	and  b                                           ; $4b46: $a0
	add  b                                           ; $4b47: $80
	nop                                              ; $4b48: $00
	nop                                              ; $4b49: $00
	ret  nc                                          ; $4b4a: $d0

	add  c                                           ; $4b4b: $81
	ret  nz                                          ; $4b4c: $c0

	add  c                                           ; $4b4d: $81
	nop                                              ; $4b4e: $00
	inc  bc                                          ; $4b4f: $03
	ret  nz                                          ; $4b50: $c0

	rst  JumpTable                                         ; $4b51: $df
	nop                                              ; $4b52: $00
	rst  $38                                         ; $4b53: $ff
	add  c                                           ; $4b54: $81
	nop                                              ; $4b55: $00
	ld   a, [bc]                                     ; $4b56: $0a
	ld   a, a                                        ; $4b57: $7f
	nop                                              ; $4b58: $00
	ld   b, b                                        ; $4b59: $40
	nop                                              ; $4b5a: $00
	ld   b, b                                        ; $4b5b: $40
	nop                                              ; $4b5c: $00
	sub  b                                           ; $4b5d: $90
	db   $10                                         ; $4b5e: $10
	adc  [hl]                                        ; $4b5f: $8e
	ld   c, $80                                      ; $4b60: $0e $80
	add  b                                           ; $4b62: $80
	nop                                              ; $4b63: $00
	add  b                                           ; $4b64: $80
	inc  b                                           ; $4b65: $04
	add  b                                           ; $4b66: $80
	dec  b                                           ; $4b67: $05
	add  b                                           ; $4b68: $80
	dec  h                                           ; $4b69: $25
	add  hl, bc                                      ; $4b6a: $09
	ld   hl, $25a5                                   ; $4b6b: $21 $a5 $25
	dec  [hl]                                        ; $4b6e: $35
	scf                                              ; $4b6f: $37
	ld   h, a                                        ; $4b70: $67
	rlca                                             ; $4b71: $07
	inc  hl                                          ; $4b72: $23
	rrca                                             ; $4b73: $0f
	db   $10                                         ; $4b74: $10
	add  c                                           ; $4b75: $81
	nop                                              ; $4b76: $00
	rlca                                             ; $4b77: $07
	ret  nz                                          ; $4b78: $c0

	nop                                              ; $4b79: $00
	jr   nc, jr_02c_4b7c                             ; $4b7a: $30 $00

jr_02c_4b7c:
	ld   [$1400], sp                                 ; $4b7c: $08 $00 $14
	db   $10                                         ; $4b7f: $10
	add  b                                           ; $4b80: $80
	ld   h, b                                        ; $4b81: $60
	nop                                              ; $4b82: $00
	ld   [bc], a                                     ; $4b83: $02
	add  l                                           ; $4b84: $85
	nop                                              ; $4b85: $00
	nop                                              ; $4b86: $00
	ld   [bc], a                                     ; $4b87: $02
	add  b                                           ; $4b88: $80
	nop                                              ; $4b89: $00
	inc  c                                           ; $4b8a: $0c
	ld   b, b                                        ; $4b8b: $40
	ld   b, h                                        ; $4b8c: $44
	ret  nz                                          ; $4b8d: $c0

	ret  z                                           ; $4b8e: $c8

	add  b                                           ; $4b8f: $80
	sub  b                                           ; $4b90: $90
	add  b                                           ; $4b91: $80
	ld   l, a                                        ; $4b92: $6f
	nop                                              ; $4b93: $00
	ld   [$0302], sp                                 ; $4b94: $08 $02 $03
	ld   bc, $0380                                   ; $4b97: $01 $80 $03
	add  c                                           ; $4b9a: $81
	nop                                              ; $4b9b: $00
	add  d                                           ; $4b9c: $82
	inc  bc                                          ; $4b9d: $03
	add  c                                           ; $4b9e: $81
	nop                                              ; $4b9f: $00
	add  b                                           ; $4ba0: $80
	ld   [bc], a                                     ; $4ba1: $02
	add  b                                           ; $4ba2: $80
	nop                                              ; $4ba3: $00
	nop                                              ; $4ba4: $00
	dec  b                                           ; $4ba5: $05
	add  c                                           ; $4ba6: $81
	ld   bc, $0080                                   ; $4ba7: $01 $80 $00
	add  hl, bc                                      ; $4baa: $09
	inc  b                                           ; $4bab: $04
	inc  bc                                          ; $4bac: $03
	ei                                               ; $4bad: $fb
	nop                                              ; $4bae: $00
	rra                                              ; $4baf: $1f
	nop                                              ; $4bb0: $00
	ldh  a, [$e0]                                    ; $4bb1: $f0 $e0
	ld   hl, sp-$10                                  ; $4bb3: $f8 $f0
	add  d                                           ; $4bb5: $82
	ld   [hl], b                                     ; $4bb6: $70
	ld   bc, $6068                                   ; $4bb7: $01 $68 $60
	add  b                                           ; $4bba: $80
	nop                                              ; $4bbb: $00
	add  b                                           ; $4bbc: $80
	ldh  [$80], a                                    ; $4bbd: $e0 $80
	nop                                              ; $4bbf: $00
	add  b                                           ; $4bc0: $80
	and  b                                           ; $4bc1: $a0
	add  b                                           ; $4bc2: $80
	nop                                              ; $4bc3: $00
	nop                                              ; $4bc4: $00
	ret  nc                                          ; $4bc5: $d0

	add  c                                           ; $4bc6: $81
	ret  nz                                          ; $4bc7: $c0

	add  c                                           ; $4bc8: $81
	nop                                              ; $4bc9: $00
	ld   a, [de]                                     ; $4bca: $1a
	ret  nz                                          ; $4bcb: $c0

	rst  JumpTable                                         ; $4bcc: $df
	nop                                              ; $4bcd: $00
	ld   hl, sp+$00                                  ; $4bce: $f8 $00
	rrca                                             ; $4bd0: $0f
	rra                                              ; $4bd1: $1f
	rrca                                             ; $4bd2: $0f
	ccf                                              ; $4bd3: $3f
	dec  sp                                          ; $4bd4: $3b
	ld   h, a                                        ; $4bd5: $67
	add  h                                           ; $4bd6: $84
	rrca                                             ; $4bd7: $0f
	pop  bc                                          ; $4bd8: $c1
	ld   e, $6d                                      ; $4bd9: $1e $6d
	dec  a                                           ; $4bdb: $3d
	ld   a, b                                        ; $4bdc: $78
	ld   a, e                                        ; $4bdd: $7b
	ld   [hl], h                                     ; $4bde: $74
	ldh  a, [$a6]                                    ; $4bdf: $f0 $a6
	and  b                                           ; $4be1: $a0
	db   $e3                                         ; $4be2: $e3
	ld   l, h                                        ; $4be3: $6c
	ld   e, c                                        ; $4be4: $59
	ld   c, b                                        ; $4be5: $48
	add  b                                           ; $4be6: $80
	nop                                              ; $4be7: $00
	dec  hl                                          ; $4be8: $2b
	jr   nc, jr_02c_4beb                             ; $4be9: $30 $00

jr_02c_4beb:
	ld   e, h                                        ; $4beb: $5c
	nop                                              ; $4bec: $00
	rra                                              ; $4bed: $1f
	nop                                              ; $4bee: $00
	sub  e                                           ; $4bef: $93
	nop                                              ; $4bf0: $00
	db   $fc                                         ; $4bf1: $fc
	add  b                                           ; $4bf2: $80
	or   [hl]                                        ; $4bf3: $b6
	cp   h                                           ; $4bf4: $bc
	ldh  a, [$fc]                                    ; $4bf5: $f0 $fc
	jr   nz, jr_02c_4c35                             ; $4bf7: $20 $3c

	jr   nc, jr_02c_4c27                             ; $4bf9: $30 $2c

	and  e                                           ; $4bfb: $a3
	and  [hl]                                        ; $4bfc: $a6
	ld   [bc], a                                     ; $4bfd: $02
	or   d                                           ; $4bfe: $b2
	jp   z, $9802                                    ; $4bff: $ca $02 $98

	nop                                              ; $4c02: $00
	ld   a, [hl+]                                    ; $4c03: $2a
	stop                                             ; $4c04: $10 $00
	jr   nz, jr_02c_4c09                             ; $4c06: $20 $01

	nop                                              ; $4c08: $00

jr_02c_4c09:
	inc  c                                           ; $4c09: $0c
	nop                                              ; $4c0a: $00
	jr   jr_02c_4c0d                                 ; $4c0b: $18 $00

jr_02c_4c0d:
	ld   hl, sp+$00                                  ; $4c0d: $f8 $00
	jp   z, Jump_02c_4222                            ; $4c0f: $ca $22 $42

	ld   b, e                                        ; $4c12: $43
	ld   b, [hl]                                     ; $4c13: $46
	ld   b, a                                        ; $4c14: $47
	add  b                                           ; $4c15: $80
	ld   c, c                                        ; $4c16: $49
	add  b                                           ; $4c17: $80
	add  hl, hl                                      ; $4c18: $29
	add  b                                           ; $4c19: $80
	rra                                              ; $4c1a: $1f
	add  b                                           ; $4c1b: $80
	inc  d                                           ; $4c1c: $14
	add  c                                           ; $4c1d: $81
	rra                                              ; $4c1e: $1f
	nop                                              ; $4c1f: $00
	nop                                              ; $4c20: $00
	add  b                                           ; $4c21: $80
	ld   [$1d05], sp                                 ; $4c22: $08 $05 $1d
	inc  e                                           ; $4c25: $1c
	ld   [hl-], a                                    ; $4c26: $32

jr_02c_4c27:
	db   $10                                         ; $4c27: $10
	inc  b                                           ; $4c28: $04
	nop                                              ; $4c29: $00
	add  b                                           ; $4c2a: $80
	jr   c, jr_02c_4c30                              ; $4c2b: $38 $03

	ld   c, b                                        ; $4c2d: $48
	ld   a, b                                        ; $4c2e: $78
	rst  $30                                         ; $4c2f: $f7

jr_02c_4c30:
	rst  $38                                         ; $4c30: $ff
	add  b                                           ; $4c31: $80
	ld   c, h                                        ; $4c32: $4c
	inc  bc                                          ; $4c33: $03
	ld   d, d                                        ; $4c34: $52

jr_02c_4c35:
	jp   nc, $9212                                   ; $4c35: $d2 $12 $92

	add  b                                           ; $4c38: $80
	inc  c                                           ; $4c39: $0c

jr_02c_4c3a:
	add  b                                           ; $4c3a: $80
	inc  b                                           ; $4c3b: $04
	inc  bc                                          ; $4c3c: $03
	ld   hl, sp+$18                                  ; $4c3d: $f8 $18
	ldh  a, [rAUD1SWEEP]                             ; $4c3f: $f0 $10
	add  c                                           ; $4c41: $81
	ldh  a, [$81]                                    ; $4c42: $f0 $81
	nop                                              ; $4c44: $00
	add  b                                           ; $4c45: $80
	db   $10                                         ; $4c46: $10
	ld   bc, $0880                                   ; $4c47: $01 $80 $08
	add  b                                           ; $4c4a: $80
	nop                                              ; $4c4b: $00
	ld   b, $78                                      ; $4c4c: $06 $78
	jr   c, jr_02c_4c6e                              ; $4c4e: $38 $1e

	ld   a, $e7                                      ; $4c50: $3e $e7
	rst  $38                                         ; $4c52: $ff
	nop                                              ; $4c53: $00
	add  c                                           ; $4c54: $81
	ld   a, a                                        ; $4c55: $7f
	ld   bc, $3d7d                                   ; $4c56: $01 $7d $3d
	add  b                                           ; $4c59: $80
	add  hl, sp                                      ; $4c5a: $39
	nop                                              ; $4c5b: $00
	ccf                                              ; $4c5c: $3f
	add  b                                           ; $4c5d: $80
	rra                                              ; $4c5e: $1f
	add  b                                           ; $4c5f: $80
	rrca                                             ; $4c60: $0f
	ld   b, $07                                      ; $4c61: $06 $07
	dec  bc                                          ; $4c63: $0b
	inc  c                                           ; $4c64: $0c
	inc  e                                           ; $4c65: $1c
	dec  e                                           ; $4c66: $1d
	dec  a                                           ; $4c67: $3d
	inc  a                                           ; $4c68: $3c
	add  b                                           ; $4c69: $80
	jr   c, @+$03                                    ; $4c6a: $38 $01

	jr   nc, jr_02c_4ca4                             ; $4c6c: $30 $36

jr_02c_4c6e:
	add  b                                           ; $4c6e: $80
	ld   d, $01                                      ; $4c6f: $16 $01
	ld   b, $00                                      ; $4c71: $06 $00
	add  b                                           ; $4c73: $80
	dec  bc                                          ; $4c74: $0b
	add  c                                           ; $4c75: $81
	nop                                              ; $4c76: $00
	add  c                                           ; $4c77: $81
	cp   $01                                         ; $4c78: $fe $01
	or   $f4                                         ; $4c7a: $f6 $f4
	add  b                                           ; $4c7c: $80
	db   $e4                                         ; $4c7d: $e4
	nop                                              ; $4c7e: $00
	db   $fc                                         ; $4c7f: $fc
	add  b                                           ; $4c80: $80
	ld   hl, sp-$80                                  ; $4c81: $f8 $80
	ldh  a, [rTMA]                                   ; $4c83: $f0 $06
	ldh  [$f0], a                                    ; $4c85: $e0 $f0
	db   $10                                         ; $4c87: $10
	jr   nc, jr_02c_4c3a                             ; $4c88: $30 $b0

	and  b                                           ; $4c8a: $a0
	inc  l                                           ; $4c8b: $2c
	add  b                                           ; $4c8c: $80
	ld   l, h                                        ; $4c8d: $6c
	ld   bc, $f0fc                                   ; $4c8e: $01 $fc $f0
	add  b                                           ; $4c91: $80
	ld   hl, sp-$80                                  ; $4c92: $f8 $80
	nop                                              ; $4c94: $00
	add  b                                           ; $4c95: $80
	ldh  a, [$80]                                    ; $4c96: $f0 $80
	nop                                              ; $4c98: $00
	add  b                                           ; $4c99: $80
	rrca                                             ; $4c9a: $0f
	add  b                                           ; $4c9b: $80
	db   $10                                         ; $4c9c: $10
	add  b                                           ; $4c9d: $80
	daa                                              ; $4c9e: $27
	add  h                                           ; $4c9f: $84
	jr   nz, jr_02c_4ca5                             ; $4ca0: $20 $03

	rra                                              ; $4ca2: $1f
	db   $10                                         ; $4ca3: $10

jr_02c_4ca4:
	rra                                              ; $4ca4: $1f

jr_02c_4ca5:
	db   $10                                         ; $4ca5: $10
	add  c                                           ; $4ca6: $81
	rra                                              ; $4ca7: $1f
	add  c                                           ; $4ca8: $81
	nop                                              ; $4ca9: $00
	nop                                              ; $4caa: $00
	daa                                              ; $4cab: $27
	add  b                                           ; $4cac: $80
	inc  b                                           ; $4cad: $04
	nop                                              ; $4cae: $00
	nop                                              ; $4caf: $00
	add  b                                           ; $4cb0: $80
	jr   c, jr_02c_4cb6                              ; $4cb1: $38 $03

	ld   h, b                                        ; $4cb3: $60
	ld   a, b                                        ; $4cb4: $78
	rst  JumpTable                                         ; $4cb5: $df

jr_02c_4cb6:
	rst  $38                                         ; $4cb6: $ff
	add  b                                           ; $4cb7: $80
	db   $ec                                         ; $4cb8: $ec
	add  b                                           ; $4cb9: $80
	ld   [de], a                                     ; $4cba: $12
	add  b                                           ; $4cbb: $80
	ld   a, [bc]                                     ; $4cbc: $0a
	add  h                                           ; $4cbd: $84
	inc  b                                           ; $4cbe: $04
	inc  bc                                          ; $4cbf: $03
	ld   hl, sp+$18                                  ; $4cc0: $f8 $18
	ldh  a, [rAUD1SWEEP]                             ; $4cc2: $f0 $10
	add  c                                           ; $4cc4: $81
	ldh  a, [rP1]                                    ; $4cc5: $f0 $00
	nop                                              ; $4cc7: $00
	add  b                                           ; $4cc8: $80
	db   $10                                         ; $4cc9: $10
	add  hl, bc                                      ; $4cca: $09
	sub  b                                           ; $4ccb: $90
	jr   @+$42                                       ; $4ccc: $18 $40

	nop                                              ; $4cce: $00
	jr   c, jr_02c_4d0d                              ; $4ccf: $38 $3c

	ld   b, $3e                                      ; $4cd1: $06 $3e
	ei                                               ; $4cd3: $fb
	rst  $38                                         ; $4cd4: $ff
	add  c                                           ; $4cd5: $81
	nop                                              ; $4cd6: $00
	add  d                                           ; $4cd7: $82
	inc  bc                                          ; $4cd8: $03
	adc  b                                           ; $4cd9: $88
	rrca                                             ; $4cda: $0f
	nop                                              ; $4cdb: $00
	nop                                              ; $4cdc: $00
	add  b                                           ; $4cdd: $80
	rrca                                             ; $4cde: $0f
	add  [hl]                                        ; $4cdf: $86
	rra                                              ; $4ce0: $1f
	add  b                                           ; $4ce1: $80
	nop                                              ; $4ce2: $00
	add  b                                           ; $4ce3: $80
	rrca                                             ; $4ce4: $0f
	add  c                                           ; $4ce5: $81
	nop                                              ; $4ce6: $00
	add  c                                           ; $4ce7: $81
	ld   hl, sp-$80                                  ; $4ce8: $f8 $80
	add  sp, -$80                                    ; $4cea: $e8 $80
	ret  z                                           ; $4cec: $c8

	add  c                                           ; $4ced: $81
	ld   hl, sp-$80                                  ; $4cee: $f8 $80

jr_02c_4cf0:
	ldh  a, [$80]                                    ; $4cf0: $f0 $80
	ldh  [rTIMA], a                                  ; $4cf2: $e0 $05
	nop                                              ; $4cf4: $00
	ldh  [$fc], a                                    ; $4cf5: $e0 $fc
	db   $ec                                         ; $4cf7: $ec
	db   $fc                                         ; $4cf8: $fc
	db   $f4                                         ; $4cf9: $f4
	add  e                                           ; $4cfa: $83
	ld   hl, sp-$80                                  ; $4cfb: $f8 $80
	nop                                              ; $4cfd: $00
	add  b                                           ; $4cfe: $80
	ldh  [$80], a                                    ; $4cff: $e0 $80
	xor  [hl]                                        ; $4d01: $ae
	add  b                                           ; $4d02: $80
	ld   d, l                                        ; $4d03: $55
	add  b                                           ; $4d04: $80
	xor  [hl]                                        ; $4d05: $ae
	add  b                                           ; $4d06: $80
	ld   d, l                                        ; $4d07: $55
	add  b                                           ; $4d08: $80
	xor  [hl]                                        ; $4d09: $ae
	add  b                                           ; $4d0a: $80
	ld   d, l                                        ; $4d0b: $55
	add  b                                           ; $4d0c: $80

jr_02c_4d0d:
	ld   l, $80                                      ; $4d0d: $2e $80
	dec  d                                           ; $4d0f: $15
	add  b                                           ; $4d10: $80
	xor  d                                           ; $4d11: $aa
	add  b                                           ; $4d12: $80
	ld   d, l                                        ; $4d13: $55
	add  b                                           ; $4d14: $80
	xor  d                                           ; $4d15: $aa
	add  b                                           ; $4d16: $80
	ld   d, l                                        ; $4d17: $55
	add  b                                           ; $4d18: $80
	xor  d                                           ; $4d19: $aa
	add  b                                           ; $4d1a: $80
	ld   d, l                                        ; $4d1b: $55
	add  b                                           ; $4d1c: $80
	xor  d                                           ; $4d1d: $aa
	add  b                                           ; $4d1e: $80
	ld   d, l                                        ; $4d1f: $55
	add  b                                           ; $4d20: $80
	xor  d                                           ; $4d21: $aa
	add  b                                           ; $4d22: $80
	ld   d, l                                        ; $4d23: $55
	add  b                                           ; $4d24: $80
	xor  d                                           ; $4d25: $aa
	add  b                                           ; $4d26: $80
	ld   d, l                                        ; $4d27: $55
	add  b                                           ; $4d28: $80

jr_02c_4d29:
	xor  d                                           ; $4d29: $aa
	add  b                                           ; $4d2a: $80
	ld   d, l                                        ; $4d2b: $55
	add  b                                           ; $4d2c: $80
	and  b                                           ; $4d2d: $a0
	add  b                                           ; $4d2e: $80

jr_02c_4d2f:
	nop                                              ; $4d2f: $00
	add  b                                           ; $4d30: $80
	xor  d                                           ; $4d31: $aa
	add  b                                           ; $4d32: $80
	ld   d, l                                        ; $4d33: $55
	add  b                                           ; $4d34: $80
	xor  d                                           ; $4d35: $aa
	add  b                                           ; $4d36: $80
	ld   d, l                                        ; $4d37: $55
	add  b                                           ; $4d38: $80
	xor  d                                           ; $4d39: $aa
	add  b                                           ; $4d3a: $80
	ld   d, l                                        ; $4d3b: $55
	add  b                                           ; $4d3c: $80
	ld   a, [bc]                                     ; $4d3d: $0a
	add  b                                           ; $4d3e: $80
	ld   bc, $1e02                                   ; $4d3f: $01 $02 $1e
	ei                                               ; $4d42: $fb
	jp   c, $cd80                                    ; $4d43: $da $80 $cd

	add  c                                           ; $4d46: $81
	push af                                          ; $4d47: $f5
	ld   [$15d1], sp                                 ; $4d48: $08 $d1 $15

jr_02c_4d4b:
	push hl                                          ; $4d4b: $e5
	dec  d                                           ; $4d4c: $15
	call nc, $e5f5                                   ; $4d4d: $d4 $f5 $e5
	call $8137                                       ; $4d50: $cd $37 $81
	ccf                                              ; $4d53: $3f
	ld   [$0f2f], sp                                 ; $4d54: $08 $2f $0f
	dec  bc                                          ; $4d57: $0b
	inc  bc                                          ; $4d58: $03
	inc  de                                          ; $4d59: $13
	db   $10                                         ; $4d5a: $10
	inc  hl                                          ; $4d5b: $23
	nop                                              ; $4d5c: $00
	ccf                                              ; $4d5d: $3f
	add  c                                           ; $4d5e: $81
	daa                                              ; $4d5f: $27
	nop                                              ; $4d60: $00

jr_02c_4d61:
	rst  $28                                         ; $4d61: $ef
	add  d                                           ; $4d62: $82
	rst  $38                                         ; $4d63: $ff
	ld   bc, $ffc7                                   ; $4d64: $01 $c7 $ff
	add  b                                           ; $4d67: $80
	rst  JumpTable                                         ; $4d68: $df
	ld   [bc], a                                     ; $4d69: $02
	jr   jr_02c_4d4b                                 ; $4d6a: $18 $df

	jr   jr_02c_4cf0                                 ; $4d6c: $18 $82

	rst  JumpTable                                         ; $4d6e: $df
	nop                                              ; $4d6f: $00
	ldh  [$80], a                                    ; $4d70: $e0 $80

jr_02c_4d72:
	rst  ToBoot                                         ; $4d72: $c7
	add  hl, bc                                      ; $4d73: $09
	rst  $38                                         ; $4d74: $ff
	rst  JumpTable                                         ; $4d75: $df
	sbc  [hl]                                        ; $4d76: $9e
	sub  [hl]                                        ; $4d77: $96
	add  h                                           ; $4d78: $84
	and  d                                           ; $4d79: $a2
	jr   nz, jr_02c_4d72                             ; $4d7a: $20 $f6

	nop                                              ; $4d7c: $00
	ret  z                                           ; $4d7d: $c8

	add  b                                           ; $4d7e: $80
	adc  $09                                         ; $4d7f: $ce $09
	sla  e                                           ; $4d81: $cb $23
	ld   b, b                                        ; $4d83: $40
	ret  nz                                          ; $4d84: $c0

	db   $e4                                         ; $4d85: $e4
	ld   h, h                                        ; $4d86: $64
	and  $22                                         ; $4d87: $e6 $22
	daa                                              ; $4d89: $27
	db   $e3                                         ; $4d8a: $e3
	add  b                                           ; $4d8b: $80
	inc  hl                                          ; $4d8c: $23
	add  b                                           ; $4d8d: $80
	db   $e4                                         ; $4d8e: $e4
	add  b                                           ; $4d8f: $80
	ld   b, a                                        ; $4d90: $47
	ld   bc, $9f8f                                   ; $4d91: $01 $8f $9f
	add  b                                           ; $4d94: $80
	nop                                              ; $4d95: $00
	add  b                                           ; $4d96: $80
	ld   b, $80                                      ; $4d97: $06 $80
	ld   bc, $8080                                   ; $4d99: $01 $80 $80
	ld   bc, $d0c0                                   ; $4d9c: $01 $c0 $d0
	add  d                                           ; $4d9f: $82
	nop                                              ; $4da0: $00
	add  b                                           ; $4da1: $80
	rst  $38                                         ; $4da2: $ff
	inc  bc                                          ; $4da3: $03
	rra                                              ; $4da4: $1f
	jr   @+$21                                       ; $4da5: $18 $1f

	jr   jr_02c_4d29                                 ; $4da7: $18 $80

jr_02c_4da9:
	sbc  e                                           ; $4da9: $9b
	add  b                                           ; $4daa: $80
	ld   a, b                                        ; $4dab: $78
	add  d                                           ; $4dac: $82
	jr   jr_02c_4d2f                                 ; $4dad: $18 $80

	nop                                              ; $4daf: $00
	dec  b                                           ; $4db0: $05
	rst  $38                                         ; $4db1: $ff
	rst  JumpTable                                         ; $4db2: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4db3: $cf
	nop                                              ; $4db4: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4db5: $cf
	nop                                              ; $4db6: $00
	add  d                                           ; $4db7: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4db8: $cf
	ld   bc, $2f0f                                   ; $4db9: $01 $0f $2f
	add  d                                           ; $4dbc: $82
	nop                                              ; $4dbd: $00
	nop                                              ; $4dbe: $00
	rst  $38                                         ; $4dbf: $ff
	add  b                                           ; $4dc0: $80
	db   $10                                         ; $4dc1: $10
	add  b                                           ; $4dc2: $80
	daa                                              ; $4dc3: $27
	add  h                                           ; $4dc4: $84
	jr   nz, jr_02c_4dca                             ; $4dc5: $20 $03

	rra                                              ; $4dc7: $1f
	db   $10                                         ; $4dc8: $10
	rra                                              ; $4dc9: $1f

jr_02c_4dca:
	db   $10                                         ; $4dca: $10
	add  c                                           ; $4dcb: $81
	rra                                              ; $4dcc: $1f
	nop                                              ; $4dcd: $00
	nop                                              ; $4dce: $00
	add  b                                           ; $4dcf: $80
	db   $10                                         ; $4dd0: $10
	ld   [bc], a                                     ; $4dd1: $02
	inc  de                                          ; $4dd2: $13
	ld   [de], a                                     ; $4dd3: $12
	ld   [bc], a                                     ; $4dd4: $02
	add  c                                           ; $4dd5: $81
	nop                                              ; $4dd6: $00
	add  b                                           ; $4dd7: $80
	inc  e                                           ; $4dd8: $1c
	inc  bc                                          ; $4dd9: $03
	jr   nc, jr_02c_4e18                             ; $4dda: $30 $3c

	rst  $28                                         ; $4ddc: $ef
	rst  $38                                         ; $4ddd: $ff
	add  b                                           ; $4dde: $80
	jr   nz, jr_02c_4d61                             ; $4ddf: $20 $80

	db   $10                                         ; $4de1: $10
	add  b                                           ; $4de2: $80
	inc  c                                           ; $4de3: $0c
	add  d                                           ; $4de4: $82
	ld   c, d                                        ; $4de5: $4a
	inc  bc                                          ; $4de6: $03
	db   $fc                                         ; $4de7: $fc
	ld   a, h                                        ; $4de8: $7c
	sub  b                                           ; $4de9: $90
	db   $10                                         ; $4dea: $10
	add  c                                           ; $4deb: $81
	ldh  a, [$81]                                    ; $4dec: $f0 $81
	nop                                              ; $4dee: $00
	add  b                                           ; $4def: $80
	db   $10                                         ; $4df0: $10
	ld   bc, $30b0                                   ; $4df1: $01 $b0 $30
	add  b                                           ; $4df4: $80
	nop                                              ; $4df5: $00
	dec  b                                           ; $4df6: $05
	ld   [hl], b                                     ; $4df7: $70
	ld   a, b                                        ; $4df8: $78
	inc  c                                           ; $4df9: $0c
	ld   a, h                                        ; $4dfa: $7c
	rst  $30                                         ; $4dfb: $f7
	rst  $38                                         ; $4dfc: $ff
	add  b                                           ; $4dfd: $80
	ld   c, $80                                      ; $4dfe: $0e $80
	dec  b                                           ; $4e00: $05
	add  b                                           ; $4e01: $80
	ld   b, $80                                      ; $4e02: $06 $80
	dec  b                                           ; $4e04: $05
	add  b                                           ; $4e05: $80
	ld   b, $80                                      ; $4e06: $06 $80
	dec  b                                           ; $4e08: $05
	add  b                                           ; $4e09: $80
	ld   b, $80                                      ; $4e0a: $06 $80
	dec  b                                           ; $4e0c: $05
	add  b                                           ; $4e0d: $80
	xor  d                                           ; $4e0e: $aa
	add  b                                           ; $4e0f: $80
	ld   d, h                                        ; $4e10: $54
	add  b                                           ; $4e11: $80
	and  b                                           ; $4e12: $a0
	add  b                                           ; $4e13: $80
	ld   b, b                                        ; $4e14: $40
	add  b                                           ; $4e15: $80
	add  b                                           ; $4e16: $80
	and  h                                           ; $4e17: $a4

jr_02c_4e18:
	nop                                              ; $4e18: $00
	ld   b, $1c                                      ; $4e19: $06 $1c
	ei                                               ; $4e1b: $fb
	ld   d, $ee                                      ; $4e1c: $16 $ee
	inc  h                                           ; $4e1e: $24
	db   $f4                                         ; $4e1f: $f4
	jr   nc, jr_02c_4da9                             ; $4e20: $30 $87

	nop                                              ; $4e22: $00
	nop                                              ; $4e23: $00
	scf                                              ; $4e24: $37
	add  c                                           ; $4e25: $81
	daa                                              ; $4e26: $27
	add  b                                           ; $4e27: $80
	ld   h, a                                        ; $4e28: $67
	add  b                                           ; $4e29: $80

jr_02c_4e2a:
	rlca                                             ; $4e2a: $07
	add  b                                           ; $4e2b: $80
	inc  bc                                          ; $4e2c: $03
	add  h                                           ; $4e2d: $84
	nop                                              ; $4e2e: $00
	nop                                              ; $4e2f: $00
	rst  $10                                         ; $4e30: $d7
	adc  c                                           ; $4e31: $89
	rst  JumpTable                                         ; $4e32: $df
	add  d                                           ; $4e33: $82
	rra                                              ; $4e34: $1f
	nop                                              ; $4e35: $00
	db   $f4                                         ; $4e36: $f4
	add  c                                           ; $4e37: $81
	call $cf01                                       ; $4e38: $cd $01 $cf
	adc  $88                                         ; $4e3b: $ce $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e3d: $cf
	rla                                              ; $4e3e: $17
	jr   nz, @+$01                                   ; $4e3f: $20 $ff

	jr   jr_02c_4e2a                                 ; $4e41: $18 $e7

	ld   [hl], b                                     ; $4e43: $70
	db   $d3                                         ; $4e44: $d3
	add  e                                           ; $4e45: $83
	and  b                                           ; $4e46: $a0
	add  b                                           ; $4e47: $80
	add  e                                           ; $4e48: $83
	ld   b, h                                        ; $4e49: $44
	rst  ToBoot                                         ; $4e4a: $c7
	inc  a                                           ; $4e4b: $3c
	rst  $38                                         ; $4e4c: $ff
	jp   sRandomSeed                                       ; $4e4d: $c3 $ff $bf


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e50: $cf
	ld   l, b                                        ; $4e51: $68
	and  a                                           ; $4e52: $a7
	inc  bc                                          ; $4e53: $03
	ld   b, [hl]                                     ; $4e54: $46
	inc  b                                           ; $4e55: $04
	dec  b                                           ; $4e56: $05
	add  b                                           ; $4e57: $80
	adc  h                                           ; $4e58: $8c
	inc  b                                           ; $4e59: $04
	ld   a, [$01fe]                                  ; $4e5a: $fa $fe $01
	rst  $38                                         ; $4e5d: $ff
	cp   $81                                         ; $4e5e: $fe $81
	rst  $38                                         ; $4e60: $ff
	rlca                                             ; $4e61: $07
	ld   b, b                                        ; $4e62: $40
	cp   a                                           ; $4e63: $bf
	add  d                                           ; $4e64: $82
	sbc  [hl]                                        ; $4e65: $9e
	dec  de                                          ; $4e66: $1b
	dec  e                                           ; $4e67: $1d
	jr   @+$04                                       ; $4e68: $18 $02

	add  b                                           ; $4e6a: $80
	jr   c, @-$7e                                    ; $4e6b: $38 $80

	db   $fc                                         ; $4e6d: $fc
	ld   b, $07                                      ; $4e6e: $06 $07
	rst  $38                                         ; $4e70: $ff
	ld   hl, sp-$01                                  ; $4e71: $f8 $ff
	nop                                              ; $4e73: $00
	rst  $38                                         ; $4e74: $ff
	nop                                              ; $4e75: $00
	add  b                                           ; $4e76: $80
	ld   a, a                                        ; $4e77: $7f
	add  c                                           ; $4e78: $81
	ccf                                              ; $4e79: $3f
	ld   b, $00                                      ; $4e7a: $06 $00
	ccf                                              ; $4e7c: $3f
	ld   b, b                                        ; $4e7d: $40
	ld   a, a                                        ; $4e7e: $7f
	cp   a                                           ; $4e7f: $bf
	rst  $38                                         ; $4e80: $ff
	add  b                                           ; $4e81: $80
	add  c                                           ; $4e82: $81
	ld   hl, sp-$80                                  ; $4e83: $f8 $80
	add  sp, -$80                                    ; $4e85: $e8 $80
	ret  z                                           ; $4e87: $c8

	add  c                                           ; $4e88: $81
	ld   hl, sp-$80                                  ; $4e89: $f8 $80
	ldh  a, [$80]                                    ; $4e8b: $f0 $80
	ldh  [rP1], a                                    ; $4e8d: $e0 $00
	nop                                              ; $4e8f: $00
	add  b                                           ; $4e90: $80
	ret  nz                                          ; $4e91: $c0

	add  b                                           ; $4e92: $80
	ldh  [$81], a                                    ; $4e93: $e0 $81
	ldh  a, [$81]                                    ; $4e95: $f0 $81
	db   $f4                                         ; $4e97: $f4
	ld   bc, $0004                                   ; $4e98: $01 $04 $00
	add  b                                           ; $4e9b: $80
	ldh  [$83], a                                    ; $4e9c: $e0 $83
	nop                                              ; $4e9e: $00
	add  c                                           ; $4e9f: $81
	ld   hl, sp-$80                                  ; $4ea0: $f8 $80
	add  sp, -$80                                    ; $4ea2: $e8 $80
	ret  z                                           ; $4ea4: $c8

	add  c                                           ; $4ea5: $81
	ld   hl, sp-$80                                  ; $4ea6: $f8 $80
	ldh  a, [$80]                                    ; $4ea8: $f0 $80
	ldh  [rP1], a                                    ; $4eaa: $e0 $00
	nop                                              ; $4eac: $00
	add  b                                           ; $4ead: $80
	ldh  [$82], a                                    ; $4eae: $e0 $82
	cp   $82                                         ; $4eb0: $fe $82
	ldh  [$80], a                                    ; $4eb2: $e0 $80
	nop                                              ; $4eb4: $00
	add  b                                           ; $4eb5: $80
	ldh  [$66], a                                    ; $4eb6: $e0 $66
	inc  bc                                          ; $4eb8: $03
	rlca                                             ; $4eb9: $07
	jr   nc, jr_02c_4ebc                             ; $4eba: $30 $00

jr_02c_4ebc:
	ld   a, a                                        ; $4ebc: $7f
	jr   nc, jr_02c_4ece                             ; $4ebd: $30 $0f

	cpl                                              ; $4ebf: $2f
	ld   a, a                                        ; $4ec0: $7f
	rra                                              ; $4ec1: $1f
	add  b                                           ; $4ec2: $80
	rla                                              ; $4ec3: $17
	ld   de, $1f1d                                   ; $4ec4: $11 $1d $1f
	ld   a, [de]                                     ; $4ec7: $1a
	dec  e                                           ; $4ec8: $1d
	dec  l                                           ; $4ec9: $2d
	rrca                                             ; $4eca: $0f
	daa                                              ; $4ecb: $27
	nop                                              ; $4ecc: $00
	ld   d, a                                        ; $4ecd: $57

jr_02c_4ece:
	scf                                              ; $4ece: $37
	cpl                                              ; $4ecf: $2f
	rrca                                             ; $4ed0: $0f
	ld   l, a                                        ; $4ed1: $6f
	rrca                                             ; $4ed2: $0f
	ld   l, a                                        ; $4ed3: $6f
	rrca                                             ; $4ed4: $0f
	rra                                              ; $4ed5: $1f
	ccf                                              ; $4ed6: $3f
	add  b                                           ; $4ed7: $80
	jr   nc, @+$0b                                   ; $4ed8: $30 $09

	and  b                                           ; $4eda: $a0
	nop                                              ; $4edb: $00
	sbc  a                                           ; $4edc: $9f
	nop                                              ; $4edd: $00
	ldh  a, [$60]                                    ; $4ede: $f0 $60
	add  b                                           ; $4ee0: $80
	and  b                                           ; $4ee1: $a0
	ldh  a, [$c0]                                    ; $4ee2: $f0 $c0
	add  b                                           ; $4ee4: $80
	ld   b, b                                        ; $4ee5: $40
	add  d                                           ; $4ee6: $82
	ret  nz                                          ; $4ee7: $c0

	dec  c                                           ; $4ee8: $0d
	and  b                                           ; $4ee9: $a0
	add  b                                           ; $4eea: $80
	jr   nz, jr_02c_4eed                             ; $4eeb: $20 $00

jr_02c_4eed:
	ld   d, b                                        ; $4eed: $50
	ld   h, b                                        ; $4eee: $60
	and  b                                           ; $4eef: $a0
	add  b                                           ; $4ef0: $80
	or   b                                           ; $4ef1: $b0
	add  b                                           ; $4ef2: $80
	or   b                                           ; $4ef3: $b0
	add  b                                           ; $4ef4: $80
	ret  nz                                          ; $4ef5: $c0

	ldh  [$80], a                                    ; $4ef6: $e0 $80
	ld   h, b                                        ; $4ef8: $60
	add  hl, bc                                      ; $4ef9: $09
	jr   z, jr_02c_4efc                              ; $4efa: $28 $00

jr_02c_4efc:
	sbc  b                                           ; $4efc: $98
	nop                                              ; $4efd: $00
	rst  $38                                         ; $4efe: $ff
	ld   h, b                                        ; $4eff: $60
	rra                                              ; $4f00: $1f
	ld   e, a                                        ; $4f01: $5f
	rst  $38                                         ; $4f02: $ff
	ccf                                              ; $4f03: $3f
	add  b                                           ; $4f04: $80
	ld   l, $11                                      ; $4f05: $2e $11
	dec  sp                                          ; $4f07: $3b
	ccf                                              ; $4f08: $3f
	dec  [hl]                                        ; $4f09: $35
	dec  sp                                          ; $4f0a: $3b
	ld   e, e                                        ; $4f0b: $5b
	rra                                              ; $4f0c: $1f
	ld   c, [hl]                                     ; $4f0d: $4e
	nop                                              ; $4f0e: $00
	xor  [hl]                                        ; $4f0f: $ae
	ld   l, [hl]                                     ; $4f10: $6e
	ld   e, a                                        ; $4f11: $5f
	rra                                              ; $4f12: $1f
	rst  JumpTable                                         ; $4f13: $df
	rra                                              ; $4f14: $1f
	rst  JumpTable                                         ; $4f15: $df
	rra                                              ; $4f16: $1f
	ccf                                              ; $4f17: $3f
	ld   a, a                                        ; $4f18: $7f
	add  b                                           ; $4f19: $80
	ld   h, b                                        ; $4f1a: $60
	ld   [$00df], sp                                 ; $4f1b: $08 $df $00
	and  b                                           ; $4f1e: $a0
	nop                                              ; $4f1f: $00
	ldh  [$c0], a                                    ; $4f20: $e0 $c0
	nop                                              ; $4f22: $00
	ld   b, b                                        ; $4f23: $40
	ldh  [$85], a                                    ; $4f24: $e0 $85
	add  b                                           ; $4f26: $80
	inc  c                                           ; $4f27: $0c
	ld   b, b                                        ; $4f28: $40
	nop                                              ; $4f29: $00
	ld   b, b                                        ; $4f2a: $40
	nop                                              ; $4f2b: $00
	and  b                                           ; $4f2c: $a0
	ret  nz                                          ; $4f2d: $c0

	ld   b, b                                        ; $4f2e: $40
	nop                                              ; $4f2f: $00
	ld   h, b                                        ; $4f30: $60
	nop                                              ; $4f31: $00
	ld   h, b                                        ; $4f32: $60
	nop                                              ; $4f33: $00
	add  b                                           ; $4f34: $80
	add  c                                           ; $4f35: $81
	ret  nz                                          ; $4f36: $c0

	add  hl, bc                                      ; $4f37: $09
	ld   h, b                                        ; $4f38: $60
	nop                                              ; $4f39: $00
	jp   $0f00                                       ; $4f3a: $c3 $00 $0f


	inc  bc                                          ; $4f3d: $03
	inc  e                                           ; $4f3e: $1c
	dec  c                                           ; $4f3f: $0d
	ccf                                              ; $4f40: $3f
	ld   e, $80                                      ; $4f41: $1e $80
	rla                                              ; $4f43: $17
	rlca                                             ; $4f44: $07
	ld   e, a                                        ; $4f45: $5f
	ccf                                              ; $4f46: $3f
	cpl                                              ; $4f47: $2f
	ccf                                              ; $4f48: $3f
	ld   a, a                                        ; $4f49: $7f
	rra                                              ; $4f4a: $1f
	jr   nc, jr_02c_4f4d                             ; $4f4b: $30 $00

jr_02c_4f4d:
	add  b                                           ; $4f4d: $80
	ld   a, [bc]                                     ; $4f4e: $0a
	ld   de, $1630                                   ; $4f4f: $11 $30 $16
	sub  $16                                         ; $4f52: $d6 $16
	ld   e, a                                        ; $4f54: $5f
	ld   e, c                                        ; $4f55: $59
	ccf                                              ; $4f56: $3f
	ld   a, a                                        ; $4f57: $7f
	ret  nc                                          ; $4f58: $d0

	jr   nc, @+$71                                   ; $4f59: $30 $6f

	nop                                              ; $4f5b: $00
	jr   nc, jr_02c_4f5e                             ; $4f5c: $30 $00

jr_02c_4f5e:
	add  b                                           ; $4f5e: $80
	nop                                              ; $4f5f: $00
	ld   b, b                                        ; $4f60: $40
	nop                                              ; $4f61: $00
	add  b                                           ; $4f62: $80
	add  b                                           ; $4f63: $80
	nop                                              ; $4f64: $00
	ldh  [$83], a                                    ; $4f65: $e0 $83
	ret  nz                                          ; $4f67: $c0

	ld   [bc], a                                     ; $4f68: $02
	and  b                                           ; $4f69: $a0
	add  b                                           ; $4f6a: $80
	ld   b, b                                        ; $4f6b: $40
	add  e                                           ; $4f6c: $83
	nop                                              ; $4f6d: $00
	inc  bc                                          ; $4f6e: $03
	ret  nz                                          ; $4f6f: $c0

	add  b                                           ; $4f70: $80
	and  b                                           ; $4f71: $a0
	add  b                                           ; $4f72: $80
	add  b                                           ; $4f73: $80
	ld   b, b                                        ; $4f74: $40
	rlca                                             ; $4f75: $07
	jr   nz, jr_02c_4f78                             ; $4f76: $20 $00

jr_02c_4f78:
	ret  nz                                          ; $4f78: $c0

	nop                                              ; $4f79: $00
	ld   h, b                                        ; $4f7a: $60
	nop                                              ; $4f7b: $00
	rst  $38                                         ; $4f7c: $ff
	ld   h, b                                        ; $4f7d: $60
	add  b                                           ; $4f7e: $80
	ld   e, a                                        ; $4f7f: $5f
	nop                                              ; $4f80: $00
	cp   a                                           ; $4f81: $bf
	add  l                                           ; $4f82: $85
	ccf                                              ; $4f83: $3f
	dec  b                                           ; $4f84: $05
	ld   d, c                                        ; $4f85: $51
	ld   de, $0e4e                                   ; $4f86: $11 $4e $0e
	xor  $6e                                         ; $4f89: $ee $6e
	add  b                                           ; $4f8b: $80
	dec  de                                          ; $4f8c: $1b
	inc  bc                                          ; $4f8d: $03
	push de                                          ; $4f8e: $d5
	dec  d                                           ; $4f8f: $15
	pop  de                                          ; $4f90: $d1
	ld   de, $6e80                                   ; $4f91: $11 $80 $6e
	add  b                                           ; $4f94: $80
	ld   h, b                                        ; $4f95: $60
	dec  b                                           ; $4f96: $05
	sbc  a                                           ; $4f97: $9f
	nop                                              ; $4f98: $00
	and  b                                           ; $4f99: $a0
	nop                                              ; $4f9a: $00
	ldh  [$c0], a                                    ; $4f9b: $e0 $c0
	add  b                                           ; $4f9d: $80
	ld   b, b                                        ; $4f9e: $40
	nop                                              ; $4f9f: $00
	and  b                                           ; $4fa0: $a0
	add  l                                           ; $4fa1: $85
	add  b                                           ; $4fa2: $80
	dec  b                                           ; $4fa3: $05
	ld   b, b                                        ; $4fa4: $40
	nop                                              ; $4fa5: $00
	ld   b, b                                        ; $4fa6: $40
	nop                                              ; $4fa7: $00
	ldh  [$c0], a                                    ; $4fa8: $e0 $c0

jr_02c_4faa:
	add  b                                           ; $4faa: $80
	nop                                              ; $4fab: $00
	inc  bc                                          ; $4fac: $03
	ld   h, b                                        ; $4fad: $60
	nop                                              ; $4fae: $00
	ld   h, b                                        ; $4faf: $60
	nop                                              ; $4fb0: $00
	add  d                                           ; $4fb1: $82
	ret  nz                                          ; $4fb2: $c0

	inc  b                                           ; $4fb3: $04
	jr   nz, jr_02c_4fb6                             ; $4fb4: $20 $00

jr_02c_4fb6:
	ld   a, $00                                      ; $4fb6: $3e $00
	cp   $9b                                         ; $4fb8: $fe $9b
	nop                                              ; $4fba: $00
	ld   [bc], a                                     ; $4fbb: $02
	rst  $38                                         ; $4fbc: $ff
	nop                                              ; $4fbd: $00
	rst  $38                                         ; $4fbe: $ff

jr_02c_4fbf:
	xor  a                                           ; $4fbf: $af
	nop                                              ; $4fc0: $00
	inc  c                                           ; $4fc1: $0c
	jr   nz, jr_02c_4fc4                             ; $4fc2: $20 $00

jr_02c_4fc4:
	ld   [hl+], a                                    ; $4fc4: $22
	nop                                              ; $4fc5: $00
	ld   [bc], a                                     ; $4fc6: $02
	nop                                              ; $4fc7: $00
	ld   [$0800], sp                                 ; $4fc8: $08 $00 $08
	nop                                              ; $4fcb: $00
	inc  b                                           ; $4fcc: $04
	nop                                              ; $4fcd: $00
	inc  b                                           ; $4fce: $04
	adc  a                                           ; $4fcf: $8f
	nop                                              ; $4fd0: $00
	ld   a, [de]                                     ; $4fd1: $1a
	ld   b, b                                        ; $4fd2: $40
	nop                                              ; $4fd3: $00
	ld   b, h                                        ; $4fd4: $44
	nop                                              ; $4fd5: $00
	inc  d                                           ; $4fd6: $14
	nop                                              ; $4fd7: $00
	ld   [de], a                                     ; $4fd8: $12
	nop                                              ; $4fd9: $00
	ld   [bc], a                                     ; $4fda: $02
	nop                                              ; $4fdb: $00
	ld   [$0800], sp                                 ; $4fdc: $08 $00 $08
	nop                                              ; $4fdf: $00
	ld   b, $00                                      ; $4fe0: $06 $00
	rrca                                             ; $4fe2: $0f
	ld   [bc], a                                     ; $4fe3: $02
	ld   a, [de]                                     ; $4fe4: $1a
	ld   a, [bc]                                     ; $4fe5: $0a
	dec  l                                           ; $4fe6: $2d
	add  hl, bc                                      ; $4fe7: $09
	ld   h, c                                        ; $4fe8: $61
	dec  h                                           ; $4fe9: $25
	db   $e4                                         ; $4fea: $e4
	ld   l, h                                        ; $4feb: $6c
	ld   c, h                                        ; $4fec: $4c
	add  b                                           ; $4fed: $80
	ld   d, a                                        ; $4fee: $57
	dec  de                                          ; $4fef: $1b
	ld   c, d                                        ; $4ff0: $4a
	adc  c                                           ; $4ff1: $89
	jr   jr_02c_5000                                 ; $4ff2: $18 $0c

	jr   nz, jr_02c_4faa                             ; $4ff4: $20 $b4

	ld   h, b                                        ; $4ff6: $60
	ld   l, h                                        ; $4ff7: $6c
	ld   b, b                                        ; $4ff8: $40
	ld   b, h                                        ; $4ff9: $44
	ld   b, b                                        ; $4ffa: $40
	call nz, $a820                                   ; $4ffb: $c4 $20 $a8
	ld   d, b                                        ; $4ffe: $50
	ld   d, a                                        ; $4fff: $57

jr_02c_5000:
	ld   e, b                                        ; $5000: $58
	sub  a                                           ; $5001: $97

jr_02c_5002:
	nop                                              ; $5002: $00
	ld   a, b                                        ; $5003: $78
	jr   nc, jr_02c_5002                             ; $5004: $30 $fc

	ld   b, b                                        ; $5006: $40
	ld   [bc], a                                     ; $5007: $02
	jr   c, jr_02c_5025                              ; $5008: $38 $1b

	ld   e, d                                        ; $500a: $5a
	ld   b, [hl]                                     ; $500b: $46
	add  b                                           ; $500c: $80
	ldh  [c], a                                      ; $500d: $e2
	add  b                                           ; $500e: $80
	call nc, Call_02c_660b                           ; $500f: $d4 $0b $66
	push af                                          ; $5012: $f5
	inc  h                                           ; $5013: $24
	ld   [hl], c                                     ; $5014: $71
	ld   a, [de]                                     ; $5015: $1a
	jp   c, $fd1d                                    ; $5016: $da $1d $fd

	dec  c                                           ; $5019: $0d
	adc  l                                           ; $501a: $8d
	dec  c                                           ; $501b: $0d
	adc  l                                           ; $501c: $8d
	add  c                                           ; $501d: $81
	ld   a, [bc]                                     ; $501e: $0a
	inc  bc                                          ; $501f: $03
	db   $eb                                         ; $5020: $eb
	inc  d                                           ; $5021: $14
	ld   [$8200], a                                  ; $5022: $ea $00 $82

jr_02c_5025:
	inc  b                                           ; $5025: $04
	adc  c                                           ; $5026: $89
	nop                                              ; $5027: $00
	dec  b                                           ; $5028: $05
	ccf                                              ; $5029: $3f
	cpl                                              ; $502a: $2f
	ccf                                              ; $502b: $3f
	cpl                                              ; $502c: $2f
	ccf                                              ; $502d: $3f
	inc  sp                                          ; $502e: $33
	add  b                                           ; $502f: $80
	ccf                                              ; $5030: $3f
	inc  bc                                          ; $5031: $03
	dec  sp                                          ; $5032: $3b
	inc  sp                                          ; $5033: $33
	dec  de                                          ; $5034: $1b
	rra                                              ; $5035: $1f
	add  b                                           ; $5036: $80
	rrca                                             ; $5037: $0f
	add  e                                           ; $5038: $83
	nop                                              ; $5039: $00
	add  b                                           ; $503a: $80
	jr   c, jr_02c_4fbf                              ; $503b: $38 $82

	nop                                              ; $503d: $00
	add  b                                           ; $503e: $80
	inc  b                                           ; $503f: $04
	add  b                                           ; $5040: $80
	ld   [bc], a                                     ; $5041: $02
	add  b                                           ; $5042: $80
	nop                                              ; $5043: $00
	ld   b, $10                                      ; $5044: $06 $10
	db   $fc                                         ; $5046: $fc
	call z, $dcfc                                    ; $5047: $cc $fc $dc
	db   $fc                                         ; $504a: $fc
	inc  e                                           ; $504b: $1c
	add  b                                           ; $504c: $80
	db   $fc                                         ; $504d: $fc
	inc  bc                                          ; $504e: $03
	ld   a, h                                        ; $504f: $7c
	ld   e, h                                        ; $5050: $5c
	ld   a, b                                        ; $5051: $78
	cp   b                                           ; $5052: $b8
	add  b                                           ; $5053: $80
	ldh  a, [rTAC]                                   ; $5054: $f0 $07
	nop                                              ; $5056: $00
	ld   [$1d00], sp                                 ; $5057: $08 $00 $1d
	ld   [$090b], sp                                 ; $505a: $08 $0b $09
	dec  h                                           ; $505d: $25
	add  b                                           ; $505e: $80
	nop                                              ; $505f: $00
	dec  de                                          ; $5060: $1b
	dec  d                                           ; $5061: $15
	ld   d, c                                        ; $5062: $51
	add  hl, sp                                      ; $5063: $39
	jr   c, @+$30                                    ; $5064: $38 $2e

	xor  a                                           ; $5066: $af
	ld   l, l                                        ; $5067: $6d
	ld   l, h                                        ; $5068: $6c
	ld   b, [hl]                                     ; $5069: $46
	ld   e, h                                        ; $506a: $5c
	ld   b, c                                        ; $506b: $41
	rlc  c                                           ; $506c: $cb $01
	ld   c, l                                        ; $506e: $4d
	nop                                              ; $506f: $00
	ld   a, [bc]                                     ; $5070: $0a
	nop                                              ; $5071: $00
	ld   [rROMB1], sp                                 ; $5072: $08 $00 $30
	nop                                              ; $5075: $00
	ld   l, $01                                      ; $5076: $2e $01
	cp   $00                                         ; $5078: $fe $00

jr_02c_507a:
	ldh  [$c0], a                                    ; $507a: $e0 $c0
	ldh  a, [$80]                                    ; $507c: $f0 $80
	jr   nz, jr_02c_508f                             ; $507e: $20 $0f

	ldh  [$e8], a                                    ; $5080: $e0 $e8
	ldh  [$c4], a                                    ; $5082: $e0 $c4
	ret  z                                           ; $5084: $c8

	ld   a, [hl-]                                    ; $5085: $3a
	inc  [hl]                                        ; $5086: $34
	ld   a, h                                        ; $5087: $7c
	ld   a, b                                        ; $5088: $78
	or   b                                           ; $5089: $b0
	or   h                                           ; $508a: $b4
	ld   h, h                                        ; $508b: $64
	ld   l, h                                        ; $508c: $6c
	inc  c                                           ; $508d: $0c
	sbc  h                                           ; $508e: $9c

jr_02c_508f:
	sbc  l                                           ; $508f: $9d
	add  b                                           ; $5090: $80
	or   [hl]                                        ; $5091: $b6
	add  b                                           ; $5092: $80
	sub  $80                                         ; $5093: $d6 $80
	jp   c, $ba03                                    ; $5095: $da $03 $ba

	cp   c                                           ; $5098: $b9
	jr   c, jr_02c_50ef                              ; $5099: $38 $54

	add  b                                           ; $509b: $80
	rrca                                             ; $509c: $0f
	add  hl, bc                                      ; $509d: $09
	cpl                                              ; $509e: $2f
	rst  $38                                         ; $509f: $ff
	ccf                                              ; $50a0: $3f
	ld   e, e                                        ; $50a1: $5b

jr_02c_50a2:
	dec  de                                          ; $50a2: $1b
	jr   nz, jr_02c_50a5                             ; $50a3: $20 $00

jr_02c_50a5:
	dec  de                                          ; $50a5: $1b
	nop                                              ; $50a6: $00
	inc  b                                           ; $50a7: $04
	add  c                                           ; $50a8: $81
	nop                                              ; $50a9: $00
	nop                                              ; $50aa: $00
	ld   [$0086], sp                                 ; $50ab: $08 $86 $00
	ld   bc, $0f07                                   ; $50ae: $01 $07 $0f
	add  c                                           ; $50b1: $81
	nop                                              ; $50b2: $00
	inc  bc                                          ; $50b3: $03
	ccf                                              ; $50b4: $3f
	nop                                              ; $50b5: $00
	rst  $38                                         ; $50b6: $ff
	nop                                              ; $50b7: $00
	add  b                                           ; $50b8: $80
	add  b                                           ; $50b9: $80
	ld   [$80a0], sp                                 ; $50ba: $08 $a0 $80
	ld   a, b                                        ; $50bd: $78
	jr   nz, jr_02c_507a                             ; $50be: $20 $ba

	ld   a, h                                        ; $50c0: $7c
	ld   a, a                                        ; $50c1: $7f
	ld   a, $3f                                      ; $50c2: $3e $3f
	add  b                                           ; $50c4: $80
	rra                                              ; $50c5: $1f
	add  h                                           ; $50c6: $84
	rrca                                             ; $50c7: $0f
	add  b                                           ; $50c8: $80
	ld   e, $80                                      ; $50c9: $1e $80
	ld   hl, sp-$80                                  ; $50cb: $f8 $80
	ret  nz                                          ; $50cd: $c0

	add  c                                           ; $50ce: $81
	nop                                              ; $50cf: $00
	inc  c                                           ; $50d0: $0c
	rst  $38                                         ; $50d1: $ff
	nop                                              ; $50d2: $00
	di                                               ; $50d3: $f3
	nop                                              ; $50d4: $00
	ld   e, $04                                      ; $50d5: $1e $04
	dec  [hl]                                        ; $50d7: $35
	inc  d                                           ; $50d8: $14
	ld   a, [bc]                                     ; $50d9: $0a
	ld   [bc], a                                     ; $50da: $02
	ld   b, h                                        ; $50db: $44
	dec  d                                           ; $50dc: $15
	pop  de                                          ; $50dd: $d1
	add  b                                           ; $50de: $80
	ld   e, e                                        ; $50df: $5b
	rla                                              ; $50e0: $17
	ld   c, a                                        ; $50e1: $4f
	adc  a                                           ; $50e2: $8f
	dec  de                                          ; $50e3: $1b
	inc  de                                          ; $50e4: $13
	ld   hl, $60a7                                   ; $50e5: $21 $a7 $60
	ld   h, d                                        ; $50e8: $62
	ld   b, b                                        ; $50e9: $40
	ld   d, e                                        ; $50ea: $53
	ld   b, b                                        ; $50eb: $40
	ld   d, d                                        ; $50ec: $52
	ld   b, b                                        ; $50ed: $40
	ld   d, d                                        ; $50ee: $52

jr_02c_50ef:
	ld   b, b                                        ; $50ef: $40
	ret  nc                                          ; $50f0: $d0

jr_02c_50f1:
	jr   nz, jr_02c_50a2                             ; $50f1: $20 $af

	ld   d, b                                        ; $50f3: $50
	ld   c, a                                        ; $50f4: $4f
	nop                                              ; $50f5: $00
	ld   a, b                                        ; $50f6: $78
	ld   h, b                                        ; $50f7: $60
	ldh  a, [$80]                                    ; $50f8: $f0 $80
	db   $10                                         ; $50fa: $10
	inc  bc                                          ; $50fb: $03
	ldh  a, [$6c]                                    ; $50fc: $f0 $6c
	ld   l, b                                        ; $50fe: $68
	ld   a, [de]                                     ; $50ff: $1a
	add  b                                           ; $5100: $80
	adc  b                                           ; $5101: $88
	dec  b                                           ; $5102: $05
	ld   d, b                                        ; $5103: $50
	ld   b, b                                        ; $5104: $40
	xor  b                                           ; $5105: $a8
	jr   z, jr_02c_5150                              ; $5106: $28 $48

	ret  nz                                          ; $5108: $c0

	add  b                                           ; $5109: $80
	db   $e4                                         ; $510a: $e4
	inc  bc                                          ; $510b: $03
	ld   [hl], h                                     ; $510c: $74
	ld   [hl], l                                     ; $510d: $75
	ld   [hl], h                                     ; $510e: $74
	db   $f4                                         ; $510f: $f4
	add  b                                           ; $5110: $80
	ld   l, $81                                      ; $5111: $2e $81
	ld   a, [hl+]                                    ; $5113: $2a
	ld   c, $a8                                      ; $5114: $0e $a8
	ld   d, h                                        ; $5116: $54
	adc  d                                           ; $5117: $8a
	dec  bc                                          ; $5118: $0b
	ld   a, l                                        ; $5119: $7d
	inc  l                                           ; $511a: $2c
	ld   d, e                                        ; $511b: $53
	ld   b, h                                        ; $511c: $44
	inc  b                                           ; $511d: $04
	nop                                              ; $511e: $00
	ld   e, e                                        ; $511f: $5b
	nop                                              ; $5120: $00
	ld   hl, $3000                                   ; $5121: $21 $00 $30
	add  e                                           ; $5124: $83
	nop                                              ; $5125: $00
	nop                                              ; $5126: $00
	ld   h, b                                        ; $5127: $60
	add  d                                           ; $5128: $82
	nop                                              ; $5129: $00
	ld   bc, $7f3f                                   ; $512a: $01 $3f $7f
	add  c                                           ; $512d: $81
	nop                                              ; $512e: $00
	ld   [$0005], sp                                 ; $512f: $08 $05 $00
	ld   a, [$bf00]                                  ; $5132: $fa $00 $bf
	nop                                              ; $5135: $00
	ld   b, h                                        ; $5136: $44
	jr   c, jr_02c_50f1                              ; $5137: $38 $b8

	add  b                                           ; $5139: $80
	jr   c, jr_02c_5143                              ; $513a: $38 $07

	ld   a, b                                        ; $513c: $78
	db   $e4                                         ; $513d: $e4
	ldh  [rAUD3LEVEL], a                             ; $513e: $e0 $1c

jr_02c_5140:
	jr   jr_02c_5140                                 ; $5140: $18 $fe

	ld   a, h                                        ; $5142: $7c

jr_02c_5143:
	ld   a, a                                        ; $5143: $7f
	add  b                                           ; $5144: $80
	ld   a, [hl]                                     ; $5145: $7e
	nop                                              ; $5146: $00
	ld   a, $81                                      ; $5147: $3e $81
	ccf                                              ; $5149: $3f
	add  b                                           ; $514a: $80
	ld   a, [hl]                                     ; $514b: $7e
	add  b                                           ; $514c: $80
	ld   hl, sp-$7f                                  ; $514d: $f8 $81
	nop                                              ; $514f: $00

jr_02c_5150:
	inc  b                                           ; $5150: $04
	jr   nz, jr_02c_5153                             ; $5151: $20 $00

jr_02c_5153:
	rst  JumpTable                                         ; $5153: $df
	nop                                              ; $5154: $00
	rst  $38                                         ; $5155: $ff
	add  c                                           ; $5156: $81
	nop                                              ; $5157: $00
	add  b                                           ; $5158: $80
	ld   bc, $0a80                                   ; $5159: $01 $80 $0a
	adc  b                                           ; $515c: $88
	nop                                              ; $515d: $00
	inc  b                                           ; $515e: $04
	inc  b                                           ; $515f: $04
	ld   a, [hl]                                     ; $5160: $7e
	ld   a, d                                        ; $5161: $7a
	ld   a, [hl]                                     ; $5162: $7e
	ld   h, [hl]                                     ; $5163: $66
	add  e                                           ; $5164: $83
	ld   l, [hl]                                     ; $5165: $6e
	nop                                              ; $5166: $00
	halt                                             ; $5167: $76
	add  b                                           ; $5168: $80
	ld   a, $80                                      ; $5169: $3e $80
	ld   e, $81                                      ; $516b: $1e $81
	nop                                              ; $516d: $00
	add  b                                           ; $516e: $80
	add  b                                           ; $516f: $80
	sbc  d                                           ; $5170: $9a
	nop                                              ; $5171: $00
	nop                                              ; $5172: $00
	ld   bc, $0081                                   ; $5173: $01 $81 $00
	add  b                                           ; $5176: $80
	ld   [bc], a                                     ; $5177: $02
	ld   bc, $1c1d                                   ; $5178: $01 $1d $1c
	add  b                                           ; $517b: $80
	ld   e, $02                                      ; $517c: $1e $02
	ccf                                              ; $517e: $3f
	rra                                              ; $517f: $1f
	ld   e, a                                        ; $5180: $5f
	add  b                                           ; $5181: $80
	ccf                                              ; $5182: $3f
	ld   bc, $7737                                   ; $5183: $01 $37 $77
	add  c                                           ; $5186: $81
	scf                                              ; $5187: $37
	add  b                                           ; $5188: $80
	ld   [hl], $02                                   ; $5189: $36 $02
	add  hl, bc                                      ; $518b: $09
	ld   bc, $807f                                   ; $518c: $01 $7f $80
	ccf                                              ; $518f: $3f
	dec  b                                           ; $5190: $05
	nop                                              ; $5191: $00
	ld   a, a                                        ; $5192: $7f
	nop                                              ; $5193: $00
	ld   a, b                                        ; $5194: $78
	nop                                              ; $5195: $00
	add  b                                           ; $5196: $80
	add  b                                           ; $5197: $80
	ld   [hl], b                                     ; $5198: $70
	inc  b                                           ; $5199: $04
	ldh  a, [$f6]                                    ; $519a: $f0 $f6
	nop                                              ; $519c: $00
	ldh  a, [$0c]                                    ; $519d: $f0 $0c
	add  c                                           ; $519f: $81
	inc  b                                           ; $51a0: $04
	nop                                              ; $51a1: $00
	nop                                              ; $51a2: $00
	add  c                                           ; $51a3: $81
	add  b                                           ; $51a4: $80
	ld   [bc], a                                     ; $51a5: $02
	add  h                                           ; $51a6: $84
	add  l                                           ; $51a7: $85
	add  h                                           ; $51a8: $84
	add  b                                           ; $51a9: $80
	adc  h                                           ; $51aa: $8c
	dec  bc                                          ; $51ab: $0b
	dec  a                                           ; $51ac: $3d

jr_02c_51ad:
	jr   c, jr_02c_51ad                              ; $51ad: $38 $fe

	ldh  [$f8], a                                    ; $51af: $e0 $f8
	nop                                              ; $51b1: $00
	ldh  [rP1], a                                    ; $51b2: $e0 $00
	ccf                                              ; $51b4: $3f
	nop                                              ; $51b5: $00
	ccf                                              ; $51b6: $3f
	nop                                              ; $51b7: $00
	add  d                                           ; $51b8: $82
	ld   [$0089], sp                                 ; $51b9: $08 $89 $00
	add  e                                           ; $51bc: $83
	ld   a, a                                        ; $51bd: $7f
	nop                                              ; $51be: $00
	ld   l, h                                        ; $51bf: $6c
	add  b                                           ; $51c0: $80
	ld   l, [hl]                                     ; $51c1: $6e
	add  b                                           ; $51c2: $80
	ld   l, h                                        ; $51c3: $6c
	ld   bc, $3f2c                                   ; $51c4: $01 $2c $3f
	add  b                                           ; $51c7: $80
	rra                                              ; $51c8: $1f
	add  e                                           ; $51c9: $83
	nop                                              ; $51ca: $00
	add  b                                           ; $51cb: $80
	ldh  a, [$82]                                    ; $51cc: $f0 $82
	nop                                              ; $51ce: $00
	add  b                                           ; $51cf: $80
	db   $10                                         ; $51d0: $10
	add  b                                           ; $51d1: $80
	ld   [$0080], sp                                 ; $51d2: $08 $80 $00
	ld   [bc], a                                     ; $51d5: $02
	add  b                                           ; $51d6: $80
	ld   hl, sp+$78                                  ; $51d7: $f8 $78
	add  c                                           ; $51d9: $81
	ld   hl, sp+$00                                  ; $51da: $f8 $00
	ld   a, b                                        ; $51dc: $78
	add  c                                           ; $51dd: $81
	ld   hl, sp+$00                                  ; $51de: $f8 $00
	ld   a, b                                        ; $51e0: $78
	add  b                                           ; $51e1: $80
	ldh  a, [$80]                                    ; $51e2: $f0 $80
	ldh  [rTMA], a                                   ; $51e4: $e0 $06
	nop                                              ; $51e6: $00
	add  hl, hl                                      ; $51e7: $29
	add  hl, bc                                      ; $51e8: $09
	ld   h, l                                        ; $51e9: $65
	dec  b                                           ; $51ea: $05
	ret  nz                                          ; $51eb: $c0

	ld   [hl+], a                                    ; $51ec: $22
	add  b                                           ; $51ed: $80
	ld   a, [hl+]                                    ; $51ee: $2a
	ld   bc, $1cbe                                   ; $51ef: $01 $be $1c
	add  b                                           ; $51f2: $80

jr_02c_51f3:
	ld   e, $83                                      ; $51f3: $1e $83
	ccf                                              ; $51f5: $3f
	ld   bc, $5b1b                                   ; $51f6: $01 $1b $5b
	add  c                                           ; $51f9: $81
	ld   e, l                                        ; $51fa: $5d
	ld   [de], a                                     ; $51fb: $12
	ld   [hl+], a                                    ; $51fc: $22
	nop                                              ; $51fd: $00
	rst  $38                                         ; $51fe: $ff
	ld   a, l                                        ; $51ff: $7d
	db   $fd                                         ; $5200: $fd
	nop                                              ; $5201: $00
	ld   [hl], b                                     ; $5202: $70
	nop                                              ; $5203: $00
	rrca                                             ; $5204: $0f
	nop                                              ; $5205: $00
	ld   [hl], b                                     ; $5206: $70
	nop                                              ; $5207: $00
	or   b                                           ; $5208: $b0
	add  b                                           ; $5209: $80
	add  [hl]                                        ; $520a: $86
	nop                                              ; $520b: $00
	add  b                                           ; $520c: $80
	inc  b                                           ; $520d: $04
	ld   c, h                                        ; $520e: $4c
	add  b                                           ; $520f: $80
	inc  c                                           ; $5210: $0c
	ld   [bc], a                                     ; $5211: $02
	nop                                              ; $5212: $00
	ld   [$8004], sp                                 ; $5213: $08 $04 $80
	nop                                              ; $5216: $00
	inc  bc                                          ; $5217: $03
	add  d                                           ; $5218: $82
	add  b                                           ; $5219: $80
	add  c                                           ; $521a: $81
	add  b                                           ; $521b: $80
	add  b                                           ; $521c: $80
	ld   [bc], a                                     ; $521d: $02
	add  b                                           ; $521e: $80
	ld   c, $14                                      ; $521f: $0e $14
	rst  $38                                         ; $5221: $ff
	ld   hl, sp-$02                                  ; $5222: $f8 $fe
	nop                                              ; $5224: $00
	jr   c, jr_02c_5227                              ; $5225: $38 $00

jr_02c_5227:
	ret  nz                                          ; $5227: $c0

	nop                                              ; $5228: $00
	ld   b, $00                                      ; $5229: $06 $00
	rrca                                             ; $522b: $0f
	ld   [bc], a                                     ; $522c: $02
	ld   a, [de]                                     ; $522d: $1a
	ld   a, [bc]                                     ; $522e: $0a
	dec  l                                           ; $522f: $2d
	add  hl, bc                                      ; $5230: $09
	ld   h, c                                        ; $5231: $61
	dec  h                                           ; $5232: $25
	db   $e4                                         ; $5233: $e4
	ld   l, h                                        ; $5234: $6c
	ld   c, h                                        ; $5235: $4c
	add  b                                           ; $5236: $80
	ld   d, a                                        ; $5237: $57
	dec  de                                          ; $5238: $1b
	ld   c, d                                        ; $5239: $4a
	adc  c                                           ; $523a: $89
	jr   jr_02c_5249                                 ; $523b: $18 $0c

	jr   nz, jr_02c_51f3                             ; $523d: $20 $b4

	ld   h, b                                        ; $523f: $60
	ld   l, h                                        ; $5240: $6c
	ld   b, b                                        ; $5241: $40
	ld   b, h                                        ; $5242: $44
	ld   b, b                                        ; $5243: $40
	call nz, $a820                                   ; $5244: $c4 $20 $a8
	ld   d, b                                        ; $5247: $50
	ld   d, a                                        ; $5248: $57

jr_02c_5249:
	ld   e, b                                        ; $5249: $58
	sub  a                                           ; $524a: $97

jr_02c_524b:
	nop                                              ; $524b: $00
	ld   a, b                                        ; $524c: $78
	jr   nc, jr_02c_524b                             ; $524d: $30 $fc

	ld   b, b                                        ; $524f: $40
	ld   [bc], a                                     ; $5250: $02
	jr   c, jr_02c_526e                              ; $5251: $38 $1b

	ld   e, d                                        ; $5253: $5a
	ld   b, [hl]                                     ; $5254: $46
	add  b                                           ; $5255: $80
	ldh  [c], a                                      ; $5256: $e2
	add  b                                           ; $5257: $80
	call nc, Call_02c_660b                           ; $5258: $d4 $0b $66
	push af                                          ; $525b: $f5
	inc  h                                           ; $525c: $24
	ld   [hl], c                                     ; $525d: $71
	ld   a, [de]                                     ; $525e: $1a
	jp   c, $fd1d                                    ; $525f: $da $1d $fd

	dec  c                                           ; $5262: $0d
	adc  l                                           ; $5263: $8d
	dec  c                                           ; $5264: $0d
	adc  l                                           ; $5265: $8d
	add  c                                           ; $5266: $81
	ld   a, [bc]                                     ; $5267: $0a
	db   $10                                         ; $5268: $10
	db   $eb                                         ; $5269: $eb
	inc  d                                           ; $526a: $14
	xor  c                                           ; $526b: $a9
	dec  bc                                          ; $526c: $0b
	ld   b, l                                        ; $526d: $45

jr_02c_526e:
	ld   de, $2308                                   ; $526e: $11 $08 $23
	ld   h, e                                        ; $5271: $63
	jr   nz, jr_02c_52c0                             ; $5272: $20 $4c

	nop                                              ; $5274: $00
	jr   z, jr_02c_5277                              ; $5275: $28 $00

jr_02c_5277:
	jr   nc, jr_02c_5279                             ; $5277: $30 $00

jr_02c_5279:
	ld   h, b                                        ; $5279: $60
	add  c                                           ; $527a: $81
	nop                                              ; $527b: $00
	nop                                              ; $527c: $00
	ret  nz                                          ; $527d: $c0

	add  d                                           ; $527e: $82
	nop                                              ; $527f: $00
	ld   bc, $ff7f                                   ; $5280: $01 $7f $ff
	add  c                                           ; $5283: $81
	nop                                              ; $5284: $00
	ld   [de], a                                     ; $5285: $12

jr_02c_5286:
	dec  b                                           ; $5286: $05
	nop                                              ; $5287: $00
	ld   a, [$ed00]                                  ; $5288: $fa $00 $ed
	nop                                              ; $528b: $00
	jp   nc, $f898                                   ; $528c: $d2 $98 $f8

	inc  e                                           ; $528f: $1c
	ld   e, $1c                                      ; $5290: $1e $1c
	jp   nc, Jump_02c_6410                           ; $5292: $d2 $10 $64

	nop                                              ; $5295: $00
	inc  e                                           ; $5296: $1c
	jr   jr_02c_52b7                                 ; $5297: $18 $1e

	add  b                                           ; $5299: $80
	inc  e                                           ; $529a: $1c
	ld   bc, $0f0c                                   ; $529b: $01 $0c $0f
	add  b                                           ; $529e: $80
	ld   c, $80                                      ; $529f: $0e $80
	ld   e, $01                                      ; $52a1: $1e $01
	cp   $ff                                         ; $52a3: $fe $ff
	add  c                                           ; $52a5: $81
	nop                                              ; $52a6: $00
	ld   [de], a                                     ; $52a7: $12
	jr   nz, jr_02c_52aa                             ; $52a8: $20 $00

jr_02c_52aa:
	rst  JumpTable                                         ; $52aa: $df
	nop                                              ; $52ab: $00
	di                                               ; $52ac: $f3
	nop                                              ; $52ad: $00
	ld   e, $08                                      ; $52ae: $1e $08
	dec  hl                                          ; $52b0: $2b
	ld   a, [bc]                                     ; $52b1: $0a
	ld   e, c                                        ; $52b2: $59
	inc  e                                           ; $52b3: $1c
	jp   c, Jump_02c_615b                            ; $52b4: $da $5b $61

jr_02c_52b7:
	ld   h, l                                        ; $52b7: $65
	ld   h, h                                        ; $52b8: $64
	ld   l, h                                        ; $52b9: $6c
	adc  h                                           ; $52ba: $8c
	add  b                                           ; $52bb: $80
	dec  e                                           ; $52bc: $1d
	dec  hl                                          ; $52bd: $2b
	rla                                              ; $52be: $17
	dec  d                                           ; $52bf: $15

jr_02c_52c0:
	jr   z, jr_02c_52ff                              ; $52c0: $28 $3d

	nop                                              ; $52c2: $00
	inc  d                                           ; $52c3: $14
	jr   nc, @-$42                                   ; $52c4: $30 $bc

	ld   h, b                                        ; $52c6: $60
	ld   h, h                                        ; $52c7: $64

jr_02c_52c8:
	ld   h, b                                        ; $52c8: $60
	ld   h, h                                        ; $52c9: $64
	and  b                                           ; $52ca: $a0
	xor  b                                           ; $52cb: $a8

jr_02c_52cc:
	and  b                                           ; $52cc: $a0
	ld   b, b                                        ; $52cd: $40
	nop                                              ; $52ce: $00
	ld   a, h                                        ; $52cf: $7c
	jr   jr_02c_52cc                                 ; $52d0: $18 $fa

	ld   a, b                                        ; $52d2: $78
	ld   a, e                                        ; $52d3: $7b
	ld   b, d                                        ; $52d4: $42
	ld   [bc], a                                     ; $52d5: $02
	ld   a, [hl-]                                    ; $52d6: $3a
	ld   d, $56                                      ; $52d7: $16 $56
	ld   c, [hl]                                     ; $52d9: $4e
	ld   [$d4e1], a                                  ; $52da: $ea $e1 $d4
	ret  nc                                          ; $52dd: $d0

	add  sp, -$07                                    ; $52de: $e8 $f9
	ld   h, d                                        ; $52e0: $62
	jp   nc, $ba1a                                   ; $52e1: $d2 $1a $ba

	dec  e                                           ; $52e4: $1d
	db   $dd                                         ; $52e5: $dd
	dec  e                                           ; $52e6: $1d
	cp   l                                           ; $52e7: $bd
	dec  c                                           ; $52e8: $0d
	adc  l                                           ; $52e9: $8d
	add  c                                           ; $52ea: $81
	ld   a, [bc]                                     ; $52eb: $0a
	inc  c                                           ; $52ec: $0c
	sub  d                                           ; $52ed: $92
	ld   [$3bcc], sp                                 ; $52ee: $08 $cc $3b
	inc  [hl]                                        ; $52f1: $34
	scf                                              ; $52f2: $37
	ld   c, a                                        ; $52f3: $4f
	nop                                              ; $52f4: $00
	jr   nz, jr_02c_52f7                             ; $52f5: $20 $00

jr_02c_52f7:
	inc  l                                           ; $52f7: $2c
	nop                                              ; $52f8: $00
	ld   a, b                                        ; $52f9: $78
	add  c                                           ; $52fa: $81
	nop                                              ; $52fb: $00
	nop                                              ; $52fc: $00
	ret  nz                                          ; $52fd: $c0

	add  d                                           ; $52fe: $82

jr_02c_52ff:
	nop                                              ; $52ff: $00
	ld   bc, $c040                                   ; $5300: $01 $40 $c0
	add  b                                           ; $5303: $80
	jr   nc, jr_02c_5286                             ; $5304: $30 $80

	rra                                              ; $5306: $1f

jr_02c_5307:
	add  c                                           ; $5307: $81
	nop                                              ; $5308: $00
	ld   c, $ff                                      ; $5309: $0e $ff
	nop                                              ; $530b: $00
	dec  e                                           ; $530c: $1d
	jr   jr_02c_5307                                 ; $530d: $18 $f8

	inc  e                                           ; $530f: $1c
	call c, $f29c                                    ; $5310: $dc $9c $f2
	db   $10                                         ; $5313: $10
	inc  d                                           ; $5314: $14
	db   $10                                         ; $5315: $10
	call z, Call_02c_7e08                            ; $5316: $cc $08 $7e
	add  c                                           ; $5319: $81
	inc  e                                           ; $531a: $1c
	nop                                              ; $531b: $00
	rra                                              ; $531c: $1f
	add  b                                           ; $531d: $80
	ld   e, $81                                      ; $531e: $1e $81
	ld   c, $00                                      ; $5320: $0e $00
	rrca                                             ; $5322: $0f
	add  b                                           ; $5323: $80
	inc  e                                           ; $5324: $1c
	add  b                                           ; $5325: $80
	ldh  a, [$81]                                    ; $5326: $f0 $81
	nop                                              ; $5328: $00
	inc  bc                                          ; $5329: $03
	rst  $38                                         ; $532a: $ff
	nop                                              ; $532b: $00
	rst  $38                                         ; $532c: $ff
	nop                                              ; $532d: $00
	add  d                                           ; $532e: $82
	inc  b                                           ; $532f: $04
	adc  c                                           ; $5330: $89
	nop                                              ; $5331: $00
	dec  b                                           ; $5332: $05
	ccf                                              ; $5333: $3f
	cpl                                              ; $5334: $2f
	ccf                                              ; $5335: $3f
	cpl                                              ; $5336: $2f
	ccf                                              ; $5337: $3f
	inc  sp                                          ; $5338: $33
	add  c                                           ; $5339: $81
	dec  sp                                          ; $533a: $3b
	ld   [bc], a                                     ; $533b: $02

jr_02c_533c:
	inc  sp                                          ; $533c: $33
	dec  de                                          ; $533d: $1b
	rra                                              ; $533e: $1f
	add  b                                           ; $533f: $80
	rrca                                             ; $5340: $0f
	add  e                                           ; $5341: $83
	nop                                              ; $5342: $00
	add  b                                           ; $5343: $80
	jr   c, jr_02c_52c8                              ; $5344: $38 $82

	nop                                              ; $5346: $00
	add  b                                           ; $5347: $80
	inc  b                                           ; $5348: $04
	add  b                                           ; $5349: $80
	ld   [bc], a                                     ; $534a: $02
	add  b                                           ; $534b: $80
	nop                                              ; $534c: $00
	ld   [bc], a                                     ; $534d: $02
	db   $10                                         ; $534e: $10
	db   $fc                                         ; $534f: $fc
	db   $ec                                         ; $5350: $ec
	add  c                                           ; $5351: $81
	db   $fc                                         ; $5352: $fc
	nop                                              ; $5353: $00

jr_02c_5354:
	inc  e                                           ; $5354: $1c
	add  b                                           ; $5355: $80
	cp   h                                           ; $5356: $bc
	inc  bc                                          ; $5357: $03
	inc  a                                           ; $5358: $3c
	inc  e                                           ; $5359: $1c
	jr   c, jr_02c_5354                              ; $535a: $38 $f8

	add  b                                           ; $535c: $80
	ldh  a, [rTIMA]                                  ; $535d: $f0 $05
	nop                                              ; $535f: $00
	inc  e                                           ; $5360: $1c
	inc  c                                           ; $5361: $0c
	ccf                                              ; $5362: $3f
	rrca                                             ; $5363: $0f
	ld   h, a                                        ; $5364: $67
	add  c                                           ; $5365: $81
	rrca                                             ; $5366: $0f
	nop                                              ; $5367: $00
	ld   b, a                                        ; $5368: $47
	add  c                                           ; $5369: $81
	rrca                                             ; $536a: $0f
	add  b                                           ; $536b: $80
	rra                                              ; $536c: $1f
	nop                                              ; $536d: $00
	ccf                                              ; $536e: $3f
	add  b                                           ; $536f: $80
	scf                                              ; $5370: $37
	nop                                              ; $5371: $00
	cpl                                              ; $5372: $2f
	add  d                                           ; $5373: $82
	ld   l, a                                        ; $5374: $6f
	ld   a, [de]                                     ; $5375: $1a
	stop                                             ; $5376: $10 $00
	rst  $38                                         ; $5378: $ff
	ld   [hl], a                                     ; $5379: $77
	rst  $30                                         ; $537a: $f7
	nop                                              ; $537b: $00
	ld   a, b                                        ; $537c: $78
	nop                                              ; $537d: $00
	rlca                                             ; $537e: $07
	nop                                              ; $537f: $00
	ld   hl, sp-$20                                  ; $5380: $f8 $e0
	db   $fc                                         ; $5382: $fc
	ret  nz                                          ; $5383: $c0

	add  [hl]                                        ; $5384: $86
	ret  nz                                          ; $5385: $c0

	ldh  [$c0], a                                    ; $5386: $e0 $c0
	push bc                                          ; $5388: $c5
	add  b                                           ; $5389: $80
	ld   hl, sp-$3a                                  ; $538a: $f8 $c6
	jp   c, $f0e2                                    ; $538c: $da $e2 $f0

	ld   [hl], b                                     ; $538f: $70
	ld   [hl], c                                     ; $5390: $71
	add  e                                           ; $5391: $83
	or   b                                           ; $5392: $b0
	ld   [$0242], sp                                 ; $5393: $08 $42 $02
	rst  $38                                         ; $5396: $ff
	cp   [hl]                                        ; $5397: $be
	cp   a                                           ; $5398: $bf
	nop                                              ; $5399: $00
	ld   e, $00                                      ; $539a: $1e $00
	ldh  [$81], a                                    ; $539c: $e0 $81
	nop                                              ; $539e: $00
	add  d                                           ; $539f: $82
	inc  b                                           ; $53a0: $04
	add  b                                           ; $53a1: $80
	ld   bc, $0087                                   ; $53a2: $01 $87 $00
	add  c                                           ; $53a5: $81
	ccf                                              ; $53a6: $3f
	inc  b                                           ; $53a7: $04
	cpl                                              ; $53a8: $2f
	ccf                                              ; $53a9: $3f
	cpl                                              ; $53aa: $2f
	ccf                                              ; $53ab: $3f
	inc  sp                                          ; $53ac: $33
	add  b                                           ; $53ad: $80
	dec  sp                                          ; $53ae: $3b
	ld   [bc], a                                     ; $53af: $02
	dec  de                                          ; $53b0: $1b
	inc  de                                          ; $53b1: $13
	dec  bc                                          ; $53b2: $0b
	add  c                                           ; $53b3: $81
	rrca                                             ; $53b4: $0f
	add  e                                           ; $53b5: $83
	nop                                              ; $53b6: $00
	add  b                                           ; $53b7: $80
	jr   c, jr_02c_533c                              ; $53b8: $38 $82

	nop                                              ; $53ba: $00
	add  b                                           ; $53bb: $80
	inc  b                                           ; $53bc: $04
	add  c                                           ; $53bd: $81
	nop                                              ; $53be: $00

jr_02c_53bf:
	rlca                                             ; $53bf: $07
	db   $fc                                         ; $53c0: $fc
	db   $ec                                         ; $53c1: $ec
	db   $fc                                         ; $53c2: $fc
	call z, $dcfc                                    ; $53c3: $cc $fc $dc
	db   $fc                                         ; $53c6: $fc
	inc  e                                           ; $53c7: $1c
	add  b                                           ; $53c8: $80
	cp   h                                           ; $53c9: $bc
	add  hl, bc                                      ; $53ca: $09
	jr   c, jr_02c_53e5                              ; $53cb: $38 $18

	jr   nc, jr_02c_53bf                             ; $53cd: $30 $f0

	ldh  [$dc], a                                    ; $53cf: $e0 $dc
	inc  c                                           ; $53d1: $0c
	ld   a, a                                        ; $53d2: $7f
	rrca                                             ; $53d3: $0f
	ld   b, a                                        ; $53d4: $47
	add  b                                           ; $53d5: $80
	rlca                                             ; $53d6: $07
	add  c                                           ; $53d7: $81
	rrca                                             ; $53d8: $0f
	ld   bc, $0f07                                   ; $53d9: $01 $07 $0f
	add  d                                           ; $53dc: $82
	ccf                                              ; $53dd: $3f
	nop                                              ; $53de: $00
	ld   a, a                                        ; $53df: $7f
	add  b                                           ; $53e0: $80
	ld   [hl], a                                     ; $53e1: $77

jr_02c_53e2:
	add  c                                           ; $53e2: $81
	ld   l, a                                        ; $53e3: $6f
	inc  c                                           ; $53e4: $0c

jr_02c_53e5:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53e5: $cf
	ld   c, a                                        ; $53e6: $4f
	ldh  [$30], a                                    ; $53e7: $e0 $30
	ccf                                              ; $53e9: $3f
	rla                                              ; $53ea: $17
	ld   [hl], a                                     ; $53eb: $77
	nop                                              ; $53ec: $00
	rra                                              ; $53ed: $1f
	nop                                              ; $53ee: $00
	db   $e4                                         ; $53ef: $e4
	ldh  [$e6], a                                    ; $53f0: $e0 $e6
	add  c                                           ; $53f2: $81
	ret  nz                                          ; $53f3: $c0

	rlca                                             ; $53f4: $07
	and  c                                           ; $53f5: $a1
	ret  nz                                          ; $53f6: $c0

	call nz, $bac2                                   ; $53f7: $c4 $c2 $ba
	add  $da                                         ; $53fa: $c6 $da
	ldh  [c], a                                      ; $53fc: $e2
	add  b                                           ; $53fd: $80
	ldh  a, [rP1]                                    ; $53fe: $f0 $00
	pop  af                                          ; $5400: $f1
	add  b                                           ; $5401: $80
	ld   [hl], b                                     ; $5402: $70
	add  c                                           ; $5403: $81
	or   b                                           ; $5404: $b0
	ld   d, $a3                                      ; $5405: $16 $a3
	and  d                                           ; $5407: $a2
	ld   c, a                                        ; $5408: $4f
	inc  c                                           ; $5409: $0c
	cp   $b0                                         ; $540a: $fe $b0
	cp   h                                           ; $540c: $bc
	nop                                              ; $540d: $00
	ldh  a, [rP1]                                    ; $540e: $f0 $00
	inc  e                                           ; $5410: $1c
	nop                                              ; $5411: $00
	ld   a, $0c                                      ; $5412: $3e $0c
	rrca                                             ; $5414: $0f
	ld   c, $48                                      ; $5415: $0e $48
	db   $10                                         ; $5417: $10
	jp   hl                                          ; $5418: $e9


	dec  h                                           ; $5419: $25
	inc  h                                           ; $541a: $24
	ld   l, [hl]                                     ; $541b: $6e
	ld   c, [hl]                                     ; $541c: $4e
	add  b                                           ; $541d: $80
	ld   d, a                                        ; $541e: $57
	add  hl, bc                                      ; $541f: $09
	ld   c, l                                        ; $5420: $4d
	ld   e, $08                                      ; $5421: $1e $08
	sub  d                                           ; $5423: $92
	jr   nc, jr_02c_5464                             ; $5424: $30 $3e

	jr   nc, jr_02c_53e2                             ; $5426: $30 $ba

	ld   h, b                                        ; $5428: $60
	ld   h, d                                        ; $5429: $62
	add  b                                           ; $542a: $80
	ld   b, b                                        ; $542b: $40
	ld   de, $a8a0                                   ; $542c: $11 $a0 $a8
	and  b                                           ; $542f: $a0
	and  a                                           ; $5430: $a7
	ld   c, b                                        ; $5431: $48
	adc  a                                           ; $5432: $8f
	nop                                              ; $5433: $00
	ld   a, h                                        ; $5434: $7c
	jr   nc, @-$0e                                   ; $5435: $30 $f0

	ld   [hl], b                                     ; $5437: $70
	ld   [de], a                                     ; $5438: $12
	ld   [$a497], sp                                 ; $5439: $08 $97 $a4
	inc  h                                           ; $543c: $24
	halt                                             ; $543d: $76
	ld   [hl], d                                     ; $543e: $72
	add  b                                           ; $543f: $80
	ld   [$3209], a                                  ; $5440: $ea $09 $32
	ld   hl, sp+$10                                  ; $5443: $f8 $10
	ld   c, c                                        ; $5445: $49
	inc  c                                           ; $5446: $0c
	ld   a, h                                        ; $5447: $7c
	inc  c                                           ; $5448: $0c
	ld   e, l                                        ; $5449: $5d
	ld   b, $46                                      ; $544a: $06 $46
	add  b                                           ; $544c: $80
	ld   [bc], a                                     ; $544d: $02
	inc  de                                          ; $544e: $13
	dec  b                                           ; $544f: $05
	dec  d                                           ; $5450: $15
	dec  b                                           ; $5451: $05
	push hl                                          ; $5452: $e5
	ld   [de], a                                     ; $5453: $12
	or   [hl]                                        ; $5454: $b6
	inc  bc                                          ; $5455: $03
	ld   e, [hl]                                     ; $5456: $5e
	rla                                              ; $5457: $17
	ld   d, c                                        ; $5458: $51
	inc  sp                                          ; $5459: $33
	ccf                                              ; $545a: $3f
	jr   nc, @+$60                                   ; $545b: $30 $5e

	jr   jr_02c_5483                                 ; $545d: $18 $24

	nop                                              ; $545f: $00
	ld   a, $00                                      ; $5460: $3e $00
	ld   h, b                                        ; $5462: $60
	add  c                                           ; $5463: $81

jr_02c_5464:
	nop                                              ; $5464: $00
	nop                                              ; $5465: $00
	ret  nz                                          ; $5466: $c0

	add  b                                           ; $5467: $80
	ld   b, b                                        ; $5468: $40
	add  b                                           ; $5469: $80
	ld   h, b                                        ; $546a: $60
	ld   bc, $ff7f                                   ; $546b: $01 $7f $ff
	add  c                                           ; $546e: $81
	nop                                              ; $546f: $00
	ld   [de], a                                     ; $5470: $12
	dec  b                                           ; $5471: $05
	nop                                              ; $5472: $00
	ld   a, [$2500]                                  ; $5473: $fa $00 $25
	ret  nz                                          ; $5476: $c0

	ld   a, d                                        ; $5477: $7a
	add  sp, -$76                                    ; $5478: $e8 $8a
	call z, $0cfc                                    ; $547a: $cc $fc $0c
	ld   a, d                                        ; $547d: $7a
	jr   jr_02c_54a4                                 ; $547e: $18 $24

	nop                                              ; $5480: $00
	ld   a, h                                        ; $5481: $7c
	nop                                              ; $5482: $00

jr_02c_5483:
	ld   b, $81                                      ; $5483: $06 $81
	nop                                              ; $5485: $00
	nop                                              ; $5486: $00
	inc  bc                                          ; $5487: $03
	add  b                                           ; $5488: $80
	ld   [bc], a                                     ; $5489: $02
	add  b                                           ; $548a: $80
	ld   b, $01                                      ; $548b: $06 $01
	cp   $ff                                         ; $548d: $fe $ff
	add  c                                           ; $548f: $81
	nop                                              ; $5490: $00
	db   $10                                         ; $5491: $10
	and  b                                           ; $5492: $a0
	nop                                              ; $5493: $00
	ld   e, a                                        ; $5494: $5f
	nop                                              ; $5495: $00
	ld   sp, hl                                      ; $5496: $f9
	nop                                              ; $5497: $00
	rrca                                             ; $5498: $0f
	ld   [bc], a                                     ; $5499: $02
	ld   a, [de]                                     ; $549a: $1a
	ld   a, [bc]                                     ; $549b: $0a
	dec  l                                           ; $549c: $2d
	add  hl, bc                                      ; $549d: $09
	ld   h, c                                        ; $549e: $61
	dec  h                                           ; $549f: $25
	db   $e4                                         ; $54a0: $e4
	ld   l, h                                        ; $54a1: $6c
	ld   c, h                                        ; $54a2: $4c
	add  b                                           ; $54a3: $80

jr_02c_54a4:
	ld   d, a                                        ; $54a4: $57
	dec  de                                          ; $54a5: $1b
	ld   c, d                                        ; $54a6: $4a
	adc  c                                           ; $54a7: $89
	jr   jr_02c_54b6                                 ; $54a8: $18 $0c

	jr   nz, jr_02c_5464                             ; $54aa: $20 $b8

	ld   h, b                                        ; $54ac: $60
	ld   l, b                                        ; $54ad: $68
	ld   b, b                                        ; $54ae: $40
	ld   c, h                                        ; $54af: $4c
	ld   b, b                                        ; $54b0: $40
	call nz, $ab20                                   ; $54b1: $c4 $20 $ab
	ld   d, b                                        ; $54b4: $50
	ld   d, [hl]                                     ; $54b5: $56

jr_02c_54b6:
	ld   e, d                                        ; $54b6: $5a
	sub  a                                           ; $54b7: $97

jr_02c_54b8:
	nop                                              ; $54b8: $00
	ld   a, b                                        ; $54b9: $78
	jr   nc, jr_02c_54b8                             ; $54ba: $30 $fc

	ld   b, b                                        ; $54bc: $40
	ld   [bc], a                                     ; $54bd: $02
	jr   c, jr_02c_54db                              ; $54be: $38 $1b

	ld   e, d                                        ; $54c0: $5a
	ld   b, [hl]                                     ; $54c1: $46
	add  b                                           ; $54c2: $80
	ldh  [c], a                                      ; $54c3: $e2
	add  b                                           ; $54c4: $80
	call nc, Call_02c_6603                           ; $54c5: $d4 $03 $66
	push af                                          ; $54c8: $f5
	inc  h                                           ; $54c9: $24
	ld   [hl], c                                     ; $54ca: $71
	add  b                                           ; $54cb: $80
	ld   a, [de]                                     ; $54cc: $1a
	dec  b                                           ; $54cd: $05
	dec  e                                           ; $54ce: $1d
	ld   e, l                                        ; $54cf: $5d
	dec  c                                           ; $54d0: $0d
	db   $ed                                         ; $54d1: $ed
	dec  c                                           ; $54d2: $0d
	adc  l                                           ; $54d3: $8d
	add  c                                           ; $54d4: $81
	ld   a, [bc]                                     ; $54d5: $0a
	db   $10                                         ; $54d6: $10
	db   $eb                                         ; $54d7: $eb
	inc  d                                           ; $54d8: $14
	xor  c                                           ; $54d9: $a9
	dec  bc                                          ; $54da: $0b

jr_02c_54db:
	ld   b, l                                        ; $54db: $45
	ld   de, $2308                                   ; $54dc: $11 $08 $23
	ld   h, e                                        ; $54df: $63
	jr   nz, jr_02c_552e                             ; $54e0: $20 $4c

	nop                                              ; $54e2: $00
	jr   z, jr_02c_54e5                              ; $54e3: $28 $00

jr_02c_54e5:
	jr   nc, jr_02c_54e7                             ; $54e5: $30 $00

jr_02c_54e7:
	ld   h, b                                        ; $54e7: $60
	add  c                                           ; $54e8: $81
	nop                                              ; $54e9: $00
	nop                                              ; $54ea: $00
	ret  nz                                          ; $54eb: $c0

	add  d                                           ; $54ec: $82
	nop                                              ; $54ed: $00
	ld   bc, $ff7f                                   ; $54ee: $01 $7f $ff
	add  c                                           ; $54f1: $81
	nop                                              ; $54f2: $00
	ld   [de], a                                     ; $54f3: $12
	dec  b                                           ; $54f4: $05
	nop                                              ; $54f5: $00
	ld   a, [$ed00]                                  ; $54f6: $fa $00 $ed
	nop                                              ; $54f9: $00
	jp   nc, $f898                                   ; $54fa: $d2 $98 $f8

	inc  e                                           ; $54fd: $1c
	ld   e, $1c                                      ; $54fe: $1e $1c
	jp   nc, Jump_02c_6410                           ; $5500: $d2 $10 $64

	nop                                              ; $5503: $00
	inc  e                                           ; $5504: $1c
	jr   @+$20                                       ; $5505: $18 $1e

	add  b                                           ; $5507: $80
	inc  e                                           ; $5508: $1c
	ld   bc, $0f0c                                   ; $5509: $01 $0c $0f
	add  b                                           ; $550c: $80
	ld   c, $80                                      ; $550d: $0e $80
	ld   e, $01                                      ; $550f: $1e $01
	cp   $ff                                         ; $5511: $fe $ff
	add  c                                           ; $5513: $81
	nop                                              ; $5514: $00
	dec  b                                           ; $5515: $05
	jr   nz, jr_02c_5518                             ; $5516: $20 $00

jr_02c_5518:
	rst  JumpTable                                         ; $5518: $df
	nop                                              ; $5519: $00
	rst  $38                                         ; $551a: $ff
	nop                                              ; $551b: $00
	add  d                                           ; $551c: $82
	db   $10                                         ; $551d: $10
	add  b                                           ; $551e: $80
	ld   [$4080], sp                                 ; $551f: $08 $80 $40
	add  h                                           ; $5522: $84
	nop                                              ; $5523: $00
	ld   b, $10                                      ; $5524: $06 $10
	ccf                                              ; $5526: $3f
	daa                                              ; $5527: $27
	ccf                                              ; $5528: $3f
	ld   sp, $353d                                   ; $5529: $31 $3d $35
	add  c                                           ; $552c: $81
	add  hl, sp                                      ; $552d: $39

jr_02c_552e:
	ld   [bc], a                                     ; $552e: $02
	ld   sp, $191f                                   ; $552f: $31 $1f $19
	add  b                                           ; $5532: $80
	rrca                                             ; $5533: $0f
	add  c                                           ; $5534: $81
	nop                                              ; $5535: $00
	add  d                                           ; $5536: $82
	ld   [$1080], sp                                 ; $5537: $08 $80 $10
	add  b                                           ; $553a: $80
	ld   [bc], a                                     ; $553b: $02
	add  h                                           ; $553c: $84
	nop                                              ; $553d: $00
	ld   b, $08                                      ; $553e: $06 $08
	db   $fc                                         ; $5540: $fc
	db   $e4                                         ; $5541: $e4
	db   $fc                                         ; $5542: $fc
	adc  h                                           ; $5543: $8c
	call c, $81cc                                    ; $5544: $dc $cc $81
	sbc  h                                           ; $5547: $9c
	ld   [bc], a                                     ; $5548: $02
	adc  h                                           ; $5549: $8c
	ld   hl, sp-$68                                  ; $554a: $f8 $98
	add  b                                           ; $554c: $80
	ldh  a, [rP1]                                    ; $554d: $f0 $00
	nop                                              ; $554f: $00
	add  b                                           ; $5550: $80
	inc  b                                           ; $5551: $04
	inc  bc                                          ; $5552: $03
	jr   z, jr_02c_555d                              ; $5553: $28 $08

	inc  l                                           ; $5555: $2c
	inc  c                                           ; $5556: $0c
	add  b                                           ; $5557: $80
	rrca                                             ; $5558: $0f
	inc  bc                                          ; $5559: $03
	inc  hl                                          ; $555a: $23
	rlca                                             ; $555b: $07
	dec  h                                           ; $555c: $25

jr_02c_555d:
	ld   bc, $1f80                                   ; $555d: $01 $80 $1f
	nop                                              ; $5560: $00
	ccf                                              ; $5561: $3f
	add  b                                           ; $5562: $80
	dec  sp                                          ; $5563: $3b
	add  c                                           ; $5564: $81
	scf                                              ; $5565: $37
	add  b                                           ; $5566: $80
	rla                                              ; $5567: $17
	add  hl, bc                                      ; $5568: $09
	ld   c, b                                        ; $5569: $48
	ld   b, b                                        ; $556a: $40
	rst  $38                                         ; $556b: $ff
	ld   l, l                                        ; $556c: $6d
	db   $ed                                         ; $556d: $ed
	nop                                              ; $556e: $00
	ld   a, b                                        ; $556f: $78
	nop                                              ; $5570: $00
	rlca                                             ; $5571: $07
	nop                                              ; $5572: $00
	add  b                                           ; $5573: $80
	jr   nz, jr_02c_5579                             ; $5574: $20 $03

	inc  d                                           ; $5576: $14
	db   $10                                         ; $5577: $10
	inc  [hl]                                        ; $5578: $34

jr_02c_5579:
	jr   nc, @-$7e                                   ; $5579: $30 $80

	ldh  a, [$03]                                    ; $557b: $f0 $03
	call nz, $a4e0                                   ; $557d: $c4 $e0 $a4
	add  b                                           ; $5580: $80
	add  c                                           ; $5581: $81
	db   $fc                                         ; $5582: $fc
	add  b                                           ; $5583: $80
	call c, $ec81                                    ; $5584: $dc $81 $ec
	add  b                                           ; $5587: $80
	add  sp, $08                                     ; $5588: $e8 $08
	ld   [de], a                                     ; $558a: $12
	ld   [bc], a                                     ; $558b: $02
	rst  $38                                         ; $558c: $ff
	xor  [hl]                                        ; $558d: $ae
	xor  a                                           ; $558e: $af
	nop                                              ; $558f: $00
	ld   e, $00                                      ; $5590: $1e $00
	ldh  [$81], a                                    ; $5592: $e0 $81
	nop                                              ; $5594: $00
	add  d                                           ; $5595: $82
	inc  b                                           ; $5596: $04
	adc  c                                           ; $5597: $89
	nop                                              ; $5598: $00
	inc  bc                                          ; $5599: $03
	ccf                                              ; $559a: $3f
	cpl                                              ; $559b: $2f
	ccf                                              ; $559c: $3f
	cpl                                              ; $559d: $2f
	add  h                                           ; $559e: $84
	ccf                                              ; $559f: $3f
	add  b                                           ; $55a0: $80
	rra                                              ; $55a1: $1f
	add  b                                           ; $55a2: $80
	rrca                                             ; $55a3: $0f
	add  e                                           ; $55a4: $83
	nop                                              ; $55a5: $00
	add  b                                           ; $55a6: $80
	jr   c, @-$7c                                    ; $55a7: $38 $82

	nop                                              ; $55a9: $00
	add  b                                           ; $55aa: $80
	inc  b                                           ; $55ab: $04
	add  b                                           ; $55ac: $80
	ld   [bc], a                                     ; $55ad: $02
	add  b                                           ; $55ae: $80
	nop                                              ; $55af: $00
	ld   [bc], a                                     ; $55b0: $02
	db   $10                                         ; $55b1: $10
	db   $fc                                         ; $55b2: $fc
	db   $ec                                         ; $55b3: $ec
	add  [hl]                                        ; $55b4: $86
	db   $fc                                         ; $55b5: $fc
	add  b                                           ; $55b6: $80
	ld   hl, sp-$80                                  ; $55b7: $f8 $80
	ldh  a, [rTIMA]                                  ; $55b9: $f0 $05
	nop                                              ; $55bb: $00
	inc  e                                           ; $55bc: $1c
	inc  c                                           ; $55bd: $0c
	ccf                                              ; $55be: $3f
	rrca                                             ; $55bf: $0f
	ld   h, a                                        ; $55c0: $67
	add  c                                           ; $55c1: $81
	rrca                                             ; $55c2: $0f
	nop                                              ; $55c3: $00
	ld   b, a                                        ; $55c4: $47
	add  c                                           ; $55c5: $81
	rrca                                             ; $55c6: $0f
	add  b                                           ; $55c7: $80
	rra                                              ; $55c8: $1f
	nop                                              ; $55c9: $00
	ccf                                              ; $55ca: $3f
	add  b                                           ; $55cb: $80

jr_02c_55cc:
	scf                                              ; $55cc: $37
	nop                                              ; $55cd: $00
	cpl                                              ; $55ce: $2f
	add  d                                           ; $55cf: $82
	ld   l, a                                        ; $55d0: $6f
	ld   a, [de]                                     ; $55d1: $1a
	stop                                             ; $55d2: $10 $00
	rst  $38                                         ; $55d4: $ff
	ld   [hl], a                                     ; $55d5: $77
	rst  $30                                         ; $55d6: $f7
	nop                                              ; $55d7: $00
	ld   a, b                                        ; $55d8: $78
	nop                                              ; $55d9: $00
	rlca                                             ; $55da: $07
	nop                                              ; $55db: $00

jr_02c_55dc:
	ld   hl, sp-$20                                  ; $55dc: $f8 $e0
	db   $fc                                         ; $55de: $fc
	ret  nz                                          ; $55df: $c0

	add  [hl]                                        ; $55e0: $86
	ret  nz                                          ; $55e1: $c0

	ldh  [$c0], a                                    ; $55e2: $e0 $c0
	push bc                                          ; $55e4: $c5
	add  b                                           ; $55e5: $80
	ld   hl, sp-$3a                                  ; $55e6: $f8 $c6
	jp   c, $f0e2                                    ; $55e8: $da $e2 $f0

	ld   [hl], b                                     ; $55eb: $70
	ld   [hl], c                                     ; $55ec: $71
	add  e                                           ; $55ed: $83
	or   b                                           ; $55ee: $b0
	jr   jr_02c_5633                                 ; $55ef: $18 $42

	ld   [bc], a                                     ; $55f1: $02
	rst  $38                                         ; $55f2: $ff
	cp   [hl]                                        ; $55f3: $be
	cp   a                                           ; $55f4: $bf
	nop                                              ; $55f5: $00
	ld   e, $00                                      ; $55f6: $1e $00
	ldh  [rP1], a                                    ; $55f8: $e0 $00
	ld   b, $00                                      ; $55fa: $06 $00
	rrca                                             ; $55fc: $0f
	ld   b, $1e                                      ; $55fd: $06 $1e
	ld   a, [bc]                                     ; $55ff: $0a
	add  hl, hl                                      ; $5600: $29
	add  hl, bc                                      ; $5601: $09
	ld   l, l                                        ; $5602: $6d
	add  hl, hl                                      ; $5603: $29
	pop  hl                                          ; $5604: $e1
	ld   h, l                                        ; $5605: $65
	ld   h, h                                        ; $5606: $64
	ld   l, h                                        ; $5607: $6c
	ld   c, h                                        ; $5608: $4c
	add  b                                           ; $5609: $80
	ld   d, a                                        ; $560a: $57
	dec  de                                          ; $560b: $1b
	ld   c, a                                        ; $560c: $4f
	adc  l                                           ; $560d: $8d
	jr   jr_02c_5619                                 ; $560e: $18 $09

	jr   z, jr_02c_564e                              ; $5610: $28 $3c

	jr   nc, jr_02c_55cc                             ; $5612: $30 $b8

	ld   h, b                                        ; $5614: $60
	ld   l, b                                        ; $5615: $68
	ld   h, b                                        ; $5616: $60
	ld   l, h                                        ; $5617: $6c
	and  b                                           ; $5618: $a0

jr_02c_5619:
	xor  h                                           ; $5619: $ac
	ld   d, b                                        ; $561a: $50
	sbc  b                                           ; $561b: $98
	nop                                              ; $561c: $00
	ld   a, b                                        ; $561d: $78
	jr   nc, jr_02c_55dc                             ; $561e: $30 $bc

	jr   c, @+$7a                                    ; $5620: $38 $78

	ld   b, b                                        ; $5622: $40
	ld   [bc], a                                     ; $5623: $02
	jr   c, jr_02c_5641                              ; $5624: $38 $1b

	ld   e, d                                        ; $5626: $5a
	ld   b, [hl]                                     ; $5627: $46
	add  b                                           ; $5628: $80
	ldh  [c], a                                      ; $5629: $e2
	add  b                                           ; $562a: $80
	sub  h                                           ; $562b: $94
	dec  d                                           ; $562c: $15
	and  $f4                                         ; $562d: $e6 $f4
	ld   h, h                                        ; $562f: $64
	ret  nc                                          ; $5630: $d0

	ld   a, [de]                                     ; $5631: $1a
	ld   a, d                                        ; $5632: $7a

jr_02c_5633:
	dec  de                                          ; $5633: $1b
	dec  sp                                          ; $5634: $3b
	dec  c                                           ; $5635: $0d
	ld   l, l                                        ; $5636: $6d
	dec  c                                           ; $5637: $0d
	db   $fd                                         ; $5638: $fd
	inc  b                                           ; $5639: $04
	sub  h                                           ; $563a: $94
	inc  b                                           ; $563b: $04
	ld   a, h                                        ; $563c: $7c
	ld   [$192e], sp                                 ; $563d: $08 $2e $19
	ld   d, b                                        ; $5640: $50

jr_02c_5641:
	rla                                              ; $5641: $17
	dec  bc                                          ; $5642: $0b
	add  c                                           ; $5643: $81
	nop                                              ; $5644: $00
	inc  b                                           ; $5645: $04
	inc  c                                           ; $5646: $0c
	nop                                              ; $5647: $00

jr_02c_5648:
	jr   c, jr_02c_564a                              ; $5648: $38 $00

jr_02c_564a:
	ld   h, b                                        ; $564a: $60
	add  c                                           ; $564b: $81
	nop                                              ; $564c: $00
	nop                                              ; $564d: $00

jr_02c_564e:
	ret  nz                                          ; $564e: $c0

jr_02c_564f:
	add  d                                           ; $564f: $82
	nop                                              ; $5650: $00
	ld   bc, $c040                                   ; $5651: $01 $40 $c0
	add  b                                           ; $5654: $80
	ld   a, a                                        ; $5655: $7f
	ld   de, $ff00                                   ; $5656: $11 $00 $ff
	nop                                              ; $5659: $00
	rst  $38                                         ; $565a: $ff
	nop                                              ; $565b: $00
	ld   [$7a10], a                                  ; $565c: $ea $10 $7a
	sbc  b                                           ; $565f: $98
	ret  c                                           ; $5660: $d8

	inc  a                                           ; $5661: $3c
	ld   e, b                                        ; $5662: $58
	jr   @+$16                                       ; $5663: $18 $14

	db   $10                                         ; $5665: $10
	db   $ec                                         ; $5666: $ec
	ld   [$805e], sp                                 ; $5667: $08 $5e $80
	inc  e                                           ; $566a: $1c
	ld   bc, $0f0c                                   ; $566b: $01 $0c $0f
	add  b                                           ; $566e: $80
	ld   c, $80                                      ; $566f: $0e $80
	ld   b, $80                                      ; $5671: $06 $80
	ld   c, $01                                      ; $5673: $0e $01
	ld   a, $3f                                      ; $5675: $3e $3f
	add  b                                           ; $5677: $80
	cp   $0f                                         ; $5678: $fe $0f
	nop                                              ; $567a: $00
	rst  $38                                         ; $567b: $ff
	nop                                              ; $567c: $00
	rst  $38                                         ; $567d: $ff
	nop                                              ; $567e: $00
	rlca                                             ; $567f: $07
	nop                                              ; $5680: $00
	rrca                                             ; $5681: $0f
	rlca                                             ; $5682: $07
	ld   e, $0a                                      ; $5683: $1e $0a
	ld   h, l                                        ; $5685: $65
	ld   bc, $6de1                                   ; $5686: $01 $e1 $6d
	ld   c, h                                        ; $5689: $4c
	add  b                                           ; $568a: $80
	ld   d, h                                        ; $568b: $54
	add  b                                           ; $568c: $80
	ld   c, a                                        ; $568d: $4f
	inc  bc                                          ; $568e: $03
	ld   e, d                                        ; $568f: $5a
	adc  c                                           ; $5690: $89
	jr   z, jr_02c_564f                              ; $5691: $28 $bc

jr_02c_5693:
	add  b                                           ; $5693: $80
	ld   [hl], b                                     ; $5694: $70
	dec  d                                           ; $5695: $15
	ld   h, b                                        ; $5696: $60
	ld   l, h                                        ; $5697: $6c
	ld   b, b                                        ; $5698: $40
	call nz, $2320                                   ; $5699: $c4 $20 $23
	jr   nz, jr_02c_5648                             ; $569c: $20 $aa

	ld   [hl], d                                     ; $569e: $72
	ld   a, h                                        ; $569f: $7c
	ld   h, b                                        ; $56a0: $60
	xor  a                                           ; $56a1: $af
	nop                                              ; $56a2: $00
	db   $fc                                         ; $56a3: $fc
	jr   c, @+$7c                                    ; $56a4: $38 $7a

	ld   b, b                                        ; $56a6: $40
	inc  bc                                          ; $56a7: $03
	ld   a, [hl-]                                    ; $56a8: $3a
	ld   a, [de]                                     ; $56a9: $1a
	ld   e, d                                        ; $56aa: $5a
	ld   b, [hl]                                     ; $56ab: $46
	add  b                                           ; $56ac: $80
	ldh  [c], a                                      ; $56ad: $e2
	add  b                                           ; $56ae: $80
	call nc, Call_02c_6609                           ; $56af: $d4 $09 $66
	push af                                          ; $56b2: $f5
	inc  h                                           ; $56b3: $24
	ld   [hl], c                                     ; $56b4: $71
	ld   a, [de]                                     ; $56b5: $1a
	ld   e, d                                        ; $56b6: $5a
	dec  c                                           ; $56b7: $0d
	db   $ed                                         ; $56b8: $ed
	dec  c                                           ; $56b9: $0d
	adc  l                                           ; $56ba: $8d
	add  b                                           ; $56bb: $80
	dec  c                                           ; $56bc: $0d
	add  hl, bc                                      ; $56bd: $09
	ld   a, [bc]                                     ; $56be: $0a
	ld   a, [hl+]                                    ; $56bf: $2a
	ld   a, [bc]                                     ; $56c0: $0a
	db   $eb                                         ; $56c1: $eb
	inc  b                                           ; $56c2: $04
	db   $ed                                         ; $56c3: $ed
	inc  bc                                          ; $56c4: $03
	ld   a, l                                        ; $56c5: $7d
	dec  [hl]                                        ; $56c6: $35
	inc  [hl]                                        ; $56c7: $34
	add  b                                           ; $56c8: $80
	scf                                              ; $56c9: $37
	add  hl, bc                                      ; $56ca: $09
	jr   nc, jr_02c_570d                             ; $56cb: $30 $40

	nop                                              ; $56cd: $00
	jr   nz, jr_02c_56d0                             ; $56ce: $20 $00

jr_02c_56d0:
	jr   c, jr_02c_56d2                              ; $56d0: $38 $00

jr_02c_56d2:
	ld   h, b                                        ; $56d2: $60
	nop                                              ; $56d3: $00
	ret  nz                                          ; $56d4: $c0

	add  b                                           ; $56d5: $80
	ld   e, $01                                      ; $56d6: $1e $01
	ccf                                              ; $56d8: $3f
	cp   a                                           ; $56d9: $bf
	add  b                                           ; $56da: $80
	rst  $38                                         ; $56db: $ff
	add  b                                           ; $56dc: $80
	ld   bc, $0085                                   ; $56dd: $01 $85 $00
	db   $10                                         ; $56e0: $10
	ld   e, h                                        ; $56e1: $5c
	nop                                              ; $56e2: $00
	xor  h                                           ; $56e3: $ac
	adc  h                                           ; $56e4: $8c
	cp   [hl]                                        ; $56e5: $be
	inc  a                                           ; $56e6: $3c
	call c, $221c                                    ; $56e7: $dc $1c $22
	nop                                              ; $56ea: $00
	inc  b                                           ; $56eb: $04
	nop                                              ; $56ec: $00
	inc  e                                           ; $56ed: $1c
	jr   jr_02c_570e                                 ; $56ee: $18 $1e

	inc  b                                           ; $56f0: $04
	rlca                                             ; $56f1: $07
	add  b                                           ; $56f2: $80
	ld   [bc], a                                     ; $56f3: $02
	ld   bc, $8786                                   ; $56f4: $01 $86 $87
	add  b                                           ; $56f7: $80
	ld   hl, sp-$80                                  ; $56f8: $f8 $80
	ldh  a, [$89]                                    ; $56fa: $f0 $89
	nop                                              ; $56fc: $00

jr_02c_56fd:
	add  d                                           ; $56fd: $82
	inc  b                                           ; $56fe: $04
	adc  c                                           ; $56ff: $89
	nop                                              ; $5700: $00
	inc  bc                                          ; $5701: $03
	ccf                                              ; $5702: $3f
	cpl                                              ; $5703: $2f
	ccf                                              ; $5704: $3f
	cpl                                              ; $5705: $2f
	add  h                                           ; $5706: $84
	ccf                                              ; $5707: $3f
	add  b                                           ; $5708: $80
	rra                                              ; $5709: $1f
	add  b                                           ; $570a: $80
	rrca                                             ; $570b: $0f
	add  e                                           ; $570c: $83

jr_02c_570d:
	nop                                              ; $570d: $00

jr_02c_570e:
	add  b                                           ; $570e: $80
	jr   c, jr_02c_5693                              ; $570f: $38 $82

	nop                                              ; $5711: $00
	add  b                                           ; $5712: $80
	inc  b                                           ; $5713: $04
	add  b                                           ; $5714: $80
	ld   [bc], a                                     ; $5715: $02
	add  b                                           ; $5716: $80
	nop                                              ; $5717: $00
	ld   [bc], a                                     ; $5718: $02
	db   $10                                         ; $5719: $10
	db   $fc                                         ; $571a: $fc
	db   $ec                                         ; $571b: $ec
	add  [hl]                                        ; $571c: $86
	db   $fc                                         ; $571d: $fc
	add  b                                           ; $571e: $80
	ld   hl, sp+$02                                  ; $571f: $f8 $02
	ldh  a, [$e0]                                    ; $5721: $f0 $e0
	nop                                              ; $5723: $00
	add  b                                           ; $5724: $80
	ld   b, $07                                      ; $5725: $06 $07
	jr   nc, jr_02c_5729                             ; $5727: $30 $00

jr_02c_5729:
	inc  bc                                          ; $5729: $03
	dec  bc                                          ; $572a: $0b
	dec  hl                                          ; $572b: $2b
	dec  bc                                          ; $572c: $0b
	rrca                                             ; $572d: $0f
	rlca                                             ; $572e: $07
	add  b                                           ; $572f: $80
	rra                                              ; $5730: $1f
	nop                                              ; $5731: $00
	ccf                                              ; $5732: $3f
	add  b                                           ; $5733: $80
	scf                                              ; $5734: $37
	nop                                              ; $5735: $00
	cpl                                              ; $5736: $2f
	add  d                                           ; $5737: $82
	ld   l, a                                        ; $5738: $6f

jr_02c_5739:
	dec  de                                          ; $5739: $1b
	xor  a                                           ; $573a: $af
	cpl                                              ; $573b: $2f
	stop                                             ; $573c: $10 $00
	ld   a, a                                        ; $573e: $7f
	ld   [hl], a                                     ; $573f: $77
	rst  $30                                         ; $5740: $f7
	nop                                              ; $5741: $00
	ld   a, a                                        ; $5742: $7f
	nop                                              ; $5743: $00
	jr   jr_02c_5746                                 ; $5744: $18 $00

jr_02c_5746:
	ld   a, h                                        ; $5746: $7c
	ld   b, b                                        ; $5747: $40
	ld   b, $00                                      ; $5748: $06 $00
	and  c                                           ; $574a: $a1
	ret  nz                                          ; $574b: $c0

	call nz, $bac2                                   ; $574c: $c4 $c2 $ba
	add  [hl]                                        ; $574f: $86
	sbc  d                                           ; $5750: $9a
	ldh  [c], a                                      ; $5751: $e2
	ldh  a, [rSVBK]                                  ; $5752: $f0 $70
	ld   [hl], c                                     ; $5754: $71
	or   b                                           ; $5755: $b0
	add  b                                           ; $5756: $80
	cp   b                                           ; $5757: $b8
	add  b                                           ; $5758: $80

jr_02c_5759:
	or   b                                           ; $5759: $b0
	add  b                                           ; $575a: $80
	add  b                                           ; $575b: $80
	ld   b, $41                                      ; $575c: $06 $41
	ld   bc, $beff                                   ; $575e: $01 $ff $be
	cp   a                                           ; $5761: $bf
	nop                                              ; $5762: $00
	cp   $81                                         ; $5763: $fe $81
	nop                                              ; $5765: $00
	add  d                                           ; $5766: $82
	inc  b                                           ; $5767: $04
	adc  b                                           ; $5768: $88
	nop                                              ; $5769: $00
	ld   [bc], a                                     ; $576a: $02
	db   $10                                         ; $576b: $10
	ccf                                              ; $576c: $3f
	cpl                                              ; $576d: $2f
	add  [hl]                                        ; $576e: $86
	ccf                                              ; $576f: $3f
	add  b                                           ; $5770: $80
	rra                                              ; $5771: $1f
	add  b                                           ; $5772: $80
	rrca                                             ; $5773: $0f
	add  b                                           ; $5774: $80
	ld   [$0081], sp                                 ; $5775: $08 $81 $00
	add  b                                           ; $5778: $80
	jr   c, jr_02c_56fd                              ; $5779: $38 $82

	nop                                              ; $577b: $00
	add  b                                           ; $577c: $80
	inc  b                                           ; $577d: $04

jr_02c_577e:
	add  b                                           ; $577e: $80
	ld   [bc], a                                     ; $577f: $02
	add  b                                           ; $5780: $80
	nop                                              ; $5781: $00
	ld   [bc], a                                     ; $5782: $02
	db   $10                                         ; $5783: $10
	db   $fc                                         ; $5784: $fc
	db   $ec                                         ; $5785: $ec
	add  [hl]                                        ; $5786: $86
	db   $fc                                         ; $5787: $fc
	add  b                                           ; $5788: $80
	ld   hl, sp-$80                                  ; $5789: $f8 $80
	ldh  a, [$80]                                    ; $578b: $f0 $80
	jr   nz, jr_02c_5793                             ; $578d: $20 $04

	ld   [$022a], sp                                 ; $578f: $08 $2a $02
	ld   h, b                                        ; $5792: $60

jr_02c_5793:
	nop                                              ; $5793: $00
	add  b                                           ; $5794: $80
	rlca                                             ; $5795: $07
	nop                                              ; $5796: $00
	ld   b, a                                        ; $5797: $47
	add  b                                           ; $5798: $80
	rlca                                             ; $5799: $07
	ld   de, $1b03                                   ; $579a: $11 $03 $1b
	rra                                              ; $579d: $1f
	ccf                                              ; $579e: $3f
	cpl                                              ; $579f: $2f
	ld   [hl], c                                     ; $57a0: $71
	ld   b, c                                        ; $57a1: $41
	ldh  [rLCDC], a                                  ; $57a2: $e0 $40
	add  b                                           ; $57a4: $80
	nop                                              ; $57a5: $00
	cp   $5e                                         ; $57a6: $fe $5e
	rst  JumpTable                                         ; $57a8: $df
	inc  bc                                          ; $57a9: $03
	ld   a, a                                        ; $57aa: $7f
	nop                                              ; $57ab: $00
	inc  bc                                          ; $57ac: $03
	add  c                                           ; $57ad: $81
	nop                                              ; $57ae: $00
	jr   jr_02c_5739                                 ; $57af: $18 $88

	and  b                                           ; $57b1: $a0
	inc  l                                           ; $57b2: $2c
	nop                                              ; $57b3: $00
	ld   h, $00                                      ; $57b4: $26 $00
	pop  hl                                          ; $57b6: $e1
	ret  nz                                          ; $57b7: $c0

	db   $e4                                         ; $57b8: $e4
	ldh  [c], a                                      ; $57b9: $e2
	ld   a, [$1a06]                                  ; $57ba: $fa $06 $1a
	ldh  [c], a                                      ; $57bd: $e2
	ld   hl, sp+$78                                  ; $57be: $f8 $78
	ld   a, l                                        ; $57c0: $7d
	cp   h                                           ; $57c1: $bc
	jr   c, jr_02c_581c                              ; $57c2: $38 $58

	daa                                              ; $57c4: $27
	ld   b, $0e                                      ; $57c5: $06 $0e
	ld   [$80ff], sp                                 ; $57c7: $08 $ff $80
	ret  nc                                          ; $57ca: $d0

	ld   bc, $f800                                   ; $57cb: $01 $00 $f8
	add  l                                           ; $57ce: $85
	nop                                              ; $57cf: $00
	ld   b, $03                                      ; $57d0: $06 $03
	nop                                              ; $57d2: $00
	inc  c                                           ; $57d3: $0c
	nop                                              ; $57d4: $00
	stop                                             ; $57d5: $10 $00
	jr   nz, jr_02c_5759                             ; $57d7: $20 $80

	ld   [$0601], sp                                 ; $57d9: $08 $01 $06
	ld   b, [hl]                                     ; $57dc: $46
	add  l                                           ; $57dd: $85
	nop                                              ; $57de: $00
	ld   bc, $0040                                   ; $57df: $01 $40 $00
	add  b                                           ; $57e2: $80
	ld   [bc], a                                     ; $57e3: $02
	ld   b, $23                                      ; $57e4: $06 $23
	inc  bc                                          ; $57e6: $03
	ld   de, $0901                                   ; $57e7: $11 $01 $09
	ld   bc, $8107                                   ; $57ea: $01 $07 $81
	nop                                              ; $57ed: $00
	dec  bc                                          ; $57ee: $0b
	cp   $00                                         ; $57ef: $fe $00
	ld   [bc], a                                     ; $57f1: $02
	nop                                              ; $57f2: $00
	ld   [bc], a                                     ; $57f3: $02
	nop                                              ; $57f4: $00
	ld   bc, $0908                                   ; $57f5: $01 $08 $09
	ld   [hl], b                                     ; $57f8: $70
	ld   [hl], c                                     ; $57f9: $71
	nop                                              ; $57fa: $00
	add  b                                           ; $57fb: $80
	jr   nz, jr_02c_577e                             ; $57fc: $20 $80

	and  b                                           ; $57fe: $a0
	add  d                                           ; $57ff: $82
	and  h                                           ; $5800: $a4
	ld   bc, $8c8d                                   ; $5801: $01 $8d $8c
	add  b                                           ; $5804: $80
	db   $f4                                         ; $5805: $f4
	inc  b                                           ; $5806: $04
	ld   a, [$f4f8]                                  ; $5807: $fa $f8 $f4
	ldh  a, [rIE]                                    ; $580a: $f0 $ff
	add  e                                           ; $580c: $83
	nop                                              ; $580d: $00
	ld   bc, $060e                                   ; $580e: $01 $0e $06
	add  d                                           ; $5811: $82
	rlca                                             ; $5812: $07
	nop                                              ; $5813: $00
	rra                                              ; $5814: $1f
	add  c                                           ; $5815: $81
	rrca                                             ; $5816: $0f
	nop                                              ; $5817: $00
	db   $10                                         ; $5818: $10
	add  c                                           ; $5819: $81
	nop                                              ; $581a: $00
	nop                                              ; $581b: $00

jr_02c_581c:
	db   $10                                         ; $581c: $10
	add  c                                           ; $581d: $81
	nop                                              ; $581e: $00
	ld   a, [bc]                                     ; $581f: $0a
	ld   hl, $4200                                   ; $5820: $21 $00 $42
	nop                                              ; $5823: $00
	ld   b, $3c                                      ; $5824: $06 $3c
	add  hl, sp                                      ; $5826: $39
	nop                                              ; $5827: $00
	add  h                                           ; $5828: $84
	nop                                              ; $5829: $00
	ld   b, $81                                      ; $582a: $06 $81
	ld   a, [$fd05]                                  ; $582c: $fa $05 $fd
	db   $f4                                         ; $582f: $f4
	ldh  a, [c]                                      ; $5830: $f2
	nop                                              ; $5831: $00
	ld   e, h                                        ; $5832: $5c
	nop                                              ; $5833: $00
	add  e                                           ; $5834: $83
	ld   b, b                                        ; $5835: $40
	inc  bc                                          ; $5836: $03

jr_02c_5837:
	nop                                              ; $5837: $00
	stop                                             ; $5838: $10 $00
	ld   [$0081], sp                                 ; $583a: $08 $81 $00
	ld   [$0080], sp                                 ; $583d: $08 $80 $00
	inc  b                                           ; $5840: $04
	nop                                              ; $5841: $00
	ld   b, $3c                                      ; $5842: $06 $3c
	cp   c                                           ; $5844: $b9
	nop                                              ; $5845: $00
	rst  $38                                         ; $5846: $ff
	add  c                                           ; $5847: $81
	nop                                              ; $5848: $00
	inc  b                                           ; $5849: $04
	ld   c, $00                                      ; $584a: $0e $00
	ld   de, $2000                                   ; $584c: $11 $00 $20
	add  b                                           ; $584f: $80
	nop                                              ; $5850: $00
	ld   bc, $5010                                   ; $5851: $01 $10 $50
	add  b                                           ; $5854: $80
	rrca                                             ; $5855: $0f
	nop                                              ; $5856: $00
	nop                                              ; $5857: $00
	add  b                                           ; $5858: $80
	ld   [bc], a                                     ; $5859: $02
	add  b                                           ; $585a: $80
	ld   b, $80                                      ; $585b: $06 $80
	nop                                              ; $585d: $00
	ld   [de], a                                     ; $585e: $12
	ld   d, b                                        ; $585f: $50
	ld   d, h                                        ; $5860: $54
	ld   a, h                                        ; $5861: $7c
	ld   a, [hl]                                     ; $5862: $7e
	ld   c, [hl]                                     ; $5863: $4e
	inc  c                                           ; $5864: $0c
	dec  hl                                          ; $5865: $2b
	rrca                                             ; $5866: $0f
	inc  de                                          ; $5867: $13
	inc  bc                                          ; $5868: $03
	rrca                                             ; $5869: $0f
	nop                                              ; $586a: $00
	jr   c, jr_02c_586d                              ; $586b: $38 $00

jr_02c_586d:
	ret  z                                           ; $586d: $c8

	nop                                              ; $586e: $00
	ld   [$0400], sp                                 ; $586f: $08 $00 $04
	add  b                                           ; $5872: $80
	nop                                              ; $5873: $00
	ld   bc, $0a08                                   ; $5874: $01 $08 $0a
	add  b                                           ; $5877: $80
	stop                                             ; $5878: $10 $00
	nop                                              ; $587a: $00
	add  b                                           ; $587b: $80
	ld   b, b                                        ; $587c: $40
	add  b                                           ; $587d: $80
	ld   c, b                                        ; $587e: $48
	add  b                                           ; $587f: $80
	ld   b, b                                        ; $5880: $40
	ld   [bc], a                                     ; $5881: $02
	ret  nz                                          ; $5882: $c0

	ret  nc                                          ; $5883: $d0

	jp   c, $d880                                    ; $5884: $da $80 $d8

	rlca                                             ; $5887: $07
	ret  z                                           ; $5888: $c8

	db   $f4                                         ; $5889: $f4
	ldh  a, [$e8]                                    ; $588a: $f0 $e8
	ldh  [rIE], a                                    ; $588c: $e0 $ff
	nop                                              ; $588e: $00
	db   $10                                         ; $588f: $10
	add  d                                           ; $5890: $82
	ld   c, $03                                      ; $5891: $0e $03
	ld   b, $0e                                      ; $5893: $06 $0e
	ld   [$813e], sp                                 ; $5895: $08 $3e $81
	ld   e, $80                                      ; $5898: $1e $80
	inc  e                                           ; $589a: $1c
	add  h                                           ; $589b: $84
	nop                                              ; $589c: $00
	ld   b, $20                                      ; $589d: $06 $20
	nop                                              ; $589f: $00
	ld   bc, $6e0f                                   ; $58a0: $01 $0f $6e
	nop                                              ; $58a3: $00
	ld   a, a                                        ; $58a4: $7f
	add  c                                           ; $58a5: $81
	nop                                              ; $58a6: $00
	inc  bc                                          ; $58a7: $03
	ei                                               ; $58a8: $fb
	nop                                              ; $58a9: $00
	ld   b, [hl]                                     ; $58aa: $46
	ld   c, d                                        ; $58ab: $4a
	add  b                                           ; $58ac: $80
	jp   z, $ea80                                    ; $58ad: $ca $80 $ea

	inc  bc                                          ; $58b0: $03
	add  hl, bc                                      ; $58b1: $09
	nop                                              ; $58b2: $00
	xor  [hl]                                        ; $58b3: $ae
	jr   nz, jr_02c_5837                             ; $58b4: $20 $81

	and  b                                           ; $58b6: $a0
	ld   bc, $0820                                   ; $58b7: $01 $20 $08
	add  e                                           ; $58ba: $83
	nop                                              ; $58bb: $00
	ld   b, $08                                      ; $58bc: $06 $08
	nop                                              ; $58be: $00
	ld   d, b                                        ; $58bf: $50
	ld   b, b                                        ; $58c0: $40
	rra                                              ; $58c1: $1f
	nop                                              ; $58c2: $00
	rst  $38                                         ; $58c3: $ff
	add  a                                           ; $58c4: $87
	nop                                              ; $58c5: $00
	inc  b                                           ; $58c6: $04
	ld   c, $00                                      ; $58c7: $0e $00
	ld   de, $2000                                   ; $58c9: $11 $00 $20
	add  b                                           ; $58cc: $80
	nop                                              ; $58cd: $00
	ld   bc, $5010                                   ; $58ce: $01 $10 $50
	add  b                                           ; $58d1: $80
	rrca                                             ; $58d2: $0f
	nop                                              ; $58d3: $00
	nop                                              ; $58d4: $00
	add  b                                           ; $58d5: $80
	ld   [bc], a                                     ; $58d6: $02
	add  b                                           ; $58d7: $80
	ld   b, $80                                      ; $58d8: $06 $80
	ld   [bc], a                                     ; $58da: $02
	add  b                                           ; $58db: $80
	ld   e, b                                        ; $58dc: $58
	ld   b, $78                                      ; $58dd: $06 $78
	ld   a, [hl]                                     ; $58df: $7e
	ld   c, [hl]                                     ; $58e0: $4e
	inc  c                                           ; $58e1: $0c
	dec  hl                                          ; $58e2: $2b
	rrca                                             ; $58e3: $0f
	rra                                              ; $58e4: $1f
	add  c                                           ; $58e5: $81
	nop                                              ; $58e6: $00
	ld   b, $38                                      ; $58e7: $06 $38
	nop                                              ; $58e9: $00
	ret  z                                           ; $58ea: $c8

	nop                                              ; $58eb: $00
	ld   [$0400], sp                                 ; $58ec: $08 $00 $04
	add  b                                           ; $58ef: $80
	nop                                              ; $58f0: $00
	ld   bc, $0a08                                   ; $58f1: $01 $08 $0a
	add  b                                           ; $58f4: $80
	stop                                             ; $58f5: $10 $00
	nop                                              ; $58f7: $00
	add  b                                           ; $58f8: $80
	ld   b, b                                        ; $58f9: $40
	add  b                                           ; $58fa: $80
	ld   c, b                                        ; $58fb: $48
	add  b                                           ; $58fc: $80
	ld   b, b                                        ; $58fd: $40
	add  b                                           ; $58fe: $80
	ld   c, b                                        ; $58ff: $48
	nop                                              ; $5900: $00
	jp   z, $d880                                    ; $5901: $ca $80 $d8

	dec  b                                           ; $5904: $05
	ret  z                                           ; $5905: $c8

	db   $f4                                         ; $5906: $f4
	ldh  a, [$f4]                                    ; $5907: $f0 $f4
	inc  bc                                          ; $5909: $03
	db   $10                                         ; $590a: $10
	add  b                                           ; $590b: $80
	inc  c                                           ; $590c: $0c
	ld   a, [bc]                                     ; $590d: $0a
	ld   c, $2e                                      ; $590e: $0e $2e
	ld   c, $1e                                      ; $5910: $0e $1e
	ld   d, $1e                                      ; $5912: $16 $1e
	jr   jr_02c_5992                                 ; $5914: $18 $7c

	dec  a                                           ; $5916: $3d
	add  hl, sp                                      ; $5917: $39
	jr   c, @-$7a                                    ; $5918: $38 $84

	nop                                              ; $591a: $00
	ld   b, $40                                      ; $591b: $06 $40
	nop                                              ; $591d: $00
	ld   [bc], a                                     ; $591e: $02
	ld   e, $dc                                      ; $591f: $1e $dc
	nop                                              ; $5921: $00
	rst  $38                                         ; $5922: $ff
	add  c                                           ; $5923: $81
	nop                                              ; $5924: $00
	rlca                                             ; $5925: $07
	jr   nc, @-$3e                                   ; $5926: $30 $c0

	dec  bc                                          ; $5928: $0b
	db   $10                                         ; $5929: $10
	ld   d, [hl]                                     ; $592a: $56
	ld   e, d                                        ; $592b: $5a
	jp   c, $80ca                                    ; $592c: $da $ca $80

	ld   [$0902], a                                  ; $592f: $ea $02 $09
	nop                                              ; $5932: $00
	ld   l, $80                                      ; $5933: $2e $80
	and  b                                           ; $5935: $a0
	inc  bc                                          ; $5936: $03
	jr   nz, @+$12                                   ; $5937: $20 $10

	nop                                              ; $5939: $00
	db   $10                                         ; $593a: $10
	add  e                                           ; $593b: $83
	nop                                              ; $593c: $00
	inc  b                                           ; $593d: $04
	stop                                             ; $593e: $10 $00
	rra                                              ; $5940: $1f
	nop                                              ; $5941: $00
	rst  $38                                         ; $5942: $ff
	add  l                                           ; $5943: $85
	nop                                              ; $5944: $00
	ld   b, $0f                                      ; $5945: $06 $0f
	nop                                              ; $5947: $00
	stop                                             ; $5948: $10 $00
	jr   nz, jr_02c_594c                             ; $594a: $20 $00

jr_02c_594c:
	ld   b, b                                        ; $594c: $40
	add  b                                           ; $594d: $80
	db   $10                                         ; $594e: $10
	ld   bc, $8c0c                                   ; $594f: $01 $0c $8c
	add  c                                           ; $5952: $81
	nop                                              ; $5953: $00
	add  d                                           ; $5954: $82
	ld   bc, $8101                                   ; $5955: $01 $01 $81
	ld   bc, $0580                                   ; $5958: $01 $80 $05
	ld   bc, $0747                                   ; $595b: $01 $47 $07
	add  b                                           ; $595e: $80
	inc  bc                                          ; $595f: $03
	db   $10                                         ; $5960: $10
	inc  hl                                          ; $5961: $23
	inc  bc                                          ; $5962: $03
	rra                                              ; $5963: $1f
	nop                                              ; $5964: $00
	ldh  a, [rP1]                                    ; $5965: $f0 $00
	stop                                             ; $5967: $10 $00
	jr   jr_02c_596b                                 ; $5969: $18 $00

jr_02c_596b:
	inc  b                                           ; $596b: $04
	db   $10                                         ; $596c: $10
	ld   [de], a                                     ; $596d: $12
	ldh  [$e2], a                                    ; $596e: $e0 $e2
	nop                                              ; $5970: $00
	ld   b, d                                        ; $5971: $42
	add  c                                           ; $5972: $81
	ld   b, b                                        ; $5973: $40
	add  b                                           ; $5974: $80
	ld   c, b                                        ; $5975: $48
	add  b                                           ; $5976: $80
	ld   [$0a02], sp                                 ; $5977: $08 $02 $0a
	ld   c, b                                        ; $597a: $48
	ret  z                                           ; $597b: $c8

	add  b                                           ; $597c: $80
	ret  c                                           ; $597d: $d8

	dec  b                                           ; $597e: $05
	ret  z                                           ; $597f: $c8

	or   h                                           ; $5980: $b4
	ldh  a, [$ef]                                    ; $5981: $f0 $ef
	ldh  [$f7], a                                    ; $5983: $e0 $f7
	add  e                                           ; $5985: $83
	nop                                              ; $5986: $00
	ld   b, $3b                                      ; $5987: $06 $3b
	nop                                              ; $5989: $00
	inc  h                                           ; $598a: $24
	nop                                              ; $598b: $00
	jr   nz, jr_02c_598e                             ; $598c: $20 $00

jr_02c_598e:
	ld   b, b                                        ; $598e: $40
	add  c                                           ; $598f: $81
	jr   nz, jr_02c_5994                             ; $5990: $20 $02

jr_02c_5992:
	and  b                                           ; $5992: $a0
	db   $10                                         ; $5993: $10

jr_02c_5994:
	inc  d                                           ; $5994: $14
	add  c                                           ; $5995: $81
	inc  b                                           ; $5996: $04
	add  b                                           ; $5997: $80
	inc  h                                           ; $5998: $24
	add  b                                           ; $5999: $80
	dec  h                                           ; $599a: $25
	ld   bc, $0f8f                                   ; $599b: $01 $8f $0f
	add  b                                           ; $599e: $80
	ld   [hl], $02                                   ; $599f: $36 $02
	ld   e, a                                        ; $59a1: $5f
	rra                                              ; $59a2: $1f
	ccf                                              ; $59a3: $3f
	add  e                                           ; $59a4: $83
	nop                                              ; $59a5: $00
	inc  b                                           ; $59a6: $04
	ret  nz                                          ; $59a7: $c0

	nop                                              ; $59a8: $00
	jr   nc, jr_02c_59ab                             ; $59a9: $30 $00

jr_02c_59ab:
	ld   [$0080], sp                                 ; $59ab: $08 $80 $00
	ld   bc, $1410                                   ; $59ae: $01 $10 $14
	add  b                                           ; $59b1: $80
	db   $10                                         ; $59b2: $10
	add  b                                           ; $59b3: $80
	ldh  [rP1], a                                    ; $59b4: $e0 $00
	nop                                              ; $59b6: $00
	add  b                                           ; $59b7: $80
	add  b                                           ; $59b8: $80
	add  d                                           ; $59b9: $82
	ret  nz                                          ; $59ba: $c0

	add  b                                           ; $59bb: $80
	inc  d                                           ; $59bc: $14
	add  b                                           ; $59bd: $80
	db   $fc                                         ; $59be: $fc
	inc  b                                           ; $59bf: $04
	inc  de                                          ; $59c0: $13
	db   $10                                         ; $59c1: $10
	db   $ec                                         ; $59c2: $ec
	inc  c                                           ; $59c3: $0c
	nop                                              ; $59c4: $00
	add  b                                           ; $59c5: $80
	ld   [bc], a                                     ; $59c6: $02
	inc  b                                           ; $59c7: $04
	ld   c, $2e                                      ; $59c8: $0e $2e
	ld   c, $1f                                      ; $59ca: $0e $1f
	db   $10                                         ; $59cc: $10
	add  b                                           ; $59cd: $80
	inc  e                                           ; $59ce: $1c
	inc  bc                                          ; $59cf: $03
	ld   a, l                                        ; $59d0: $7d
	dec  a                                           ; $59d1: $3d
	add  hl, sp                                      ; $59d2: $39
	jr   c, @-$7a                                    ; $59d3: $38 $84

	nop                                              ; $59d5: $00
	ld   b, $40                                      ; $59d6: $06 $40
	nop                                              ; $59d8: $00
	ld   [bc], a                                     ; $59d9: $02
	ld   e, $dc                                      ; $59da: $1e $dc
	nop                                              ; $59dc: $00
	rst  $38                                         ; $59dd: $ff
	add  c                                           ; $59de: $81
	nop                                              ; $59df: $00
	inc  bc                                          ; $59e0: $03
	cp   l                                           ; $59e1: $bd
	ld   b, d                                        ; $59e2: $42
	jp   nz, $80ca                                   ; $59e3: $c2 $ca $80

	ld   [$0905], a                                  ; $59e6: $ea $05 $09
	ld   [$20ae], sp                                 ; $59e9: $08 $ae $20
	jr   z, jr_02c_5a0e                              ; $59ec: $28 $20

	add  c                                           ; $59ee: $81
	and  b                                           ; $59ef: $a0
	inc  bc                                          ; $59f0: $03
	jr   nz, jr_02c_5a03                             ; $59f1: $20 $10

	nop                                              ; $59f3: $00
	db   $10                                         ; $59f4: $10
	add  e                                           ; $59f5: $83
	nop                                              ; $59f6: $00
	inc  b                                           ; $59f7: $04
	stop                                             ; $59f8: $10 $00
	rra                                              ; $59fa: $1f
	nop                                              ; $59fb: $00
	rst  $38                                         ; $59fc: $ff
	add  c                                           ; $59fd: $81
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	rrca                                             ; $5a00: $0f
	add  b                                           ; $5a01: $80
	nop                                              ; $5a02: $00

jr_02c_5a03:
	add  b                                           ; $5a03: $80
	ld   bc, $0383                                   ; $5a04: $01 $83 $03
	nop                                              ; $5a07: $00
	rra                                              ; $5a08: $1f
	add  c                                           ; $5a09: $81
	dec  c                                           ; $5a0a: $0d
	ld   bc, $0e0f                                   ; $5a0b: $01 $0f $0e

jr_02c_5a0e:
	add  h                                           ; $5a0e: $84
	nop                                              ; $5a0f: $00
	nop                                              ; $5a10: $00
	ld   hl, $0081                                   ; $5a11: $21 $81 $00
	ld   b, $02                                      ; $5a14: $06 $02
	nop                                              ; $5a16: $00
	ld   b, [hl]                                     ; $5a17: $46
	inc  a                                           ; $5a18: $3c
	add  hl, sp                                      ; $5a19: $39
	nop                                              ; $5a1a: $00
	cp   a                                           ; $5a1b: $bf
	add  d                                           ; $5a1c: $82
	nop                                              ; $5a1d: $00
	add  c                                           ; $5a1e: $81
	add  b                                           ; $5a1f: $80
	nop                                              ; $5a20: $00
	and  b                                           ; $5a21: $a0
	add  c                                           ; $5a22: $81
	ret  nz                                          ; $5a23: $c0

	inc  bc                                          ; $5a24: $03
	ret  nc                                          ; $5a25: $d0

	ret  nz                                          ; $5a26: $c0

	ldh  [rAUD4LEN], a                               ; $5a27: $e0 $20
	add  b                                           ; $5a29: $80
	ld   h, b                                        ; $5a2a: $60
	nop                                              ; $5a2b: $00
	db   $10                                         ; $5a2c: $10
	add  l                                           ; $5a2d: $85
	nop                                              ; $5a2e: $00
	ld   b, $10                                      ; $5a2f: $06 $10
	nop                                              ; $5a31: $00
	jr   jr_02c_5aa4                                 ; $5a32: $18 $70

	ld   h, a                                        ; $5a34: $67
	nop                                              ; $5a35: $00
	rst  $38                                         ; $5a36: $ff
	db   $fd                                         ; $5a37: $fd
	nop                                              ; $5a38: $00
	nop                                              ; $5a39: $00
	rrca                                             ; $5a3a: $0f
	add  b                                           ; $5a3b: $80
	nop                                              ; $5a3c: $00
	add  b                                           ; $5a3d: $80
	ld   b, $83                                      ; $5a3e: $06 $83
	rlca                                             ; $5a40: $07
	inc  bc                                          ; $5a41: $03
	rra                                              ; $5a42: $1f
	dec  bc                                          ; $5a43: $0b
	rrca                                             ; $5a44: $0f
	inc  c                                           ; $5a45: $0c
	add  b                                           ; $5a46: $80
	rrca                                             ; $5a47: $0f
	add  h                                           ; $5a48: $84
	nop                                              ; $5a49: $00
	nop                                              ; $5a4a: $00
	ld   hl, $0081                                   ; $5a4b: $21 $81 $00
	ld   b, $02                                      ; $5a4e: $06 $02
	nop                                              ; $5a50: $00
	ld   b, [hl]                                     ; $5a51: $46
	inc  a                                           ; $5a52: $3c
	add  hl, sp                                      ; $5a53: $39
	nop                                              ; $5a54: $00
	add  [hl]                                        ; $5a55: $86
	add  b                                           ; $5a56: $80
	ld   b, $09                                      ; $5a57: $06 $09
	ld   d, [hl]                                     ; $5a59: $56
	ld   d, b                                        ; $5a5a: $50
	jr   jr_02c_5ad6                                 ; $5a5b: $18 $79

	ld   l, h                                        ; $5a5d: $6c
	ld   l, [hl]                                     ; $5a5e: $6e
	ld   h, b                                        ; $5a5f: $60
	inc  c                                           ; $5a60: $0c
	add  b                                           ; $5a61: $80
	sub  b                                           ; $5a62: $90
	add  d                                           ; $5a63: $82
	ld   b, b                                        ; $5a64: $40
	add  a                                           ; $5a65: $87
	nop                                              ; $5a66: $00
	ld   b, $10                                      ; $5a67: $06 $10
	nop                                              ; $5a69: $00
	jr   jr_02c_5adc                                 ; $5a6a: $18 $70

	ld   h, a                                        ; $5a6c: $67
	nop                                              ; $5a6d: $00
	rst  $38                                         ; $5a6e: $ff
	pop  bc                                          ; $5a6f: $c1
	nop                                              ; $5a70: $00
	inc  b                                           ; $5a71: $04
	inc  bc                                          ; $5a72: $03
	nop                                              ; $5a73: $00
	inc  c                                           ; $5a74: $0c
	nop                                              ; $5a75: $00
	db   $10                                         ; $5a76: $10
	add  b                                           ; $5a77: $80
	ld   [bc], a                                     ; $5a78: $02
	ld   bc, $2404                                   ; $5a79: $01 $04 $24
	add  b                                           ; $5a7c: $80
	inc  b                                           ; $5a7d: $04
	add  b                                           ; $5a7e: $80
	ld   [bc], a                                     ; $5a7f: $02
	add  b                                           ; $5a80: $80
	ld   bc, $0085                                   ; $5a81: $01 $85 $00
	inc  bc                                          ; $5a84: $03
	add  hl, hl                                      ; $5a85: $29
	add  hl, bc                                      ; $5a86: $09
	dec  d                                           ; $5a87: $15
	dec  b                                           ; $5a88: $05
	add  b                                           ; $5a89: $80
	inc  bc                                          ; $5a8a: $03
	nop                                              ; $5a8b: $00
	rrca                                             ; $5a8c: $0f
	add  c                                           ; $5a8d: $81
	nop                                              ; $5a8e: $00
	ld   b, $b0                                      ; $5a8f: $06 $b0
	nop                                              ; $5a91: $00
	ld   c, h                                        ; $5a92: $4c
	nop                                              ; $5a93: $00
	inc  bc                                          ; $5a94: $03
	nop                                              ; $5a95: $00
	ld   bc, $0081                                   ; $5a96: $01 $81 $00
	nop                                              ; $5a99: $00
	ld   bc, $0880                                   ; $5a9a: $01 $80 $08
	add  b                                           ; $5a9d: $80
	sub  b                                           ; $5a9e: $90
	add  l                                           ; $5a9f: $85
	nop                                              ; $5aa0: $00
	ld   [$2022], sp                                 ; $5aa1: $08 $22 $20

jr_02c_5aa4:
	xor  c                                           ; $5aa4: $a9
	xor  b                                           ; $5aa5: $a8
	db   $f4                                         ; $5aa6: $f4
	ldh  a, [$f7]                                    ; $5aa7: $f0 $f7
	inc  b                                           ; $5aa9: $04
	inc  d                                           ; $5aaa: $14
	add  l                                           ; $5aab: $85
	ld   c, $08                                      ; $5aac: $0e $08
	ld   l, $0e                                      ; $5aae: $2e $0e
	ld   c, [hl]                                     ; $5ab0: $4e
	jr   nz, jr_02c_5aba                             ; $5ab1: $20 $07

	daa                                              ; $5ab3: $27
	add  b                                           ; $5ab4: $80
	nop                                              ; $5ab5: $00
	rst  $38                                         ; $5ab6: $ff
	adc  e                                           ; $5ab7: $8b
	nop                                              ; $5ab8: $00
	inc  bc                                          ; $5ab9: $03

jr_02c_5aba:
	db   $fc                                         ; $5aba: $fc
	ld   [$0848], sp                                 ; $5abb: $08 $48 $08
	add  h                                           ; $5abe: $84
	xor  b                                           ; $5abf: $a8
	nop                                              ; $5ac0: $00
	ld   c, b                                        ; $5ac1: $48
	add  b                                           ; $5ac2: $80
	ld   [rRAMG], sp                                 ; $5ac3: $08 $00 $00
	add  b                                           ; $5ac6: $80
	jr   jr_02c_5acb                                 ; $5ac7: $18 $02

	inc  bc                                          ; $5ac9: $03
	nop                                              ; $5aca: $00

jr_02c_5acb:
	rst  $38                                         ; $5acb: $ff
	adc  e                                           ; $5acc: $8b
	nop                                              ; $5acd: $00
	rlca                                             ; $5ace: $07
	ld   d, e                                        ; $5acf: $53
	db   $fc                                         ; $5ad0: $fc
	ld   [bc], a                                     ; $5ad1: $02
	ldh  a, [c]                                      ; $5ad2: $f2
	adc  [hl]                                        ; $5ad3: $8e
	cp   $de                                         ; $5ad4: $fe $de

jr_02c_5ad6:
	cp   $80                                         ; $5ad6: $fe $80
	pop  af                                          ; $5ad8: $f1
	ld   bc, $feee                                   ; $5ad9: $01 $ee $fe

jr_02c_5adc:
	add  b                                           ; $5adc: $80

jr_02c_5add:
	pop  hl                                          ; $5add: $e1
	add  b                                           ; $5ade: $80
	rst  $38                                         ; $5adf: $ff
	ld   bc, $6080                                   ; $5ae0: $01 $80 $60
	add  d                                           ; $5ae3: $82
	ldh  [$80], a                                    ; $5ae4: $e0 $80
	rrca                                             ; $5ae6: $0f
	add  b                                           ; $5ae7: $80
	db   $fc                                         ; $5ae8: $fc
	add  b                                           ; $5ae9: $80
	inc  bc                                          ; $5aea: $03
	add  b                                           ; $5aeb: $80
	rst  $38                                         ; $5aec: $ff
	add  b                                           ; $5aed: $80
	ret  nz                                          ; $5aee: $c0

	ld   bc, $7838                                   ; $5aef: $01 $38 $78
	add  b                                           ; $5af2: $80
	ld   b, c                                        ; $5af3: $41
	ld   bc, $3f7f                                   ; $5af4: $01 $7f $3f
	add  b                                           ; $5af7: $80
	ld   hl, sp-$80                                  ; $5af8: $f8 $80
	rlca                                             ; $5afa: $07
	add  b                                           ; $5afb: $80
	rst  $38                                         ; $5afc: $ff
	add  b                                           ; $5afd: $80
	ldh  [$80], a                                    ; $5afe: $e0 $80
	nop                                              ; $5b00: $00
	add  b                                           ; $5b01: $80
	rlca                                             ; $5b02: $07
	add  b                                           ; $5b03: $80
	rst  $38                                         ; $5b04: $ff
	add  b                                           ; $5b05: $80
	ldh  a, [$80]                                    ; $5b06: $f0 $80
	rrca                                             ; $5b08: $0f
	add  b                                           ; $5b09: $80
	rst  $38                                         ; $5b0a: $ff
	add  b                                           ; $5b0b: $80
	ldh  [$82], a                                    ; $5b0c: $e0 $82
	nop                                              ; $5b0e: $00

jr_02c_5b0f:
	ld   bc, $1afa                                   ; $5b0f: $01 $fa $1a
	add  [hl]                                        ; $5b12: $86
	sbc  e                                           ; $5b13: $9b
	ld   d, $98                                      ; $5b14: $16 $98
	ret  c                                           ; $5b16: $d8

	ld   a, b                                        ; $5b17: $78
	cp   a                                           ; $5b18: $bf
	sbc  b                                           ; $5b19: $98
	rra                                              ; $5b1a: $1f
	ld   h, b                                        ; $5b1b: $60
	add  b                                           ; $5b1c: $80
	ld   b, b                                        ; $5b1d: $40
	ld   [hl], a                                     ; $5b1e: $77
	or   [hl]                                        ; $5b1f: $b6
	or   a                                           ; $5b20: $b7
	rst  $20                                         ; $5b21: $e7
	rst  $30                                         ; $5b22: $f7
	or   h                                           ; $5b23: $b4
	cp   $48                                         ; $5b24: $fe $48
	db   $fc                                         ; $5b26: $fc
	db   $dd                                         ; $5b27: $dd
	dec  b                                           ; $5b28: $05
	nop                                              ; $5b29: $00
	ld   hl, sp-$04                                  ; $5b2a: $f8 $fc
	add  c                                           ; $5b2c: $81
	ld   [bc], a                                     ; $5b2d: $02
	ld   bc, $0006                                   ; $5b2e: $01 $06 $00
	add  b                                           ; $5b31: $80
	inc  bc                                          ; $5b32: $03
	ld   bc, $0301                                   ; $5b33: $01 $01 $03
	add  b                                           ; $5b36: $80
	db   $d3                                         ; $5b37: $d3
	inc  b                                           ; $5b38: $04
	ld   hl, $0a27                                   ; $5b39: $21 $27 $0a
	ld   c, $80                                      ; $5b3c: $0e $80
	add  c                                           ; $5b3e: $81
	ld   a, h                                        ; $5b3f: $7c
	ld   bc, $00fc                                   ; $5b40: $01 $fc $00
	add  b                                           ; $5b43: $80
	ld   a, d                                        ; $5b44: $7a
	ld   [bc], a                                     ; $5b45: $02
	dec  sp                                          ; $5b46: $3b
	ld   a, e                                        ; $5b47: $7b
	ld   a, b                                        ; $5b48: $78
	add  c                                           ; $5b49: $81
	ld   a, e                                        ; $5b4a: $7b
	dec  b                                           ; $5b4b: $05
	dec  sp                                          ; $5b4c: $3b
	ei                                               ; $5b4d: $fb
	ld   b, a                                        ; $5b4e: $47
	jp   $c7c0                                       ; $5b4f: $c3 $c0 $c7


	add  b                                           ; $5b52: $80
	jr   nz, @-$7e                                   ; $5b53: $20 $80

	add  $80                                         ; $5b55: $c6 $80
	ld   c, $80                                      ; $5b57: $0e $80
	jr   c, jr_02c_5add                              ; $5b59: $38 $82

	add  b                                           ; $5b5b: $80
	inc  b                                           ; $5b5c: $04
	ld   b, b                                        ; $5b5d: $40
	ret  nz                                          ; $5b5e: $c0

	ld   b, b                                        ; $5b5f: $40
	ret  nc                                          ; $5b60: $d0

	db   $10                                         ; $5b61: $10
	add  b                                           ; $5b62: $80
	inc  e                                           ; $5b63: $1c
	add  b                                           ; $5b64: $80
	rlca                                             ; $5b65: $07
	add  b                                           ; $5b66: $80
	ld   bc, $0000                                   ; $5b67: $01 $00 $00
	add  b                                           ; $5b6a: $80
	db   $10                                         ; $5b6b: $10
	add  b                                           ; $5b6c: $80
	inc  e                                           ; $5b6d: $1c
	nop                                              ; $5b6e: $00
	nop                                              ; $5b6f: $00
	add  b                                           ; $5b70: $80
	ld   d, l                                        ; $5b71: $55
	add  b                                           ; $5b72: $80
	xor  d                                           ; $5b73: $aa
	add  b                                           ; $5b74: $80
	ld   d, l                                        ; $5b75: $55
	add  b                                           ; $5b76: $80
	ld   a, [hl+]                                    ; $5b77: $2a
	add  b                                           ; $5b78: $80
	push bc                                          ; $5b79: $c5
	add  b                                           ; $5b7a: $80
	ld   [hl], d                                     ; $5b7b: $72
	add  b                                           ; $5b7c: $80
	inc  e                                           ; $5b7d: $1c
	add  b                                           ; $5b7e: $80
	rlca                                             ; $5b7f: $07
	adc  l                                           ; $5b80: $8d
	nop                                              ; $5b81: $00
	nop                                              ; $5b82: $00
	rst  $38                                         ; $5b83: $ff
	add  c                                           ; $5b84: $81
	nop                                              ; $5b85: $00
	ld   b, $03                                      ; $5b86: $06 $03
	nop                                              ; $5b88: $00
	inc  c                                           ; $5b89: $0c
	nop                                              ; $5b8a: $00
	stop                                             ; $5b8b: $10 $00
	jr   nz, jr_02c_5b0f                             ; $5b8d: $20 $80

	ld   [$0601], sp                                 ; $5b8f: $08 $01 $06
	ld   b, [hl]                                     ; $5b92: $46
	add  l                                           ; $5b93: $85
	nop                                              ; $5b94: $00
	ld   bc, $0040                                   ; $5b95: $01 $40 $00
	add  b                                           ; $5b98: $80
	ld   [bc], a                                     ; $5b99: $02
	inc  d                                           ; $5b9a: $14
	inc  hl                                          ; $5b9b: $23
	inc  bc                                          ; $5b9c: $03
	ld   de, $0901                                   ; $5b9d: $11 $01 $09
	ld   bc, $0007                                   ; $5ba0: $01 $07 $00
	ldh  a, [rP1]                                    ; $5ba3: $f0 $00
	stop                                             ; $5ba5: $10 $00
	jr   jr_02c_5ba9                                 ; $5ba7: $18 $00

jr_02c_5ba9:
	inc  b                                           ; $5ba9: $04
	db   $10                                         ; $5baa: $10
	ld   [de], a                                     ; $5bab: $12
	ldh  [$e2], a                                    ; $5bac: $e0 $e2
	nop                                              ; $5bae: $00
	ld   b, d                                        ; $5baf: $42
	add  c                                           ; $5bb0: $81
	ld   b, b                                        ; $5bb1: $40
	add  b                                           ; $5bb2: $80
	ld   c, b                                        ; $5bb3: $48
	add  b                                           ; $5bb4: $80
	ld   [$0a02], sp                                 ; $5bb5: $08 $02 $0a
	ld   c, b                                        ; $5bb8: $48
	ret  z                                           ; $5bb9: $c8

	add  b                                           ; $5bba: $80
	ret  c                                           ; $5bbb: $d8

	ld   b, $c8                                      ; $5bbc: $06 $c8
	or   h                                           ; $5bbe: $b4
	ldh  a, [$e4]                                    ; $5bbf: $f0 $e4
	ldh  [$5b], a                                    ; $5bc1: $e0 $5b
	cp   b                                           ; $5bc3: $b8
	add  b                                           ; $5bc4: $80
	ld   e, b                                        ; $5bc5: $58
	add  b                                           ; $5bc6: $80
	cp   c                                           ; $5bc7: $b9
	add  b                                           ; $5bc8: $80
	ld   e, d                                        ; $5bc9: $5a
	add  b                                           ; $5bca: $80
	add  hl, sp                                      ; $5bcb: $39
	add  b                                           ; $5bcc: $80
	ld   a, [de]                                     ; $5bcd: $1a
	add  d                                           ; $5bce: $82
	dec  de                                          ; $5bcf: $1b
	nop                                              ; $5bd0: $00
	ldh  [$83], a                                    ; $5bd1: $e0 $83
	nop                                              ; $5bd3: $00
	add  b                                           ; $5bd4: $80
	add  b                                           ; $5bd5: $80
	add  b                                           ; $5bd6: $80
	ld   b, b                                        ; $5bd7: $40
	add  b                                           ; $5bd8: $80
	and  b                                           ; $5bd9: $a0
	add  b                                           ; $5bda: $80
	ld   d, b                                        ; $5bdb: $50
	add  b                                           ; $5bdc: $80
	xor  b                                           ; $5bdd: $a8
	sbc  [hl]                                        ; $5bde: $9e
	nop                                              ; $5bdf: $00
	rlca                                             ; $5be0: $07
	ld   hl, sp+$18                                  ; $5be1: $f8 $18
	jr   c, @+$1a                                    ; $5be3: $38 $18

	jr   c, @-$03                                    ; $5be5: $38 $fb

	jr   @+$1d                                       ; $5be7: $18 $1b

	add  b                                           ; $5be9: $80
	ld   e, e                                        ; $5bea: $5b
	add  b                                           ; $5beb: $80
	dec  de                                          ; $5bec: $1b
	add  b                                           ; $5bed: $80
	ld   e, b                                        ; $5bee: $58
	add  b                                           ; $5bef: $80
	dec  de                                          ; $5bf0: $1b
	ld   [$fff8], sp                                 ; $5bf1: $08 $f8 $ff
	nop                                              ; $5bf4: $00
	rlca                                             ; $5bf5: $07
	nop                                              ; $5bf6: $00
	add  b                                           ; $5bf7: $80
	nop                                              ; $5bf8: $00
	rst  $38                                         ; $5bf9: $ff
	adc  a                                           ; $5bfa: $8f
	add  e                                           ; $5bfb: $83
	ldh  a, [$80]                                    ; $5bfc: $f0 $80
	jr   nc, jr_02c_5c06                             ; $5bfe: $30 $06

	ld   bc, $20c1                                   ; $5c00: $01 $c1 $20
	cp   $01                                         ; $5c03: $fe $01
	rra                                              ; $5c05: $1f

jr_02c_5c06:
	nop                                              ; $5c06: $00
	add  b                                           ; $5c07: $80
	ret  nz                                          ; $5c08: $c0

	add  d                                           ; $5c09: $82
	nop                                              ; $5c0a: $00
	add  b                                           ; $5c0b: $80
	ldh  a, [$03]                                    ; $5c0c: $f0 $03
	cp   a                                           ; $5c0e: $bf
	ld   c, a                                        ; $5c0f: $4f
	rst  $30                                         ; $5c10: $f7
	rlca                                             ; $5c11: $07
	add  b                                           ; $5c12: $80
	dec  c                                           ; $5c13: $0d
	inc  b                                           ; $5c14: $04
	ldh  a, [$08]                                    ; $5c15: $f0 $08
	rst  $38                                         ; $5c17: $ff
	nop                                              ; $5c18: $00
	rlca                                             ; $5c19: $07
	add  h                                           ; $5c1a: $84
	nop                                              ; $5c1b: $00
	adc  [hl]                                        ; $5c1c: $8e
	rst  $38                                         ; $5c1d: $ff
	add  b                                           ; $5c1e: $80
	xor  d                                           ; $5c1f: $aa
	add  b                                           ; $5c20: $80
	push de                                          ; $5c21: $d5
	add  b                                           ; $5c22: $80
	ld   [$f580], a                                  ; $5c23: $ea $80 $f5
	add  b                                           ; $5c26: $80
	ld   a, [$fd80]                                  ; $5c27: $fa $80 $fd
	add  b                                           ; $5c2a: $80
	cp   $80                                         ; $5c2b: $fe $80
	db   $fd                                         ; $5c2d: $fd
	nop                                              ; $5c2e: $00
	nop                                              ; $5c2f: $00
	add  b                                           ; $5c30: $80
	ld   bc, $0000                                   ; $5c31: $01 $00 $00
	add  b                                           ; $5c34: $80
	and  b                                           ; $5c35: $a0
	add  b                                           ; $5c36: $80
	ld   d, b                                        ; $5c37: $50
	add  b                                           ; $5c38: $80
	xor  d                                           ; $5c39: $aa
	add  b                                           ; $5c3a: $80
	ld   d, l                                        ; $5c3b: $55
	add  b                                           ; $5c3c: $80
	xor  d                                           ; $5c3d: $aa
	add  b                                           ; $5c3e: $80
	ld   d, l                                        ; $5c3f: $55
	nop                                              ; $5c40: $00
	nop                                              ; $5c41: $00
	add  b                                           ; $5c42: $80
	rst  $38                                         ; $5c43: $ff
	add  b                                           ; $5c44: $80
	ld   a, a                                        ; $5c45: $7f
	add  b                                           ; $5c46: $80
	rra                                              ; $5c47: $1f
	add  b                                           ; $5c48: $80
	rlca                                             ; $5c49: $07
	ld   [bc], a                                     ; $5c4a: $02
	ld   bc, $8081                                   ; $5c4b: $01 $81 $80
	add  b                                           ; $5c4e: $80
	ldh  [$80], a                                    ; $5c4f: $e0 $80
	ld   hl, sp+$00                                  ; $5c51: $f8 $00
	rst  $38                                         ; $5c53: $ff
	cp   l                                           ; $5c54: $bd
	nop                                              ; $5c55: $00
	ld   d, a                                        ; $5c56: $57
	inc  bc                                          ; $5c57: $03
	ld   c, $00                                      ; $5c58: $0e $00
	ld   h, c                                        ; $5c5a: $61
	ld   h, [hl]                                     ; $5c5b: $66
	ld   a, b                                        ; $5c5c: $78
	ld   a, l                                        ; $5c5d: $7d
	ld   h, b                                        ; $5c5e: $60
	ld   h, [hl]                                     ; $5c5f: $66
	ret  nz                                          ; $5c60: $c0

	call z, $dcc0                                    ; $5c61: $cc $c0 $dc
	add  b                                           ; $5c64: $80
	add  a                                           ; $5c65: $87
	nop                                              ; $5c66: $00
	inc  sp                                          ; $5c67: $33
	add  c                                           ; $5c68: $81
	nop                                              ; $5c69: $00
	rrca                                             ; $5c6a: $0f
	ld   bc, $2b00                                   ; $5c6b: $01 $00 $2b
	add  b                                           ; $5c6e: $80
	adc  b                                           ; $5c6f: $88
	add  b                                           ; $5c70: $80
	sub  b                                           ; $5c71: $90
	ldh  [$f2], a                                    ; $5c72: $e0 $f2
	jr   nz, @+$26                                   ; $5c74: $20 $24

	nop                                              ; $5c76: $00
	rlca                                             ; $5c77: $07
	nop                                              ; $5c78: $00
	inc  bc                                          ; $5c79: $03
	ret  nz                                          ; $5c7a: $c0

	add  b                                           ; $5c7b: $80
	ld   b, b                                        ; $5c7c: $40
	ld   [bc], a                                     ; $5c7d: $02
	add  b                                           ; $5c7e: $80
	nop                                              ; $5c7f: $00
	ld   b, b                                        ; $5c80: $40
	add  c                                           ; $5c81: $81
	nop                                              ; $5c82: $00
	inc  b                                           ; $5c83: $04
	inc  b                                           ; $5c84: $04
	nop                                              ; $5c85: $00
	inc  c                                           ; $5c86: $0c
	nop                                              ; $5c87: $00
	ld   [$0081], sp                                 ; $5c88: $08 $81 $00
	dec  b                                           ; $5c8b: $05
	call z, $ce00                                    ; $5c8c: $cc $00 $ce
	ld   c, b                                        ; $5c8f: $48
	add  b                                           ; $5c90: $80
	nop                                              ; $5c91: $00
	add  b                                           ; $5c92: $80
	ret  z                                           ; $5c93: $c8

	inc  d                                           ; $5c94: $14
	adc  $00                                         ; $5c95: $ce $00
	inc  c                                           ; $5c97: $0c
	nop                                              ; $5c98: $00
	ld   hl, sp+$00                                  ; $5c99: $f8 $00
	ldh  a, [$61]                                    ; $5c9b: $f0 $61
	ld   h, [hl]                                     ; $5c9d: $66
	ld   a, b                                        ; $5c9e: $78
	ld   a, l                                        ; $5c9f: $7d
	ld   h, b                                        ; $5ca0: $60
	ld   h, [hl]                                     ; $5ca1: $66
	ret  nz                                          ; $5ca2: $c0

	call z, $dcc0                                    ; $5ca3: $cc $c0 $dc
	add  b                                           ; $5ca6: $80
	add  a                                           ; $5ca7: $87
	nop                                              ; $5ca8: $00
	inc  sp                                          ; $5ca9: $33
	add  c                                           ; $5caa: $81
	nop                                              ; $5cab: $00
	rrca                                             ; $5cac: $0f
	ld   bc, $2b00                                   ; $5cad: $01 $00 $2b
	add  b                                           ; $5cb0: $80
	adc  b                                           ; $5cb1: $88
	add  b                                           ; $5cb2: $80
	sub  b                                           ; $5cb3: $90
	ldh  [$d2], a                                    ; $5cb4: $e0 $d2
	nop                                              ; $5cb6: $00
	ld   [hl], h                                     ; $5cb7: $74
	nop                                              ; $5cb8: $00
	rst  ToBoot                                         ; $5cb9: $c7
	nop                                              ; $5cba: $00
	sub  e                                           ; $5cbb: $93
	ret  nz                                          ; $5cbc: $c0

	add  b                                           ; $5cbd: $80
	ld   b, b                                        ; $5cbe: $40
	ld   [bc], a                                     ; $5cbf: $02
	add  b                                           ; $5cc0: $80
	nop                                              ; $5cc1: $00
	ld   b, b                                        ; $5cc2: $40
	add  c                                           ; $5cc3: $81
	nop                                              ; $5cc4: $00
	inc  b                                           ; $5cc5: $04
	inc  b                                           ; $5cc6: $04
	nop                                              ; $5cc7: $00
	inc  c                                           ; $5cc8: $0c
	nop                                              ; $5cc9: $00
	ld   [$0081], sp                                 ; $5cca: $08 $81 $00
	dec  b                                           ; $5ccd: $05
	call z, $ce00                                    ; $5cce: $cc $00 $ce
	ld   c, b                                        ; $5cd1: $48
	add  b                                           ; $5cd2: $80
	nop                                              ; $5cd3: $00
	add  b                                           ; $5cd4: $80
	ret  z                                           ; $5cd5: $c8

	ld   b, $ce                                      ; $5cd6: $06 $ce
	nop                                              ; $5cd8: $00
	inc  c                                           ; $5cd9: $0c
	nop                                              ; $5cda: $00
	ld   hl, sp+$00                                  ; $5cdb: $f8 $00
	ldh  a, [$80]                                    ; $5cdd: $f0 $80
	jr   nc, jr_02c_5ce6                             ; $5cdf: $30 $05

	ld   a, c                                        ; $5ce1: $79
	ld   a, [hl]                                     ; $5ce2: $7e
	ld   a, b                                        ; $5ce3: $78
	ld   [hl], e                                     ; $5ce4: $73
	ld   h, b                                        ; $5ce5: $60

jr_02c_5ce6:
	ld   a, h                                        ; $5ce6: $7c
	add  c                                           ; $5ce7: $81
	ret  nz                                          ; $5ce8: $c0

	inc  b                                           ; $5ce9: $04
	db   $f4                                         ; $5cea: $f4
	add  b                                           ; $5ceb: $80

jr_02c_5cec:
	add  a                                           ; $5cec: $87
	nop                                              ; $5ced: $00
	ld   h, e                                        ; $5cee: $63
	add  c                                           ; $5cef: $81
	nop                                              ; $5cf0: $00
	inc  c                                           ; $5cf1: $0c
	ld   [hl], c                                     ; $5cf2: $71
	nop                                              ; $5cf3: $00
	dec  sp                                          ; $5cf4: $3b
	add  b                                           ; $5cf5: $80
	adc  b                                           ; $5cf6: $88
	add  b                                           ; $5cf7: $80
	sub  b                                           ; $5cf8: $90
	ldh  [$f2], a                                    ; $5cf9: $e0 $f2
	nop                                              ; $5cfb: $00
	inc  b                                           ; $5cfc: $04
	nop                                              ; $5cfd: $00
	inc  b                                           ; $5cfe: $04
	add  b                                           ; $5cff: $80
	add  b                                           ; $5d00: $80
	nop                                              ; $5d01: $00
	ret  nz                                          ; $5d02: $c0

	add  b                                           ; $5d03: $80
	ld   b, b                                        ; $5d04: $40
	ld   [bc], a                                     ; $5d05: $02
	add  b                                           ; $5d06: $80
	nop                                              ; $5d07: $00
	ld   b, b                                        ; $5d08: $40
	add  c                                           ; $5d09: $81
	nop                                              ; $5d0a: $00
	inc  b                                           ; $5d0b: $04
	inc  b                                           ; $5d0c: $04
	nop                                              ; $5d0d: $00
	inc  c                                           ; $5d0e: $0c
	nop                                              ; $5d0f: $00
	ld   [$0081], sp                                 ; $5d10: $08 $81 $00
	dec  b                                           ; $5d13: $05
	call z, $ce00                                    ; $5d14: $cc $00 $ce
	ld   c, b                                        ; $5d17: $48
	add  b                                           ; $5d18: $80
	nop                                              ; $5d19: $00
	add  b                                           ; $5d1a: $80
	ret  z                                           ; $5d1b: $c8

	ld   a, [bc]                                     ; $5d1c: $0a
	adc  $00                                         ; $5d1d: $ce $00
	inc  c                                           ; $5d1f: $0c
	nop                                              ; $5d20: $00
	ld   [$6660], sp                                 ; $5d21: $08 $60 $66
	ld   a, b                                        ; $5d24: $78
	ld   a, a                                        ; $5d25: $7f
	ld   h, b                                        ; $5d26: $60
	ld   h, c                                        ; $5d27: $61
	add  b                                           ; $5d28: $80
	ld   b, b                                        ; $5d29: $40
	rla                                              ; $5d2a: $17

jr_02c_5d2b:
	add  b                                           ; $5d2b: $80
	and  b                                           ; $5d2c: $a0
	nop                                              ; $5d2d: $00
	inc  a                                           ; $5d2e: $3c
	nop                                              ; $5d2f: $00
	inc  e                                           ; $5d30: $1c
	nop                                              ; $5d31: $00
	add  a                                           ; $5d32: $87
	nop                                              ; $5d33: $00
	ld   c, a                                        ; $5d34: $4f
	nop                                              ; $5d35: $00
	ldh  [rSB], a                                    ; $5d36: $e0 $01
	ld   [hl+], a                                    ; $5d38: $22
	nop                                              ; $5d39: $00
	ld   b, e                                        ; $5d3a: $43
	add  e                                           ; $5d3b: $83
	set  0, b                                        ; $5d3c: $cb $c0
	sbc  b                                           ; $5d3e: $98
	nop                                              ; $5d3f: $00
	rra                                              ; $5d40: $1f
	nop                                              ; $5d41: $00
	ld   b, a                                        ; $5d42: $47
	add  b                                           ; $5d43: $80
	ldh  [$80], a                                    ; $5d44: $e0 $80
	add  b                                           ; $5d46: $80
	ld   bc, $8000                                   ; $5d47: $01 $00 $80
	add  c                                           ; $5d4a: $81
	nop                                              ; $5d4b: $00
	dec  c                                           ; $5d4c: $0d
	add  h                                           ; $5d4d: $84
	nop                                              ; $5d4e: $00
	inc  e                                           ; $5d4f: $1c
	nop                                              ; $5d50: $00
	jr   jr_02c_5d53                                 ; $5d51: $18 $00

jr_02c_5d53:
	jr   nc, jr_02c_5d55                             ; $5d53: $30 $00

jr_02c_5d55:
	add  hl, sp                                      ; $5d55: $39
	nop                                              ; $5d56: $00
	ld   [bc], a                                     ; $5d57: $02
	jr   nz, jr_02c_5d5b                             ; $5d58: $20 $01

	nop                                              ; $5d5a: $00

jr_02c_5d5b:
	add  b                                           ; $5d5b: $80
	jr   nz, jr_02c_5d6a                             ; $5d5c: $20 $0c

	ld   l, $00                                      ; $5d5e: $2e $00
	inc  e                                           ; $5d60: $1c
	nop                                              ; $5d61: $00
	add  sp, $00                                     ; $5d62: $e8 $00
	db   $fc                                         ; $5d64: $fc
	nop                                              ; $5d65: $00
	dec  bc                                          ; $5d66: $0b
	nop                                              ; $5d67: $00
	jr   jr_02c_5d6a                                 ; $5d68: $18 $00

jr_02c_5d6a:
	jr   nz, jr_02c_5cec                             ; $5d6a: $20 $80

	nop                                              ; $5d6c: $00
	inc  bc                                          ; $5d6d: $03
	inc  b                                           ; $5d6e: $04
	ld   b, h                                        ; $5d6f: $44
	inc  bc                                          ; $5d70: $03
	add  e                                           ; $5d71: $83
	add  e                                           ; $5d72: $83
	nop                                              ; $5d73: $00
	add  b                                           ; $5d74: $80
	rlca                                             ; $5d75: $07
	ld   [$171e], sp                                 ; $5d76: $08 $1e $17
	sbc  a                                           ; $5d79: $9f
	rla                                              ; $5d7a: $17
	ld   [hl], a                                     ; $5d7b: $77
	rlca                                             ; $5d7c: $07
	sub  $07                                         ; $5d7d: $d6 $07
	scf                                              ; $5d7f: $37
	add  b                                           ; $5d80: $80
	inc  bc                                          ; $5d81: $03
	rlca                                             ; $5d82: $07
	nop                                              ; $5d83: $00
	add  sp, $00                                     ; $5d84: $e8 $00
	jr   c, jr_02c_5d88                              ; $5d86: $38 $00

jr_02c_5d88:
	call nz, $0200                                   ; $5d88: $c4 $00 $02
	add  b                                           ; $5d8b: $80
	nop                                              ; $5d8c: $00
	inc  b                                           ; $5d8d: $04
	inc  b                                           ; $5d8e: $04
	dec  b                                           ; $5d8f: $05
	ld   [$2028], sp                                 ; $5d90: $08 $28 $20
	add  d                                           ; $5d93: $82
	and  h                                           ; $5d94: $a4
	add  b                                           ; $5d95: $80
	db   $fc                                         ; $5d96: $fc
	ld   [bc], a                                     ; $5d97: $02
	ld   a, e                                        ; $5d98: $7b
	db   $fc                                         ; $5d99: $fc
	ld   a, h                                        ; $5d9a: $7c
	add  d                                           ; $5d9b: $82
	db   $fc                                         ; $5d9c: $fc
	add  b                                           ; $5d9d: $80
	ld   hl, sp-$80                                  ; $5d9e: $f8 $80
	ldh  a, [rTAC]                                   ; $5da0: $f0 $07
	nop                                              ; $5da2: $00
	ld   [$0b00], sp                                 ; $5da3: $08 $00 $0b
	nop                                              ; $5da6: $00
	jr   jr_02c_5da9                                 ; $5da7: $18 $00

jr_02c_5da9:
	jr   nz, jr_02c_5d2b                             ; $5da9: $20 $80

jr_02c_5dab:
	nop                                              ; $5dab: $00
	inc  bc                                          ; $5dac: $03
	inc  b                                           ; $5dad: $04
	ld   b, h                                        ; $5dae: $44
	inc  bc                                          ; $5daf: $03
	add  e                                           ; $5db0: $83
	add  e                                           ; $5db1: $83
	nop                                              ; $5db2: $00
	add  b                                           ; $5db3: $80
	rlca                                             ; $5db4: $07
	ld   [de], a                                     ; $5db5: $12
	ld   e, $17                                      ; $5db6: $1e $17
	sbc  a                                           ; $5db8: $9f
	rla                                              ; $5db9: $17
	ld   [hl], a                                     ; $5dba: $77
	rlca                                             ; $5dbb: $07
	sub  $07                                         ; $5dbc: $d6 $07
	ld   d, a                                        ; $5dbe: $57
	inc  hl                                          ; $5dbf: $23
	and  e                                           ; $5dc0: $a3
	ld   h, b                                        ; $5dc1: $60
	ld   l, b                                        ; $5dc2: $68
	nop                                              ; $5dc3: $00
	jr   c, jr_02c_5dc6                              ; $5dc4: $38 $00

jr_02c_5dc6:
	call nz, $0200                                   ; $5dc6: $c4 $00 $02
	add  b                                           ; $5dc9: $80
	nop                                              ; $5dca: $00
	inc  b                                           ; $5dcb: $04
	inc  b                                           ; $5dcc: $04
	dec  b                                           ; $5dcd: $05
	ld   [$2028], sp                                 ; $5dce: $08 $28 $20
	add  d                                           ; $5dd1: $82
	and  h                                           ; $5dd2: $a4
	add  b                                           ; $5dd3: $80
	db   $fc                                         ; $5dd4: $fc
	ld   [bc], a                                     ; $5dd5: $02
	ld   a, e                                        ; $5dd6: $7b
	db   $fc                                         ; $5dd7: $fc
	ld   a, h                                        ; $5dd8: $7c
	add  d                                           ; $5dd9: $82
	db   $fc                                         ; $5dda: $fc
	add  b                                           ; $5ddb: $80
	ld   hl, sp-$80                                  ; $5ddc: $f8 $80
	ldh  a, [$09]                                    ; $5dde: $f0 $09
	nop                                              ; $5de0: $00
	inc  b                                           ; $5de1: $04
	nop                                              ; $5de2: $00
	inc  c                                           ; $5de3: $0c
	nop                                              ; $5de4: $00
	dec  bc                                          ; $5de5: $0b
	nop                                              ; $5de6: $00
	jr   jr_02c_5de9                                 ; $5de7: $18 $00

jr_02c_5de9:
	jr   nz, @-$7e                                   ; $5de9: $20 $80

	nop                                              ; $5deb: $00
	inc  bc                                          ; $5dec: $03
	inc  b                                           ; $5ded: $04
	ld   b, h                                        ; $5dee: $44
	inc  bc                                          ; $5def: $03
	add  e                                           ; $5df0: $83
	add  e                                           ; $5df1: $83
	nop                                              ; $5df2: $00
	ld   [$0717], sp                                 ; $5df3: $08 $17 $07
	ld   c, $17                                      ; $5df6: $0e $17
	sbc  a                                           ; $5df8: $9f
	rla                                              ; $5df9: $17
	ld   [hl], a                                     ; $5dfa: $77
	rlca                                             ; $5dfb: $07
	and  $80                                         ; $5dfc: $e6 $80
	rlca                                             ; $5dfe: $07
	ld   bc, $eb03                                   ; $5dff: $01 $03 $eb
	add  c                                           ; $5e02: $81
	nop                                              ; $5e03: $00
	inc  b                                           ; $5e04: $04
	jr   c, jr_02c_5e07                              ; $5e05: $38 $00

jr_02c_5e07:
	call nz, $0200                                   ; $5e07: $c4 $00 $02
	add  b                                           ; $5e0a: $80
	nop                                              ; $5e0b: $00
	inc  b                                           ; $5e0c: $04
	inc  b                                           ; $5e0d: $04
	dec  b                                           ; $5e0e: $05
	ld   [$2028], sp                                 ; $5e0f: $08 $28 $20
	add  d                                           ; $5e12: $82
	and  h                                           ; $5e13: $a4
	add  b                                           ; $5e14: $80
	db   $fc                                         ; $5e15: $fc
	ld   [bc], a                                     ; $5e16: $02
	ld   a, e                                        ; $5e17: $7b
	db   $fc                                         ; $5e18: $fc
	ld   a, h                                        ; $5e19: $7c
	add  d                                           ; $5e1a: $82
	db   $fc                                         ; $5e1b: $fc
	add  b                                           ; $5e1c: $80
	ld   hl, sp+$0f                                  ; $5e1d: $f8 $0f
	ldh  a, [$fa]                                    ; $5e1f: $f0 $fa
	nop                                              ; $5e21: $00
	add  hl, bc                                      ; $5e22: $09
	nop                                              ; $5e23: $00
	add  hl, de                                      ; $5e24: $19
	nop                                              ; $5e25: $00
	ld   hl, $4000                                   ; $5e26: $21 $00 $40
	jr   nz, jr_02c_5dab                             ; $5e29: $20 $80

	inc  e                                           ; $5e2b: $1c
	jr   nz, jr_02c_5e2e                             ; $5e2c: $20 $00

jr_02c_5e2e:
	dec  e                                           ; $5e2e: $1d
	add  c                                           ; $5e2f: $81
	ld   bc, $180a                                   ; $5e30: $01 $0a $18
	rra                                              ; $5e33: $1f
	ld   a, [hl]                                     ; $5e34: $7e
	ld   e, a                                        ; $5e35: $5f
	ld   a, l                                        ; $5e36: $7d
	ld   e, a                                        ; $5e37: $5f
	rst  JumpTable                                         ; $5e38: $df
	rra                                              ; $5e39: $1f
	dec  de                                          ; $5e3a: $1b
	rra                                              ; $5e3b: $1f
	adc  a                                           ; $5e3c: $8f
	add  b                                           ; $5e3d: $80
	rlca                                             ; $5e3e: $07
	rlca                                             ; $5e3f: $07
	nop                                              ; $5e40: $00
	or   b                                           ; $5e41: $b0
	nop                                              ; $5e42: $00
	ld   [hl], b                                     ; $5e43: $70
	nop                                              ; $5e44: $00
	adc  h                                           ; $5e45: $8c
	nop                                              ; $5e46: $00
	add  d                                           ; $5e47: $82
	add  b                                           ; $5e48: $80
	nop                                              ; $5e49: $00
	dec  b                                           ; $5e4a: $05
	inc  b                                           ; $5e4b: $04
	pop  bc                                          ; $5e4c: $c1
	ld   e, b                                        ; $5e4d: $58
	ld   b, h                                        ; $5e4e: $44
	ld   b, b                                        ; $5e4f: $40
	ld   c, b                                        ; $5e50: $48
	add  c                                           ; $5e51: $81
	ld   d, b                                        ; $5e52: $50
	nop                                              ; $5e53: $00
	call $fc81                                       ; $5e54: $cd $81 $fc
	nop                                              ; $5e57: $00
	call c, $fd80                                    ; $5e58: $dc $80 $fd
	ld   bc, $ecfc                                   ; $5e5b: $01 $fc $ec
	add  b                                           ; $5e5e: $80
	ld   hl, sp-$80                                  ; $5e5f: $f8 $80
	ldh  [rTIMA], a                                  ; $5e61: $e0 $05
	nop                                              ; $5e63: $00
	dec  e                                           ; $5e64: $1d
	dec  bc                                          ; $5e65: $0b
	dec  hl                                          ; $5e66: $2b
	inc  de                                          ; $5e67: $13
	ld   e, a                                        ; $5e68: $5f
	add  b                                           ; $5e69: $80
	ld   hl, $2001                                   ; $5e6a: $21 $01 $20
	dec  l                                           ; $5e6d: $2d
	add  b                                           ; $5e6e: $80
	jr   nc, jr_02c_5e77                             ; $5e6f: $30 $06

	inc  a                                           ; $5e71: $3c
	dec  a                                           ; $5e72: $3d
	inc  a                                           ; $5e73: $3c
	ld   a, l                                        ; $5e74: $7d
	dec  e                                           ; $5e75: $1d
	dec  a                                           ; $5e76: $3d

jr_02c_5e77:
	ld   bc, $0f82                                   ; $5e77: $01 $82 $0f
	nop                                              ; $5e7a: $00
	ld   a, $81                                      ; $5e7b: $3e $81
	ld   e, $80                                      ; $5e7d: $1e $80
	nop                                              ; $5e7f: $00
	ld   b, $19                                      ; $5e80: $06 $19
	nop                                              ; $5e82: $00
	ld   e, c                                        ; $5e83: $59
	nop                                              ; $5e84: $00
	add  a                                           ; $5e85: $87
	db   $10                                         ; $5e86: $10
	inc  d                                           ; $5e87: $14
	add  b                                           ; $5e88: $80
	cp   b                                           ; $5e89: $b8
	add  hl, bc                                      ; $5e8a: $09
	ld   [hl], b                                     ; $5e8b: $70
	halt                                             ; $5e8c: $76
	nop                                              ; $5e8d: $00
	ldh  [rP1], a                                    ; $5e8e: $e0 $00
	inc  b                                           ; $5e90: $04
	nop                                              ; $5e91: $00
	ldh  [rDIV], a                                   ; $5e92: $e0 $04
	ld   e, h                                        ; $5e94: $5c
	add  c                                           ; $5e95: $81
	ld   e, b                                        ; $5e96: $58
	add  d                                           ; $5e97: $82
	ld   l, h                                        ; $5e98: $6c
	add  d                                           ; $5e99: $82
	db   $ec                                         ; $5e9a: $ec
	inc  b                                           ; $5e9b: $04
	ld   [bc], a                                     ; $5e9c: $02
	nop                                              ; $5e9d: $00
	jp   c, $d900                                    ; $5e9e: $da $00 $d9

	add  b                                           ; $5ea1: $80
	nop                                              ; $5ea2: $00
	add  b                                           ; $5ea3: $80
	ld   c, $80                                      ; $5ea4: $0e $80
	ld   [hl], a                                     ; $5ea6: $77
	add  b                                           ; $5ea7: $80
	ld   a, [hl]                                     ; $5ea8: $7e
	ld   bc, $7b78                                   ; $5ea9: $01 $78 $7b
	add  c                                           ; $5eac: $81
	ld   a, b                                        ; $5ead: $78
	inc  b                                           ; $5eae: $04
	ei                                               ; $5eaf: $fb
	jr   c, jr_02c_5f30                              ; $5eb0: $38 $7e

	ld   b, $2e                                      ; $5eb2: $06 $2e
	add  c                                           ; $5eb4: $81
	ld   c, $00                                      ; $5eb5: $0e $00
	dec  a                                           ; $5eb7: $3d
	add  e                                           ; $5eb8: $83
	dec  e                                           ; $5eb9: $1d
	add  b                                           ; $5eba: $80
	nop                                              ; $5ebb: $00
	ld   [$0019], sp                                 ; $5ebc: $08 $19 $00
	reti                                             ; $5ebf: $d9


	nop                                              ; $5ec0: $00
	inc  bc                                          ; $5ec1: $03
	jr   nc, @+$34                                   ; $5ec2: $30 $32

	ld   h, b                                        ; $5ec4: $60
	ld   a, c                                        ; $5ec5: $79
	add  b                                           ; $5ec6: $80
	jp   nz, $020a                                   ; $5ec7: $c2 $0a $02

	ld   a, [$1202]                                  ; $5eca: $fa $02 $12
	ld   b, $f6                                      ; $5ecd: $06 $f6
	ld   b, $de                                      ; $5ecf: $06 $de
	jp   c, $d8db                                    ; $5ed1: $da $db $d8

	add  [hl]                                        ; $5ed4: $86
	call c, $0208                                    ; $5ed5: $dc $08 $02
	nop                                              ; $5ed8: $00
	jp   c, $d900                                    ; $5ed9: $da $00 $d9

	nop                                              ; $5edc: $00
	ldh  a, [rP1]                                    ; $5edd: $f0 $00
	db   $10                                         ; $5edf: $10
	add  b                                           ; $5ee0: $80
	ld   c, $03                                      ; $5ee1: $0e $03
	rrca                                             ; $5ee3: $0f
	cpl                                              ; $5ee4: $2f
	rra                                              ; $5ee5: $1f
	rst  JumpTable                                         ; $5ee6: $df
	add  b                                           ; $5ee7: $80
	rra                                              ; $5ee8: $1f
	add  c                                           ; $5ee9: $81
	ld   a, a                                        ; $5eea: $7f
	dec  b                                           ; $5eeb: $05
	rst  $38                                         ; $5eec: $ff
	ccf                                              ; $5eed: $3f
	ld   a, a                                        ; $5eee: $7f
	inc  c                                           ; $5eef: $0c
	dec  l                                           ; $5ef0: $2d
	ld   bc, $0f80                                   ; $5ef1: $01 $80 $0f
	ld   bc, $1f3f                                   ; $5ef4: $01 $3f $1f
	add  b                                           ; $5ef7: $80
	ld   e, $80                                      ; $5ef8: $1e $80
	nop                                              ; $5efa: $00
	inc  b                                           ; $5efb: $04
	add  hl, de                                      ; $5efc: $19
	nop                                              ; $5efd: $00
	ld   e, c                                        ; $5efe: $59
	nop                                              ; $5eff: $00
	add  a                                           ; $5f00: $87
	add  b                                           ; $5f01: $80
	nop                                              ; $5f02: $00
	ld   bc, $9490                                   ; $5f03: $01 $90 $94
	add  b                                           ; $5f06: $80
	ld   e, b                                        ; $5f07: $58
	dec  c                                           ; $5f08: $0d
	cp   b                                           ; $5f09: $b8
	cp   d                                           ; $5f0a: $ba
	call nz, $ccd4                                   ; $5f0b: $c4 $d4 $cc
	db   $fc                                         ; $5f0e: $fc

jr_02c_5f0f:
	add  h                                           ; $5f0f: $84
	sub  $00                                         ; $5f10: $d6 $00
	ld   b, d                                        ; $5f12: $42
	nop                                              ; $5f13: $00
	ld   a, h                                        ; $5f14: $7c
	ld   c, h                                        ; $5f15: $4c
	ld   l, a                                        ; $5f16: $6f
	add  c                                           ; $5f17: $81

jr_02c_5f18:
	ld   l, [hl]                                     ; $5f18: $6e
	inc  c                                           ; $5f19: $0c
	db   $ed                                         ; $5f1a: $ed
	db   $ec                                         ; $5f1b: $ec
	ld   [bc], a                                     ; $5f1c: $02
	nop                                              ; $5f1d: $00
	jp   c, $d900                                    ; $5f1e: $da $00 $d9

jr_02c_5f21:
	nop                                              ; $5f21: $00
	or   b                                           ; $5f22: $b0
	dec  b                                           ; $5f23: $05
	dec  d                                           ; $5f24: $15
	ld   c, $6e                                      ; $5f25: $0e $6e
	add  b                                           ; $5f27: $80
	dec  de                                          ; $5f28: $1b
	ld   bc, $5b18                                   ; $5f29: $01 $18 $5b
	add  c                                           ; $5f2c: $81
	jr   c, jr_02c_5f34                              ; $5f2d: $38 $05

jr_02c_5f2f:
	dec  sp                                          ; $5f2f: $3b

jr_02c_5f30:
	jr   nc, jr_02c_5f6d                             ; $5f30: $30 $3b

	inc  hl                                          ; $5f32: $23
	dec  hl                                          ; $5f33: $2b

jr_02c_5f34:
	inc  hl                                          ; $5f34: $23
	add  b                                           ; $5f35: $80
	dec  hl                                          ; $5f36: $2b
	ld   [bc], a                                     ; $5f37: $02
	dec  sp                                          ; $5f38: $3b
	dec  de                                          ; $5f39: $1b
	ld   e, e                                        ; $5f3a: $5b
	add  c                                           ; $5f3b: $81
	dec  de                                          ; $5f3c: $1b

jr_02c_5f3d:
	add  b                                           ; $5f3d: $80
	jr   nz, @+$08                                   ; $5f3e: $20 $06

	ld   [hl], $00                                   ; $5f40: $36 $00
	halt                                             ; $5f42: $76
	nop                                              ; $5f43: $00
	adc  a                                           ; $5f44: $8f

jr_02c_5f45:
	jr   nz, @+$2a                                   ; $5f45: $20 $28

	add  b                                           ; $5f47: $80

jr_02c_5f48:
	or   b                                           ; $5f48: $b0
	inc  bc                                          ; $5f49: $03
	ld   d, b                                        ; $5f4a: $50
	ld   d, h                                        ; $5f4b: $54
	ld   [$81e8], sp                                 ; $5f4c: $08 $e8 $81
	ld   [$e804], sp                                 ; $5f4f: $08 $04 $e8
	nop                                              ; $5f52: $00
	ld   c, b                                        ; $5f53: $48
	ld   b, b                                        ; $5f54: $40
	ld   e, b                                        ; $5f55: $58
	add  c                                           ; $5f56: $81
	ld   d, b                                        ; $5f57: $50
	add  h                                           ; $5f58: $84
	ld   e, b                                        ; $5f59: $58
	add  b                                           ; $5f5a: $80
	inc  b                                           ; $5f5b: $04
	inc  c                                           ; $5f5c: $0c
	ld   c, h                                        ; $5f5d: $4c
	nop                                              ; $5f5e: $00
	ld   c, [hl]                                     ; $5f5f: $4e
	nop                                              ; $5f60: $00
	ld   e, $00                                      ; $5f61: $1e $00
	jr   nz, jr_02c_5f65                             ; $5f63: $20 $00

jr_02c_5f65:
	ld   b, b                                        ; $5f65: $40
	inc  c                                           ; $5f66: $0c
	adc  h                                           ; $5f67: $8c
	inc  c                                           ; $5f68: $0c
	dec  c                                           ; $5f69: $0d
	add  c                                           ; $5f6a: $81
	nop                                              ; $5f6b: $00
	nop                                              ; $5f6c: $00

jr_02c_5f6d:
	ld   bc, $008d                                   ; $5f6d: $01 $8d $00
	add  b                                           ; $5f70: $80
	jr   @-$7e                                       ; $5f71: $18 $80

	nop                                              ; $5f73: $00
	ld   [bc], a                                     ; $5f74: $02
	inc  b                                           ; $5f75: $04
	nop                                              ; $5f76: $00
	inc  b                                           ; $5f77: $04
	add  d                                           ; $5f78: $82
	nop                                              ; $5f79: $00
	ld   bc, $e404                                   ; $5f7a: $01 $04 $e4
	add  b                                           ; $5f7d: $80
	inc  b                                           ; $5f7e: $04
	ld   bc, $e000                                   ; $5f7f: $01 $00 $e0
	adc  l                                           ; $5f82: $8d
	nop                                              ; $5f83: $00
	add  b                                           ; $5f84: $80
	jr   jr_02c_5f0f                                 ; $5f85: $18 $88

	nop                                              ; $5f87: $00
	nop                                              ; $5f88: $00
	inc  bc                                          ; $5f89: $03
	add  c                                           ; $5f8a: $81
	nop                                              ; $5f8b: $00
	nop                                              ; $5f8c: $00
	inc  bc                                          ; $5f8d: $03
	adc  l                                           ; $5f8e: $8d
	nop                                              ; $5f8f: $00
	add  b                                           ; $5f90: $80
	jr   jr_02c_5f18                                 ; $5f91: $18 $85

	nop                                              ; $5f93: $00
	add  c                                           ; $5f94: $81
	jr   jr_02c_5f9b                                 ; $5f95: $18 $04

	ld   hl, sp+$00                                  ; $5f97: $f8 $00
	stop                                             ; $5f99: $10 $00

jr_02c_5f9b:
	ldh  a, [$8d]                                    ; $5f9b: $f0 $8d
	nop                                              ; $5f9d: $00
	add  b                                           ; $5f9e: $80
	jr   jr_02c_5f21                                 ; $5f9f: $18 $80

	nop                                              ; $5fa1: $00
	ld   b, $e8                                      ; $5fa2: $06 $e8
	nop                                              ; $5fa4: $00
	jr   z, jr_02c_5fa7                              ; $5fa5: $28 $00

jr_02c_5fa7:
	ld   b, b                                        ; $5fa7: $40
	nop                                              ; $5fa8: $00
	add  b                                           ; $5fa9: $80
	sub  e                                           ; $5faa: $93
	nop                                              ; $5fab: $00
	add  b                                           ; $5fac: $80
	jr   jr_02c_5f2f                                 ; $5fad: $18 $80

	nop                                              ; $5faf: $00
	nop                                              ; $5fb0: $00
	ld   bc, $0081                                   ; $5fb1: $01 $81 $00
	nop                                              ; $5fb4: $00
	ld   bc, $0084                                   ; $5fb5: $01 $84 $00
	add  b                                           ; $5fb8: $80
	db   $10                                         ; $5fb9: $10
	add  b                                           ; $5fba: $80
	jr   nz, jr_02c_5f3d                             ; $5fbb: $20 $80

	ld   [hl], b                                     ; $5fbd: $70
	add  b                                           ; $5fbe: $80
	jr   nc, jr_02c_5f48                             ; $5fbf: $30 $87

	nop                                              ; $5fc1: $00
	add  b                                           ; $5fc2: $80
	jr   jr_02c_5f45                                 ; $5fc3: $18 $80

	nop                                              ; $5fc5: $00
	ld   [$00b0], sp                                 ; $5fc6: $08 $b0 $00
	stop                                             ; $5fc9: $10 $00
	ld   h, b                                        ; $5fcb: $60
	nop                                              ; $5fcc: $00
	add  b                                           ; $5fcd: $80
	nop                                              ; $5fce: $00
	ld   b, e                                        ; $5fcf: $43
	add  c                                           ; $5fd0: $81
	nop                                              ; $5fd1: $00
	nop                                              ; $5fd2: $00
	inc  bc                                          ; $5fd3: $03
	add  b                                           ; $5fd4: $80
	nop                                              ; $5fd5: $00
	add  b                                           ; $5fd6: $80
	ld   [$0089], sp                                 ; $5fd7: $08 $89 $00
	add  b                                           ; $5fda: $80
	ld   b, $80                                      ; $5fdb: $06 $80
	nop                                              ; $5fdd: $00
	nop                                              ; $5fde: $00
	ld   [bc], a                                     ; $5fdf: $02
	add  b                                           ; $5fe0: $80
	add  b                                           ; $5fe1: $80
	ld   bc, $0200                                   ; $5fe2: $01 $00 $02
	add  c                                           ; $5fe5: $81
	nop                                              ; $5fe6: $00
	nop                                              ; $5fe7: $00
	ldh  [$81], a                                    ; $5fe8: $e0 $81
	nop                                              ; $5fea: $00
	nop                                              ; $5feb: $00
	ldh  [$80], a                                    ; $5fec: $e0 $80
	nop                                              ; $5fee: $00
	add  b                                           ; $5fef: $80
	ld   [$0089], sp                                 ; $5ff0: $08 $89 $00
	add  b                                           ; $5ff3: $80
	ld   b, b                                        ; $5ff4: $40
	add  c                                           ; $5ff5: $81
	nop                                              ; $5ff6: $00
	add  b                                           ; $5ff7: $80
	rlca                                             ; $5ff8: $07
	add  b                                           ; $5ff9: $80
	ld   bc, $0001                                   ; $5ffa: $01 $01 $00
	ld   bc, $0081                                   ; $5ffd: $01 $81 $00
	inc  b                                           ; $6000: $04
	ld   b, c                                        ; $6001: $41
	nop                                              ; $6002: $00
	ld   a, h                                        ; $6003: $7c
	nop                                              ; $6004: $00
	inc  a                                           ; $6005: $3c
	add  c                                           ; $6006: $81
	nop                                              ; $6007: $00
	inc  d                                           ; $6008: $14
	add  b                                           ; $6009: $80
	nop                                              ; $600a: $00
	ld   e, h                                        ; $600b: $5c
	nop                                              ; $600c: $00
	sbc  b                                           ; $600d: $98
	nop                                              ; $600e: $00
	inc  b                                           ; $600f: $04
	nop                                              ; $6010: $00
	ld   h, e                                        ; $6011: $63
	nop                                              ; $6012: $00
	dec  sp                                          ; $6013: $3b
	nop                                              ; $6014: $00
	rla                                              ; $6015: $17
	nop                                              ; $6016: $00
	rrca                                             ; $6017: $0f
	ld   b, $66                                      ; $6018: $06 $66
	ld   e, $fe                                      ; $601a: $1e $fe
	ld   b, $86                                      ; $601c: $06 $86
	add  b                                           ; $601e: $80
	ld   [bc], a                                     ; $601f: $02
	db   $10                                         ; $6020: $10
	ld   bc, $0005                                   ; $6021: $01 $05 $00
	inc  a                                           ; $6024: $3c
	nop                                              ; $6025: $00
	jr   c, jr_02c_6028                              ; $6026: $38 $00

jr_02c_6028:
	ld   bc, $0200                                   ; $6028: $01 $00 $02
	nop                                              ; $602b: $00
	rst  $30                                         ; $602c: $f7
	nop                                              ; $602d: $00
	call nz, $3200                                   ; $602e: $c4 $00 $32
	ld   bc, $0380                                   ; $6031: $01 $80 $03
	ld   a, [bc]                                     ; $6034: $0a
	add  hl, de                                      ; $6035: $19
	nop                                              ; $6036: $00
	ld   hl, sp+$00                                  ; $6037: $f8 $00
	ldh  [c], a                                      ; $6039: $e2
	ld   h, b                                        ; $603a: $60
	ld   h, [hl]                                     ; $603b: $66
	ld   a, b                                        ; $603c: $78
	ld   a, a                                        ; $603d: $7f
	ld   h, b                                        ; $603e: $60
	ld   h, c                                        ; $603f: $61
	add  b                                           ; $6040: $80
	ld   b, b                                        ; $6041: $40
	db   $10                                         ; $6042: $10
	add  b                                           ; $6043: $80
	and  b                                           ; $6044: $a0
	nop                                              ; $6045: $00
	inc  a                                           ; $6046: $3c
	nop                                              ; $6047: $00
	inc  e                                           ; $6048: $1c
	nop                                              ; $6049: $00
	add  b                                           ; $604a: $80
	nop                                              ; $604b: $00
	ld   b, b                                        ; $604c: $40
	nop                                              ; $604d: $00
	and  $00                                         ; $604e: $e6 $00
	cpl                                              ; $6050: $2f
	nop                                              ; $6051: $00
	ld   c, c                                        ; $6052: $49
	add  b                                           ; $6053: $80
	add  b                                           ; $6054: $80
	ret  nz                                          ; $6055: $c0

	inc  b                                           ; $6056: $04
	sbc  b                                           ; $6057: $98
	nop                                              ; $6058: $00
	rra                                              ; $6059: $1f
	nop                                              ; $605a: $00
	ld   b, a                                        ; $605b: $47
	add  b                                           ; $605c: $80
	ldh  [$80], a                                    ; $605d: $e0 $80
	add  b                                           ; $605f: $80
	ld   bc, $8000                                   ; $6060: $01 $00 $80
	add  c                                           ; $6063: $81
	nop                                              ; $6064: $00
	inc  b                                           ; $6065: $04
	add  h                                           ; $6066: $84
	nop                                              ; $6067: $00
	inc  e                                           ; $6068: $1c
	nop                                              ; $6069: $00
	jr   @-$7d                                       ; $606a: $18 $81

	nop                                              ; $606c: $00
	ld   [de], a                                     ; $606d: $12
	ld   bc, $1200                                   ; $606e: $01 $00 $12
	nop                                              ; $6071: $00
	add  hl, sp                                      ; $6072: $39
	nop                                              ; $6073: $00
	jr   z, jr_02c_6076                              ; $6074: $28 $00

jr_02c_6076:
	add  $00                                         ; $6076: $c6 $00
	inc  e                                           ; $6078: $1c
	ld   b, b                                        ; $6079: $40
	ld   l, b                                        ; $607a: $68
	nop                                              ; $607b: $00
	ldh  a, [$38]                                    ; $607c: $f0 $38
	dec  sp                                          ; $607e: $3b
	inc  a                                           ; $607f: $3c
	ccf                                              ; $6080: $3f
	add  b                                           ; $6081: $80
	jr   nz, jr_02c_609d                             ; $6082: $20 $19

	ret  nz                                          ; $6084: $c0

	ldh  [$80], a                                    ; $6085: $e0 $80
	sub  b                                           ; $6087: $90
	nop                                              ; $6088: $00
	inc  a                                           ; $6089: $3c
	nop                                              ; $608a: $00
	adc  h                                           ; $608b: $8c
	nop                                              ; $608c: $00
	ld   b, b                                        ; $608d: $40
	nop                                              ; $608e: $00
	ldh  [rP1], a                                    ; $608f: $e0 $00
	jr   nz, jr_02c_6093                             ; $6091: $20 $00

jr_02c_6093:
	ld   b, [hl]                                     ; $6093: $46
	add  b                                           ; $6094: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6095: $cf
	ret  nz                                          ; $6096: $c0

	adc  c                                           ; $6097: $89
	nop                                              ; $6098: $00
	jr   nc, jr_02c_609b                             ; $6099: $30 $00

jr_02c_609b:
	jr   c, jr_02c_609d                              ; $609b: $38 $00

jr_02c_609d:
	ld   c, b                                        ; $609d: $48
	add  b                                           ; $609e: $80
	jr   nc, @+$03                                   ; $609f: $30 $01

	ldh  a, [rSVBK]                                  ; $60a1: $f0 $70
	add  e                                           ; $60a3: $83
	nop                                              ; $60a4: $00
	nop                                              ; $60a5: $00
	add  d                                           ; $60a6: $82
	add  c                                           ; $60a7: $81
	nop                                              ; $60a8: $00
	ld   [bc], a                                     ; $60a9: $02
	ld   b, $00                                      ; $60aa: $06 $00
	inc  b                                           ; $60ac: $04
	add  c                                           ; $60ad: $81
	nop                                              ; $60ae: $00
	inc  d                                           ; $60af: $14
	ld   bc, $1200                                   ; $60b0: $01 $00 $12
	nop                                              ; $60b3: $00
	add  hl, sp                                      ; $60b4: $39
	nop                                              ; $60b5: $00
	jr   z, jr_02c_60b8                              ; $60b6: $28 $00

jr_02c_60b8:
	add  $00                                         ; $60b8: $c6 $00
	inc  e                                           ; $60ba: $1c
	ld   b, b                                        ; $60bb: $40
	rst  $10                                         ; $60bc: $d7
	nop                                              ; $60bd: $00
	db   $10                                         ; $60be: $10
	ld   c, $2e                                      ; $60bf: $0e $2e
	dec  de                                          ; $60c1: $1b

jr_02c_60c2:
	ld   e, e                                        ; $60c2: $5b
	jr   jr_02c_611e                                 ; $60c3: $18 $59

	add  c                                           ; $60c5: $81
	inc  a                                           ; $60c6: $3c
	nop                                              ; $60c7: $00
	dec  a                                           ; $60c8: $3d
	add  c                                           ; $60c9: $81
	ld   a, $03                                      ; $60ca: $3e $03
	ld   a, a                                        ; $60cc: $7f
	add  hl, de                                      ; $60cd: $19
	dec  de                                          ; $60ce: $1b
	inc  bc                                          ; $60cf: $03
	add  h                                           ; $60d0: $84
	dec  de                                          ; $60d1: $1b
	add  b                                           ; $60d2: $80
	jr   nz, @+$0c                                   ; $60d3: $20 $0a

	ld   [hl], $00                                   ; $60d5: $36 $00
	halt                                             ; $60d7: $76
	nop                                              ; $60d8: $00
	adc  a                                           ; $60d9: $8f
	nop                                              ; $60da: $00
	ld   [$b4b0], sp                                 ; $60db: $08 $b0 $b4
	jr   @+$3a                                       ; $60de: $18 $38

	add  c                                           ; $60e0: $81
	ld   [$2a00], sp                                 ; $60e1: $08 $00 $2a
	add  c                                           ; $60e4: $81
	inc  e                                           ; $60e5: $1c
	add  c                                           ; $60e6: $81
	ld   e, h                                        ; $60e7: $5c
	ld   [bc], a                                     ; $60e8: $02
	ld   c, h                                        ; $60e9: $4c
	ld   e, [hl]                                     ; $60ea: $5e
	ld   d, b                                        ; $60eb: $50
	add  h                                           ; $60ec: $84
	ld   e, b                                        ; $60ed: $58
	add  b                                           ; $60ee: $80
	inc  b                                           ; $60ef: $04
	ld   a, [bc]                                     ; $60f0: $0a
	ld   c, h                                        ; $60f1: $4c
	nop                                              ; $60f2: $00
	ld   c, [hl]                                     ; $60f3: $4e
	nop                                              ; $60f4: $00
	cp   $00                                         ; $60f5: $fe $00
	ld   c, $00                                      ; $60f7: $0e $00
	ld   sp, $4000                                   ; $60f9: $31 $00 $40
	add  b                                           ; $60fc: $80
	nop                                              ; $60fd: $00
	ld   bc, $a220                                   ; $60fe: $01 $20 $a2
	add  b                                           ; $6101: $80
	ld   a, [hl-]                                    ; $6102: $3a
	nop                                              ; $6103: $00
	ld   [bc], a                                     ; $6104: $02
	add  d                                           ; $6105: $82
	ld   a, [bc]                                     ; $6106: $0a
	nop                                              ; $6107: $00
	cp   a                                           ; $6108: $bf
	add  c                                           ; $6109: $81
	ccf                                              ; $610a: $3f
	ld   [bc], a                                     ; $610b: $02
	daa                                              ; $610c: $27
	cp   a                                           ; $610d: $bf
	and  a                                           ; $610e: $a7
	add  b                                           ; $610f: $80
	ccf                                              ; $6110: $3f
	add  b                                           ; $6111: $80
	rra                                              ; $6112: $1f
	add  b                                           ; $6113: $80
	rlca                                             ; $6114: $07
	dec  bc                                          ; $6115: $0b
	nop                                              ; $6116: $00
	jr   nc, jr_02c_6119                             ; $6117: $30 $00

jr_02c_6119:
	sub  b                                           ; $6119: $90
	nop                                              ; $611a: $00
	jr   jr_02c_611d                                 ; $611b: $18 $00

jr_02c_611d:
	inc  b                                           ; $611d: $04

jr_02c_611e:
	nop                                              ; $611e: $00
	ld   [bc], a                                     ; $611f: $02
	inc  b                                           ; $6120: $04
	dec  b                                           ; $6121: $05
	add  b                                           ; $6122: $80
	jr   c, jr_02c_6125                              ; $6123: $38 $00

jr_02c_6125:
	nop                                              ; $6125: $00
	add  d                                           ; $6126: $82
	add  b                                           ; $6127: $80
	add  b                                           ; $6128: $80
	ld   hl, sp+$1a                                  ; $6129: $f8 $1a
	cp   $fa                                         ; $612b: $fe $fa
	ld   c, $fa                                      ; $612d: $0e $fa
	dec  bc                                          ; $612f: $0b
	ld   hl, sp-$06                                  ; $6130: $f8 $fa
	ld   hl, sp-$05                                  ; $6132: $f8 $fb
	ldh  [$e8], a                                    ; $6134: $e0 $e8
	nop                                              ; $6136: $00
	inc  bc                                          ; $6137: $03
	nop                                              ; $6138: $00
	add  hl, bc                                      ; $6139: $09
	nop                                              ; $613a: $00
	add  hl, de                                      ; $613b: $19
	nop                                              ; $613c: $00
	ld   hl, $4000                                   ; $613d: $21 $00 $40
	jr   nz, jr_02c_60c2                             ; $6140: $20 $80

	inc  e                                           ; $6142: $1c
	jr   nz, jr_02c_6145                             ; $6143: $20 $00

jr_02c_6145:
	dec  e                                           ; $6145: $1d
	add  c                                           ; $6146: $81
	ld   bc, $1f80                                   ; $6147: $01 $80 $1f
	ld   [de], a                                     ; $614a: $12
	ld   a, a                                        ; $614b: $7f
	ld   e, a                                        ; $614c: $5f
	ld   a, a                                        ; $614d: $7f
	ld   e, a                                        ; $614e: $5f
	rst  JumpTable                                         ; $614f: $df
	rra                                              ; $6150: $1f
	ld   e, a                                        ; $6151: $5f
	rra                                              ; $6152: $1f
	rst  JumpTable                                         ; $6153: $df
	rlca                                             ; $6154: $07
	rla                                              ; $6155: $17
	nop                                              ; $6156: $00
	or   b                                           ; $6157: $b0
	nop                                              ; $6158: $00
	ld   [hl], b                                     ; $6159: $70
	nop                                              ; $615a: $00

Jump_02c_615b:
jr_02c_615b:
	adc  h                                           ; $615b: $8c
	nop                                              ; $615c: $00
	add  d                                           ; $615d: $82
	add  b                                           ; $615e: $80
	nop                                              ; $615f: $00
	dec  b                                           ; $6160: $05

jr_02c_6161:
	inc  b                                           ; $6161: $04
	pop  bc                                          ; $6162: $c1
	ld   e, b                                        ; $6163: $58
	ld   b, h                                        ; $6164: $44
	ld   b, b                                        ; $6165: $40
	ld   c, b                                        ; $6166: $48
	add  c                                           ; $6167: $81
	ld   d, b                                        ; $6168: $50
	ld   bc, $5c5d                                   ; $6169: $01 $5d $5c
	add  l                                           ; $616c: $85
	db   $fc                                         ; $616d: $fc
	add  b                                           ; $616e: $80
	ld   hl, sp-$80                                  ; $616f: $f8 $80
	ldh  [rTIMA], a                                  ; $6171: $e0 $05
	nop                                              ; $6173: $00
	dec  b                                           ; $6174: $05
	nop                                              ; $6175: $00
	ld   c, b                                        ; $6176: $48
	nop                                              ; $6177: $00
	jr   nc, @-$7e                                   ; $6178: $30 $80

	nop                                              ; $617a: $00
	ld   [$b010], sp                                 ; $617b: $08 $10 $b0
	stop                                             ; $617e: $10 $00
	inc  c                                           ; $6180: $0c
	jr   nc, jr_02c_6183                             ; $6181: $30 $00

jr_02c_6183:
	inc  c                                           ; $6183: $0c
	nop                                              ; $6184: $00
	add  b                                           ; $6185: $80
	ld   bc, $6108                                   ; $6186: $01 $08 $61
	ld   b, c                                        ; $6189: $41
	ld   a, a                                        ; $618a: $7f
	ld   e, a                                        ; $618b: $5f
	rst  JumpTable                                         ; $618c: $df
	rra                                              ; $618d: $1f
	ld   e, a                                        ; $618e: $5f
	rra                                              ; $618f: $1f
	rst  JumpTable                                         ; $6190: $df
	add  c                                           ; $6191: $81
	rra                                              ; $6192: $1f
	ld   c, $0f                                      ; $6193: $0e $0f
	rlca                                             ; $6195: $07
	or   a                                           ; $6196: $b7
	nop                                              ; $6197: $00
	ld   [hl], b                                     ; $6198: $70
	nop                                              ; $6199: $00
	ld   [$0400], sp                                 ; $619a: $08 $00 $04
	nop                                              ; $619d: $00
	ld   [bc], a                                     ; $619e: $02
	nop                                              ; $619f: $00
	add  b                                           ; $61a0: $80
	inc  b                                           ; $61a1: $04
	ld   b, l                                        ; $61a2: $45
	add  b                                           ; $61a3: $80
	ld   e, b                                        ; $61a4: $58
	nop                                              ; $61a5: $00
	ld   b, b                                        ; $61a6: $40
	add  d                                           ; $61a7: $82
	ld   d, b                                        ; $61a8: $50
	ld   bc, $5c5d                                   ; $61a9: $01 $5d $5c
	add  l                                           ; $61ac: $85
	db   $fc                                         ; $61ad: $fc
	add  b                                           ; $61ae: $80
	ld   hl, sp+$09                                  ; $61af: $f8 $09
	ldh  a, [rSCY]                                   ; $61b1: $f0 $42
	nop                                              ; $61b3: $00
	ld   b, b                                        ; $61b4: $40
	nop                                              ; $61b5: $00
	sub  b                                           ; $61b6: $90
	nop                                              ; $61b7: $00
	jr   nz, jr_02c_61ba                             ; $61b8: $20 $00

jr_02c_61ba:
	ld   b, b                                        ; $61ba: $40
	add  d                                           ; $61bb: $82
	ld   bc, $008d                                   ; $61bc: $01 $8d $00
	add  b                                           ; $61bf: $80
	ld   b, $80                                      ; $61c0: $06 $80
	nop                                              ; $61c2: $00
	nop                                              ; $61c3: $00
	ld   [bc], a                                     ; $61c4: $02
	add  e                                           ; $61c5: $83
	nop                                              ; $61c6: $00
	nop                                              ; $61c7: $00
	ld   [bc], a                                     ; $61c8: $02
	add  d                                           ; $61c9: $82
	jr   nz, jr_02c_615b                             ; $61ca: $20 $8f

	nop                                              ; $61cc: $00
	add  b                                           ; $61cd: $80
	ld   b, b                                        ; $61ce: $40
	add  b                                           ; $61cf: $80
	nop                                              ; $61d0: $00
	ld   b, $0f                                      ; $61d1: $06 $0f
	inc  b                                           ; $61d3: $04
	inc  d                                           ; $61d4: $14
	dec  c                                           ; $61d5: $0d
	dec  l                                           ; $61d6: $2d
	jr   jr_02c_61f5                                 ; $61d7: $18 $1c

	add  c                                           ; $61d9: $81
	stop                                             ; $61da: $10 $00
	ld   d, h                                        ; $61dc: $54
	add  c                                           ; $61dd: $81
	jr   c, jr_02c_6161                              ; $61de: $38 $81

	ld   a, [hl-]                                    ; $61e0: $3a
	ld   [bc], a                                     ; $61e1: $02
	ld   [hl-], a                                    ; $61e2: $32
	ld   a, d                                        ; $61e3: $7a
	ld   a, [bc]                                     ; $61e4: $0a
	add  h                                           ; $61e5: $84
	ld   a, [de]                                     ; $61e6: $1a
	add  b                                           ; $61e7: $80
	jr   nz, jr_02c_61f2                             ; $61e8: $20 $08

	ld   [hl-], a                                    ; $61ea: $32
	nop                                              ; $61eb: $00
	ld   [hl], d                                     ; $61ec: $72
	nop                                              ; $61ed: $00
	adc  l                                           ; $61ee: $8d
	and  b                                           ; $61ef: $a0
	xor  b                                           ; $61f0: $a8
	ld   [hl], b                                     ; $61f1: $70

jr_02c_61f2:
	halt                                             ; $61f2: $76
	add  b                                           ; $61f3: $80
	ret  c                                           ; $61f4: $d8

jr_02c_61f5:
	ld   bc, $9a18                                   ; $61f5: $01 $18 $9a
	add  c                                           ; $61f8: $81
	inc  a                                           ; $61f9: $3c
	nop                                              ; $61fa: $00
	cp   h                                           ; $61fb: $bc
	add  c                                           ; $61fc: $81
	ld   a, h                                        ; $61fd: $7c
	inc  bc                                          ; $61fe: $03
	db   $fc                                         ; $61ff: $fc
	sbc  h                                           ; $6200: $9c
	sbc  $c0                                         ; $6201: $de $c0
	add  h                                           ; $6203: $84
	ret  c                                           ; $6204: $d8

	add  b                                           ; $6205: $80
	nop                                              ; $6206: $00
	ld   [$006c], sp                                 ; $6207: $08 $6c $00
	ld   l, [hl]                                     ; $620a: $6e
	nop                                              ; $620b: $00
	or   c                                           ; $620c: $b1
	dec  b                                           ; $620d: $05
	dec  d                                           ; $620e: $15
	ld   c, $6e                                      ; $620f: $0e $6e
	add  b                                           ; $6211: $80
	dec  de                                          ; $6212: $1b
	ld   bc, $5918                                   ; $6213: $01 $18 $59
	add  c                                           ; $6216: $81
	inc  a                                           ; $6217: $3c
	nop                                              ; $6218: $00
	dec  a                                           ; $6219: $3d
	add  c                                           ; $621a: $81
	ld   a, $03                                      ; $621b: $3e $03
	ld   a, a                                        ; $621d: $7f
	add  hl, de                                      ; $621e: $19
	dec  de                                          ; $621f: $1b
	inc  bc                                          ; $6220: $03
	add  h                                           ; $6221: $84
	dec  de                                          ; $6222: $1b
	add  b                                           ; $6223: $80
	jr   nz, @+$0c                                   ; $6224: $20 $0a

	ld   [hl], $00                                   ; $6226: $36 $00
	halt                                             ; $6228: $76
	nop                                              ; $6229: $00
	adc  a                                           ; $622a: $8f
	jr   nz, jr_02c_6255                             ; $622b: $20 $28

	or   b                                           ; $622d: $b0
	or   h                                           ; $622e: $b4
	jr   jr_02c_6269                                 ; $622f: $18 $38

	add  c                                           ; $6231: $81
	ld   [$2a00], sp                                 ; $6232: $08 $00 $2a
	add  c                                           ; $6235: $81
	inc  e                                           ; $6236: $1c
	add  c                                           ; $6237: $81
	ld   e, h                                        ; $6238: $5c
	ld   [bc], a                                     ; $6239: $02
	ld   c, h                                        ; $623a: $4c
	ld   e, [hl]                                     ; $623b: $5e
	ld   d, b                                        ; $623c: $50
	add  h                                           ; $623d: $84
	ld   e, b                                        ; $623e: $58
	add  b                                           ; $623f: $80
	inc  b                                           ; $6240: $04
	db   $10                                         ; $6241: $10
	ld   c, h                                        ; $6242: $4c
	nop                                              ; $6243: $00
	ld   c, [hl]                                     ; $6244: $4e
	nop                                              ; $6245: $00
	pop  af                                          ; $6246: $f1
	nop                                              ; $6247: $00
	ld   [$1800], sp                                 ; $6248: $08 $00 $18
	nop                                              ; $624b: $00
	jr   nz, jr_02c_6256                             ; $624c: $20 $08

	ld   c, b                                        ; $624e: $48
	rlca                                             ; $624f: $07
	ld   b, a                                        ; $6250: $47
	nop                                              ; $6251: $00
	ld   b, d                                        ; $6252: $42
	add  c                                           ; $6253: $81
	ld   [bc], a                                     ; $6254: $02

jr_02c_6255:
	add  b                                           ; $6255: $80

jr_02c_6256:
	ld   [de], a                                     ; $6256: $12
	add  b                                           ; $6257: $80
	db   $10                                         ; $6258: $10
	ld   [bc], a                                     ; $6259: $02
	ld   d, b                                        ; $625a: $50
	ld   [de], a                                     ; $625b: $12
	inc  de                                          ; $625c: $13
	add  b                                           ; $625d: $80
	dec  de                                          ; $625e: $1b
	rrca                                             ; $625f: $0f
	inc  de                                          ; $6260: $13
	dec  l                                           ; $6261: $2d
	rrca                                             ; $6262: $0f
	rla                                              ; $6263: $17
	rlca                                             ; $6264: $07
	ld   [$0700], sp                                 ; $6265: $08 $00 $07
	nop                                              ; $6268: $00

jr_02c_6269:
	ldh  a, [rP1]                                    ; $6269: $f0 $00
	ld   [$0400], sp                                 ; $626b: $08 $00 $04
	nop                                              ; $626e: $00
	ld   [bc], a                                     ; $626f: $02
	add  b                                           ; $6270: $80
	ld   [$3001], sp                                 ; $6271: $08 $01 $30
	ld   sp, $0081                                   ; $6274: $31 $81 $00
	add  d                                           ; $6277: $82
	add  b                                           ; $6278: $80
	ld   bc, $8081                                   ; $6279: $01 $81 $80
	add  b                                           ; $627c: $80
	and  b                                           ; $627d: $a0
	ld   [$e0e2], sp                                 ; $627e: $08 $e2 $e0
	call nz, $c8c0                                   ; $6281: $c4 $c0 $c8
	ret  nz                                          ; $6284: $c0

	stop                                             ; $6285: $10 $00
	ldh  [$85], a                                    ; $6287: $e0 $85
	nop                                              ; $6289: $00
	inc  b                                           ; $628a: $04
	ld   e, $00                                      ; $628b: $1e $00
	add  hl, de                                      ; $628d: $19
	nop                                              ; $628e: $00
	rlca                                             ; $628f: $07
	adc  a                                           ; $6290: $8f
	nop                                              ; $6291: $00
	ld   b, $1f                                      ; $6292: $06 $1f
	nop                                              ; $6294: $00
	and  e                                           ; $6295: $a3
	nop                                              ; $6296: $00
	ld   [bc], a                                     ; $6297: $02
	jr   @+$5a                                       ; $6298: $18 $58

	add  l                                           ; $629a: $85
	jr   c, @+$0a                                    ; $629b: $38 $08

	add  hl, sp                                      ; $629d: $39
	jr   c, @+$3e                                    ; $629e: $38 $3c

	inc  b                                           ; $62a0: $04
	ld   sp, $b030                                   ; $62a1: $31 $30 $b0
	jr   nc, jr_02c_62a8                             ; $62a4: $30 $02

	add  l                                           ; $62a6: $85
	nop                                              ; $62a7: $00

jr_02c_62a8:
	inc  b                                           ; $62a8: $04
	ret  nz                                          ; $62a9: $c0

	ld   a, b                                        ; $62aa: $78
	dec  sp                                          ; $62ab: $3b
	nop                                              ; $62ac: $00
	cp   a                                           ; $62ad: $bf
	add  e                                           ; $62ae: $83
	nop                                              ; $62af: $00
	nop                                              ; $62b0: $00
	ld   b, b                                        ; $62b1: $40
	add  d                                           ; $62b2: $82
	inc  b                                           ; $62b3: $04
	adc  a                                           ; $62b4: $8f
	nop                                              ; $62b5: $00
	add  b                                           ; $62b6: $80
	ld   [bc], a                                     ; $62b7: $02
	add  b                                           ; $62b8: $80
	nop                                              ; $62b9: $00
	nop                                              ; $62ba: $00
	dec  c                                           ; $62bb: $0d
	add  c                                           ; $62bc: $81
	nop                                              ; $62bd: $00
	ld   [bc], a                                     ; $62be: $02
	ld   c, $00                                      ; $62bf: $0e $00
	ld   bc, $0080                                   ; $62c1: $01 $80 $00
	ld   bc, $8280                                   ; $62c4: $01 $80 $82
	add  b                                           ; $62c7: $80
	add  b                                           ; $62c8: $80
	adc  l                                           ; $62c9: $8d
	nop                                              ; $62ca: $00
	add  b                                           ; $62cb: $80
	ld   h, b                                        ; $62cc: $60
	add  b                                           ; $62cd: $80
	nop                                              ; $62ce: $00
	ld   [$00b0], sp                                 ; $62cf: $08 $b0 $00
	stop                                             ; $62d2: $10 $00
	ld   h, b                                        ; $62d4: $60
	nop                                              ; $62d5: $00
	add  b                                           ; $62d6: $80
	nop                                              ; $62d7: $00
	ld   b, b                                        ; $62d8: $40
	add  d                                           ; $62d9: $82
	ld   bc, $008d                                   ; $62da: $01 $8d $00
	add  b                                           ; $62dd: $80
	ld   b, $80                                      ; $62de: $06 $80
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	ld   [bc], a                                     ; $62e2: $02
	add  c                                           ; $62e3: $81
	nop                                              ; $62e4: $00
	nop                                              ; $62e5: $00
	ld   [bc], a                                     ; $62e6: $02
	add  b                                           ; $62e7: $80
	nop                                              ; $62e8: $00
	add  d                                           ; $62e9: $82
	jr   nz, @-$6f                                   ; $62ea: $20 $8f

	nop                                              ; $62ec: $00
	add  b                                           ; $62ed: $80
	ld   b, b                                        ; $62ee: $40
	adc  [hl]                                        ; $62ef: $8e
	nop                                              ; $62f0: $00
	ld   b, $e0                                      ; $62f1: $06 $e0
	nop                                              ; $62f3: $00
	call c, $3b00                                    ; $62f4: $dc $00 $3b
	nop                                              ; $62f7: $00
	rlca                                             ; $62f8: $07
	add  a                                           ; $62f9: $87
	nop                                              ; $62fa: $00
	ld   [bc], a                                     ; $62fb: $02
	rst  $38                                         ; $62fc: $ff
	nop                                              ; $62fd: $00
	rst  $38                                         ; $62fe: $ff
	adc  l                                           ; $62ff: $8d
	nop                                              ; $6300: $00
	add  d                                           ; $6301: $82
	inc  b                                           ; $6302: $04
	add  b                                           ; $6303: $80
	ld   b, $01                                      ; $6304: $06 $01
	ld   a, [bc]                                     ; $6306: $0a
	ld   c, $80                                      ; $6307: $0e $80
	rrca                                             ; $6309: $0f
	nop                                              ; $630a: $00
	dec  bc                                          ; $630b: $0b
	add  c                                           ; $630c: $81
	rrca                                             ; $630d: $0f
	add  b                                           ; $630e: $80
	ld   b, $8c                                      ; $630f: $06 $8c
	nop                                              ; $6311: $00
	ld   [bc], a                                     ; $6312: $02
	rst  $38                                         ; $6313: $ff
	nop                                              ; $6314: $00
	rst  $38                                         ; $6315: $ff
	sbc  l                                           ; $6316: $9d
	nop                                              ; $6317: $00
	adc  [hl]                                        ; $6318: $8e
	ld   [bc], a                                     ; $6319: $02
	add  b                                           ; $631a: $80
	nop                                              ; $631b: $00
	inc  c                                           ; $631c: $0c
	rrca                                             ; $631d: $0f
	nop                                              ; $631e: $00
	ld   [$1800], sp                                 ; $631f: $08 $00 $18
	nop                                              ; $6322: $00
	jr   nz, jr_02c_632d                             ; $6323: $20 $08

	ld   c, b                                        ; $6325: $48
	rlca                                             ; $6326: $07
	ld   b, a                                        ; $6327: $47
	nop                                              ; $6328: $00
	ld   b, d                                        ; $6329: $42
	add  c                                           ; $632a: $81
	ld   [bc], a                                     ; $632b: $02
	add  b                                           ; $632c: $80

jr_02c_632d:
	ld   [de], a                                     ; $632d: $12
	add  b                                           ; $632e: $80
	db   $10                                         ; $632f: $10
	ld   [bc], a                                     ; $6330: $02
	ld   d, b                                        ; $6331: $50
	ld   [de], a                                     ; $6332: $12
	inc  de                                          ; $6333: $13
	add  b                                           ; $6334: $80
	dec  de                                          ; $6335: $1b
	dec  b                                           ; $6336: $05
	inc  de                                          ; $6337: $13
	dec  l                                           ; $6338: $2d
	rrca                                             ; $6339: $0f
	rla                                              ; $633a: $17
	rlca                                             ; $633b: $07
	rrca                                             ; $633c: $0f
	add  c                                           ; $633d: $81
	nop                                              ; $633e: $00
	ld   b, $f0                                      ; $633f: $06 $f0
	nop                                              ; $6341: $00
	ld   [$0400], sp                                 ; $6342: $08 $00 $04
	nop                                              ; $6345: $00
	ld   [bc], a                                     ; $6346: $02
	add  b                                           ; $6347: $80
	ld   [$3001], sp                                 ; $6348: $08 $01 $30
	ld   sp, $0081                                   ; $634b: $31 $81 $00
	add  d                                           ; $634e: $82
	add  b                                           ; $634f: $80
	ld   bc, $8081                                   ; $6350: $01 $81 $80
	add  b                                           ; $6353: $80
	and  b                                           ; $6354: $a0
	ld   [$e0e2], sp                                 ; $6355: $08 $e2 $e0
	call nz, $c8c0                                   ; $6358: $c4 $c0 $c8
	ret  nz                                          ; $635b: $c0

	rst  $30                                         ; $635c: $f7
	nop                                              ; $635d: $00
	ld   [$0280], sp                                 ; $635e: $08 $80 $02
	ld   bc, $1200                                   ; $6361: $01 $00 $12
	add  c                                           ; $6364: $81
	ld   a, [bc]                                     ; $6365: $0a
	inc  b                                           ; $6366: $04
	ld   [$1c0c], sp                                 ; $6367: $08 $0c $1c
	ld   b, $0e                                      ; $636a: $06 $0e
	add  b                                           ; $636c: $80
	ld   [bc], a                                     ; $636d: $02
	inc  de                                          ; $636e: $13
	nop                                              ; $636f: $00
	ld   [$1000], sp                                 ; $6370: $08 $00 $10
	nop                                              ; $6373: $00
	jr   nz, jr_02c_6376                             ; $6374: $20 $00

jr_02c_6376:
	ld   bc, $4200                                   ; $6376: $01 $00 $42
	nop                                              ; $6379: $00
	ret  nz                                          ; $637a: $c0

	ld   a, b                                        ; $637b: $78
	dec  sp                                          ; $637c: $3b
	nop                                              ; $637d: $00
	inc  bc                                          ; $637e: $03
	nop                                              ; $637f: $00
	ld   [bc], a                                     ; $6380: $02
	inc  l                                           ; $6381: $2c
	xor  l                                           ; $6382: $ad
	add  b                                           ; $6383: $80
	ld   b, $0a                                      ; $6384: $06 $0a
	inc  bc                                          ; $6386: $03
	inc  sp                                          ; $6387: $33
	scf                                              ; $6388: $37
	daa                                              ; $6389: $27
	inc  hl                                          ; $638a: $23
	adc  e                                           ; $638b: $8b
	ld   a, [bc]                                     ; $638c: $0a
	jp   c, Jump_02c_43d8                            ; $638d: $da $d8 $43

	ld   b, b                                        ; $6390: $40
	add  d                                           ; $6391: $82
	nop                                              ; $6392: $00
	ld   a, [bc]                                     ; $6393: $0a
	jp   nz, Boot                                    ; $6394: $c2 $00 $01

	nop                                              ; $6397: $00
	jr   nz, jr_02c_639a                             ; $6398: $20 $00

jr_02c_639a:
	jr   nc, jr_02c_63ba                             ; $639a: $30 $1e

	adc  $00                                         ; $639c: $ce $00
	rst  $38                                         ; $639e: $ff
	add  c                                           ; $639f: $81
	nop                                              ; $63a0: $00
	ld   [$0006], sp                                 ; $63a1: $08 $06 $00
	sbc  d                                           ; $63a4: $9a
	nop                                              ; $63a5: $00
	ld   l, h                                        ; $63a6: $6c
	nop                                              ; $63a7: $00
	jr   nc, jr_02c_63aa                             ; $63a8: $30 $00

jr_02c_63aa:
	ret  nz                                          ; $63aa: $c0

	adc  a                                           ; $63ab: $8f
	nop                                              ; $63ac: $00
	ld   [bc], a                                     ; $63ad: $02
	cp   $00                                         ; $63ae: $fe $00
	cp   $8b                                         ; $63b0: $fe $8b
	nop                                              ; $63b2: $00
	nop                                              ; $63b3: $00
	ld   bc, $0081                                   ; $63b4: $01 $81 $00
	ld   [bc], a                                     ; $63b7: $02
	ld   c, $00                                      ; $63b8: $0e $00

jr_02c_63ba:
	rrca                                             ; $63ba: $0f
	add  a                                           ; $63bb: $87
	nop                                              ; $63bc: $00
	nop                                              ; $63bd: $00
	rrca                                             ; $63be: $0f
	add  c                                           ; $63bf: $81
	nop                                              ; $63c0: $00
	dec  b                                           ; $63c1: $05
	db   $10                                         ; $63c2: $10
	inc  b                                           ; $63c3: $04
	dec  h                                           ; $63c4: $25
	db   $10                                         ; $63c5: $10
	ld   d, b                                        ; $63c6: $50
	jr   nc, @-$7e                                   ; $63c7: $30 $80

	inc  [hl]                                        ; $63c9: $34
	ld   c, $b4                                      ; $63ca: $0e $b4
	ld   [hl], h                                     ; $63cc: $74
	ld   [hl], l                                     ; $63cd: $75
	dec  [hl]                                        ; $63ce: $35
	pop  af                                          ; $63cf: $f1
	rst  JumpTable                                         ; $63d0: $df
	dec  de                                          ; $63d1: $1b
	dec  b                                           ; $63d2: $05
	ld   hl, $c000                                   ; $63d3: $21 $00 $c0
	nop                                              ; $63d6: $00
	ld   hl, $4200                                   ; $63d7: $21 $00 $42
	add  c                                           ; $63da: $81
	nop                                              ; $63db: $00
	inc  d                                           ; $63dc: $14
	ret  nz                                          ; $63dd: $c0

	ld   a, b                                        ; $63de: $78
	dec  sp                                          ; $63df: $3b
	nop                                              ; $63e0: $00
	rlca                                             ; $63e1: $07
	nop                                              ; $63e2: $00
	inc  b                                           ; $63e3: $04
	ld   e, b                                        ; $63e4: $58
	ld   e, d                                        ; $63e5: $5a
	inc  c                                           ; $63e6: $0c
	dec  c                                           ; $63e7: $0d
	ld   b, $66                                      ; $63e8: $06 $66
	ld   l, [hl]                                     ; $63ea: $6e
	ld   c, [hl]                                     ; $63eb: $4e
	ld   b, [hl]                                     ; $63ec: $46
	ld   d, $14                                      ; $63ed: $16 $14
	dec  [hl]                                        ; $63ef: $35
	or   b                                           ; $63f0: $b0
	add  [hl]                                        ; $63f1: $86
	add  c                                           ; $63f2: $81
	nop                                              ; $63f3: $00
	inc  c                                           ; $63f4: $0c
	inc  b                                           ; $63f5: $04
	nop                                              ; $63f6: $00
	add  d                                           ; $63f7: $82
	nop                                              ; $63f8: $00
	ld   b, c                                        ; $63f9: $41
	nop                                              ; $63fa: $00
	jr   nz, jr_02c_63fd                             ; $63fb: $20 $00

jr_02c_63fd:
	jr   nc, @+$20                                   ; $63fd: $30 $1e

	adc  $00                                         ; $63ff: $ce $00
	rst  $38                                         ; $6401: $ff
	add  c                                           ; $6402: $81
	nop                                              ; $6403: $00
	ld   [$000c], sp                                 ; $6404: $08 $0c $00
	inc  [hl]                                        ; $6407: $34
	nop                                              ; $6408: $00
	ret  c                                           ; $6409: $d8

	nop                                              ; $640a: $00
	ld   h, b                                        ; $640b: $60
	nop                                              ; $640c: $00
	add  b                                           ; $640d: $80
	adc  a                                           ; $640e: $8f
	nop                                              ; $640f: $00

Jump_02c_6410:
	ld   [bc], a                                     ; $6410: $02
	db   $fc                                         ; $6411: $fc
	nop                                              ; $6412: $00
	db   $fc                                         ; $6413: $fc
	add  a                                           ; $6414: $87
	nop                                              ; $6415: $00
	inc  b                                           ; $6416: $04
	inc  bc                                          ; $6417: $03
	nop                                              ; $6418: $00
	ld   [bc], a                                     ; $6419: $02
	nop                                              ; $641a: $00
	ld   bc, $0083                                   ; $641b: $01 $83 $00
	add  b                                           ; $641e: $80
	inc  bc                                          ; $641f: $03
	adc  d                                           ; $6420: $8a
	nop                                              ; $6421: $00
	add  hl, bc                                      ; $6422: $09
	inc  b                                           ; $6423: $04
	nop                                              ; $6424: $00
	adc  b                                           ; $6425: $88
	nop                                              ; $6426: $00
	ld   e, b                                        ; $6427: $58
	ld   [$5878], sp                                 ; $6428: $08 $78 $58
	ld   a, e                                        ; $642b: $7b
	ld   a, b                                        ; $642c: $78
	add  b                                           ; $642d: $80
	rst  $38                                         ; $642e: $ff
	add  b                                           ; $642f: $80
	ld   a, a                                        ; $6430: $7f
	dec  b                                           ; $6431: $05
	cp   $1e                                         ; $6432: $fe $1e
	rra                                              ; $6434: $1f
	rlca                                             ; $6435: $07
	rst  $30                                         ; $6436: $f7
	ldh  a, [$80]                                    ; $6437: $f0 $80
	rrca                                             ; $6439: $0f

jr_02c_643a:
	sub  b                                           ; $643a: $90
	nop                                              ; $643b: $00
	inc  b                                           ; $643c: $04
	ldh  [rP1], a                                    ; $643d: $e0 $00
	and  b                                           ; $643f: $a0
	add  b                                           ; $6440: $80
	ld   b, b                                        ; $6441: $40
	add  c                                           ; $6442: $81
	nop                                              ; $6443: $00
	inc  bc                                          ; $6444: $03
	ldh  [$80], a                                    ; $6445: $e0 $80
	ldh  [rP1], a                                    ; $6447: $e0 $00
	add  b                                           ; $6449: $80
	ret  nz                                          ; $644a: $c0

	ld   bc, $3c3f                                   ; $644b: $01 $3f $3c
	add  b                                           ; $644e: $80
	ld   bc, $0080                                   ; $644f: $01 $80 $00
	db   $10                                         ; $6452: $10
	ld   [bc], a                                     ; $6453: $02
	nop                                              ; $6454: $00
	ld   bc, $0f00                                   ; $6455: $01 $00 $0f
	nop                                              ; $6458: $00
	ld   [$1800], sp                                 ; $6459: $08 $00 $18
	nop                                              ; $645c: $00
	jr   nz, jr_02c_6467                             ; $645d: $20 $08

	ld   c, b                                        ; $645f: $48

jr_02c_6460:
	rlca                                             ; $6460: $07
	ld   b, a                                        ; $6461: $47
	nop                                              ; $6462: $00
	ld   b, d                                        ; $6463: $42
	add  c                                           ; $6464: $81
	ld   [bc], a                                     ; $6465: $02
	add  b                                           ; $6466: $80

jr_02c_6467:
	ld   [de], a                                     ; $6467: $12
	add  b                                           ; $6468: $80
	db   $10                                         ; $6469: $10
	ld   a, [bc]                                     ; $646a: $0a
	ld   d, b                                        ; $646b: $50
	ld   [de], a                                     ; $646c: $12
	inc  de                                          ; $646d: $13
	dec  de                                          ; $646e: $1b
	db   $db                                         ; $646f: $db
	inc  de                                          ; $6470: $13
	dec  c                                           ; $6471: $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6472: $cf
	rst  ToBoot                                         ; $6473: $c7
	rst  $30                                         ; $6474: $f7
	rrca                                             ; $6475: $0f
	add  c                                           ; $6476: $81
	nop                                              ; $6477: $00
	ld   b, $f0                                      ; $6478: $06 $f0
	nop                                              ; $647a: $00
	ld   [$0400], sp                                 ; $647b: $08 $00 $04
	nop                                              ; $647e: $00
	ld   [bc], a                                     ; $647f: $02
	add  b                                           ; $6480: $80
	ld   [$3001], sp                                 ; $6481: $08 $01 $30
	ld   sp, $0081                                   ; $6484: $31 $81 $00
	add  d                                           ; $6487: $82
	add  b                                           ; $6488: $80
	ld   bc, $8081                                   ; $6489: $01 $81 $80
	add  b                                           ; $648c: $80
	and  b                                           ; $648d: $a0
	rrca                                             ; $648e: $0f
	ldh  [c], a                                      ; $648f: $e2
	ldh  [$c4], a                                    ; $6490: $e0 $c4
	ret  nz                                          ; $6492: $c0

	ret  z                                           ; $6493: $c8

	ret  nz                                          ; $6494: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6495: $cf
	inc  e                                           ; $6496: $1c
	dec  a                                           ; $6497: $3d
	inc  c                                           ; $6498: $0c
	inc  e                                           ; $6499: $1c
	inc  b                                           ; $649a: $04
	inc  c                                           ; $649b: $0c
	nop                                              ; $649c: $00
	inc  b                                           ; $649d: $04
	nop                                              ; $649e: $00
	add  c                                           ; $649f: $81
	ld   bc, $0000                                   ; $64a0: $01 $00 $00
	add  b                                           ; $64a3: $80
	ld   bc, $0082                                   ; $64a4: $01 $82 $00
	ld   [bc], a                                     ; $64a7: $02
	inc  b                                           ; $64a8: $04
	nop                                              ; $64a9: $00
	ld   [$0083], sp                                 ; $64aa: $08 $83 $00
	ld   b, $18                                      ; $64ad: $06 $18
	rrca                                             ; $64af: $0f
	rst  $20                                         ; $64b0: $e7
	nop                                              ; $64b1: $00
	rlca                                             ; $64b2: $07
	nop                                              ; $64b3: $00
	inc  b                                           ; $64b4: $04
	add  b                                           ; $64b5: $80
	jr   nc, jr_02c_643a                             ; $64b6: $30 $82

	jr   c, jr_02c_64c2                              ; $64b8: $38 $08

	ld   a, b                                        ; $64ba: $78
	ld   a, d                                        ; $64bb: $7a
	ld   a, b                                        ; $64bc: $78
	db   $fc                                         ; $64bd: $fc
	or   h                                           ; $64be: $b4
	or   c                                           ; $64bf: $b1
	and  b                                           ; $64c0: $a0
	inc  l                                           ; $64c1: $2c

jr_02c_64c2:
	inc  c                                           ; $64c2: $0c
	add  d                                           ; $64c3: $82
	nop                                              ; $64c4: $00
	ld   a, [bc]                                     ; $64c5: $0a
	jr   nc, jr_02c_64c8                             ; $64c6: $30 $00

jr_02c_64c8:
	ld   c, b                                        ; $64c8: $48
	nop                                              ; $64c9: $00
	inc  b                                           ; $64ca: $04
	nop                                              ; $64cb: $00
	ld   b, $03                                      ; $64cc: $06 $03
	ld   a, c                                        ; $64ce: $79
	nop                                              ; $64cf: $00
	rst  $38                                         ; $64d0: $ff
	adc  e                                           ; $64d1: $8b
	nop                                              ; $64d2: $00
	ld   a, [bc]                                     ; $64d3: $0a
	add  b                                           ; $64d4: $80
	nop                                              ; $64d5: $00
	ld   [hl], b                                     ; $64d6: $70
	nop                                              ; $64d7: $00
	call z, $ba00                                    ; $64d8: $cc $00 $ba

jr_02c_64db:
	nop                                              ; $64db: $00
	ld   b, [hl]                                     ; $64dc: $46

jr_02c_64dd:
	nop                                              ; $64dd: $00
	jr   nz, jr_02c_6460                             ; $64de: $20 $80

	nop                                              ; $64e0: $00
	dec  b                                           ; $64e1: $05
	ret  nz                                          ; $64e2: $c0

	ldh  [$80], a                                    ; $64e3: $e0 $80
	cp   [hl]                                        ; $64e5: $be
	nop                                              ; $64e6: $00
	cp   $91                                         ; $64e7: $fe $91
	nop                                              ; $64e9: $00
	add  b                                           ; $64ea: $80
	inc  bc                                          ; $64eb: $03
	sbc  h                                           ; $64ec: $9c
	nop                                              ; $64ed: $00
	add  b                                           ; $64ee: $80
	ldh  a, [$80]                                    ; $64ef: $f0 $80
	rrca                                             ; $64f1: $0f
	sbc  h                                           ; $64f2: $9c
	nop                                              ; $64f3: $00
	add  b                                           ; $64f4: $80
	ret  nz                                          ; $64f5: $c0

	ld   bc, $3c3f                                   ; $64f6: $01 $3f $3c
	add  b                                           ; $64f9: $80
	ld   bc, $0080                                   ; $64fa: $01 $80 $00
	ld   [bc], a                                     ; $64fd: $02
	ld   [bc], a                                     ; $64fe: $02
	nop                                              ; $64ff: $00
	ld   bc, $0091                                   ; $6500: $01 $91 $00
	add  b                                           ; $6503: $80
	inc  bc                                          ; $6504: $03
	adc  e                                           ; $6505: $8b
	nop                                              ; $6506: $00
	nop                                              ; $6507: $00
	rrca                                             ; $6508: $0f
	add  c                                           ; $6509: $81
	db   $fc                                         ; $650a: $fc
	dec  b                                           ; $650b: $05
	db   $ec                                         ; $650c: $ec
	ret  c                                           ; $650d: $d8

	ld   hl, sp-$36                                  ; $650e: $f8 $ca
	ld   a, [$81f0]                                  ; $6510: $fa $f0 $81
	rst  $38                                         ; $6513: $ff
	add  b                                           ; $6514: $80
	ld   a, a                                        ; $6515: $7f
	add  b                                           ; $6516: $80
	ccf                                              ; $6517: $3f
	add  b                                           ; $6518: $80
	rra                                              ; $6519: $1f
	add  b                                           ; $651a: $80
	rrca                                             ; $651b: $0f
	add  b                                           ; $651c: $80
	inc  bc                                          ; $651d: $03
	adc  d                                           ; $651e: $8a
	nop                                              ; $651f: $00
	add  b                                           ; $6520: $80
	ret  nz                                          ; $6521: $c0

	ld   bc, $fcff                                   ; $6522: $01 $ff $fc
	add  b                                           ; $6525: $80
	pop  af                                          ; $6526: $f1
	add  b                                           ; $6527: $80
	ldh  a, [rSC]                                    ; $6528: $f0 $02
	ldh  a, [c]                                      ; $652a: $f2
	ldh  a, [$f9]                                    ; $652b: $f0 $f9
	add  c                                           ; $652d: $81
	ld   hl, sp-$80                                  ; $652e: $f8 $80
	call c, $0680                                    ; $6530: $dc $80 $06
	add  d                                           ; $6533: $82
	add  b                                           ; $6534: $80
	add  d                                           ; $6535: $82
	nop                                              ; $6536: $00
	ld   c, $3f                                      ; $6537: $0e $3f
	inc  e                                           ; $6539: $1c
	dec  a                                           ; $653a: $3d
	inc  c                                           ; $653b: $0c
	inc  e                                           ; $653c: $1c
	inc  b                                           ; $653d: $04
	dec  d                                           ; $653e: $15
	nop                                              ; $653f: $00
	inc  c                                           ; $6540: $0c
	dec  c                                           ; $6541: $0d
	dec  d                                           ; $6542: $15
	dec  b                                           ; $6543: $05
	add  hl, bc                                      ; $6544: $09
	nop                                              ; $6545: $00
	inc  b                                           ; $6546: $04
	add  d                                           ; $6547: $82
	ld   bc, $0003                                   ; $6548: $01 $03 $00
	inc  b                                           ; $654b: $04
	nop                                              ; $654c: $00
	ld   [$0083], sp                                 ; $654d: $08 $83 $00
	ld   b, $18                                      ; $6550: $06 $18
	rrca                                             ; $6552: $0f
	rst  $20                                         ; $6553: $e7
	nop                                              ; $6554: $00
	rlca                                             ; $6555: $07
	nop                                              ; $6556: $00
	inc  b                                           ; $6557: $04
	add  b                                           ; $6558: $80
	jr   nc, jr_02c_64db                             ; $6559: $30 $80

	jr   c, jr_02c_64dd                              ; $655b: $38 $80

	ld   a, b                                        ; $655d: $78
	ld   bc, $fef0                                   ; $655e: $01 $f0 $fe
	add  b                                           ; $6561: $80
	db   $ec                                         ; $6562: $ec
	ld   [bc], a                                     ; $6563: $02
	call z, $20e1                                    ; $6564: $cc $e1 $20
	add  b                                           ; $6567: $80

jr_02c_6568:
	ld   a, h                                        ; $6568: $7c
	add  d                                           ; $6569: $82
	nop                                              ; $656a: $00
	ld   a, [bc]                                     ; $656b: $0a
	jr   nc, jr_02c_656e                             ; $656c: $30 $00

jr_02c_656e:
	ld   c, b                                        ; $656e: $48
	nop                                              ; $656f: $00
	inc  b                                           ; $6570: $04
	nop                                              ; $6571: $00
	ld   b, $03                                      ; $6572: $06 $03
	ld   a, c                                        ; $6574: $79
	nop                                              ; $6575: $00
	rst  $38                                         ; $6576: $ff

jr_02c_6577:
	add  c                                           ; $6577: $81
	nop                                              ; $6578: $00
	inc  c                                           ; $6579: $0c
	rrca                                             ; $657a: $0f
	nop                                              ; $657b: $00
	ld   [$1800], sp                                 ; $657c: $08 $00 $18
	nop                                              ; $657f: $00
	jr   nz, jr_02c_658a                             ; $6580: $20 $08

	ld   c, b                                        ; $6582: $48
	rlca                                             ; $6583: $07
	ld   b, a                                        ; $6584: $47
	nop                                              ; $6585: $00
	ld   b, d                                        ; $6586: $42
	add  c                                           ; $6587: $81
	ld   [bc], a                                     ; $6588: $02
	add  b                                           ; $6589: $80

jr_02c_658a:
	ld   [de], a                                     ; $658a: $12
	add  b                                           ; $658b: $80
	ld   d, $08                                      ; $658c: $16 $08
	ld   e, b                                        ; $658e: $58
	jr   jr_02c_6568                                 ; $658f: $18 $d7

	rla                                              ; $6591: $17
	rra                                              ; $6592: $1f
	rst  JumpTable                                         ; $6593: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6594: $cf
	rst  $28                                         ; $6595: $ef
	rra                                              ; $6596: $1f
	add  e                                           ; $6597: $83
	nop                                              ; $6598: $00
	ld   b, $f0                                      ; $6599: $06 $f0
	nop                                              ; $659b: $00
	ld   [$0400], sp                                 ; $659c: $08 $00 $04
	nop                                              ; $659f: $00
	ld   [bc], a                                     ; $65a0: $02
	add  b                                           ; $65a1: $80
	ld   [$3001], sp                                 ; $65a2: $08 $01 $30
	ld   sp, $0081                                   ; $65a5: $31 $81 $00
	add  d                                           ; $65a8: $82
	add  b                                           ; $65a9: $80
	ld   bc, $8081                                   ; $65aa: $01 $81 $80
	add  b                                           ; $65ad: $80
	and  b                                           ; $65ae: $a0
	dec  c                                           ; $65af: $0d
	ldh  [c], a                                      ; $65b0: $e2
	ldh  [$c4], a                                    ; $65b1: $e0 $c4
	ret  nz                                          ; $65b3: $c0

	add  $1d                                         ; $65b4: $c6 $1d
	inc  a                                           ; $65b6: $3c
	inc  c                                           ; $65b7: $0c
	dec  e                                           ; $65b8: $1d
	inc  b                                           ; $65b9: $04
	inc  c                                           ; $65ba: $0c
	nop                                              ; $65bb: $00
	inc  b                                           ; $65bc: $04
	nop                                              ; $65bd: $00
	add  c                                           ; $65be: $81
	ld   bc, $0000                                   ; $65bf: $01 $00 $00
	add  b                                           ; $65c2: $80
	ld   bc, $0082                                   ; $65c3: $01 $82 $00
	ld   [bc], a                                     ; $65c6: $02
	inc  b                                           ; $65c7: $04
	nop                                              ; $65c8: $00
	ld   [$0083], sp                                 ; $65c9: $08 $83 $00
	ld   b, $18                                      ; $65cc: $06 $18
	rrca                                             ; $65ce: $0f
	rst  $20                                         ; $65cf: $e7
	nop                                              ; $65d0: $00
	rst  $30                                         ; $65d1: $f7
	ldh  a, [rDIV]                                   ; $65d2: $f0 $04
	add  b                                           ; $65d4: $80
	nop                                              ; $65d5: $00
	add  d                                           ; $65d6: $82
	jr   c, jr_02c_65e1                              ; $65d7: $38 $08

	ld   a, b                                        ; $65d9: $78
	ld   a, d                                        ; $65da: $7a
	ld   a, b                                        ; $65db: $78
	db   $fc                                         ; $65dc: $fc

jr_02c_65dd:
	or   h                                           ; $65dd: $b4
	or   c                                           ; $65de: $b1
	and  b                                           ; $65df: $a0
	inc  l                                           ; $65e0: $2c

jr_02c_65e1:
	inc  c                                           ; $65e1: $0c
	add  d                                           ; $65e2: $82
	nop                                              ; $65e3: $00
	ld   a, [bc]                                     ; $65e4: $0a
	jr   nc, jr_02c_65e7                             ; $65e5: $30 $00

jr_02c_65e7:
	ld   c, b                                        ; $65e7: $48
	nop                                              ; $65e8: $00
	inc  b                                           ; $65e9: $04
	nop                                              ; $65ea: $00
	ld   b, $03                                      ; $65eb: $06 $03
	ld   a, c                                        ; $65ed: $79
	nop                                              ; $65ee: $00
	rst  $38                                         ; $65ef: $ff
	sub  a                                           ; $65f0: $97
	nop                                              ; $65f1: $00
	add  b                                           ; $65f2: $80
	db   $10                                         ; $65f3: $10
	add  d                                           ; $65f4: $82
	jr   nz, jr_02c_6577                             ; $65f5: $20 $80

	ld   b, b                                        ; $65f7: $40
	inc  c                                           ; $65f8: $0c
	ld   b, e                                        ; $65f9: $43
	ld   b, b                                        ; $65fa: $40
	ld   b, d                                        ; $65fb: $42
	ld   b, b                                        ; $65fc: $40
	ld   b, [hl]                                     ; $65fd: $46
	ld   b, b                                        ; $65fe: $40
	ld   c, b                                        ; $65ff: $48
	ld   b, d                                        ; $6600: $42
	ld   d, d                                        ; $6601: $52
	ld   b, c                                        ; $6602: $41

Call_02c_6603:
	ld   d, c                                        ; $6603: $51
	ld   b, b                                        ; $6604: $40
	ld   d, b                                        ; $6605: $50
	add  c                                           ; $6606: $81
	ld   b, b                                        ; $6607: $40
	add  d                                           ; $6608: $82

Call_02c_6609:
	ld   b, h                                        ; $6609: $44
	nop                                              ; $660a: $00

Call_02c_660b:
	ld   d, h                                        ; $660b: $54
	add  b                                           ; $660c: $80
	ld   b, h                                        ; $660d: $44
	add  b                                           ; $660e: $80
	ld   b, [hl]                                     ; $660f: $46
	dec  c                                           ; $6610: $0d
	ld   b, h                                        ; $6611: $44
	db   $eb                                         ; $6612: $eb
	inc  bc                                          ; $6613: $03
	or   l                                           ; $6614: $b5
	ld   hl, $0073                                   ; $6615: $21 $73 $00
	ret  nz                                          ; $6618: $c0

	nop                                              ; $6619: $00
	inc  a                                           ; $661a: $3c
	nop                                              ; $661b: $00
	ld   [bc], a                                     ; $661c: $02
	nop                                              ; $661d: $00
	ld   bc, $0080                                   ; $661e: $01 $80 $00
	add  b                                           ; $6621: $80
	jp   nz, $0c01                                   ; $6622: $c2 $01 $0c

	adc  h                                           ; $6625: $8c
	add  c                                           ; $6626: $81
	add  b                                           ; $6627: $80
	add  b                                           ; $6628: $80
	and  b                                           ; $6629: $a0
	add  c                                           ; $662a: $81
	jr   nz, jr_02c_662d                             ; $662b: $20 $00

jr_02c_662d:
	and  b                                           ; $662d: $a0
	add  b                                           ; $662e: $80
	add  sp, -$80                                    ; $662f: $e8 $80
	ld   hl, sp+$04                                  ; $6631: $f8 $04
	ld   [hl], c                                     ; $6633: $71
	ldh  a, [$f2]                                    ; $6634: $f0 $f2
	ldh  a, [$fc]                                    ; $6636: $f0 $fc
	add  a                                           ; $6638: $87
	nop                                              ; $6639: $00
	nop                                              ; $663a: $00
	add  b                                           ; $663b: $80
	add  c                                           ; $663c: $81
	nop                                              ; $663d: $00
	nop                                              ; $663e: $00
	ld   b, b                                        ; $663f: $40
	add  l                                           ; $6640: $85
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	ld   b, b                                        ; $6643: $40
	add  c                                           ; $6644: $81
	nop                                              ; $6645: $00
	nop                                              ; $6646: $00
	add  b                                           ; $6647: $80
	add  e                                           ; $6648: $83
	nop                                              ; $6649: $00
	inc  b                                           ; $664a: $04
	ld   a, a                                        ; $664b: $7f
	nop                                              ; $664c: $00
	ld   bc, $3d0c                                   ; $664d: $01 $0c $3d
	add  b                                           ; $6650: $80
	jr   nc, jr_02c_665a                             ; $6651: $30 $07

	scf                                              ; $6653: $37
	ld   b, a                                        ; $6654: $47
	rlca                                             ; $6655: $07
	rra                                              ; $6656: $1f
	inc  bc                                          ; $6657: $03
	rlca                                             ; $6658: $07
	nop                                              ; $6659: $00

jr_02c_665a:
	jr   nz, jr_02c_65dd                             ; $665a: $20 $81

	ld   bc, $0504                                   ; $665c: $01 $04 $05
	nop                                              ; $665f: $00
	ld   [$1000], sp                                 ; $6660: $08 $00 $10
	add  e                                           ; $6663: $83
	nop                                              ; $6664: $00
	ld   b, $30                                      ; $6665: $06 $30
	ld   e, $ce                                      ; $6667: $1e $ce
	nop                                              ; $6669: $00
	rlca                                             ; $666a: $07
	nop                                              ; $666b: $00
	inc  b                                           ; $666c: $04
	add  b                                           ; $666d: $80
	ld   h, b                                        ; $666e: $60
	add  c                                           ; $666f: $81
	ldh  [rSC], a                                    ; $6670: $e0 $02
	ld   hl, sp-$28                                  ; $6672: $f8 $d8
	cp   $80                                         ; $6674: $fe $80
	cp   h                                           ; $6676: $bc
	ld   [bc], a                                     ; $6677: $02
	inc  a                                           ; $6678: $3c
	ld   bc, $8000                                   ; $6679: $01 $00 $80
	ld   a, h                                        ; $667c: $7c
	ld   c, $01                                      ; $667d: $0e $01
	nop                                              ; $667f: $00
	ld   bc, $6000                                   ; $6680: $01 $00 $60
	nop                                              ; $6683: $00
	sub  b                                           ; $6684: $90
	nop                                              ; $6685: $00
	ld   [$0d01], sp                                 ; $6686: $08 $01 $0d
	rlca                                             ; $6689: $07
	di                                               ; $668a: $f3
	nop                                              ; $668b: $00
	rst  $38                                         ; $668c: $ff
	adc  l                                           ; $668d: $8d
	nop                                              ; $668e: $00
	ld   [$00f0], sp                                 ; $668f: $08 $f0 $00
	db   $ec                                         ; $6692: $ec
	nop                                              ; $6693: $00
	ld   a, [de]                                     ; $6694: $1a
	nop                                              ; $6695: $00
	add  [hl]                                        ; $6696: $86
	nop                                              ; $6697: $00
	ld   b, b                                        ; $6698: $40
	add  b                                           ; $6699: $80
	nop                                              ; $669a: $00
	dec  b                                           ; $669b: $05
	add  b                                           ; $669c: $80
	ret  nz                                          ; $669d: $c0

	nop                                              ; $669e: $00
	ld   a, [hl]                                     ; $669f: $7e
	nop                                              ; $66a0: $00
	cp   $87                                         ; $66a1: $fe $87
	nop                                              ; $66a3: $00
	add  b                                           ; $66a4: $80
	ld   bc, $0280                                   ; $66a5: $01 $80 $02
	add  b                                           ; $66a8: $80
	ld   b, $80                                      ; $66a9: $06 $80
	rlca                                             ; $66ab: $07
	ld   bc, $1f01                                   ; $66ac: $01 $01 $1f
	add  d                                           ; $66af: $82
	add  hl, de                                      ; $66b0: $19
	dec  b                                           ; $66b1: $05
	ld   de, $5571                                   ; $66b2: $11 $71 $55
	dec  d                                           ; $66b5: $15
	dec  [hl]                                        ; $66b6: $35
	dec  d                                           ; $66b7: $15
	add  b                                           ; $66b8: $80
	add  hl, de                                      ; $66b9: $19
	nop                                              ; $66ba: $00
	ld   e, $81                                      ; $66bb: $1e $81
	nop                                              ; $66bd: $00

jr_02c_66be:
	add  b                                           ; $66be: $80
	ld   [bc], a                                     ; $66bf: $02
	add  b                                           ; $66c0: $80
	ld   c, [hl]                                     ; $66c1: $4e
	add  b                                           ; $66c2: $80
	sbc  [hl]                                        ; $66c3: $9e
	add  b                                           ; $66c4: $80
	ld   a, $80                                      ; $66c5: $3e $80
	ld   a, h                                        ; $66c7: $7c
	add  d                                           ; $66c8: $82
	ld   hl, sp-$7a                                  ; $66c9: $f8 $86
	ldh  a, [$84]                                    ; $66cb: $f0 $84
	ldh  [rSC], a                                    ; $66cd: $e0 $02
	rlca                                             ; $66cf: $07
	add  hl, de                                      ; $66d0: $19
	ld   hl, $3f95                                   ; $66d1: $21 $95 $3f

jr_02c_66d4:
	add  b                                           ; $66d4: $80
	ld   a, $80                                      ; $66d5: $3e $80
	ld   [hl], b                                     ; $66d7: $70
	ld   [bc], a                                     ; $66d8: $02
	ld   a, a                                        ; $66d9: $7f
	nop                                              ; $66da: $00
	cp   a                                           ; $66db: $bf
	adc  l                                           ; $66dc: $8d
	ret  nz                                          ; $66dd: $c0

	add  b                                           ; $66de: $80
	pop  bc                                          ; $66df: $c1
	add  b                                           ; $66e0: $80
	jp   $cc80                                       ; $66e1: $c3 $80 $cc


	add  b                                           ; $66e4: $80
	ldh  a, [$80]                                    ; $66e5: $f0 $80
	ret  nz                                          ; $66e7: $c0

	add  d                                           ; $66e8: $82
	nop                                              ; $66e9: $00
	ld   a, [bc]                                     ; $66ea: $0a
	rst  $38                                         ; $66eb: $ff
	nop                                              ; $66ec: $00
	ld   hl, sp+$00                                  ; $66ed: $f8 $00
	ld   a, [bc]                                     ; $66ef: $0a
	nop                                              ; $66f0: $00
	db   $10                                         ; $66f1: $10
	ld   [$192a], sp                                 ; $66f2: $08 $2a $19
	ld   e, c                                        ; $66f5: $59
	add  b                                           ; $66f6: $80
	dec  sp                                          ; $66f7: $3b
	inc  b                                           ; $66f8: $04
	inc  sp                                          ; $66f9: $33
	rst  $30                                         ; $66fa: $f7
	ld   b, l                                        ; $66fb: $45
	ld   c, l                                        ; $66fc: $4d
	ld   c, h                                        ; $66fd: $4c
	add  b                                           ; $66fe: $80
	ld   bc, $6006                                   ; $66ff: $01 $06 $60

jr_02c_6702:
	nop                                              ; $6702: $00
	jr   nz, jr_02c_6705                             ; $6703: $20 $00

jr_02c_6705:
	pop  bc                                          ; $6705: $c1
	nop                                              ; $6706: $00
	ld   [bc], a                                     ; $6707: $02
	add  c                                           ; $6708: $81
	nop                                              ; $6709: $00
	ld   b, $c0                                      ; $670a: $06 $c0
	ld   a, b                                        ; $670c: $78
	dec  sp                                          ; $670d: $3b
	nop                                              ; $670e: $00
	rra                                              ; $670f: $1f
	nop                                              ; $6710: $00
	db   $10                                         ; $6711: $10
	add  b                                           ; $6712: $80
	ld   h, b                                        ; $6713: $60
	add  e                                           ; $6714: $83
	ldh  [rAUD2LEN], a                               ; $6715: $e0 $16
	add  sp, -$40                                    ; $6717: $e8 $c0
	ldh  a, [$30]                                    ; $6719: $f0 $30
	add  [hl]                                        ; $671b: $86
	add  b                                           ; $671c: $80
	rst  $30                                         ; $671d: $f7
	ldh  a, [rSB]                                    ; $671e: $f0 $01
	nop                                              ; $6720: $00
	inc  b                                           ; $6721: $04
	nop                                              ; $6722: $00
	add  d                                           ; $6723: $82
	nop                                              ; $6724: $00
	ld   b, c                                        ; $6725: $41
	nop                                              ; $6726: $00
	jr   nz, jr_02c_672f                             ; $6727: $20 $06

	scf                                              ; $6729: $37
	inc  e                                           ; $672a: $1c
	call $ff00                                       ; $672b: $cd $00 $ff
	adc  l                                           ; $672e: $8d

jr_02c_672f:
	nop                                              ; $672f: $00
	inc  b                                           ; $6730: $04
	ldh  [rP1], a                                    ; $6731: $e0 $00
	ret  nc                                          ; $6733: $d0

	nop                                              ; $6734: $00
	jr   nc, jr_02c_66be                             ; $6735: $30 $87

	nop                                              ; $6737: $00
	ld   [bc], a                                     ; $6738: $02
	ldh  a, [rP1]                                    ; $6739: $f0 $00
	ldh  a, [$90]                                    ; $673b: $f0 $90
	nop                                              ; $673d: $00
	nop                                              ; $673e: $00
	ld   e, $82                                      ; $673f: $1e $82
	jr   jr_02c_6748                                 ; $6741: $18 $05

	db   $10                                         ; $6743: $10
	ld   [hl], b                                     ; $6744: $70
	ld   d, h                                        ; $6745: $54
	inc  d                                           ; $6746: $14
	inc  [hl]                                        ; $6747: $34

jr_02c_6748:
	inc  d                                           ; $6748: $14
	add  b                                           ; $6749: $80
	add  hl, de                                      ; $674a: $19
	nop                                              ; $674b: $00
	ld   e, $8f                                      ; $674c: $1e $8f
	nop                                              ; $674e: $00
	add  b                                           ; $674f: $80
	jr   nz, jr_02c_66d4                             ; $6750: $20 $82

	ld   h, b                                        ; $6752: $60
	add  d                                           ; $6753: $82
	ldh  [$82], a                                    ; $6754: $e0 $82
	ret  nz                                          ; $6756: $c0

	nop                                              ; $6757: $00
	rlca                                             ; $6758: $07
	add  b                                           ; $6759: $80
	add  hl, de                                      ; $675a: $19
	nop                                              ; $675b: $00
	rlca                                             ; $675c: $07
	add  h                                           ; $675d: $84
	rla                                              ; $675e: $17
	add  b                                           ; $675f: $80
	scf                                              ; $6760: $37
	adc  h                                           ; $6761: $8c
	ccf                                              ; $6762: $3f
	add  b                                           ; $6763: $80
	ld   a, $80                                      ; $6764: $3e $80
	ld   [hl], b                                     ; $6766: $70
	ld   [bc], a                                     ; $6767: $02
	rst  $38                                         ; $6768: $ff
	nop                                              ; $6769: $00
	rst  $38                                         ; $676a: $ff
	sub  l                                           ; $676b: $95
	nop                                              ; $676c: $00
	add  b                                           ; $676d: $80
	ld   bc, $0e80                                   ; $676e: $01 $80 $0e
	add  b                                           ; $6771: $80
	ld   [hl], b                                     ; $6772: $70
	ld   [bc], a                                     ; $6773: $02
	rst  $38                                         ; $6774: $ff
	nop                                              ; $6775: $00
	rst  $38                                         ; $6776: $ff
	adc  l                                           ; $6777: $8d
	nop                                              ; $6778: $00
	add  b                                           ; $6779: $80
	ld   bc, $0380                                   ; $677a: $01 $80 $03
	add  b                                           ; $677d: $80
	inc  c                                           ; $677e: $0c
	add  b                                           ; $677f: $80
	jr   nc, jr_02c_6702                             ; $6780: $30 $80

	ret  nz                                          ; $6782: $c0

	add  d                                           ; $6783: $82
	nop                                              ; $6784: $00
	inc  bc                                          ; $6785: $03
	rst  $38                                         ; $6786: $ff
	nop                                              ; $6787: $00
	push af                                          ; $6788: $f5
	ld   a, [bc]                                     ; $6789: $0a
	add  b                                           ; $678a: $80
	dec  b                                           ; $678b: $05
	adc  d                                           ; $678c: $8a
	nop                                              ; $678d: $00
	add  b                                           ; $678e: $80
	xor  d                                           ; $678f: $aa
	add  b                                           ; $6790: $80
	ld   d, l                                        ; $6791: $55
	add  b                                           ; $6792: $80
	ld   [bc], a                                     ; $6793: $02
	add  b                                           ; $6794: $80
	dec  b                                           ; $6795: $05
	add  b                                           ; $6796: $80

jr_02c_6797:
	nop                                              ; $6797: $00
	add  b                                           ; $6798: $80
	ld   d, l                                        ; $6799: $55
	add  d                                           ; $679a: $82
	nop                                              ; $679b: $00
	add  b                                           ; $679c: $80
	xor  d                                           ; $679d: $aa
	add  b                                           ; $679e: $80
	ld   d, l                                        ; $679f: $55
	add  b                                           ; $67a0: $80
	xor  d                                           ; $67a1: $aa
	add  b                                           ; $67a2: $80
	ld   d, l                                        ; $67a3: $55
	add  b                                           ; $67a4: $80
	ld   [bc], a                                     ; $67a5: $02
	add  b                                           ; $67a6: $80
	ld   d, h                                        ; $67a7: $54
	add  b                                           ; $67a8: $80
	xor  d                                           ; $67a9: $aa
	add  b                                           ; $67aa: $80
	nop                                              ; $67ab: $00
	add  b                                           ; $67ac: $80
	xor  d                                           ; $67ad: $aa
	add  b                                           ; $67ae: $80
	ld   d, l                                        ; $67af: $55
	add  b                                           ; $67b0: $80
	xor  d                                           ; $67b1: $aa
	add  b                                           ; $67b2: $80
	ld   d, l                                        ; $67b3: $55
	add  b                                           ; $67b4: $80
	xor  d                                           ; $67b5: $aa
	add  b                                           ; $67b6: $80
	ld   d, l                                        ; $67b7: $55
	add  b                                           ; $67b8: $80
	xor  d                                           ; $67b9: $aa
	add  c                                           ; $67ba: $81
	nop                                              ; $67bb: $00
	ld   [bc], a                                     ; $67bc: $02
	rst  $38                                         ; $67bd: $ff
	or   b                                           ; $67be: $b0
	cp   a                                           ; $67bf: $bf
	add  b                                           ; $67c0: $80
	ccf                                              ; $67c1: $3f
	rla                                              ; $67c2: $17
	scf                                              ; $67c3: $37
	ccf                                              ; $67c4: $3f
	inc  a                                           ; $67c5: $3c
	ccf                                              ; $67c6: $3f
	ei                                               ; $67c7: $fb
	rst  $38                                         ; $67c8: $ff
	push af                                          ; $67c9: $f5
	rst  $30                                         ; $67ca: $f7
	ld   a, l                                        ; $67cb: $7d
	ld   a, a                                        ; $67cc: $7f
	cp   a                                           ; $67cd: $bf
	rst  $38                                         ; $67ce: $ff
	ccf                                              ; $67cf: $3f
	rst  $38                                         ; $67d0: $ff
	ccf                                              ; $67d1: $3f
	rst  $38                                         ; $67d2: $ff
	ld   a, a                                        ; $67d3: $7f
	rst  $38                                         ; $67d4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67d5: $cf

jr_02c_67d6:
	rst  $38                                         ; $67d6: $ff
	xor  a                                           ; $67d7: $af
	rst  $38                                         ; $67d8: $ff
	ld   a, a                                        ; $67d9: $7f
	rst  $38                                         ; $67da: $ff
	add  b                                           ; $67db: $80
	ld   a, a                                        ; $67dc: $7f
	ld   bc, $fcdc                                   ; $67dd: $01 $dc $fc
	add  b                                           ; $67e0: $80
	ld   sp, hl                                      ; $67e1: $f9
	add  b                                           ; $67e2: $80
	ld   hl, sp-$7e                                  ; $67e3: $f8 $82
	pop  hl                                          ; $67e5: $e1
	add  d                                           ; $67e6: $82
	ldh  [$80], a                                    ; $67e7: $e0 $80
	add  b                                           ; $67e9: $80
	rlca                                             ; $67ea: $07
	dec  hl                                          ; $67eb: $2b
	ld   hl, $3f22                                   ; $67ec: $21 $22 $3f
	ld   l, l                                        ; $67ef: $6d
	ld   a, a                                        ; $67f0: $7f
	ld   a, e                                        ; $67f1: $7b
	ld   a, [hl]                                     ; $67f2: $7e
	add  b                                           ; $67f3: $80
	ld   a, $80                                      ; $67f4: $3e $80
	or   [hl]                                        ; $67f6: $b6
	add  b                                           ; $67f7: $80
	ld   l, [hl]                                     ; $67f8: $6e
	add  b                                           ; $67f9: $80
	dec  b                                           ; $67fa: $05
	nop                                              ; $67fb: $00
	nop                                              ; $67fc: $00
	adc  c                                           ; $67fd: $89

jr_02c_67fe:
	rst  $38                                         ; $67fe: $ff
	add  b                                           ; $67ff: $80
	ldh  [$80], a                                    ; $6800: $e0 $80
	ld   a, [$ff8a]                                  ; $6802: $fa $8a $ff
	add  b                                           ; $6805: $80
	ld   a, a                                        ; $6806: $7f
	add  b                                           ; $6807: $80
	rla                                              ; $6808: $17
	sbc  [hl]                                        ; $6809: $9e
	rst  $38                                         ; $680a: $ff
	rlca                                             ; $680b: $07
	rrca                                             ; $680c: $0f
	nop                                              ; $680d: $00
	db   $10                                         ; $680e: $10
	inc  b                                           ; $680f: $04
	dec  h                                           ; $6810: $25
	db   $10                                         ; $6811: $10
	ld   d, b                                        ; $6812: $50
	jr   nc, jr_02c_6797                             ; $6813: $30 $82

	inc  [hl]                                        ; $6815: $34
	ld   [bc], a                                     ; $6816: $02
	ld   sp, $7f39                                   ; $6817: $31 $39 $7f
	add  b                                           ; $681a: $80
	ld   d, $07                                      ; $681b: $16 $07
	ld   b, $e0                                      ; $681d: $06 $e0
	nop                                              ; $681f: $00
	ldh  [rP1], a                                    ; $6820: $e0 $00
	ld   b, c                                        ; $6822: $41
	nop                                              ; $6823: $00
	ld   [bc], a                                     ; $6824: $02
	add  c                                           ; $6825: $81
	nop                                              ; $6826: $00
	inc  c                                           ; $6827: $0c
	ret  nz                                          ; $6828: $c0

	ld   a, b                                        ; $6829: $78
	dec  sp                                          ; $682a: $3b
	nop                                              ; $682b: $00
	rlca                                             ; $682c: $07
	nop                                              ; $682d: $00
	inc  b                                           ; $682e: $04
	ld   e, b                                        ; $682f: $58
	ld   e, d                                        ; $6830: $5a
	inc  c                                           ; $6831: $0c
	dec  c                                           ; $6832: $0d
	ld   b, $66                                      ; $6833: $06 $66
	add  b                                           ; $6835: $80
	ld   l, [hl]                                     ; $6836: $6e
	ld   d, $6f                                      ; $6837: $16 $6f
	ld   c, [hl]                                     ; $6839: $4e
	ld   a, h                                        ; $683a: $7c
	ld   l, $d0                                      ; $683b: $2e $d0
	di                                               ; $683d: $f3
	jr   nc, jr_02c_6846                             ; $683e: $30 $06

	nop                                              ; $6840: $00
	dec  b                                           ; $6841: $05
	nop                                              ; $6842: $00
	add  d                                           ; $6843: $82
	nop                                              ; $6844: $00
	ld   b, c                                        ; $6845: $41

jr_02c_6846:
	nop                                              ; $6846: $00
	jr   nz, jr_02c_684f                             ; $6847: $20 $06

	scf                                              ; $6849: $37
	inc  e                                           ; $684a: $1c
	call $ff00                                       ; $684b: $cd $00 $ff
	nop                                              ; $684e: $00

jr_02c_684f:
	add  b                                           ; $684f: $80
	and  b                                           ; $6850: $a0
	add  b                                           ; $6851: $80
	nop                                              ; $6852: $00
	add  b                                           ; $6853: $80
	jr   jr_02c_67d6                                 ; $6854: $18 $80

	call nc, $bc00                                   ; $6856: $d4 $00 $bc
	add  c                                           ; $6859: $81
	ld   a, h                                        ; $685a: $7c
	ld   [bc], a                                     ; $685b: $02
	ld   a, [hl]                                     ; $685c: $7e
	cp   $40                                         ; $685d: $fe $40
	sbc  e                                           ; $685f: $9b
	nop                                              ; $6860: $00
	ld   [bc], a                                     ; $6861: $02
	ld   b, $00                                      ; $6862: $06 $00
	ld   b, $83                                      ; $6864: $06 $83
	nop                                              ; $6866: $00
	add  b                                           ; $6867: $80
	jr   nc, jr_02c_6873                             ; $6868: $30 $09

	inc  [hl]                                        ; $686a: $34
	ld   a, h                                        ; $686b: $7c
	ld   h, d                                        ; $686c: $62
	sbc  $eb                                         ; $686d: $de $eb
	rst  $38                                         ; $686f: $ff
	rst  ToBoot                                         ; $6870: $c7
	rst  $38                                         ; $6871: $ff
	add  hl, sp                                      ; $6872: $39

jr_02c_6873:
	ld   e, $82                                      ; $6873: $1e $82
	nop                                              ; $6875: $00

jr_02c_6876:
	add  b                                           ; $6876: $80
	ld   [$3080], sp                                 ; $6877: $08 $80 $30
	nop                                              ; $687a: $00
	jr   nz, jr_02c_67fe                             ; $687b: $20 $81

	jr   nc, @+$03                                   ; $687d: $30 $01

	ld   de, $8201                                   ; $687f: $11 $01 $82
	ccf                                              ; $6882: $3f
	inc  b                                           ; $6883: $04
	ld   a, e                                        ; $6884: $7b
	ld   a, a                                        ; $6885: $7f
	adc  h                                           ; $6886: $8c
	adc  d                                           ; $6887: $8a
	ld   [bc], a                                     ; $6888: $02
	add  e                                           ; $6889: $83
	nop                                              ; $688a: $00
	add  b                                           ; $688b: $80
	rst  $38                                         ; $688c: $ff
	add  b                                           ; $688d: $80
	and  b                                           ; $688e: $a0
	add  b                                           ; $688f: $80
	ret  nz                                          ; $6890: $c0

	dec  b                                           ; $6891: $05
	ld   [hl], b                                     ; $6892: $70
	ldh  a, [$30]                                    ; $6893: $f0 $30
	ldh  a, [rLYC]                                   ; $6895: $f0 $45
	dec  b                                           ; $6897: $05
	add  d                                           ; $6898: $82
	nop                                              ; $6899: $00
	add  b                                           ; $689a: $80
	ldh  a, [$80]                                    ; $689b: $f0 $80
	rlca                                             ; $689d: $07
	add  b                                           ; $689e: $80
	inc  bc                                          ; $689f: $03
	add  b                                           ; $68a0: $80
	nop                                              ; $68a1: $00
	add  b                                           ; $68a2: $80
	ld   h, b                                        ; $68a3: $60
	add  b                                           ; $68a4: $80
	ld   h, [hl]                                     ; $68a5: $66
	nop                                              ; $68a6: $00
	ld   b, b                                        ; $68a7: $40
	add  c                                           ; $68a8: $81
	ld   h, b                                        ; $68a9: $60
	ld   [bc], a                                     ; $68aa: $02
	ld   b, c                                        ; $68ab: $41
	ld   h, c                                        ; $68ac: $61
	rst  $38                                         ; $68ad: $ff
	add  c                                           ; $68ae: $81
	nop                                              ; $68af: $00
	add  b                                           ; $68b0: $80
	ld   bc, $4a80                                   ; $68b1: $01 $80 $4a
	add  b                                           ; $68b4: $80
	ld   bc, $0084                                   ; $68b5: $01 $84 $00
	add  b                                           ; $68b8: $80
	dec  b                                           ; $68b9: $05
	add  b                                           ; $68ba: $80
	ld   a, [hl+]                                    ; $68bb: $2a
	add  b                                           ; $68bc: $80
	ld   d, l                                        ; $68bd: $55
	add  b                                           ; $68be: $80
	xor  d                                           ; $68bf: $aa
	add  b                                           ; $68c0: $80
	ld   d, l                                        ; $68c1: $55
	add  b                                           ; $68c2: $80
	add  b                                           ; $68c3: $80
	add  d                                           ; $68c4: $82
	nop                                              ; $68c5: $00
	add  b                                           ; $68c6: $80
	rst  $38                                         ; $68c7: $ff
	add  b                                           ; $68c8: $80
	cp   a                                           ; $68c9: $bf
	add  b                                           ; $68ca: $80
	ld   d, a                                        ; $68cb: $57
	add  b                                           ; $68cc: $80
	xor  d                                           ; $68cd: $aa
	add  b                                           ; $68ce: $80
	ld   d, l                                        ; $68cf: $55
	add  b                                           ; $68d0: $80
	xor  d                                           ; $68d1: $aa
	add  b                                           ; $68d2: $80
	ld   bc, $0280                                   ; $68d3: $01 $80 $02
	add  h                                           ; $68d6: $84
	rst  $38                                         ; $68d7: $ff
	add  b                                           ; $68d8: $80
	cp   a                                           ; $68d9: $bf
	add  b                                           ; $68da: $80
	ld   e, a                                        ; $68db: $5f
	add  b                                           ; $68dc: $80
	cp   a                                           ; $68dd: $bf
	add  b                                           ; $68de: $80
	ld   a, a                                        ; $68df: $7f
	add  b                                           ; $68e0: $80
	rst  $38                                         ; $68e1: $ff
	add  [hl]                                        ; $68e2: $86
	nop                                              ; $68e3: $00
	add  b                                           ; $68e4: $80
	ld   [hl], b                                     ; $68e5: $70
	add  b                                           ; $68e6: $80
	add  b                                           ; $68e7: $80
	add  h                                           ; $68e8: $84
	nop                                              ; $68e9: $00
	ld   b, $c0                                      ; $68ea: $06 $c0
	nop                                              ; $68ec: $00
	or   b                                           ; $68ed: $b0
	nop                                              ; $68ee: $00
	ld   l, b                                        ; $68ef: $68
	nop                                              ; $68f0: $00
	jr   jr_02c_6876                                 ; $68f1: $18 $83

	nop                                              ; $68f3: $00
	ld   [bc], a                                     ; $68f4: $02
	ld   hl, sp+$00                                  ; $68f5: $f8 $00
	ld   hl, sp-$7f                                  ; $68f7: $f8 $81
	nop                                              ; $68f9: $00
	ld   a, [bc]                                     ; $68fa: $0a
	ld   bc, $0200                                   ; $68fb: $01 $00 $02
	nop                                              ; $68fe: $00
	ccf                                              ; $68ff: $3f
	inc  bc                                          ; $6900: $03
	add  hl, sp                                      ; $6901: $39
	ld   bc, $0004                                   ; $6902: $01 $04 $00
	inc  bc                                          ; $6905: $03
	adc  l                                           ; $6906: $8d
	nop                                              ; $6907: $00
	ld   bc, $003f                                   ; $6908: $01 $3f $00
	ld   e, d                                        ; $690b: $5a
	inc  bc                                          ; $690c: $03
	add  hl, bc                                      ; $690d: $09
	ld   bc, $1f00                                   ; $690e: $01 $00 $1f
	ld   bc, $1b3b                                   ; $6911: $01 $3b $1b
	ld   a, a                                        ; $6914: $7f
	ccf                                              ; $6915: $3f
	db   $db                                         ; $6916: $db
	ld   e, e                                        ; $6917: $5b
	add  b                                           ; $6918: $80
	ld   sp, $3602                                   ; $6919: $31 $02 $36
	db   $10                                         ; $691c: $10
	ld   c, b                                        ; $691d: $48
	add  b                                           ; $691e: $80
	ld   b, b                                        ; $691f: $40
	inc  de                                          ; $6920: $13
	ld   h, b                                        ; $6921: $60
	ld   l, [hl]                                     ; $6922: $6e
	ld   h, b                                        ; $6923: $60
	xor  d                                           ; $6924: $aa
	inc  h                                           ; $6925: $24
	inc  l                                           ; $6926: $2c
	jr   z, jr_02c_696d                              ; $6927: $28 $44

	nop                                              ; $6929: $00
	ld   hl, $1800                                   ; $692a: $21 $00 $18
	nop                                              ; $692d: $00
	rlca                                             ; $692e: $07
	nop                                              ; $692f: $00
	rst  $38                                         ; $6930: $ff
	nop                                              ; $6931: $00
	ld   hl, sp-$10                                  ; $6932: $f8 $f0
	db   $fc                                         ; $6934: $fc
	add  c                                           ; $6935: $81
	ld   hl, sp+$04                                  ; $6936: $f8 $04
	cp   $f8                                         ; $6938: $fe $f8
	cp   e                                           ; $693a: $bb
	or   d                                           ; $693b: $b2
	jp   nc, $9680                                   ; $693c: $d2 $80 $96

	ld   bc, $9a9e                                   ; $693f: $01 $9e $9a
	add  e                                           ; $6942: $83
	jp   c, $b50f                                    ; $6943: $da $0f $b5

	or   h                                           ; $6946: $b4
	ld   b, d                                        ; $6947: $42
	nop                                              ; $6948: $00
	or   h                                           ; $6949: $b4
	nop                                              ; $694a: $00
	jr   jr_02c_694d                                 ; $694b: $18 $00

jr_02c_694d:
	ldh  [rP1], a                                    ; $694d: $e0 $00
	rst  $38                                         ; $694f: $ff
	db   $10                                         ; $6950: $10
	ld   bc, $0705                                   ; $6951: $01 $05 $07
	inc  bc                                          ; $6954: $03
	add  b                                           ; $6955: $80
	nop                                              ; $6956: $00
	add  b                                           ; $6957: $80
	db   $10                                         ; $6958: $10
	ld   [bc], a                                     ; $6959: $02
	rra                                              ; $695a: $1f
	rrca                                             ; $695b: $0f
	inc  b                                           ; $695c: $04
	add  c                                           ; $695d: $81
	inc  d                                           ; $695e: $14
	add  d                                           ; $695f: $82
	ld   [$0981], sp                                 ; $6960: $08 $81 $09
	nop                                              ; $6963: $00
	add  hl, hl                                      ; $6964: $29
	add  b                                           ; $6965: $80
	ld   hl, $2380                                   ; $6966: $21 $80 $23
	add  b                                           ; $6969: $80
	nop                                              ; $696a: $00
	inc  bc                                          ; $696b: $03
	ld   b, e                                        ; $696c: $43

jr_02c_696d:
	nop                                              ; $696d: $00
	adc  h                                           ; $696e: $8c
	ld   [$2080], sp                                 ; $696f: $08 $80 $20
	add  b                                           ; $6972: $80
	ret  nz                                          ; $6973: $c0

	add  b                                           ; $6974: $80
	ld   b, b                                        ; $6975: $40
	add  b                                           ; $6976: $80
	adc  b                                           ; $6977: $88
	ld   bc, $9098                                   ; $6978: $01 $98 $90
	add  b                                           ; $697b: $80
	ld   [hl], b                                     ; $697c: $70
	add  b                                           ; $697d: $80
	db   $10                                         ; $697e: $10
	ld   bc, $0800                                   ; $697f: $01 $00 $08
	add  b                                           ; $6982: $80
	ld   c, b                                        ; $6983: $48
	add  b                                           ; $6984: $80
	ld   b, b                                        ; $6985: $40
	nop                                              ; $6986: $00
	ld   h, b                                        ; $6987: $60
	add  c                                           ; $6988: $81
	ld   h, h                                        ; $6989: $64
	add  b                                           ; $698a: $80
	ld   [hl], b                                     ; $698b: $70
	add  b                                           ; $698c: $80
	nop                                              ; $698d: $00
	dec  c                                           ; $698e: $0d
	jp   nz, $3e00                                   ; $698f: $c2 $00 $3e

	nop                                              ; $6992: $00
	ld   bc, $1f00                                   ; $6993: $01 $00 $1f
	ld   bc, $1b3b                                   ; $6996: $01 $3b $1b
	ld   a, e                                        ; $6999: $7b
	dec  sp                                          ; $699a: $3b
	rst  JumpTable                                         ; $699b: $df
	ld   e, a                                        ; $699c: $5f
	add  b                                           ; $699d: $80
	dec  sp                                          ; $699e: $3b
	add  b                                           ; $699f: $80
	ld   sp, $7616                                   ; $69a0: $31 $16 $76
	ld   d, b                                        ; $69a3: $50
	ld   c, b                                        ; $69a4: $48
	ld   b, b                                        ; $69a5: $40
	ld   c, h                                        ; $69a6: $4c
	ld   h, b                                        ; $69a7: $60
	xor  [hl]                                        ; $69a8: $ae
	jr   nz, jr_02c_69d5                             ; $69a9: $20 $2a

	jr   nz, jr_02c_69f3                             ; $69ab: $20 $46

	nop                                              ; $69ad: $00
	ld   l, $00                                      ; $69ae: $2e $00
	add  hl, de                                      ; $69b0: $19
	nop                                              ; $69b1: $00
	ld   [$f000], sp                                 ; $69b2: $08 $00 $f0
	nop                                              ; $69b5: $00
	ld   hl, sp-$10                                  ; $69b6: $f8 $f0
	db   $fc                                         ; $69b8: $fc
	add  c                                           ; $69b9: $81
	ld   hl, sp+$06                                  ; $69ba: $f8 $06
	cp   $fc                                         ; $69bc: $fe $fc
	rst  $38                                         ; $69be: $ff
	ld   a, [$b2ba]                                  ; $69bf: $fa $ba $b2
	jp   nc, $9680                                   ; $69c2: $d2 $80 $96

	ld   bc, $9a9e                                   ; $69c5: $01 $9e $9a
	add  c                                           ; $69c8: $81
	jp   c, $d913                                    ; $69c9: $da $13 $d9

	ret  c                                           ; $69cc: $d8

	or   d                                           ; $69cd: $b2
	or   b                                           ; $69ce: $b0
	ld   b, h                                        ; $69cf: $44
	nop                                              ; $69d0: $00
	xor  b                                           ; $69d1: $a8
	nop                                              ; $69d2: $00
	stop                                             ; $69d3: $10 $00

jr_02c_69d5:
	ld   bc, $1f00                                   ; $69d5: $01 $00 $1f
	ld   bc, $1b3b                                   ; $69d8: $01 $3b $1b
	ld   [hl], a                                     ; $69db: $77
	scf                                              ; $69dc: $37
	rst  $38                                         ; $69dd: $ff
	ld   a, a                                        ; $69de: $7f
	add  b                                           ; $69df: $80
	ld   [hl], a                                     ; $69e0: $77
	ld   a, [de]                                     ; $69e1: $1a
	ld   h, e                                        ; $69e2: $63
	inc  hl                                          ; $69e3: $23

jr_02c_69e4:
	dec  l                                           ; $69e4: $2d
	ld   hl, $4111                                   ; $69e5: $21 $11 $41
	ld   e, c                                        ; $69e8: $59
	ld   b, c                                        ; $69e9: $41
	sbc  l                                           ; $69ea: $9d
	ld   bc, $0115                                   ; $69eb: $01 $15 $01
	ld   c, l                                        ; $69ee: $4d
	ld   bc, $002c                                   ; $69ef: $01 $2c $00
	dec  de                                          ; $69f2: $1b

jr_02c_69f3:
	nop                                              ; $69f3: $00
	ld   [$f000], sp                                 ; $69f4: $08 $00 $f0
	nop                                              ; $69f7: $00
	ld   hl, sp-$10                                  ; $69f8: $f8 $f0
	db   $fc                                         ; $69fa: $fc
	ld   hl, sp-$02                                  ; $69fb: $f8 $fe
	add  c                                           ; $69fd: $81
	db   $fc                                         ; $69fe: $fc
	inc  b                                           ; $69ff: $04
	rst  $38                                         ; $6a00: $ff
	or   $76                                         ; $6a01: $f6 $76
	ld   h, [hl]                                     ; $6a03: $66
	and  [hl]                                        ; $6a04: $a6
	add  b                                           ; $6a05: $80
	ld   l, $01                                      ; $6a06: $2e $01
	ld   a, $36                                      ; $6a08: $3e $36
	add  c                                           ; $6a0a: $81
	or   [hl]                                        ; $6a0b: $b6
	inc  de                                          ; $6a0c: $13
	or   l                                           ; $6a0d: $b5
	or   h                                           ; $6a0e: $b4
	ld   h, d                                        ; $6a0f: $62
	ld   h, b                                        ; $6a10: $60
	add  h                                           ; $6a11: $84
	nop                                              ; $6a12: $00
	ld   l, b                                        ; $6a13: $68
	nop                                              ; $6a14: $00
	stop                                             ; $6a15: $10 $00
	ld   bc, $1f00                                   ; $6a17: $01 $00 $1f
	ld   bc, $1b3b                                   ; $6a1a: $01 $3b $1b
	ld   a, l                                        ; $6a1d: $7d
	dec  a                                           ; $6a1e: $3d
	rst  $38                                         ; $6a1f: $ff
	ld   a, a                                        ; $6a20: $7f
	add  b                                           ; $6a21: $80
	ld   l, l                                        ; $6a22: $6d
	add  b                                           ; $6a23: $80
	ld   e, b                                        ; $6a24: $58
	jr   jr_02c_6a82                                 ; $6a25: $18 $5b

	ld   c, b                                        ; $6a27: $48
	inc  h                                           ; $6a28: $24
	jr   nz, jr_02c_6a51                             ; $6a29: $20 $26

	jr   nc, jr_02c_69e4                             ; $6a2b: $30 $b7

	jr   nc, jr_02c_6a64                             ; $6a2d: $30 $35

	jr   nc, jr_02c_6a84                             ; $6a2f: $30 $53

	db   $10                                         ; $6a31: $10
	cpl                                              ; $6a32: $2f
	nop                                              ; $6a33: $00
	jr   jr_02c_6a36                                 ; $6a34: $18 $00

jr_02c_6a36:
	ld   [$f000], sp                                 ; $6a36: $08 $00 $f0
	nop                                              ; $6a39: $00
	ld   hl, sp-$10                                  ; $6a3a: $f8 $f0
	db   $fc                                         ; $6a3c: $fc
	ld   hl, sp-$02                                  ; $6a3d: $f8 $fe
	add  c                                           ; $6a3f: $81
	db   $fc                                         ; $6a40: $fc
	inc  b                                           ; $6a41: $04
	rst  $38                                         ; $6a42: $ff
	ld   a, [$d2da]                                  ; $6a43: $fa $da $d2
	ld   h, d                                        ; $6a46: $62
	add  b                                           ; $6a47: $80
	ld   h, $01                                      ; $6a48: $26 $01
	ld   l, $2c                                      ; $6a4a: $2e $2c
	add  c                                           ; $6a4c: $81
	ld   l, h                                        ; $6a4d: $6c
	ld   de, $6c6d                                   ; $6a4e: $11 $6d $6c

jr_02c_6a51:
	ld   c, d                                        ; $6a51: $4a
	ld   c, b                                        ; $6a52: $48
	inc  h                                           ; $6a53: $24
	nop                                              ; $6a54: $00
	ret  z                                           ; $6a55: $c8

	nop                                              ; $6a56: $00
	ld   de, $1f00                                   ; $6a57: $11 $00 $1f
	ld   bc, $1b3b                                   ; $6a5a: $01 $3b $1b
	ld   e, e                                        ; $6a5d: $5b
	dec  de                                          ; $6a5e: $1b
	cp   a                                           ; $6a5f: $bf
	ccf                                              ; $6a60: $3f
	add  b                                           ; $6a61: $80
	ld   a, e                                        ; $6a62: $7b
	add  b                                           ; $6a63: $80

jr_02c_6a64:
	ld   [hl], c                                     ; $6a64: $71
	ld   [bc], a                                     ; $6a65: $02
	halt                                             ; $6a66: $76
	ld   d, b                                        ; $6a67: $50
	ld   c, b                                        ; $6a68: $48
	add  b                                           ; $6a69: $80
	ld   b, b                                        ; $6a6a: $40
	inc  de                                          ; $6a6b: $13
	ld   h, b                                        ; $6a6c: $60
	xor  [hl]                                        ; $6a6d: $ae
	jr   nz, jr_02c_6a9a                             ; $6a6e: $20 $2a

	inc  h                                           ; $6a70: $24
	ld   c, h                                        ; $6a71: $4c
	ld   [$0024], sp                                 ; $6a72: $08 $24 $00
	add  hl, de                                      ; $6a75: $19
	nop                                              ; $6a76: $00
	rlca                                             ; $6a77: $07
	nop                                              ; $6a78: $00
	rst  $38                                         ; $6a79: $ff
	nop                                              ; $6a7a: $00
	ld   hl, sp-$10                                  ; $6a7b: $f8 $f0
	db   $fc                                         ; $6a7d: $fc
	ld   hl, sp-$02                                  ; $6a7e: $f8 $fe
	add  c                                           ; $6a80: $81
	db   $fc                                         ; $6a81: $fc

jr_02c_6a82:
	inc  b                                           ; $6a82: $04
	rst  $38                                         ; $6a83: $ff

jr_02c_6a84:
	ld   a, [$b2ba]                                  ; $6a84: $fa $ba $b2
	jp   nc, $9680                                   ; $6a87: $d2 $80 $96

	ld   bc, $9a9e                                   ; $6a8a: $01 $9e $9a
	add  c                                           ; $6a8d: $81
	jp   c, $d915                                    ; $6a8e: $da $15 $d9

	ret  c                                           ; $6a91: $d8

	or   d                                           ; $6a92: $b2
	or   b                                           ; $6a93: $b0
	ld   b, h                                        ; $6a94: $44
	nop                                              ; $6a95: $00
	xor  b                                           ; $6a96: $a8
	nop                                              ; $6a97: $00
	ldh  [rP1], a                                    ; $6a98: $e0 $00

jr_02c_6a9a:
	ldh  a, [rP1]                                    ; $6a9a: $f0 $00
	ld   bc, $1f00                                   ; $6a9c: $01 $00 $1f
	ld   bc, $1b3b                                   ; $6a9f: $01 $3b $1b
	ld   a, e                                        ; $6aa2: $7b
	dec  sp                                          ; $6aa3: $3b
	rst  JumpTable                                         ; $6aa4: $df
	ld   e, a                                        ; $6aa5: $5f
	add  b                                           ; $6aa6: $80
	dec  sp                                          ; $6aa7: $3b
	add  b                                           ; $6aa8: $80
	ld   sp, $7616                                   ; $6aa9: $31 $16 $76
	ld   d, b                                        ; $6aac: $50
	ld   c, b                                        ; $6aad: $48
	ld   b, b                                        ; $6aae: $40
	ld   c, h                                        ; $6aaf: $4c
	ld   h, b                                        ; $6ab0: $60
	xor  [hl]                                        ; $6ab1: $ae
	jr   nz, jr_02c_6ade                             ; $6ab2: $20 $2a

	jr   nz, jr_02c_6afc                             ; $6ab4: $20 $46

	nop                                              ; $6ab6: $00
	ld   l, $00                                      ; $6ab7: $2e $00
	add  hl, de                                      ; $6ab9: $19
	nop                                              ; $6aba: $00
	ld   [$f000], sp                                 ; $6abb: $08 $00 $f0
	nop                                              ; $6abe: $00
	ld   hl, sp-$10                                  ; $6abf: $f8 $f0
	db   $fc                                         ; $6ac1: $fc
	add  c                                           ; $6ac2: $81
	ld   hl, sp+$06                                  ; $6ac3: $f8 $06
	cp   $fc                                         ; $6ac5: $fe $fc
	rst  $38                                         ; $6ac7: $ff
	ld   a, [$b2ba]                                  ; $6ac8: $fa $ba $b2
	jp   nc, $9680                                   ; $6acb: $d2 $80 $96

	ld   bc, $9a9e                                   ; $6ace: $01 $9e $9a
	add  c                                           ; $6ad1: $81
	jp   c, $d909                                    ; $6ad2: $da $09 $d9

	ret  c                                           ; $6ad5: $d8

	or   d                                           ; $6ad6: $b2
	or   b                                           ; $6ad7: $b0
	inc  b                                           ; $6ad8: $04
	nop                                              ; $6ad9: $00
	ld   [$ff00], sp                                 ; $6ada: $08 $00 $ff
	db   $10                                         ; $6add: $10

jr_02c_6ade:
	add  b                                           ; $6ade: $80
	inc  b                                           ; $6adf: $04
	add  b                                           ; $6ae0: $80
	inc  bc                                          ; $6ae1: $03
	add  b                                           ; $6ae2: $80
	nop                                              ; $6ae3: $00
	add  b                                           ; $6ae4: $80
	db   $10                                         ; $6ae5: $10
	ld   [bc], a                                     ; $6ae6: $02
	rra                                              ; $6ae7: $1f
	rrca                                             ; $6ae8: $0f
	inc  b                                           ; $6ae9: $04
	add  c                                           ; $6aea: $81
	inc  d                                           ; $6aeb: $14
	add  d                                           ; $6aec: $82
	ld   [$0981], sp                                 ; $6aed: $08 $81 $09
	nop                                              ; $6af0: $00
	add  hl, hl                                      ; $6af1: $29
	add  b                                           ; $6af2: $80
	ld   hl, $2380                                   ; $6af3: $21 $80 $23
	add  b                                           ; $6af6: $80
	nop                                              ; $6af7: $00
	ld   [bc], a                                     ; $6af8: $02
	ld   b, e                                        ; $6af9: $43
	nop                                              ; $6afa: $00
	inc  c                                           ; $6afb: $0c

jr_02c_6afc:
	add  c                                           ; $6afc: $81
	adc  b                                           ; $6afd: $88
	add  b                                           ; $6afe: $80
	add  b                                           ; $6aff: $80
	add  b                                           ; $6b00: $80
	ret  z                                           ; $6b01: $c8

jr_02c_6b02:
	inc  bc                                          ; $6b02: $03
	cp   b                                           ; $6b03: $b8
	ld   hl, sp-$28                                  ; $6b04: $f8 $d8
	sub  b                                           ; $6b06: $90
	add  b                                           ; $6b07: $80
	ld   [hl], b                                     ; $6b08: $70
	add  b                                           ; $6b09: $80
	db   $10                                         ; $6b0a: $10
	ld   bc, $0800                                   ; $6b0b: $01 $00 $08
	add  b                                           ; $6b0e: $80
	ld   c, b                                        ; $6b0f: $48
	add  b                                           ; $6b10: $80
	ld   b, b                                        ; $6b11: $40
	nop                                              ; $6b12: $00
	ld   h, b                                        ; $6b13: $60
	add  c                                           ; $6b14: $81
	ld   h, h                                        ; $6b15: $64
	add  b                                           ; $6b16: $80
	ld   [hl], b                                     ; $6b17: $70
	add  b                                           ; $6b18: $80
	nop                                              ; $6b19: $00
	dec  bc                                          ; $6b1a: $0b
	jp   nz, $3f00                                   ; $6b1b: $c2 $00 $3f

	nop                                              ; $6b1e: $00
	rra                                              ; $6b1f: $1f
	ld   bc, $1b3b                                   ; $6b20: $01 $3b $1b
	ld   a, a                                        ; $6b23: $7f
	ccf                                              ; $6b24: $3f
	db   $db                                         ; $6b25: $db
	ld   e, e                                        ; $6b26: $5b
	add  b                                           ; $6b27: $80
	ld   sp, $3618                                   ; $6b28: $31 $18 $36
	db   $10                                         ; $6b2b: $10
	ld   c, b                                        ; $6b2c: $48
	ld   b, b                                        ; $6b2d: $40
	ld   c, l                                        ; $6b2e: $4d
	ld   h, b                                        ; $6b2f: $60
	ld   l, [hl]                                     ; $6b30: $6e
	ld   h, b                                        ; $6b31: $60
	xor  d                                           ; $6b32: $aa
	jr   nz, jr_02c_6b5b                             ; $6b33: $20 $26

	jr   nz, jr_02c_6b85                             ; $6b35: $20 $4e

	nop                                              ; $6b37: $00
	jr   nz, jr_02c_6b3a                             ; $6b38: $20 $00

jr_02c_6b3a:
	jr   jr_02c_6b3c                                 ; $6b3a: $18 $00

jr_02c_6b3c:
	rlca                                             ; $6b3c: $07
	nop                                              ; $6b3d: $00
	rst  $38                                         ; $6b3e: $ff
	nop                                              ; $6b3f: $00
	ld   hl, sp-$10                                  ; $6b40: $f8 $f0
	db   $fc                                         ; $6b42: $fc
	add  c                                           ; $6b43: $81
	ld   hl, sp+$12                                  ; $6b44: $f8 $12
	cp   $f8                                         ; $6b46: $fe $f8
	cp   e                                           ; $6b48: $bb
	or   d                                           ; $6b49: $b2
	jp   nc, $a296                                   ; $6b4a: $d2 $96 $a2

	xor  d                                           ; $6b4d: $aa
	inc  l                                           ; $6b4e: $2c
	ld   l, h                                        ; $6b4f: $6c
	or   h                                           ; $6b50: $b4
	inc  [hl]                                        ; $6b51: $34
	ld   d, h                                        ; $6b52: $54
	inc  d                                           ; $6b53: $14
	ld   b, c                                        ; $6b54: $41
	nop                                              ; $6b55: $00
	ld   b, d                                        ; $6b56: $42
	nop                                              ; $6b57: $00
	ld   b, b                                        ; $6b58: $40
	add  c                                           ; $6b59: $81
	nop                                              ; $6b5a: $00

jr_02c_6b5b:
	inc  bc                                          ; $6b5b: $03
	add  h                                           ; $6b5c: $84
	nop                                              ; $6b5d: $00
	rst  $30                                         ; $6b5e: $f7
	db   $10                                         ; $6b5f: $10
	add  b                                           ; $6b60: $80
	inc  b                                           ; $6b61: $04
	add  b                                           ; $6b62: $80
	inc  bc                                          ; $6b63: $03
	add  b                                           ; $6b64: $80
	nop                                              ; $6b65: $00
	add  b                                           ; $6b66: $80
	db   $10                                         ; $6b67: $10
	ld   [bc], a                                     ; $6b68: $02
	rra                                              ; $6b69: $1f
	rrca                                             ; $6b6a: $0f
	inc  b                                           ; $6b6b: $04
	add  c                                           ; $6b6c: $81
	inc  d                                           ; $6b6d: $14
	add  d                                           ; $6b6e: $82
	ld   [$0981], sp                                 ; $6b6f: $08 $81 $09
	nop                                              ; $6b72: $00
	add  hl, hl                                      ; $6b73: $29
	add  b                                           ; $6b74: $80
	ld   hl, $2380                                   ; $6b75: $21 $80 $23
	add  b                                           ; $6b78: $80
	nop                                              ; $6b79: $00
	inc  bc                                          ; $6b7a: $03
	ld   b, e                                        ; $6b7b: $43
	nop                                              ; $6b7c: $00
	call z, $8048                                    ; $6b7d: $cc $48 $80
	jr   c, jr_02c_6b02                              ; $6b80: $38 $80

	adc  b                                           ; $6b82: $88
	dec  b                                           ; $6b83: $05
	ret  z                                           ; $6b84: $c8

jr_02c_6b85:
	ret  nz                                          ; $6b85: $c0

	or   b                                           ; $6b86: $b0
	ldh  a, [$d0]                                    ; $6b87: $f0 $d0
	sub  b                                           ; $6b89: $90
	add  b                                           ; $6b8a: $80
	ld   [hl], b                                     ; $6b8b: $70
	add  b                                           ; $6b8c: $80
	db   $10                                         ; $6b8d: $10
	ld   bc, $0800                                   ; $6b8e: $01 $00 $08
	add  b                                           ; $6b91: $80
	ld   c, b                                        ; $6b92: $48
	add  b                                           ; $6b93: $80
	ld   b, b                                        ; $6b94: $40
	nop                                              ; $6b95: $00
	ld   h, b                                        ; $6b96: $60
	add  c                                           ; $6b97: $81
	ld   h, h                                        ; $6b98: $64
	add  b                                           ; $6b99: $80
	ld   [hl], b                                     ; $6b9a: $70
	add  b                                           ; $6b9b: $80
	nop                                              ; $6b9c: $00
	dec  bc                                          ; $6b9d: $0b
	jp   nz, $3f00                                   ; $6b9e: $c2 $00 $3f

	nop                                              ; $6ba1: $00
	rra                                              ; $6ba2: $1f
	ld   bc, $1b3b                                   ; $6ba3: $01 $3b $1b
	ld   a, a                                        ; $6ba6: $7f
	ccf                                              ; $6ba7: $3f
	db   $db                                         ; $6ba8: $db
	ld   e, e                                        ; $6ba9: $5b
	add  b                                           ; $6baa: $80
	ld   sp, $3618                                   ; $6bab: $31 $18 $36
	db   $10                                         ; $6bae: $10
	ld   c, b                                        ; $6baf: $48
	ld   b, b                                        ; $6bb0: $40
	ld   b, c                                        ; $6bb1: $41
	ld   h, b                                        ; $6bb2: $60
	ld   l, [hl]                                     ; $6bb3: $6e
	ld   h, b                                        ; $6bb4: $60
	xor  d                                           ; $6bb5: $aa
	inc  h                                           ; $6bb6: $24
	inc  l                                           ; $6bb7: $2c
	jr   z, jr_02c_6bfe                              ; $6bb8: $28 $44

	nop                                              ; $6bba: $00
	jr   nz, jr_02c_6bbd                             ; $6bbb: $20 $00

jr_02c_6bbd:
	jr   jr_02c_6bbf                                 ; $6bbd: $18 $00

jr_02c_6bbf:
	rlca                                             ; $6bbf: $07
	nop                                              ; $6bc0: $00
	rst  $38                                         ; $6bc1: $ff
	nop                                              ; $6bc2: $00
	ld   hl, sp-$10                                  ; $6bc3: $f8 $f0
	db   $fc                                         ; $6bc5: $fc
	add  c                                           ; $6bc6: $81
	ld   hl, sp+$09                                  ; $6bc7: $f8 $09
	cp   $f8                                         ; $6bc9: $fe $f8
	cp   e                                           ; $6bcb: $bb
	or   d                                           ; $6bcc: $b2
	jp   nc, $9296                                   ; $6bcd: $d2 $96 $92

	sbc  d                                           ; $6bd0: $9a
	ld   a, [hl+]                                    ; $6bd1: $2a
	ld   l, d                                        ; $6bd2: $6a
	add  b                                           ; $6bd3: $80
	ld   l, h                                        ; $6bd4: $6c
	dec  c                                           ; $6bd5: $0d
	or   h                                           ; $6bd6: $b4
	inc  [hl]                                        ; $6bd7: $34
	ld   b, l                                        ; $6bd8: $45
	inc  b                                           ; $6bd9: $04
	ld   [hl-], a                                    ; $6bda: $32
	nop                                              ; $6bdb: $00
	inc  b                                           ; $6bdc: $04
	nop                                              ; $6bdd: $00
	jr   jr_02c_6be0                                 ; $6bde: $18 $00

jr_02c_6be0:
	ldh  [rP1], a                                    ; $6be0: $e0 $00
	rst  $38                                         ; $6be2: $ff
	db   $10                                         ; $6be3: $10
	add  b                                           ; $6be4: $80
	inc  b                                           ; $6be5: $04
	add  b                                           ; $6be6: $80
	inc  bc                                          ; $6be7: $03
	add  b                                           ; $6be8: $80
	nop                                              ; $6be9: $00
	add  b                                           ; $6bea: $80
	db   $10                                         ; $6beb: $10
	ld   [bc], a                                     ; $6bec: $02
	rra                                              ; $6bed: $1f
	rrca                                             ; $6bee: $0f
	inc  b                                           ; $6bef: $04
	add  c                                           ; $6bf0: $81
	inc  d                                           ; $6bf1: $14
	add  d                                           ; $6bf2: $82
	ld   [$0981], sp                                 ; $6bf3: $08 $81 $09
	nop                                              ; $6bf6: $00
	add  hl, hl                                      ; $6bf7: $29
	add  b                                           ; $6bf8: $80
	ld   hl, $2380                                   ; $6bf9: $21 $80 $23
	add  b                                           ; $6bfc: $80
	nop                                              ; $6bfd: $00

jr_02c_6bfe:
	dec  b                                           ; $6bfe: $05
	ld   b, e                                        ; $6bff: $43
	nop                                              ; $6c00: $00
	cp   h                                           ; $6c01: $bc
	ld   a, b                                        ; $6c02: $78
	nop                                              ; $6c03: $00
	ld   b, h                                        ; $6c04: $44
	add  b                                           ; $6c05: $80
	add  h                                           ; $6c06: $84
	add  b                                           ; $6c07: $80
	call nz, $bc03                                   ; $6c08: $c4 $03 $bc
	ld   hl, sp-$28                                  ; $6c0b: $f8 $d8
	sub  b                                           ; $6c0d: $90
	add  b                                           ; $6c0e: $80
	ld   [hl], b                                     ; $6c0f: $70
	add  b                                           ; $6c10: $80
	db   $10                                         ; $6c11: $10
	ld   bc, $0800                                   ; $6c12: $01 $00 $08
	add  b                                           ; $6c15: $80
	ld   c, b                                        ; $6c16: $48
	add  b                                           ; $6c17: $80
	ld   b, b                                        ; $6c18: $40
	nop                                              ; $6c19: $00
	ld   h, b                                        ; $6c1a: $60
	add  c                                           ; $6c1b: $81
	ld   h, h                                        ; $6c1c: $64
	add  b                                           ; $6c1d: $80
	ld   [hl], b                                     ; $6c1e: $70
	add  b                                           ; $6c1f: $80
	nop                                              ; $6c20: $00
	ld   [bc], a                                     ; $6c21: $02
	jp   nz, $3e00                                   ; $6c22: $c2 $00 $3e

	adc  c                                           ; $6c25: $89
	nop                                              ; $6c26: $00
	ld   bc, $2606                                   ; $6c27: $01 $06 $26
	add  c                                           ; $6c2a: $81
	ld   l, $00                                      ; $6c2b: $2e $00
	ld   c, $81                                      ; $6c2d: $0e $81
	nop                                              ; $6c2f: $00
	add  b                                           ; $6c30: $80
	ld   a, [bc]                                     ; $6c31: $0a
	ld   [bc], a                                     ; $6c32: $02
	ld   [bc], a                                     ; $6c33: $02
	inc  c                                           ; $6c34: $0c
	ld   c, $80                                      ; $6c35: $0e $80
	rrca                                             ; $6c37: $0f
	add  b                                           ; $6c38: $80

jr_02c_6c39:
	rlca                                             ; $6c39: $07
	adc  c                                           ; $6c3a: $89
	nop                                              ; $6c3b: $00
	add  b                                           ; $6c3c: $80
	inc  b                                           ; $6c3d: $04
	add  b                                           ; $6c3e: $80
	inc  c                                           ; $6c3f: $0c
	add  b                                           ; $6c40: $80
	ld   c, b                                        ; $6c41: $48
	add  b                                           ; $6c42: $80
	ld   b, b                                        ; $6c43: $40
	add  l                                           ; $6c44: $85
	nop                                              ; $6c45: $00
	add  b                                           ; $6c46: $80
	ld   b, b                                        ; $6c47: $40
	add  b                                           ; $6c48: $80
	ldh  a, [$80]                                    ; $6c49: $f0 $80
	ldh  [$90], a                                    ; $6c4b: $e0 $90
	nop                                              ; $6c4d: $00
	ld   bc, $2606                                   ; $6c4e: $01 $06 $26
	add  b                                           ; $6c51: $80
	ld   l, $01                                      ; $6c52: $2e $01
	ld   [hl+], a                                    ; $6c54: $22
	ld   [bc], a                                     ; $6c55: $02
	add  b                                           ; $6c56: $80
	inc  c                                           ; $6c57: $0c
	add  b                                           ; $6c58: $80
	ld   b, $80                                      ; $6c59: $06 $80
	nop                                              ; $6c5b: $00
	add  b                                           ; $6c5c: $80
	ld   c, $80                                      ; $6c5d: $0e $80
	rlca                                             ; $6c5f: $07
	adc  e                                           ; $6c60: $8b
	nop                                              ; $6c61: $00
	add  b                                           ; $6c62: $80
	inc  b                                           ; $6c63: $04
	add  b                                           ; $6c64: $80
	inc  c                                           ; $6c65: $0c
	add  b                                           ; $6c66: $80
	ld   c, b                                        ; $6c67: $48
	add  b                                           ; $6c68: $80
	ld   b, b                                        ; $6c69: $40
	add  l                                           ; $6c6a: $85
	nop                                              ; $6c6b: $00
	add  b                                           ; $6c6c: $80
	ld   b, b                                        ; $6c6d: $40
	add  b                                           ; $6c6e: $80
	ldh  [$8d], a                                    ; $6c6f: $e0 $8d
	nop                                              ; $6c71: $00
	nop                                              ; $6c72: $00
	ld   b, b                                        ; $6c73: $40
	add  b                                           ; $6c74: $80
	ld   c, h                                        ; $6c75: $4c
	ld   bc, $1c5c                                   ; $6c76: $01 $5c $1c
	add  b                                           ; $6c79: $80
	inc  b                                           ; $6c7a: $04
	add  b                                           ; $6c7b: $80
	jr   jr_02c_6bfe                                 ; $6c7c: $18 $80

	inc  c                                           ; $6c7e: $0c
	add  b                                           ; $6c7f: $80
	nop                                              ; $6c80: $00
	add  b                                           ; $6c81: $80
	inc  c                                           ; $6c82: $0c
	add  b                                           ; $6c83: $80
	rlca                                             ; $6c84: $07
	adc  e                                           ; $6c85: $8b
	nop                                              ; $6c86: $00
	add  b                                           ; $6c87: $80
	ld   [$1801], sp                                 ; $6c88: $08 $01 $18
	sbc  b                                           ; $6c8b: $98
	add  b                                           ; $6c8c: $80
	sub  b                                           ; $6c8d: $90
	nop                                              ; $6c8e: $00
	add  b                                           ; $6c8f: $80
	add  [hl]                                        ; $6c90: $86
	nop                                              ; $6c91: $00
	add  b                                           ; $6c92: $80
	add  b                                           ; $6c93: $80
	add  b                                           ; $6c94: $80
	ldh  [$8e], a                                    ; $6c95: $e0 $8e
	nop                                              ; $6c97: $00
	ld   bc, $1303                                   ; $6c98: $01 $03 $13
	add  b                                           ; $6c9b: $80
	rla                                              ; $6c9c: $17
	ld   bc, $0111                                   ; $6c9d: $01 $11 $01
	add  b                                           ; $6ca0: $80
	ld   b, $80                                      ; $6ca1: $06 $80
	inc  bc                                          ; $6ca3: $03
	add  b                                           ; $6ca4: $80
	nop                                              ; $6ca5: $00
	add  b                                           ; $6ca6: $80
	rrca                                             ; $6ca7: $0f
	add  b                                           ; $6ca8: $80
	rlca                                             ; $6ca9: $07
	adc  e                                           ; $6caa: $8b
	nop                                              ; $6cab: $00
	add  b                                           ; $6cac: $80
	inc  b                                           ; $6cad: $04
	add  b                                           ; $6cae: $80
	inc  c                                           ; $6caf: $0c
	add  b                                           ; $6cb0: $80
	ld   c, b                                        ; $6cb1: $48
	add  b                                           ; $6cb2: $80
	ld   b, b                                        ; $6cb3: $40
	add  l                                           ; $6cb4: $85
	nop                                              ; $6cb5: $00
	add  b                                           ; $6cb6: $80
	jr   nz, jr_02c_6c39                             ; $6cb7: $20 $80

	ldh  [$8c], a                                    ; $6cb9: $e0 $8c
	nop                                              ; $6cbb: $00
	ld   bc, $2606                                   ; $6cbc: $01 $06 $26
	add  c                                           ; $6cbf: $81
	ld   l, $00                                      ; $6cc0: $2e $00
	ld   c, $81                                      ; $6cc2: $0e $81
	nop                                              ; $6cc4: $00
	add  b                                           ; $6cc5: $80
	ld   a, [bc]                                     ; $6cc6: $0a
	ld   [bc], a                                     ; $6cc7: $02
	ld   [bc], a                                     ; $6cc8: $02
	inc  c                                           ; $6cc9: $0c
	ld   c, $80                                      ; $6cca: $0e $80
	rlca                                             ; $6ccc: $07
	adc  e                                           ; $6ccd: $8b
	nop                                              ; $6cce: $00
	add  b                                           ; $6ccf: $80
	inc  b                                           ; $6cd0: $04
	add  b                                           ; $6cd1: $80
	inc  c                                           ; $6cd2: $0c
	add  b                                           ; $6cd3: $80
	ld   c, b                                        ; $6cd4: $48
	add  b                                           ; $6cd5: $80
	ld   b, b                                        ; $6cd6: $40
	add  l                                           ; $6cd7: $85
	nop                                              ; $6cd8: $00
	add  b                                           ; $6cd9: $80
	ld   b, b                                        ; $6cda: $40
	add  b                                           ; $6cdb: $80
	ldh  [$90], a                                    ; $6cdc: $e0 $90
	nop                                              ; $6cde: $00
	ld   bc, $2606                                   ; $6cdf: $01 $06 $26
	add  b                                           ; $6ce2: $80
	ld   l, $01                                      ; $6ce3: $2e $01
	ld   [hl+], a                                    ; $6ce5: $22
	ld   [bc], a                                     ; $6ce6: $02
	add  b                                           ; $6ce7: $80
	inc  c                                           ; $6ce8: $0c
	add  b                                           ; $6ce9: $80
	ld   b, $80                                      ; $6cea: $06 $80
	nop                                              ; $6cec: $00
	add  b                                           ; $6ced: $80
	ld   c, $80                                      ; $6cee: $0e $80
	rlca                                             ; $6cf0: $07
	adc  e                                           ; $6cf1: $8b
	nop                                              ; $6cf2: $00
	add  b                                           ; $6cf3: $80
	inc  b                                           ; $6cf4: $04
	add  b                                           ; $6cf5: $80
	inc  c                                           ; $6cf6: $0c
	add  b                                           ; $6cf7: $80
	ld   c, b                                        ; $6cf8: $48
	add  b                                           ; $6cf9: $80
	ld   b, b                                        ; $6cfa: $40
	sub  l                                           ; $6cfb: $95
	nop                                              ; $6cfc: $00
	ld   bc, $2606                                   ; $6cfd: $01 $06 $26
	add  b                                           ; $6d00: $80
	ld   l, $01                                      ; $6d01: $2e $01
	inc  hl                                          ; $6d03: $23
	inc  bc                                          ; $6d04: $03
	add  b                                           ; $6d05: $80
	dec  c                                           ; $6d06: $0d
	add  b                                           ; $6d07: $80
	rlca                                             ; $6d08: $07
	add  b                                           ; $6d09: $80
	ld   bc, $0f82                                   ; $6d0a: $01 $82 $0f
	add  b                                           ; $6d0d: $80
	rlca                                             ; $6d0e: $07
	adc  c                                           ; $6d0f: $89
	nop                                              ; $6d10: $00
	add  b                                           ; $6d11: $80
	inc  b                                           ; $6d12: $04
	add  b                                           ; $6d13: $80
	inc  c                                           ; $6d14: $0c
	add  b                                           ; $6d15: $80
	ld   c, b                                        ; $6d16: $48
	add  b                                           ; $6d17: $80
	ld   b, b                                        ; $6d18: $40
	nop                                              ; $6d19: $00
	nop                                              ; $6d1a: $00
	add  b                                           ; $6d1b: $80
	add  b                                           ; $6d1c: $80
	add  b                                           ; $6d1d: $80
	ret  nz                                          ; $6d1e: $c0

	add  b                                           ; $6d1f: $80
	add  b                                           ; $6d20: $80
	add  b                                           ; $6d21: $80
	ret  nz                                          ; $6d22: $c0

	add  d                                           ; $6d23: $82
	add  b                                           ; $6d24: $80
	adc  h                                           ; $6d25: $8c
	nop                                              ; $6d26: $00
	ld   bc, $2606                                   ; $6d27: $01 $06 $26
	add  b                                           ; $6d2a: $80
	ld   l, $01                                      ; $6d2b: $2e $01
	cpl                                              ; $6d2d: $2f
	rrca                                             ; $6d2e: $0f
	add  c                                           ; $6d2f: $81
	ld   bc, $0b80                                   ; $6d30: $01 $80 $0b
	ld   bc, $0d03                                   ; $6d33: $01 $03 $0d
	add  c                                           ; $6d36: $81
	rrca                                             ; $6d37: $0f
	add  b                                           ; $6d38: $80
	rlca                                             ; $6d39: $07
	adc  c                                           ; $6d3a: $89
	nop                                              ; $6d3b: $00
	add  b                                           ; $6d3c: $80
	inc  b                                           ; $6d3d: $04
	add  b                                           ; $6d3e: $80
	inc  c                                           ; $6d3f: $0c
	add  b                                           ; $6d40: $80
	ld   c, b                                        ; $6d41: $48
	add  b                                           ; $6d42: $80
	ld   b, b                                        ; $6d43: $40
	add  c                                           ; $6d44: $81
	nop                                              ; $6d45: $00
	add  c                                           ; $6d46: $81
	add  b                                           ; $6d47: $80
	ld   bc, $b0c0                                   ; $6d48: $01 $c0 $b0
	add  c                                           ; $6d4b: $81
	ldh  a, [$80]                                    ; $6d4c: $f0 $80
	ldh  [$98], a                                    ; $6d4e: $e0 $98
	nop                                              ; $6d50: $00
	ld   [bc], a                                     ; $6d51: $02
	ld   bc, $0200                                   ; $6d52: $01 $00 $02
	add  c                                           ; $6d55: $81
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	inc  bc                                          ; $6d58: $03
	adc  c                                           ; $6d59: $89
	nop                                              ; $6d5a: $00
	ld   [$00fe], sp                                 ; $6d5b: $08 $fe $00
	rlca                                             ; $6d5e: $07
	ld   b, $e0                                      ; $6d5f: $06 $e0
	nop                                              ; $6d61: $00
	stop                                             ; $6d62: $10 $00
	ld   [$0280], sp                                 ; $6d64: $08 $80 $02
	inc  bc                                          ; $6d67: $03
	ld   bc, $0007                                   ; $6d68: $01 $07 $00
	ld   bc, $0085                                   ; $6d6b: $01 $85 $00
	inc  c                                           ; $6d6e: $0c
	rrca                                             ; $6d6f: $0f
	nop                                              ; $6d70: $00
	ld   [$1800], sp                                 ; $6d71: $08 $00 $18
	nop                                              ; $6d74: $00
	jr   z, jr_02c_6d7f                              ; $6d75: $28 $08

	ld   b, a                                        ; $6d77: $47
	rlca                                             ; $6d78: $07
	ld   b, b                                        ; $6d79: $40
	nop                                              ; $6d7a: $00
	ld   b, b                                        ; $6d7b: $40
	add  d                                           ; $6d7c: $82
	ld   [bc], a                                     ; $6d7d: $02
	add  b                                           ; $6d7e: $80

jr_02c_6d7f:
	ld   [de], a                                     ; $6d7f: $12
	inc  b                                           ; $6d80: $04
	db   $10                                         ; $6d81: $10
	ld   d, d                                        ; $6d82: $52
	ld   [de], a                                     ; $6d83: $12
	ld   a, [de]                                     ; $6d84: $1a
	dec  de                                          ; $6d85: $1b
	add  b                                           ; $6d86: $80
	inc  de                                          ; $6d87: $13
	rrca                                             ; $6d88: $0f
	ld   sp, $1f0f                                   ; $6d89: $31 $0f $1f

jr_02c_6d8c:
	rlca                                             ; $6d8c: $07
	rst  $30                                         ; $6d8d: $f7
	nop                                              ; $6d8e: $00
	rst  $38                                         ; $6d8f: $ff
	nop                                              ; $6d90: $00
	ldh  a, [rP1]                                    ; $6d91: $f0 $00
	ld   [$0400], sp                                 ; $6d93: $08 $00 $04
	nop                                              ; $6d96: $00
	ld   a, [bc]                                     ; $6d97: $0a
	ld   [$3080], sp                                 ; $6d98: $08 $80 $30
	nop                                              ; $6d9b: $00
	ld   bc, $0082                                   ; $6d9c: $01 $82 $00
	add  c                                           ; $6d9f: $81
	add  b                                           ; $6da0: $80

jr_02c_6da1:
	nop                                              ; $6da1: $00
	add  c                                           ; $6da2: $81
	add  b                                           ; $6da3: $80
	add  b                                           ; $6da4: $80
	ld   bc, $a2a0                                   ; $6da5: $01 $a0 $a2
	add  b                                           ; $6da8: $80
	ldh  [rSB], a                                    ; $6da9: $e0 $01
	ret  nz                                          ; $6dab: $c0

	call nz, $c080                                   ; $6dac: $c4 $80 $c0
	add  b                                           ; $6daf: $80
	nop                                              ; $6db0: $00
	ld   bc, $6068                                   ; $6db1: $01 $68 $60
	add  d                                           ; $6db4: $82
	ld   [hl], b                                     ; $6db5: $70
	ld   [bc], a                                     ; $6db6: $02
	nop                                              ; $6db7: $00
	ldh  a, [rP1]                                    ; $6db8: $f0 $00
	add  e                                           ; $6dba: $83
	ld   [bc], a                                     ; $6dbb: $02
	inc  de                                          ; $6dbc: $13
	nop                                              ; $6dbd: $00
	dec  c                                           ; $6dbe: $0d
	nop                                              ; $6dbf: $00
	stop                                             ; $6dc0: $10 $00
	jr   nz, jr_02c_6dc4                             ; $6dc2: $20 $00

jr_02c_6dc4:
	ld   bc, $0200                                   ; $6dc4: $01 $00 $02
	nop                                              ; $6dc7: $00
	ld   b, b                                        ; $6dc8: $40
	nop                                              ; $6dc9: $00
	ret  nz                                          ; $6dca: $c0

	jr   c, jr_02c_6e48                              ; $6dcb: $38 $7b

	nop                                              ; $6dcd: $00
	inc  bc                                          ; $6dce: $03
	ret  c                                           ; $6dcf: $d8

	ld   a, [de]                                     ; $6dd0: $1a
	add  c                                           ; $6dd1: $81
	inc  e                                           ; $6dd2: $1c
	nop                                              ; $6dd3: $00
	dec  a                                           ; $6dd4: $3d
	add  h                                           ; $6dd5: $84
	ld   c, $05                                      ; $6dd6: $0e $05
	nop                                              ; $6dd8: $00
	dec  d                                           ; $6dd9: $15
	inc  b                                           ; $6dda: $04
	ldh  a, [c]                                      ; $6ddb: $f2
	nop                                              ; $6ddc: $00
	inc  b                                           ; $6ddd: $04
	add  c                                           ; $6dde: $81
	nop                                              ; $6ddf: $00
	nop                                              ; $6de0: $00
	add  h                                           ; $6de1: $84
	add  c                                           ; $6de2: $81
	nop                                              ; $6de3: $00
	ld   [$0042], sp                                 ; $6de4: $08 $42 $00
	ld   h, b                                        ; $6de7: $60
	inc  e                                           ; $6de8: $1c
	cp   h                                           ; $6de9: $bc
	nop                                              ; $6dea: $00
	ld   sp, hl                                      ; $6deb: $f9
	nop                                              ; $6dec: $00
	ld   a, [bc]                                     ; $6ded: $0a
	add  c                                           ; $6dee: $81
	ld   [bc], a                                     ; $6def: $02
	nop                                              ; $6df0: $00
	ld   [de], a                                     ; $6df1: $12
	add  d                                           ; $6df2: $82
	ld   a, [bc]                                     ; $6df3: $0a
	add  c                                           ; $6df4: $81
	ld   [$1802], sp                                 ; $6df5: $08 $02 $18
	nop                                              ; $6df8: $00
	dec  c                                           ; $6df9: $0d
	adc  c                                           ; $6dfa: $89
	nop                                              ; $6dfb: $00
	add  b                                           ; $6dfc: $80
	ld   b, b                                        ; $6dfd: $40
	add  d                                           ; $6dfe: $82
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	ret  nz                                          ; $6e01: $c0

	add  c                                           ; $6e02: $81
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	jr   nz, jr_02c_6d8c                             ; $6e05: $20 $85

	ldh  [rSC], a                                    ; $6e07: $e0 $02
	ldh  a, [rP1]                                    ; $6e09: $f0 $00
	ldh  a, [$89]                                    ; $6e0b: $f0 $89
	nop                                              ; $6e0d: $00
	add  b                                           ; $6e0e: $80
	jr   nz, jr_02c_6da1                             ; $6e0f: $20 $90

	nop                                              ; $6e11: $00
	ld   e, $10                                      ; $6e12: $1e $10
	nop                                              ; $6e14: $00
	ld   [$0400], sp                                 ; $6e15: $08 $00 $04
	ld   [$1c6a], sp                                 ; $6e18: $08 $6a $1c
	sbc  l                                           ; $6e1b: $9d
	ld   a, [hl]                                     ; $6e1c: $7e
	rst  $38                                         ; $6e1d: $ff
	inc  e                                           ; $6e1e: $1c
	ld   a, [hl]                                     ; $6e1f: $7e
	ld   [$001c], sp                                 ; $6e20: $08 $1c $00
	ld   [$1800], sp                                 ; $6e23: $08 $00 $18
	nop                                              ; $6e26: $00
	jr   nz, jr_02c_6e29                             ; $6e27: $20 $00

jr_02c_6e29:
	inc  h                                           ; $6e29: $24
	nop                                              ; $6e2a: $00
	ld   [de], a                                     ; $6e2b: $12
	nop                                              ; $6e2c: $00
	dec  bc                                          ; $6e2d: $0b
	ld   [bc], a                                     ; $6e2e: $02
	dec  b                                           ; $6e2f: $05
	ld   bc, $8004                                   ; $6e30: $01 $04 $80
	nop                                              ; $6e33: $00
	add  b                                           ; $6e34: $80
	ld   [bc], a                                     ; $6e35: $02
	dec  b                                           ; $6e36: $05
	ld   bc, $0005                                   ; $6e37: $01 $05 $00
	ld   [bc], a                                     ; $6e3a: $02
	nop                                              ; $6e3b: $00
	ld   bc, $0085                                   ; $6e3c: $01 $85 $00
	inc  c                                           ; $6e3f: $0c
	rrca                                             ; $6e40: $0f
	nop                                              ; $6e41: $00
	ld   [$1800], sp                                 ; $6e42: $08 $00 $18
	nop                                              ; $6e45: $00
	jr   z, jr_02c_6e50                              ; $6e46: $28 $08

jr_02c_6e48:
	ld   b, a                                        ; $6e48: $47

jr_02c_6e49:
	rlca                                             ; $6e49: $07
	ld   b, b                                        ; $6e4a: $40
	nop                                              ; $6e4b: $00
	ld   b, b                                        ; $6e4c: $40
	add  d                                           ; $6e4d: $82

jr_02c_6e4e:
	ld   [bc], a                                     ; $6e4e: $02
	add  b                                           ; $6e4f: $80

jr_02c_6e50:
	ld   [de], a                                     ; $6e50: $12
	rrca                                             ; $6e51: $0f
	db   $10                                         ; $6e52: $10
	ld   d, d                                        ; $6e53: $52
	ld   [de], a                                     ; $6e54: $12
	ld   a, [de]                                     ; $6e55: $1a
	dec  de                                          ; $6e56: $1b
	sub  e                                           ; $6e57: $93
	inc  de                                          ; $6e58: $13
	ld   sp, $5f0f                                   ; $6e59: $31 $0f $5f
	rlca                                             ; $6e5c: $07
	ld   [hl], a                                     ; $6e5d: $77
	ld   b, b                                        ; $6e5e: $40
	rlca                                             ; $6e5f: $07
	ld   l, b                                        ; $6e60: $68
	ld   [hl], b                                     ; $6e61: $70
	add  b                                           ; $6e62: $80
	ldh  [$03], a                                    ; $6e63: $e0 $03
	ld   h, b                                        ; $6e65: $60
	ldh  [c], a                                      ; $6e66: $e2
	ld   [bc], a                                     ; $6e67: $02
	ld   h, [hl]                                     ; $6e68: $66
	add  c                                           ; $6e69: $81
	ld   b, $00                                      ; $6e6a: $06 $00
	rrca                                             ; $6e6c: $0f
	add  b                                           ; $6e6d: $80
	rlca                                             ; $6e6e: $07
	inc  de                                          ; $6e6f: $13
	nop                                              ; $6e70: $00
	stop                                             ; $6e71: $10 $00
	jr   nz, jr_02c_6e75                             ; $6e73: $20 $00

jr_02c_6e75:
	ld   b, b                                        ; $6e75: $40
	nop                                              ; $6e76: $00
	inc  bc                                          ; $6e77: $03
	nop                                              ; $6e78: $00
	inc  b                                           ; $6e79: $04
	nop                                              ; $6e7a: $00
	add  b                                           ; $6e7b: $80
	nop                                              ; $6e7c: $00
	add  b                                           ; $6e7d: $80
	ld   [hl], b                                     ; $6e7e: $70
	rst  $30                                         ; $6e7f: $f7
	nop                                              ; $6e80: $00
	inc  bc                                          ; $6e81: $03
	ret  c                                           ; $6e82: $d8

	ld   a, [de]                                     ; $6e83: $1a
	add  c                                           ; $6e84: $81
	inc  e                                           ; $6e85: $1c
	nop                                              ; $6e86: $00
	dec  a                                           ; $6e87: $3d
	add  e                                           ; $6e88: $83
	ld   c, $06                                      ; $6e89: $0e $06
	adc  [hl]                                        ; $6e8b: $8e
	add  b                                           ; $6e8c: $80
	sub  l                                           ; $6e8d: $95
	inc  b                                           ; $6e8e: $04
	ld   [hl], d                                     ; $6e8f: $72
	nop                                              ; $6e90: $00
	inc  c                                           ; $6e91: $0c
	add  c                                           ; $6e92: $81
	nop                                              ; $6e93: $00
	nop                                              ; $6e94: $00
	ld   [$0081], sp                                 ; $6e95: $08 $81 $00
	add  hl, bc                                      ; $6e98: $09
	add  h                                           ; $6e99: $84
	nop                                              ; $6e9a: $00
	ret  nz                                          ; $6e9b: $c0

	jr   c, jr_02c_6f16                              ; $6e9c: $38 $78

	nop                                              ; $6e9e: $00
	rst  $38                                         ; $6e9f: $ff
	nop                                              ; $6ea0: $00
	inc  c                                           ; $6ea1: $0c
	nop                                              ; $6ea2: $00
	add  b                                           ; $6ea3: $80
	ld   bc, $1102                                   ; $6ea4: $01 $02 $11
	inc  b                                           ; $6ea7: $04
	ld   b, $80                                      ; $6ea8: $06 $80
	ld   [$0003], sp                                 ; $6eaa: $08 $03 $00
	jr   jr_02c_6eaf                                 ; $6ead: $18 $00

jr_02c_6eaf:
	inc  b                                           ; $6eaf: $04
	adc  e                                           ; $6eb0: $8b
	nop                                              ; $6eb1: $00
	ld   bc, $40c0                                   ; $6eb2: $01 $c0 $40
	add  d                                           ; $6eb5: $82
	nop                                              ; $6eb6: $00
	nop                                              ; $6eb7: $00
	ld   h, b                                        ; $6eb8: $60
	add  c                                           ; $6eb9: $81
	nop                                              ; $6eba: $00
	add  c                                           ; $6ebb: $81
	sub  b                                           ; $6ebc: $90
	add  d                                           ; $6ebd: $82
	or   b                                           ; $6ebe: $b0
	inc  bc                                          ; $6ebf: $03
	jr   nc, jr_02c_6f3a                             ; $6ec0: $30 $78

	nop                                              ; $6ec2: $00
	jr   c, jr_02c_6e4e                              ; $6ec3: $38 $89

	nop                                              ; $6ec5: $00
	add  b                                           ; $6ec6: $80
	jr   nz, jr_02c_6e49                             ; $6ec7: $20 $80

	nop                                              ; $6ec9: $00
	ld   b, $01                                      ; $6eca: $06 $01
	nop                                              ; $6ecc: $00
	ld   bc, $0300                                   ; $6ecd: $01 $00 $03
	nop                                              ; $6ed0: $00
	inc  bc                                          ; $6ed1: $03
	add  c                                           ; $6ed2: $81
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	rlca                                             ; $6ed5: $07
	add  b                                           ; $6ed6: $80
	nop                                              ; $6ed7: $00
	add  b                                           ; $6ed8: $80
	ld   [bc], a                                     ; $6ed9: $02
	dec  b                                           ; $6eda: $05
	nop                                              ; $6edb: $00
	inc  b                                           ; $6edc: $04
	nop                                              ; $6edd: $00
	ld   [bc], a                                     ; $6ede: $02
	nop                                              ; $6edf: $00
	ld   bc, $0089                                   ; $6ee0: $01 $89 $00
	inc  c                                           ; $6ee3: $0c
	rrca                                             ; $6ee4: $0f
	nop                                              ; $6ee5: $00
	ld   [$1800], sp                                 ; $6ee6: $08 $00 $18
	nop                                              ; $6ee9: $00
	jr   z, jr_02c_6ef4                              ; $6eea: $28 $08

	ld   b, a                                        ; $6eec: $47
	rlca                                             ; $6eed: $07
	ld   b, b                                        ; $6eee: $40
	nop                                              ; $6eef: $00
	ld   b, b                                        ; $6ef0: $40
	add  c                                           ; $6ef1: $81
	ld   [bc], a                                     ; $6ef2: $02
	ld   [de], a                                     ; $6ef3: $12

jr_02c_6ef4:
	add  d                                           ; $6ef4: $82
	ld   [de], a                                     ; $6ef5: $12
	sub  d                                           ; $6ef6: $92
	db   $10                                         ; $6ef7: $10
	ld   d, d                                        ; $6ef8: $52
	ld   [de], a                                     ; $6ef9: $12
	sub  d                                           ; $6efa: $92
	inc  de                                          ; $6efb: $13
	sub  e                                           ; $6efc: $93
	inc  bc                                          ; $6efd: $03
	and  c                                           ; $6efe: $a1
	dec  bc                                          ; $6eff: $0b

Call_02c_6f00:
	ld   a, e                                        ; $6f00: $7b
	inc  bc                                          ; $6f01: $03
	ld   d, e                                        ; $6f02: $53
	ld   b, b                                        ; $6f03: $40
	rla                                              ; $6f04: $17
	ld   l, b                                        ; $6f05: $68
	ld   h, b                                        ; $6f06: $60
	add  b                                           ; $6f07: $80
	jr   nz, jr_02c_6f0b                             ; $6f08: $20 $01

	nop                                              ; $6f0a: $00

jr_02c_6f0b:
	add  b                                           ; $6f0b: $80
	add  c                                           ; $6f0c: $81
	nop                                              ; $6f0d: $00
	nop                                              ; $6f0e: $00
	ld   h, d                                        ; $6f0f: $62
	add  d                                           ; $6f10: $82
	ld   [bc], a                                     ; $6f11: $02
	inc  d                                           ; $6f12: $14
	nop                                              ; $6f13: $00
	dec  c                                           ; $6f14: $0d
	nop                                              ; $6f15: $00

jr_02c_6f16:
	stop                                             ; $6f16: $10 $00
	jr   nz, jr_02c_6f1a                             ; $6f18: $20 $00

jr_02c_6f1a:
	ld   bc, $0200                                   ; $6f1a: $01 $00 $02
	nop                                              ; $6f1d: $00
	ld   b, b                                        ; $6f1e: $40
	nop                                              ; $6f1f: $00
	ret  nz                                          ; $6f20: $c0

	jr   c, jr_02c_6f9e                              ; $6f21: $38 $7b

	nop                                              ; $6f23: $00
	add  sp, $00                                     ; $6f24: $e8 $00
	ld   [$8100], sp                                 ; $6f26: $08 $00 $81
	ld   [bc], a                                     ; $6f29: $02
	add  d                                           ; $6f2a: $82
	ld   a, [bc]                                     ; $6f2b: $0a
	add  c                                           ; $6f2c: $81
	ld   [$1802], sp                                 ; $6f2d: $08 $02 $18
	nop                                              ; $6f30: $00
	dec  c                                           ; $6f31: $0d
	adc  c                                           ; $6f32: $89
	nop                                              ; $6f33: $00
	add  b                                           ; $6f34: $80
	ld   b, b                                        ; $6f35: $40
	adc  d                                           ; $6f36: $8a
	nop                                              ; $6f37: $00
	nop                                              ; $6f38: $00
	rlca                                             ; $6f39: $07

jr_02c_6f3a:
	add  b                                           ; $6f3a: $80
	nop                                              ; $6f3b: $00
	rrca                                             ; $6f3c: $0f
	ld   [bc], a                                     ; $6f3d: $02
	ld   a, [bc]                                     ; $6f3e: $0a
	ld   bc, $0011                                   ; $6f3f: $01 $11 $00
	ld   h, $00                                      ; $6f42: $26 $00
	ld   c, c                                        ; $6f44: $49
	nop                                              ; $6f45: $00
	ld   d, d                                        ; $6f46: $52
	nop                                              ; $6f47: $00
	ld   a, [hl+]                                    ; $6f48: $2a
	nop                                              ; $6f49: $00
	ld   c, $00                                      ; $6f4a: $0e $00
	ld   b, $81                                      ; $6f4c: $06 $81
	nop                                              ; $6f4e: $00
	inc  c                                           ; $6f4f: $0c
	rrca                                             ; $6f50: $0f
	nop                                              ; $6f51: $00
	ld   [$1800], sp                                 ; $6f52: $08 $00 $18
	nop                                              ; $6f55: $00
	jr   z, jr_02c_6f60                              ; $6f56: $28 $08

	ld   b, a                                        ; $6f58: $47
	rlca                                             ; $6f59: $07
	ld   b, b                                        ; $6f5a: $40
	nop                                              ; $6f5b: $00
	ld   b, b                                        ; $6f5c: $40
	add  d                                           ; $6f5d: $82
	ld   [bc], a                                     ; $6f5e: $02
	add  b                                           ; $6f5f: $80

jr_02c_6f60:
	ld   [de], a                                     ; $6f60: $12
	inc  b                                           ; $6f61: $04
	db   $10                                         ; $6f62: $10
	ld   d, d                                        ; $6f63: $52
	ld   [de], a                                     ; $6f64: $12
	ld   a, [de]                                     ; $6f65: $1a
	dec  de                                          ; $6f66: $1b
	add  b                                           ; $6f67: $80
	inc  de                                          ; $6f68: $13
	ld   [de], a                                     ; $6f69: $12
	or   c                                           ; $6f6a: $b1
	rrca                                             ; $6f6b: $0f
	ld   e, a                                        ; $6f6c: $5f
	rlca                                             ; $6f6d: $07
	ld   [hl], a                                     ; $6f6e: $77
	ld   b, b                                        ; $6f6f: $40
	ldh  a, [rP1]                                    ; $6f70: $f0 $00
	ld   [$1800], sp                                 ; $6f72: $08 $00 $18
	nop                                              ; $6f75: $00
	jr   z, jr_02c_6f80                              ; $6f76: $28 $08

	ld   b, a                                        ; $6f78: $47
	rlca                                             ; $6f79: $07
	ld   b, b                                        ; $6f7a: $40
	nop                                              ; $6f7b: $00
	ld   b, b                                        ; $6f7c: $40
	add  d                                           ; $6f7d: $82
	ld   [bc], a                                     ; $6f7e: $02
	add  b                                           ; $6f7f: $80

jr_02c_6f80:
	ld   [de], a                                     ; $6f80: $12
	inc  b                                           ; $6f81: $04
	db   $10                                         ; $6f82: $10
	ld   d, d                                        ; $6f83: $52
	ld   [de], a                                     ; $6f84: $12
	ld   a, [de]                                     ; $6f85: $1a

jr_02c_6f86:
	dec  de                                          ; $6f86: $1b
	add  b                                           ; $6f87: $80
	inc  de                                          ; $6f88: $13
	ld   [$0f31], sp                                 ; $6f89: $08 $31 $0f
	rra                                              ; $6f8c: $1f
	rlca                                             ; $6f8d: $07
	rla                                              ; $6f8e: $17
	nop                                              ; $6f8f: $00
	ld   [hl+], a                                    ; $6f90: $22
	jr   jr_02c_6fad                                 ; $6f91: $18 $1a

	add  b                                           ; $6f93: $80
	inc  e                                           ; $6f94: $1c
	rlca                                             ; $6f95: $07
	ld   e, $3e                                      ; $6f96: $1e $3e
	rrca                                             ; $6f98: $0f
	rra                                              ; $6f99: $1f
	rlca                                             ; $6f9a: $07
	rrca                                             ; $6f9b: $0f
	nop                                              ; $6f9c: $00
	inc  b                                           ; $6f9d: $04

jr_02c_6f9e:
	add  b                                           ; $6f9e: $80
	inc  bc                                          ; $6f9f: $03
	inc  de                                          ; $6fa0: $13
	nop                                              ; $6fa1: $00
	inc  c                                           ; $6fa2: $0c
	nop                                              ; $6fa3: $00
	stop                                             ; $6fa4: $10 $00
	jr   nz, jr_02c_6fa8                             ; $6fa6: $20 $00

jr_02c_6fa8:
	ld   bc, $0200                                   ; $6fa8: $01 $00 $02
	nop                                              ; $6fab: $00
	ld   b, b                                        ; $6fac: $40

jr_02c_6fad:
	nop                                              ; $6fad: $00
	ret  nz                                          ; $6fae: $c0

	jr   c, jr_02c_702c                              ; $6faf: $38 $7b

	nop                                              ; $6fb1: $00
	inc  bc                                          ; $6fb2: $03
	ret  c                                           ; $6fb3: $d8

	ld   a, [de]                                     ; $6fb4: $1a
	add  c                                           ; $6fb5: $81

jr_02c_6fb6:
	inc  e                                           ; $6fb6: $1c
	nop                                              ; $6fb7: $00
	dec  a                                           ; $6fb8: $3d
	add  h                                           ; $6fb9: $84
	ld   c, $05                                      ; $6fba: $0e $05
	nop                                              ; $6fbc: $00
	dec  d                                           ; $6fbd: $15
	inc  b                                           ; $6fbe: $04
	ldh  a, [c]                                      ; $6fbf: $f2
	nop                                              ; $6fc0: $00
	inc  b                                           ; $6fc1: $04
	add  c                                           ; $6fc2: $81
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00
	add  h                                           ; $6fc5: $84
	add  c                                           ; $6fc6: $81
	nop                                              ; $6fc7: $00
	ld   [$0042], sp                                 ; $6fc8: $08 $42 $00
	ld   h, b                                        ; $6fcb: $60
	inc  e                                           ; $6fcc: $1c
	cp   h                                           ; $6fcd: $bc
	nop                                              ; $6fce: $00
	rst  $38                                         ; $6fcf: $ff
	ld   [bc], a                                     ; $6fd0: $02
	inc  bc                                          ; $6fd1: $03
	add  e                                           ; $6fd2: $83
	nop                                              ; $6fd3: $00
	ld   bc, $0010                                   ; $6fd4: $01 $10 $00
	add  b                                           ; $6fd7: $80
	ld   [$0c04], sp                                 ; $6fd8: $08 $04 $0c
	ld   [$0018], sp                                 ; $6fdb: $08 $18 $00
	inc  c                                           ; $6fde: $0c
	adc  c                                           ; $6fdf: $89
	nop                                              ; $6fe0: $00
	add  b                                           ; $6fe1: $80
	ld   b, b                                        ; $6fe2: $40
	add  d                                           ; $6fe3: $82
	nop                                              ; $6fe4: $00
	nop                                              ; $6fe5: $00
	ret  nz                                          ; $6fe6: $c0

	add  c                                           ; $6fe7: $81
	nop                                              ; $6fe8: $00
	nop                                              ; $6fe9: $00
	jr   nz, @-$79                                   ; $6fea: $20 $85

	ld   h, b                                        ; $6fec: $60
	ld   [bc], a                                     ; $6fed: $02
	ld   [hl], b                                     ; $6fee: $70
	nop                                              ; $6fef: $00
	ldh  a, [$89]                                    ; $6ff0: $f0 $89
	nop                                              ; $6ff2: $00
	add  b                                           ; $6ff3: $80
	jr   nz, jr_02c_6f86                             ; $6ff4: $20 $90

	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	ld   a, b                                        ; $6ff8: $78
	add  c                                           ; $6ff9: $81
	nop                                              ; $6ffa: $00
	ld   c, $50                                      ; $6ffb: $0e $50
	db   $10                                         ; $6ffd: $10
	inc  l                                           ; $6ffe: $2c
	ld   [$0012], sp                                 ; $6fff: $08 $12 $00
	add  hl, bc                                      ; $7002: $09
	nop                                              ; $7003: $00
	ld   bc, $0600                                   ; $7004: $01 $00 $06
	nop                                              ; $7007: $00
	db   $fc                                         ; $7008: $fc
	ret  c                                           ; $7009: $d8

	ld   a, [de]                                     ; $700a: $1a
	add  c                                           ; $700b: $81
	inc  e                                           ; $700c: $1c
	nop                                              ; $700d: $00
	dec  a                                           ; $700e: $3d
	add  h                                           ; $700f: $84
	ld   c, $05                                      ; $7010: $0e $05
	nop                                              ; $7012: $00
	dec  d                                           ; $7013: $15
	inc  b                                           ; $7014: $04
	ldh  a, [c]                                      ; $7015: $f2
	nop                                              ; $7016: $00
	inc  b                                           ; $7017: $04
	add  c                                           ; $7018: $81
	nop                                              ; $7019: $00
	ld   a, [bc]                                     ; $701a: $0a
	add  h                                           ; $701b: $84
	nop                                              ; $701c: $00
	inc  bc                                          ; $701d: $03
	nop                                              ; $701e: $00
	ld   b, b                                        ; $701f: $40
	nop                                              ; $7020: $00
	ld   h, c                                        ; $7021: $61
	inc  e                                           ; $7022: $1c
	cp   h                                           ; $7023: $bc
	nop                                              ; $7024: $00
	cp   $93                                         ; $7025: $fe $93
	nop                                              ; $7027: $00
	inc  de                                          ; $7028: $13
	rlca                                             ; $7029: $07
	nop                                              ; $702a: $00
	ret  c                                           ; $702b: $d8

jr_02c_702c:
	nop                                              ; $702c: $00
	dec  sp                                          ; $702d: $3b
	jr   @+$26                                       ; $702e: $18 $24

	jr   nz, jr_02c_6fb6                             ; $7030: $20 $84

	nop                                              ; $7032: $00
	ld   a, h                                        ; $7033: $7c
	nop                                              ; $7034: $00
	ldh  a, [rP1]                                    ; $7035: $f0 $00
	ld   [$0400], sp                                 ; $7037: $08 $00 $04
	nop                                              ; $703a: $00
	ld   a, [bc]                                     ; $703b: $0a
	ld   [$3080], sp                                 ; $703c: $08 $80 $30
	nop                                              ; $703f: $00
	ld   bc, $0082                                   ; $7040: $01 $82 $00
	add  c                                           ; $7043: $81
	add  b                                           ; $7044: $80
	nop                                              ; $7045: $00
	add  c                                           ; $7046: $81
	add  b                                           ; $7047: $80
	add  b                                           ; $7048: $80
	ld   bc, $a2a0                                   ; $7049: $01 $a0 $a2
	add  b                                           ; $704c: $80
	ldh  [rSB], a                                    ; $704d: $e0 $01
	ret  nz                                          ; $704f: $c0

	call nz, $c080                                   ; $7050: $c4 $80 $c0
	ld   bc, $f800                                   ; $7053: $01 $00 $f8
	adc  a                                           ; $7056: $8f
	nop                                              ; $7057: $00
	inc  bc                                          ; $7058: $03
	inc  c                                           ; $7059: $0c
	nop                                              ; $705a: $00
	ld   [hl], a                                     ; $705b: $77
	inc  b                                           ; $705c: $04
	add  b                                           ; $705d: $80
	ld   bc, $7c02                                   ; $705e: $01 $02 $7c
	nop                                              ; $7061: $00
	inc  bc                                          ; $7062: $03
	add  c                                           ; $7063: $81
	nop                                              ; $7064: $00
	ld   [bc], a                                     ; $7065: $02
	ld   e, $00                                      ; $7066: $1e $00
	ld   e, $93                                      ; $7068: $1e $93
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00

jr_02c_706c:
	ldh  [$81], a                                    ; $706c: $e0 $81
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
	ldh  [$85], a                                    ; $7070: $e0 $85
	nop                                              ; $7072: $00
	rlca                                             ; $7073: $07
	ldh  a, [rP1]                                    ; $7074: $f0 $00
	ld   [$0400], sp                                 ; $7076: $08 $00 $04
	nop                                              ; $7079: $00
	ld   a, [bc]                                     ; $707a: $0a
	ld   [$3080], sp                                 ; $707b: $08 $80 $30
	nop                                              ; $707e: $00
	ld   bc, $0082                                   ; $707f: $01 $82 $00
	add  c                                           ; $7082: $81
	add  b                                           ; $7083: $80
	nop                                              ; $7084: $00
	add  c                                           ; $7085: $81
	add  b                                           ; $7086: $80
	add  b                                           ; $7087: $80
	ld   bc, $a2a0                                   ; $7088: $01 $a0 $a2
	add  b                                           ; $708b: $80
	ldh  [rSB], a                                    ; $708c: $e0 $01
	ret  nz                                          ; $708e: $c0

	call nz, $c080                                   ; $708f: $c4 $80 $c0
	ld   bc, $f800                                   ; $7092: $01 $00 $f8
	sbc  c                                           ; $7095: $99
	nop                                              ; $7096: $00
	ld   bc, $017e                                   ; $7097: $01 $7e $01
	add  b                                           ; $709a: $80
	nop                                              ; $709b: $00
	nop                                              ; $709c: $00
	ld   a, a                                        ; $709d: $7f
	sbc  c                                           ; $709e: $99
	nop                                              ; $709f: $00
	ld   bc, $e010                                   ; $70a0: $01 $10 $e0
	add  b                                           ; $70a3: $80
	nop                                              ; $70a4: $00
	ld   c, $f0                                      ; $70a5: $0e $f0
	nop                                              ; $70a7: $00
	rrca                                             ; $70a8: $0f
	nop                                              ; $70a9: $00
	ld   [$1800], sp                                 ; $70aa: $08 $00 $18
	nop                                              ; $70ad: $00
	jr   z, jr_02c_70b8                              ; $70ae: $28 $08

	ld   b, a                                        ; $70b0: $47
	rlca                                             ; $70b1: $07
	ld   b, b                                        ; $70b2: $40
	nop                                              ; $70b3: $00
	ld   b, b                                        ; $70b4: $40
	add  d                                           ; $70b5: $82
	ld   [bc], a                                     ; $70b6: $02
	add  b                                           ; $70b7: $80

jr_02c_70b8:
	ld   [de], a                                     ; $70b8: $12
	ld   bc, $5010                                   ; $70b9: $01 $10 $50
	add  b                                           ; $70bc: $80
	rla                                              ; $70bd: $17
	add  b                                           ; $70be: $80
	dec  e                                           ; $70bf: $1d
	ld   bc, $3313                                   ; $70c0: $01 $13 $33
	add  b                                           ; $70c3: $80
	rrca                                             ; $70c4: $0f
	ld   bc, $1906                                   ; $70c5: $01 $06 $19
	add  c                                           ; $70c8: $81
	nop                                              ; $70c9: $00
	rlca                                             ; $70ca: $07
	ldh  a, [rP1]                                    ; $70cb: $f0 $00
	ld   [$0400], sp                                 ; $70cd: $08 $00 $04
	nop                                              ; $70d0: $00
	ld   a, [bc]                                     ; $70d1: $0a
	ld   [$3080], sp                                 ; $70d2: $08 $80 $30
	nop                                              ; $70d5: $00
	ld   bc, $0082                                   ; $70d6: $01 $82 $00
	add  c                                           ; $70d9: $81
	add  b                                           ; $70da: $80
	nop                                              ; $70db: $00
	add  c                                           ; $70dc: $81
	add  b                                           ; $70dd: $80
	add  b                                           ; $70de: $80
	ld   bc, $a2a0                                   ; $70df: $01 $a0 $a2

jr_02c_70e2:
	add  b                                           ; $70e2: $80
	ldh  [$03], a                                    ; $70e3: $e0 $03
	ret  nz                                          ; $70e5: $c0

	call nz, $07c0                                   ; $70e6: $c4 $c0 $07
	add  b                                           ; $70e9: $80
	jr   jr_02c_706c                                 ; $70ea: $18 $80

	inc  e                                           ; $70ec: $1c
	rlca                                             ; $70ed: $07
	ld   e, $3e                                      ; $70ee: $1e $3e
	rrca                                             ; $70f0: $0f
	rra                                              ; $70f1: $1f
	rlca                                             ; $70f2: $07
	rrca                                             ; $70f3: $0f
	nop                                              ; $70f4: $00
	inc  b                                           ; $70f5: $04
	add  b                                           ; $70f6: $80
	inc  bc                                          ; $70f7: $03
	inc  de                                          ; $70f8: $13
	nop                                              ; $70f9: $00
	inc  c                                           ; $70fa: $0c
	nop                                              ; $70fb: $00
	stop                                             ; $70fc: $10 $00
	jr   nz, jr_02c_7100                             ; $70fe: $20 $00

jr_02c_7100:
	ld   bc, $0200                                   ; $7100: $01 $00 $02
	nop                                              ; $7103: $00
	ld   b, b                                        ; $7104: $40
	nop                                              ; $7105: $00
	ret  nz                                          ; $7106: $c0

	jr   c, @+$7d                                    ; $7107: $38 $7b

	nop                                              ; $7109: $00
	inc  bc                                          ; $710a: $03
	jr   @-$24                                       ; $710b: $18 $da

	add  c                                           ; $710d: $81
	inc  e                                           ; $710e: $1c
	nop                                              ; $710f: $00
	dec  a                                           ; $7110: $3d
	add  h                                           ; $7111: $84
	ld   c, $05                                      ; $7112: $0e $05
	nop                                              ; $7114: $00
	dec  d                                           ; $7115: $15
	inc  b                                           ; $7116: $04
	ldh  a, [c]                                      ; $7117: $f2
	nop                                              ; $7118: $00
	inc  b                                           ; $7119: $04
	add  c                                           ; $711a: $81
	nop                                              ; $711b: $00
	nop                                              ; $711c: $00
	add  h                                           ; $711d: $84
	add  c                                           ; $711e: $81
	nop                                              ; $711f: $00
	ld   b, $42                                      ; $7120: $06 $42
	nop                                              ; $7122: $00
	ld   h, b                                        ; $7123: $60
	inc  e                                           ; $7124: $1c
	cp   h                                           ; $7125: $bc
	nop                                              ; $7126: $00
	cp   $85                                         ; $7127: $fe $85
	nop                                              ; $7129: $00
	ld   bc, $0010                                   ; $712a: $01 $10 $00
	add  b                                           ; $712d: $80
	ld   [$0c04], sp                                 ; $712e: $08 $04 $0c
	ld   [$0018], sp                                 ; $7131: $08 $18 $00
	inc  c                                           ; $7134: $0c
	adc  c                                           ; $7135: $89
	nop                                              ; $7136: $00
	add  b                                           ; $7137: $80
	ld   b, b                                        ; $7138: $40
	add  d                                           ; $7139: $82
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	ret  nz                                          ; $713c: $c0

	add  c                                           ; $713d: $81
	nop                                              ; $713e: $00
	nop                                              ; $713f: $00
	jr   nz, @-$79                                   ; $7140: $20 $85

	ld   h, b                                        ; $7142: $60
	ld   [bc], a                                     ; $7143: $02
	ld   [hl], b                                     ; $7144: $70
	nop                                              ; $7145: $00
	ldh  a, [$89]                                    ; $7146: $f0 $89
	nop                                              ; $7148: $00
	add  b                                           ; $7149: $80
	jr   nz, jr_02c_70e2                             ; $714a: $20 $96

	nop                                              ; $714c: $00
	nop                                              ; $714d: $00
	ld   [bc], a                                     ; $714e: $02
	add  e                                           ; $714f: $83
	nop                                              ; $7150: $00
	nop                                              ; $7151: $00
	ld   [bc], a                                     ; $7152: $02
	sub  l                                           ; $7153: $95
	nop                                              ; $7154: $00
	nop                                              ; $7155: $00
	ld   [bc], a                                     ; $7156: $02
	add  c                                           ; $7157: $81
	nop                                              ; $7158: $00
	ld   [bc], a                                     ; $7159: $02
	rlca                                             ; $715a: $07
	ld   [bc], a                                     ; $715b: $02
	dec  b                                           ; $715c: $05
	add  c                                           ; $715d: $81
	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	ld   [bc], a                                     ; $7160: $02
	add  e                                           ; $7161: $83
	nop                                              ; $7162: $00
	ld   a, [bc]                                     ; $7163: $0a
	ld   b, b                                        ; $7164: $40
	nop                                              ; $7165: $00
	and  b                                           ; $7166: $a0
	nop                                              ; $7167: $00
	jr   jr_02c_716a                                 ; $7168: $18 $00

jr_02c_716a:
	adc  $08                                         ; $716a: $ce $08
	inc  sp                                          ; $716c: $33
	ld   [bc], a                                     ; $716d: $02
	ld   [$0080], sp                                 ; $716e: $08 $80 $00
	add  b                                           ; $7171: $80
	ld   [bc], a                                     ; $7172: $02
	dec  b                                           ; $7173: $05
	ld   bc, $0005                                   ; $7174: $01 $05 $00
	ld   [bc], a                                     ; $7177: $02
	nop                                              ; $7178: $00
	ld   bc, $0085                                   ; $7179: $01 $85 $00
	inc  c                                           ; $717c: $0c
	rrca                                             ; $717d: $0f
	nop                                              ; $717e: $00
	ld   [$1800], sp                                 ; $717f: $08 $00 $18
	nop                                              ; $7182: $00
	jr   z, jr_02c_718d                              ; $7183: $28 $08

	ld   b, a                                        ; $7185: $47
	rlca                                             ; $7186: $07
	ld   b, b                                        ; $7187: $40
	nop                                              ; $7188: $00
	ld   b, b                                        ; $7189: $40
	add  d                                           ; $718a: $82
	ld   [bc], a                                     ; $718b: $02
	add  b                                           ; $718c: $80

jr_02c_718d:
	ld   [de], a                                     ; $718d: $12
	inc  b                                           ; $718e: $04
	db   $10                                         ; $718f: $10
	ld   d, d                                        ; $7190: $52
	ld   [de], a                                     ; $7191: $12
	ld   a, [de]                                     ; $7192: $1a
	dec  de                                          ; $7193: $1b
	add  b                                           ; $7194: $80
	inc  de                                          ; $7195: $13
	ld   [$0f31], sp                                 ; $7196: $08 $31 $0f
	rra                                              ; $7199: $1f
	rlca                                             ; $719a: $07
	or   a                                           ; $719b: $b7
	nop                                              ; $719c: $00
	ld   b, a                                        ; $719d: $47
	jr   z, jr_02c_71c0                              ; $719e: $28 $20

	add  c                                           ; $71a0: $81
	ld   [hl], b                                     ; $71a1: $70
	nop                                              ; $71a2: $00
	ld   h, b                                        ; $71a3: $60
	add  b                                           ; $71a4: $80
	ldh  [rSB], a                                    ; $71a5: $e0 $01
	nop                                              ; $71a7: $00
	ldh  [c], a                                      ; $71a8: $e2
	add  d                                           ; $71a9: $82
	ld   [bc], a                                     ; $71aa: $02
	inc  de                                          ; $71ab: $13
	nop                                              ; $71ac: $00
	dec  c                                           ; $71ad: $0d
	nop                                              ; $71ae: $00
	stop                                             ; $71af: $10 $00
	jr   nz, jr_02c_71b3                             ; $71b1: $20 $00

jr_02c_71b3:
	ld   bc, $0200                                   ; $71b3: $01 $00 $02
	nop                                              ; $71b6: $00
	ld   b, b                                        ; $71b7: $40
	nop                                              ; $71b8: $00
	ret  nz                                          ; $71b9: $c0

	jr   c, @+$7d                                    ; $71ba: $38 $7b

	nop                                              ; $71bc: $00
	ld   hl, sp+$00                                  ; $71bd: $f8 $00
	ld   a, [bc]                                     ; $71bf: $0a

jr_02c_71c0:
	add  c                                           ; $71c0: $81
	ld   [bc], a                                     ; $71c1: $02
	nop                                              ; $71c2: $00
	ld   [de], a                                     ; $71c3: $12
	add  d                                           ; $71c4: $82
	ld   a, [bc]                                     ; $71c5: $0a
	add  c                                           ; $71c6: $81
	ld   [$1802], sp                                 ; $71c7: $08 $02 $18
	nop                                              ; $71ca: $00

jr_02c_71cb:
	dec  c                                           ; $71cb: $0d
	adc  c                                           ; $71cc: $89
	nop                                              ; $71cd: $00
	add  b                                           ; $71ce: $80

jr_02c_71cf:
	ld   b, b                                        ; $71cf: $40
	add  b                                           ; $71d0: $80
	nop                                              ; $71d1: $00
	inc  c                                           ; $71d2: $0c
	inc  c                                           ; $71d3: $0c
	nop                                              ; $71d4: $00
	stop                                             ; $71d5: $10 $00
	ld   [de], a                                     ; $71d7: $12
	nop                                              ; $71d8: $00
	add  hl, bc                                      ; $71d9: $09
	nop                                              ; $71da: $00
	dec  b                                           ; $71db: $05
	ld   bc, $0002                                   ; $71dc: $01 $02 $00

jr_02c_71df:
	ld   [bc], a                                     ; $71df: $02
	add  b                                           ; $71e0: $80
	nop                                              ; $71e1: $00
	add  b                                           ; $71e2: $80
	ld   bc, $0003                                   ; $71e3: $01 $03 $00
	ld   [bc], a                                     ; $71e6: $02
	nop                                              ; $71e7: $00
	ld   bc, $0089                                   ; $71e8: $01 $89 $00

jr_02c_71eb:
	inc  c                                           ; $71eb: $0c
	rrca                                             ; $71ec: $0f
	nop                                              ; $71ed: $00
	ld   [$1800], sp                                 ; $71ee: $08 $00 $18
	nop                                              ; $71f1: $00
	jr   z, jr_02c_71fc                              ; $71f2: $28 $08

	ld   b, a                                        ; $71f4: $47
	rlca                                             ; $71f5: $07
	ld   b, b                                        ; $71f6: $40
	nop                                              ; $71f7: $00
	ld   b, b                                        ; $71f8: $40
	add  d                                           ; $71f9: $82
	ld   [bc], a                                     ; $71fa: $02
	add  b                                           ; $71fb: $80

jr_02c_71fc:
	ld   [de], a                                     ; $71fc: $12
	rrca                                             ; $71fd: $0f
	db   $10                                         ; $71fe: $10
	ld   d, d                                        ; $71ff: $52
	ld   [de], a                                     ; $7200: $12

jr_02c_7201:
	ld   a, [de]                                     ; $7201: $1a
	dec  de                                          ; $7202: $1b
	sub  e                                           ; $7203: $93
	inc  de                                          ; $7204: $13
	pop  af                                          ; $7205: $f1
	adc  a                                           ; $7206: $8f
	rra                                              ; $7207: $1f
	rlca                                             ; $7208: $07
	scf                                              ; $7209: $37
	nop                                              ; $720a: $00
	adc  a                                           ; $720b: $8f
	sub  b                                           ; $720c: $90
	db   $10                                         ; $720d: $10
	add  b                                           ; $720e: $80
	jr   nc, jr_02c_7216                             ; $720f: $30 $05

	ld   [hl], b                                     ; $7211: $70
	ldh  [rAUD4LEN], a                               ; $7212: $e0 $20
	ld   h, b                                        ; $7214: $60
	nop                                              ; $7215: $00

jr_02c_7216:
	ld   [hl+], a                                    ; $7216: $22
	add  d                                           ; $7217: $82
	ld   [bc], a                                     ; $7218: $02
	inc  de                                          ; $7219: $13
	nop                                              ; $721a: $00
	dec  c                                           ; $721b: $0d
	nop                                              ; $721c: $00
	stop                                             ; $721d: $10 $00
	jr   nz, jr_02c_7221                             ; $721f: $20 $00

jr_02c_7221:
	ld   bc, $0200                                   ; $7221: $01 $00 $02
	nop                                              ; $7224: $00
	ld   b, b                                        ; $7225: $40
	nop                                              ; $7226: $00
	ret  nz                                          ; $7227: $c0

	jr   c, jr_02c_72a5                              ; $7228: $38 $7b

	nop                                              ; $722a: $00
	ld   hl, sp+$00                                  ; $722b: $f8 $00
	ld   a, [bc]                                     ; $722d: $0a
	add  c                                           ; $722e: $81
	ld   [bc], a                                     ; $722f: $02
	nop                                              ; $7230: $00
	ld   [de], a                                     ; $7231: $12
	add  d                                           ; $7232: $82
	ld   a, [bc]                                     ; $7233: $0a
	add  c                                           ; $7234: $81
	ld   [$1802], sp                                 ; $7235: $08 $02 $18
	nop                                              ; $7238: $00
	dec  c                                           ; $7239: $0d
	adc  c                                           ; $723a: $89
	nop                                              ; $723b: $00
	add  b                                           ; $723c: $80
	ld   b, b                                        ; $723d: $40
	sub  [hl]                                        ; $723e: $96
	nop                                              ; $723f: $00
	add  b                                           ; $7240: $80
	ld   [$0c80], sp                                 ; $7241: $08 $80 $0c
	add  d                                           ; $7244: $82
	inc  b                                           ; $7245: $04
	adc  d                                           ; $7246: $8a
	nop                                              ; $7247: $00
	add  d                                           ; $7248: $82
	jr   nc, jr_02c_71cb                             ; $7249: $30 $80

	jr   jr_02c_71cf                                 ; $724b: $18 $82

	inc  c                                           ; $724d: $0c
	add  d                                           ; $724e: $82
	ld   [$0480], sp                                 ; $724f: $08 $80 $04
	adc  b                                           ; $7252: $88
	nop                                              ; $7253: $00
	add  b                                           ; $7254: $80
	ret  nz                                          ; $7255: $c0

	add  b                                           ; $7256: $80
	ld   a, b                                        ; $7257: $78
	add  b                                           ; $7258: $80
	ld   [$1080], sp                                 ; $7259: $08 $80 $10
	add  b                                           ; $725c: $80
	jr   nc, jr_02c_71df                             ; $725d: $30 $80

	ld   [$0482], sp                                 ; $725f: $08 $82 $04
	adc  d                                           ; $7262: $8a
	nop                                              ; $7263: $00
	add  b                                           ; $7264: $80
	db   $10                                         ; $7265: $10
	add  b                                           ; $7266: $80
	jr   nz, jr_02c_71eb                             ; $7267: $20 $82

	ld   b, b                                        ; $7269: $40
	add  b                                           ; $726a: $80
	jr   nz, jr_02c_7201                             ; $726b: $20 $94

	nop                                              ; $726d: $00
	nop                                              ; $726e: $00
	ld   [bc], a                                     ; $726f: $02
	sbc  l                                           ; $7270: $9d
	nop                                              ; $7271: $00
	nop                                              ; $7272: $00
	inc  bc                                          ; $7273: $03
	sub  e                                           ; $7274: $93
	nop                                              ; $7275: $00
	ld   a, [bc]                                     ; $7276: $0a
	jr   nc, jr_02c_7279                             ; $7277: $30 $00

jr_02c_7279:
	ld   c, b                                        ; $7279: $48
	jr   nc, jr_02c_72b0                             ; $727a: $30 $34

	jr   c, @-$46                                    ; $727c: $38 $b8

	ld   a, b                                        ; $727e: $78
	ld   a, d                                        ; $727f: $7a
	ld   a, b                                        ; $7280: $78
	add  l                                           ; $7281: $85
	add  l                                           ; $7282: $85
	nop                                              ; $7283: $00
	nop                                              ; $7284: $00
	ld   bc, $0080                                   ; $7285: $01 $80 $00
	sub  e                                           ; $7288: $93
	ld   bc, $fd00                                   ; $7289: $01 $00 $fd
	add  b                                           ; $728c: $80
	ld   a, d                                        ; $728d: $7a
	add  h                                           ; $728e: $84
	ld   a, [hl]                                     ; $728f: $7e
	add  b                                           ; $7290: $80
	cp   $04                                         ; $7291: $fe $04
	and  $fe                                         ; $7293: $e6 $fe
	jp   c, $bcfe                                    ; $7295: $da $fe $bc

	add  b                                           ; $7298: $80
	or   h                                           ; $7299: $b4
	ld   bc, $68e8                                   ; $729a: $01 $e8 $68
	add  b                                           ; $729d: $80
	ld   l, d                                        ; $729e: $6a
	add  b                                           ; $729f: $80
	ld   e, h                                        ; $72a0: $5c
	add  d                                           ; $72a1: $82
	ld   d, h                                        ; $72a2: $54
	add  b                                           ; $72a3: $80
	ld   e, h                                        ; $72a4: $5c

jr_02c_72a5:
	add  b                                           ; $72a5: $80
	ld   l, d                                        ; $72a6: $6a
	nop                                              ; $72a7: $00
	db   $fc                                         ; $72a8: $fc
	sbc  h                                           ; $72a9: $9c
	ld   bc, $0004                                   ; $72aa: $01 $04 $00
	sub  h                                           ; $72ad: $94
	ld   l, b                                        ; $72ae: $68
	inc  [hl]                                        ; $72af: $34

jr_02c_72b0:
	or   h                                           ; $72b0: $b4
	add  b                                           ; $72b1: $80
	cp   h                                           ; $72b2: $bc
	ld   [bc], a                                     ; $72b3: $02
	sbc  b                                           ; $72b4: $98
	jp   c, $80c2                                    ; $72b5: $da $c2 $80

	and  $83                                         ; $72b8: $e6 $83
	cp   $10                                         ; $72ba: $fe $10
	rst  $38                                         ; $72bc: $ff
	db   $fc                                         ; $72bd: $fc
	cp   $f8                                         ; $72be: $fe $f8
	db   $fc                                         ; $72c0: $fc
	ldh  a, [$f8]                                    ; $72c1: $f0 $f8
	ldh  [$f0], a                                    ; $72c3: $e0 $f0
	ret  nz                                          ; $72c5: $c0

	ldh  [$80], a                                    ; $72c6: $e0 $80
	ret  nz                                          ; $72c8: $c0

	nop                                              ; $72c9: $00
	add  b                                           ; $72ca: $80
	nop                                              ; $72cb: $00
	inc  b                                           ; $72cc: $04
	add  l                                           ; $72cd: $85
	nop                                              ; $72ce: $00
	sub  d                                           ; $72cf: $92
	ld   [bc], a                                     ; $72d0: $02
	ld   bc, $0203                                   ; $72d1: $01 $03 $02
	add  b                                           ; $72d4: $80
	nop                                              ; $72d5: $00
	nop                                              ; $72d6: $00
	rlca                                             ; $72d7: $07
	add  c                                           ; $72d8: $81
	nop                                              ; $72d9: $00
	adc  h                                           ; $72da: $8c
	ld   bc, $0082                                   ; $72db: $01 $82 $00
	inc  b                                           ; $72de: $04
	ld   h, b                                        ; $72df: $60
	nop                                              ; $72e0: $00
	sub  b                                           ; $72e1: $90
	ld   h, b                                        ; $72e2: $60
	ld   l, b                                        ; $72e3: $68
	add  b                                           ; $72e4: $80
	ld   [hl], b                                     ; $72e5: $70
	inc  bc                                          ; $72e6: $03
	ldh  a, [$f4]                                    ; $72e7: $f0 $f4

jr_02c_72e9:
	ld   [hl], b                                     ; $72e9: $70
	adc  e                                           ; $72ea: $8b
	add  l                                           ; $72eb: $85
	nop                                              ; $72ec: $00
	nop                                              ; $72ed: $00
	ld   [bc], a                                     ; $72ee: $02
	add  b                                           ; $72ef: $80
	ld   bc, $030d                                   ; $72f0: $01 $0d $03
	inc  hl                                          ; $72f3: $23
	inc  bc                                          ; $72f4: $03
	or   e                                           ; $72f5: $b3
	inc  bc                                          ; $72f6: $03
	sub  a                                           ; $72f7: $97
	ld   bc, $0061                                   ; $72f8: $01 $61 $00
	ld   h, h                                        ; $72fb: $64
	ld   [bc], a                                     ; $72fc: $02
	ld   [hl+], a                                    ; $72fd: $22
	ld   [bc], a                                     ; $72fe: $02
	ld   [hl+], a                                    ; $72ff: $22
	add  l                                           ; $7300: $85
	ld   [bc], a                                     ; $7301: $02
	nop                                              ; $7302: $00
	ei                                               ; $7303: $fb
	add  b                                           ; $7304: $80
	ld   [hl], h                                     ; $7305: $74
	nop                                              ; $7306: $00
	ld   a, h                                        ; $7307: $7c
	add  c                                           ; $7308: $81
	ld   a, l                                        ; $7309: $7d
	add  d                                           ; $730a: $82
	db   $fd                                         ; $730b: $fd
	inc  b                                           ; $730c: $04
	call $b5fd                                       ; $730d: $cd $fd $b5
	db   $fd                                         ; $7310: $fd
	ld   a, c                                        ; $7311: $79
	add  b                                           ; $7312: $80
	ld   l, c                                        ; $7313: $69
	add  b                                           ; $7314: $80
	pop  de                                          ; $7315: $d1
	add  b                                           ; $7316: $80
	push de                                          ; $7317: $d5
	add  b                                           ; $7318: $80
	cp   c                                           ; $7319: $b9
	add  d                                           ; $731a: $82
	xor  c                                           ; $731b: $a9
	add  b                                           ; $731c: $80
	cp   c                                           ; $731d: $b9
	add  b                                           ; $731e: $80
	push de                                          ; $731f: $d5
	nop                                              ; $7320: $00
	ld   sp, hl                                      ; $7321: $f9
	add  b                                           ; $7322: $80
	ld   [bc], a                                     ; $7323: $02
	sub  h                                           ; $7324: $94
	ld   bc, $0382                                   ; $7325: $01 $82 $03
	inc  b                                           ; $7328: $04
	ld   [bc], a                                     ; $7329: $02
	inc  bc                                          ; $732a: $03
	nop                                              ; $732b: $00
	add  hl, hl                                      ; $732c: $29
	pop  de                                          ; $732d: $d1
	add  b                                           ; $732e: $80
	ld   l, c                                        ; $732f: $69
	add  b                                           ; $7330: $80
	ld   a, c                                        ; $7331: $79
	ld   [bc], a                                     ; $7332: $02
	jr   nc, jr_02c_72e9                             ; $7333: $30 $b4

	add  h                                           ; $7335: $84
	add  b                                           ; $7336: $80
	call z, $fc83                                    ; $7337: $cc $83 $fc
	inc  c                                           ; $733a: $0c
	cp   $f8                                         ; $733b: $fe $f8
	db   $fc                                         ; $733d: $fc
	ldh  a, [$f8]                                    ; $733e: $f0 $f8
	ldh  [$f0], a                                    ; $7340: $e0 $f0
	ret  nz                                          ; $7342: $c0

	ldh  [$80], a                                    ; $7343: $e0 $80
	ret  nz                                          ; $7345: $c0

	nop                                              ; $7346: $00
	add  b                                           ; $7347: $80
	add  c                                           ; $7348: $81
	nop                                              ; $7349: $00
	nop                                              ; $734a: $00
	ld   [bc], a                                     ; $734b: $02
	add  l                                           ; $734c: $85
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	ld   bc, $0080                                   ; $734f: $01 $80 $00
	add  e                                           ; $7352: $83
	ld   bc, $0300                                   ; $7353: $01 $00 $03
	add  c                                           ; $7356: $81
	nop                                              ; $7357: $00
	nop                                              ; $7358: $00
	ld   [bc], a                                     ; $7359: $02
	adc  c                                           ; $735a: $89
	ld   bc, $0700                                   ; $735b: $01 $00 $07
	add  l                                           ; $735e: $85
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	ld   [bc], a                                     ; $7361: $02
	add  b                                           ; $7362: $80
	ld   bc, $0383                                   ; $7363: $01 $83 $03
	nop                                              ; $7366: $00
	rlca                                             ; $7367: $07
	add  b                                           ; $7368: $80
	ld   bc, $0001                                   ; $7369: $01 $01 $00
	inc  b                                           ; $736c: $04
	adc  h                                           ; $736d: $8c
	ld   [bc], a                                     ; $736e: $02
	add  l                                           ; $736f: $85
	ld   bc, $110c                                   ; $7370: $01 $0c $11
	ld   bc, $0159                                   ; $7373: $01 $59 $01
	ld   c, c                                        ; $7376: $49
	ld   bc, $0131                                   ; $7377: $01 $31 $01
	ld   sp, $1101                                   ; $737a: $31 $01 $11
	ld   bc, $8011                                   ; $737d: $01 $11 $80
	ld   bc, $0382                                   ; $7380: $01 $82 $03
	inc  b                                           ; $7383: $04
	ld   [bc], a                                     ; $7384: $02
	inc  bc                                          ; $7385: $03
	nop                                              ; $7386: $00
	add  hl, hl                                      ; $7387: $29
	pop  de                                          ; $7388: $d1
	add  b                                           ; $7389: $80
	ld   l, c                                        ; $738a: $69
	add  b                                           ; $738b: $80
	ld   a, c                                        ; $738c: $79
	ld   [bc], a                                     ; $738d: $02
	jr   nc, @-$4a                                   ; $738e: $30 $b4

	add  h                                           ; $7390: $84
	add  b                                           ; $7391: $80
	call z, $bc01                                    ; $7392: $cc $01 $bc
	db   $fc                                         ; $7395: $fc
	add  c                                           ; $7396: $81
	inc  e                                           ; $7397: $1c
	inc  c                                           ; $7398: $0c
	ld   e, [hl]                                     ; $7399: $5e
	cp   b                                           ; $739a: $b8
	cp   h                                           ; $739b: $bc
	ldh  a, [$f8]                                    ; $739c: $f0 $f8
	ldh  [$f0], a                                    ; $739e: $e0 $f0
	ret  nz                                          ; $73a0: $c0

	ldh  [$80], a                                    ; $73a1: $e0 $80
	ret  nz                                          ; $73a3: $c0

	nop                                              ; $73a4: $00
	add  b                                           ; $73a5: $80
	add  c                                           ; $73a6: $81
	nop                                              ; $73a7: $00
	inc  bc                                          ; $73a8: $03
	sub  a                                           ; $73a9: $97
	ld   l, b                                        ; $73aa: $68
	inc  [hl]                                        ; $73ab: $34
	or   h                                           ; $73ac: $b4
	add  b                                           ; $73ad: $80
	cp   h                                           ; $73ae: $bc
	ld   [bc], a                                     ; $73af: $02
	sbc  b                                           ; $73b0: $98
	jp   c, $80c2                                    ; $73b1: $da $c2 $80

	and  $01                                         ; $73b4: $e6 $01
	sbc  $fe                                         ; $73b6: $de $fe
	add  c                                           ; $73b8: $81
	adc  [hl]                                        ; $73b9: $8e
	db   $10                                         ; $73ba: $10
	xor  a                                           ; $73bb: $af
	call c, $f8de                                    ; $73bc: $dc $de $f8
	db   $fc                                         ; $73bf: $fc
	ldh  a, [$f8]                                    ; $73c0: $f0 $f8
	ldh  [$f0], a                                    ; $73c2: $e0 $f0
	ret  nz                                          ; $73c4: $c0

	ldh  [$80], a                                    ; $73c5: $e0 $80
	ret  nz                                          ; $73c7: $c0

	nop                                              ; $73c8: $00
	add  b                                           ; $73c9: $80
	nop                                              ; $73ca: $00
	rlca                                             ; $73cb: $07
	add  l                                           ; $73cc: $85
	ei                                               ; $73cd: $fb
	add  d                                           ; $73ce: $82
	ld   a, e                                        ; $73cf: $7b
	nop                                              ; $73d0: $00
	cp   e                                           ; $73d1: $bb
	add  c                                           ; $73d2: $81
	dec  sp                                          ; $73d3: $3b
	nop                                              ; $73d4: $00
	add  a                                           ; $73d5: $87
	add  a                                           ; $73d6: $87
	ld   sp, hl                                      ; $73d7: $f9
	nop                                              ; $73d8: $00
	rst  $38                                         ; $73d9: $ff
	add  e                                           ; $73da: $83
	db   $fc                                         ; $73db: $fc
	nop                                              ; $73dc: $00
	call c, $cc83                                    ; $73dd: $dc $83 $cc
	ld   a, [bc]                                     ; $73e0: $0a
	ret  z                                           ; $73e1: $c8

	call z, $9ca0                                    ; $73e2: $cc $a0 $9c
	sub  e                                           ; $73e5: $93
	sbc  c                                           ; $73e6: $99
	ld   d, b                                        ; $73e7: $50
	add  hl, sp                                      ; $73e8: $39
	jr   nz, jr_02c_7424                             ; $73e9: $20 $39

	inc  de                                          ; $73eb: $13
	adc  l                                           ; $73ec: $8d
	cp   a                                           ; $73ed: $bf
	nop                                              ; $73ee: $00
	ld   hl, sp-$80                                  ; $73ef: $f8 $80
	ld   sp, hl                                      ; $73f1: $f9
	add  b                                           ; $73f2: $80
	ei                                               ; $73f3: $fb
	add  b                                           ; $73f4: $80
	ld   sp, hl                                      ; $73f5: $f9
	add  b                                           ; $73f6: $80
	ei                                               ; $73f7: $fb
	add  b                                           ; $73f8: $80
	ld   sp, hl                                      ; $73f9: $f9
	add  b                                           ; $73fa: $80
	ei                                               ; $73fb: $fb
	add  b                                           ; $73fc: $80
	ld   sp, hl                                      ; $73fd: $f9
	ld   bc, $03fb                                   ; $73fe: $01 $fb $03
	adc  l                                           ; $7401: $8d
	rst  $38                                         ; $7402: $ff
	add  c                                           ; $7403: $81
	nop                                              ; $7404: $00
	add  b                                           ; $7405: $80
	sbc  a                                           ; $7406: $9f
	add  b                                           ; $7407: $80
	ld   d, b                                        ; $7408: $50
	add  b                                           ; $7409: $80
	ld   b, b                                        ; $740a: $40
	nop                                              ; $740b: $00
	ccf                                              ; $740c: $3f
	add  b                                           ; $740d: $80
	jr   nc, jr_02c_7410                             ; $740e: $30 $00

jr_02c_7410:
	scf                                              ; $7410: $37
	add  b                                           ; $7411: $80
	jr   nc, jr_02c_7415                             ; $7412: $30 $01

	inc  [hl]                                        ; $7414: $34

jr_02c_7415:
	inc  a                                           ; $7415: $3c
	add  b                                           ; $7416: $80
	nop                                              ; $7417: $00
	add  b                                           ; $7418: $80
	cp   $82                                         ; $7419: $fe $82
	nop                                              ; $741b: $00
	nop                                              ; $741c: $00
	rst  $38                                         ; $741d: $ff
	add  b                                           ; $741e: $80
	nop                                              ; $741f: $00
	add  c                                           ; $7420: $81
	rst  $38                                         ; $7421: $ff
	ld   [bc], a                                     ; $7422: $02
	ccf                                              ; $7423: $3f

jr_02c_7424:
	add  hl, sp                                      ; $7424: $39
	ld   sp, hl                                      ; $7425: $f9
	add  b                                           ; $7426: $80
	ld   a, [$f980]                                  ; $7427: $fa $80 $f9
	dec  bc                                          ; $742a: $0b
	ld   b, b                                        ; $742b: $40
	ld   [$ff00], a                                  ; $742c: $ea $00 $ff
	nop                                              ; $742f: $00
	rst  $38                                         ; $7430: $ff
	nop                                              ; $7431: $00
	rst  $38                                         ; $7432: $ff
	nop                                              ; $7433: $00
	rst  $38                                         ; $7434: $ff
	ld   l, d                                        ; $7435: $6a
	rla                                              ; $7436: $17
	add  b                                           ; $7437: $80
	db   $10                                         ; $7438: $10
	ld   bc, $1f17                                   ; $7439: $01 $17 $1f
	add  b                                           ; $743c: $80
	sbc  a                                           ; $743d: $9f
	dec  bc                                          ; $743e: $0b
	ld   e, a                                        ; $743f: $5f
	ret  nz                                          ; $7440: $c0

	ld   b, b                                        ; $7441: $40
	xor  d                                           ; $7442: $aa
	ld   a, [bc]                                     ; $7443: $0a
	push af                                          ; $7444: $f5
	ld   bc, $abfe                                   ; $7445: $01 $fe $ab
	adc  $30                                         ; $7448: $ce $30
	nop                                              ; $744a: $00
	add  e                                           ; $744b: $83
	rst  $38                                         ; $744c: $ff
	ld   [$0a00], sp                                 ; $744d: $08 $00 $0a
	xor  d                                           ; $7450: $aa
	and  l                                           ; $7451: $a5
	ld   d, l                                        ; $7452: $55
	ld   d, b                                        ; $7453: $50
	xor  d                                           ; $7454: $aa
	ld   a, [hl+]                                    ; $7455: $2a
	ld   l, l                                        ; $7456: $6d
	add  b                                           ; $7457: $80
	ld   l, h                                        ; $7458: $6c
	nop                                              ; $7459: $00
	db   $ed                                         ; $745a: $ed
	add  d                                           ; $745b: $82
	rst  $28                                         ; $745c: $ef
	nop                                              ; $745d: $00
	nop                                              ; $745e: $00
	add  b                                           ; $745f: $80
	xor  d                                           ; $7460: $aa
	add  b                                           ; $7461: $80
	ld   d, l                                        ; $7462: $55
	add  b                                           ; $7463: $80
	xor  d                                           ; $7464: $aa
	nop                                              ; $7465: $00
	rst  $38                                         ; $7466: $ff
	cp   l                                           ; $7467: $bd
	nop                                              ; $7468: $00
	ld   [$9b27], sp                                 ; $7469: $08 $27 $9b
	xor  e                                           ; $746c: $ab
	set  3, e                                        ; $746d: $cb $db
	db   $e3                                         ; $746f: $e3
	db   $fc                                         ; $7470: $fc
	ldh  [rIE], a                                    ; $7471: $e0 $ff
	add  b                                           ; $7473: $80
	ld   hl, sp+$00                                  ; $7474: $f8 $00
	ei                                               ; $7476: $fb
	add  b                                           ; $7477: $80
	ld   a, [$fb0a]                                  ; $7478: $fa $0a $fb
	ld   a, [$fe03]                                  ; $747b: $fa $03 $fe
	db   $fd                                         ; $747e: $fd
	db   $fc                                         ; $747f: $fc
	ldh  a, [c]                                      ; $7480: $f2
	pop  af                                          ; $7481: $f1
	dec  c                                           ; $7482: $0d
	inc  bc                                          ; $7483: $03
	di                                               ; $7484: $f3
	add  b                                           ; $7485: $80
	rrca                                             ; $7486: $0f
	add  b                                           ; $7487: $80
	rst  $38                                         ; $7488: $ff
	add  c                                           ; $7489: $81
	ld   a, a                                        ; $748a: $7f
	db   $10                                         ; $748b: $10
	ld   [hl], l                                     ; $748c: $75
	ld   [hl], e                                     ; $748d: $73
	inc  c                                           ; $748e: $0c
	rlca                                             ; $748f: $07
	ld   a, b                                        ; $7490: $78
	adc  a                                           ; $7491: $8f
	sub  b                                           ; $7492: $90
	rst  $38                                         ; $7493: $ff
	ldh  [rIE], a                                    ; $7494: $e0 $ff
	ldh  [rIE], a                                    ; $7496: $e0 $ff
	ret  nz                                          ; $7498: $c0

	db   $fc                                         ; $7499: $fc
	add  d                                           ; $749a: $82
	db   $fc                                         ; $749b: $fc
	rla                                              ; $749c: $17
	adc  c                                           ; $749d: $89
	cp   a                                           ; $749e: $bf
	inc  b                                           ; $749f: $04
	or   a                                           ; $74a0: $b7
	and  a                                           ; $74a1: $a7
	or   a                                           ; $74a2: $b7
	and  a                                           ; $74a3: $a7
	ld   hl, sp-$80                                  ; $74a4: $f8 $80
	ld   sp, hl                                      ; $74a6: $f9
	add  b                                           ; $74a7: $80
	ld   a, [$f980]                                  ; $74a8: $fa $80 $f9
	add  b                                           ; $74ab: $80
	ld   a, [$f980]                                  ; $74ac: $fa $80 $f9
	add  b                                           ; $74af: $80
	ld   a, [$f980]                                  ; $74b0: $fa $80 $f9
	ld   bc, $fdfa                                   ; $74b3: $01 $fa $fd
	add  [hl]                                        ; $74b6: $86
	rst  $38                                         ; $74b7: $ff

jr_02c_74b8:
	add  b                                           ; $74b8: $80
	nop                                              ; $74b9: $00
	add  b                                           ; $74ba: $80
	sbc  a                                           ; $74bb: $9f
	add  b                                           ; $74bc: $80
	ld   d, b                                        ; $74bd: $50
	ld   [bc], a                                     ; $74be: $02
	ld   b, b                                        ; $74bf: $40
	ld   c, h                                        ; $74c0: $4c
	inc  sp                                          ; $74c1: $33
	add  b                                           ; $74c2: $80
	inc  [hl]                                        ; $74c3: $34
	add  d                                           ; $74c4: $82
	scf                                              ; $74c5: $37
	ld   b, $b7                                      ; $74c6: $06 $b7
	jr   nc, jr_02c_7502                             ; $74c8: $30 $38

	ccf                                              ; $74ca: $3f
	ret  nz                                          ; $74cb: $c0

	nop                                              ; $74cc: $00
	ld   a, a                                        ; $74cd: $7f
	add  b                                           ; $74ce: $80
	nop                                              ; $74cf: $00
	add  b                                           ; $74d0: $80
	rrca                                             ; $74d1: $0f
	dec  b                                           ; $74d2: $05
	jp   $3003                                       ; $74d3: $c3 $03 $30


	ret  nz                                          ; $74d6: $c0

	call z, $80fc                                    ; $74d7: $cc $fc $80
	nop                                              ; $74da: $00
	nop                                              ; $74db: $00
	rst  $38                                         ; $74dc: $ff
	add  b                                           ; $74dd: $80
	nop                                              ; $74de: $00
	inc  b                                           ; $74df: $04
	rst  $38                                         ; $74e0: $ff
	jr   nz, jr_02c_74b8                             ; $74e1: $20 $d5

	rst  $38                                         ; $74e3: $ff
	push af                                          ; $74e4: $f5
	add  b                                           ; $74e5: $80
	nop                                              ; $74e6: $00
	add  c                                           ; $74e7: $81
	rst  $38                                         ; $74e8: $ff
	add  b                                           ; $74e9: $80
	ld   a, a                                        ; $74ea: $7f
	add  b                                           ; $74eb: $80
	ccf                                              ; $74ec: $3f
	add  b                                           ; $74ed: $80
	sbc  a                                           ; $74ee: $9f
	add  b                                           ; $74ef: $80
	rst  ToBoot                                         ; $74f0: $c7
	ld   e, $55                                      ; $74f1: $1e $55
	rst  $38                                         ; $74f3: $ff
	ld   d, b                                        ; $74f4: $50
	rlca                                             ; $74f5: $07
	xor  b                                           ; $74f6: $a8
	rst  $38                                         ; $74f7: $ff
	nop                                              ; $74f8: $00
	rst  $38                                         ; $74f9: $ff
	add  b                                           ; $74fa: $80
	rst  $38                                         ; $74fb: $ff
	ret  nc                                          ; $74fc: $d0

	rst  $38                                         ; $74fd: $ff
	ld   hl, sp-$01                                  ; $74fe: $f8 $ff
	db   $fc                                         ; $7500: $fc
	rst  $38                                         ; $7501: $ff

jr_02c_7502:
	ld   a, [hl]                                     ; $7502: $7e
	push de                                          ; $7503: $d5
	dec  d                                           ; $7504: $15
	ld   [$f50a], a                                  ; $7505: $ea $0a $f5
	dec  b                                           ; $7508: $05
	ld   a, [$fd02]                                  ; $7509: $fa $02 $fd
	nop                                              ; $750c: $00
	rst  $38                                         ; $750d: $ff
	nop                                              ; $750e: $00
	rst  $38                                         ; $750f: $ff
	nop                                              ; $7510: $00
	add  b                                           ; $7511: $80
	rst  $38                                         ; $7512: $ff
	rrca                                             ; $7513: $0f
	ld   d, l                                        ; $7514: $55
	ld   a, [hl+]                                    ; $7515: $2a
	xor  d                                           ; $7516: $aa
	add  l                                           ; $7517: $85
	ld   d, l                                        ; $7518: $55
	ld   d, d                                        ; $7519: $52
	xor  d                                           ; $751a: $aa
	xor  c                                           ; $751b: $a9
	ld   d, l                                        ; $751c: $55
	ld   d, h                                        ; $751d: $54
	xor  d                                           ; $751e: $aa

jr_02c_751f:
	ld   a, [hl+]                                    ; $751f: $2a
	push de                                          ; $7520: $d5
	dec  d                                           ; $7521: $15
	ld   [$bd55], a                                  ; $7522: $ea $55 $bd
	nop                                              ; $7525: $00
	rst  $38                                         ; $7526: $ff

jr_02c_7527:
	ld   [bc], a                                     ; $7527: $02
	add  h                                           ; $7528: $84
	nop                                              ; $7529: $00
	add  b                                           ; $752a: $80
	jr   @-$7e                                       ; $752b: $18 $80

	nop                                              ; $752d: $00
	ld   [bc], a                                     ; $752e: $02
	stop                                             ; $752f: $10 $00
	jr   nc, @-$7c                                   ; $7531: $30 $82

	nop                                              ; $7533: $00
	add  b                                           ; $7534: $80
	ld   bc, $090a                                   ; $7535: $01 $0a $09
	dec  d                                           ; $7538: $15
	inc  bc                                          ; $7539: $03
	dec  d                                           ; $753a: $15
	add  hl, de                                      ; $753b: $19
	rla                                              ; $753c: $17
	inc  de                                          ; $753d: $13
	daa                                              ; $753e: $27
	rrca                                             ; $753f: $0f
	ld   d, a                                        ; $7540: $57
	rlca                                             ; $7541: $07
	add  b                                           ; $7542: $80
	nop                                              ; $7543: $00
	inc  c                                           ; $7544: $0c
	ld   c, a                                        ; $7545: $4f
	nop                                              ; $7546: $00
	ldh  a, [rP1]                                    ; $7547: $f0 $00
	ld   a, b                                        ; $7549: $78
	nop                                              ; $754a: $00
	sub  h                                           ; $754b: $94
	jr   jr_02c_7554                                 ; $754c: $18 $06

	nop                                              ; $754e: $00
	ld   [$0f00], sp                                 ; $754f: $08 $00 $0f
	add  d                                           ; $7552: $82
	nop                                              ; $7553: $00

jr_02c_7554:
	add  b                                           ; $7554: $80
	ld   b, b                                        ; $7555: $40

jr_02c_7556:
	ld   a, [bc]                                     ; $7556: $0a
	ld   d, b                                        ; $7557: $50
	ld   l, b                                        ; $7558: $68
	ret  nz                                          ; $7559: $c0

	xor  b                                           ; $755a: $a8
	sbc  b                                           ; $755b: $98
	add  sp, -$38                                    ; $755c: $e8 $c8

jr_02c_755e:
	db   $e4                                         ; $755e: $e4
	ldh  a, [$e8]                                    ; $755f: $f0 $e8
	ldh  [$80], a                                    ; $7561: $e0 $80
	nop                                              ; $7563: $00
	nop                                              ; $7564: $00
	pop  af                                          ; $7565: $f1
	add  e                                           ; $7566: $83
	nop                                              ; $7567: $00
	add  b                                           ; $7568: $80
	inc  b                                           ; $7569: $04
	add  b                                           ; $756a: $80
	inc  bc                                          ; $756b: $03
	add  h                                           ; $756c: $84
	nop                                              ; $756d: $00
	nop                                              ; $756e: $00
	ld   [bc], a                                     ; $756f: $02
	add  a                                           ; $7570: $87
	nop                                              ; $7571: $00
	ld   [de], a                                     ; $7572: $12
	ld   b, b                                        ; $7573: $40
	nop                                              ; $7574: $00
	ld   [hl], b                                     ; $7575: $70
	nop                                              ; $7576: $00
	inc  a                                           ; $7577: $3c
	nop                                              ; $7578: $00
	ld   c, $00                                      ; $7579: $0e $00
	ldh  [rP1], a                                    ; $757b: $e0 $00
	ld   hl, sp+$00                                  ; $757d: $f8 $00
	inc  e                                           ; $757f: $1c
	nop                                              ; $7580: $00
	ld   b, $00                                      ; $7581: $06 $00
	ld   b, b                                        ; $7583: $40
	nop                                              ; $7584: $00
	jp   $0082                                       ; $7585: $c3 $82 $00


	add  c                                           ; $7588: $81
	inc  h                                           ; $7589: $24
	inc  c                                           ; $758a: $0c
	ld   d, a                                        ; $758b: $57
	inc  b                                           ; $758c: $04
	ld   e, h                                        ; $758d: $5c
	ld   h, h                                        ; $758e: $64
	ld   e, h                                        ; $758f: $5c
	ld   c, h                                        ; $7590: $4c
	ld   e, d                                        ; $7591: $5a
	ld   a, b                                        ; $7592: $78
	ld   [hl], h                                     ; $7593: $74
	ld   [hl], b                                     ; $7594: $70
	ld   [$f000], sp                                 ; $7595: $08 $00 $f0
	add  e                                           ; $7598: $83
	nop                                              ; $7599: $00
	add  b                                           ; $759a: $80
	db   $10                                         ; $759b: $10
	add  b                                           ; $759c: $80
	jr   jr_02c_751f                                 ; $759d: $18 $80

	nop                                              ; $759f: $00
	ld   [bc], a                                     ; $75a0: $02
	stop                                             ; $75a1: $10 $00
	jr   nc, jr_02c_7527                             ; $75a3: $30 $82

	nop                                              ; $75a5: $00
	add  b                                           ; $75a6: $80
	ld   bc, $0982                                   ; $75a7: $01 $82 $09
	db   $10                                         ; $75aa: $10
	rra                                              ; $75ab: $1f
	inc  de                                          ; $75ac: $13
	ld   bc, $0f7d                                   ; $75ad: $01 $7d $0f
	rla                                              ; $75b0: $17
	inc  bc                                          ; $75b1: $03
	ld   c, e                                        ; $75b2: $4b
	nop                                              ; $75b3: $00
	ldh  a, [rP1]                                    ; $75b4: $f0 $00
	ld   a, b                                        ; $75b6: $78
	nop                                              ; $75b7: $00
	inc  b                                           ; $75b8: $04
	ld   [$189e], sp                                 ; $75b9: $08 $9e $18
	add  b                                           ; $75bc: $80
	nop                                              ; $75bd: $00
	ld   [bc], a                                     ; $75be: $02
	dec  bc                                          ; $75bf: $0b
	nop                                              ; $75c0: $00
	inc  c                                           ; $75c1: $0c
	add  d                                           ; $75c2: $82
	nop                                              ; $75c3: $00
	add  b                                           ; $75c4: $80
	ld   b, b                                        ; $75c5: $40
	add  d                                           ; $75c6: $82
	ld   d, b                                        ; $75c7: $50
	rlca                                             ; $75c8: $07
	ld   hl, sp-$38                                  ; $75c9: $f8 $c8
	add  b                                           ; $75cb: $80
	cp   b                                           ; $75cc: $b8
	ldh  a, [$e8]                                    ; $75cd: $f0 $e8
	ret  nz                                          ; $75cf: $c0

	push de                                          ; $75d0: $d5
	add  e                                           ; $75d1: $83
	nop                                              ; $75d2: $00
	add  b                                           ; $75d3: $80
	jr   jr_02c_7556                                 ; $75d4: $18 $80

	nop                                              ; $75d6: $00
	ld   [bc], a                                     ; $75d7: $02
	stop                                             ; $75d8: $10 $00
	jr   nc, jr_02c_755e                             ; $75da: $30 $82

	nop                                              ; $75dc: $00
	add  b                                           ; $75dd: $80
	ld   bc, $0904                                   ; $75de: $01 $04 $09
	dec  b                                           ; $75e1: $05
	inc  bc                                          ; $75e2: $03
	dec  c                                           ; $75e3: $0d
	dec  e                                           ; $75e4: $1d
	add  b                                           ; $75e5: $80
	rra                                              ; $75e6: $1f
	inc  bc                                          ; $75e7: $03
	cpl                                              ; $75e8: $2f
	ld   c, $56                                      ; $75e9: $0e $56
	rlca                                             ; $75eb: $07
	add  b                                           ; $75ec: $80
	nop                                              ; $75ed: $00
	inc  c                                           ; $75ee: $0c
	ld   c, a                                        ; $75ef: $4f
	nop                                              ; $75f0: $00
	ldh  a, [rP1]                                    ; $75f1: $f0 $00
	ld   a, b                                        ; $75f3: $78
	nop                                              ; $75f4: $00
	sub  h                                           ; $75f5: $94
	jr   jr_02c_75fe                                 ; $75f6: $18 $06

	nop                                              ; $75f8: $00
	ld   [$0f00], sp                                 ; $75f9: $08 $00 $0f
	add  d                                           ; $75fc: $82
	nop                                              ; $75fd: $00

jr_02c_75fe:
	add  b                                           ; $75fe: $80
	ld   b, b                                        ; $75ff: $40
	inc  b                                           ; $7600: $04
	ld   d, b                                        ; $7601: $50
	ld   h, b                                        ; $7602: $60
	ret  nz                                          ; $7603: $c0

jr_02c_7604:
	or   b                                           ; $7604: $b0
	cp   b                                           ; $7605: $b8
	add  b                                           ; $7606: $80
	ld   hl, sp+$06                                  ; $7607: $f8 $06
	db   $f4                                         ; $7609: $f4
	ld   [hl], b                                     ; $760a: $70
	ld   l, b                                        ; $760b: $68
	ld   h, b                                        ; $760c: $60
	add  b                                           ; $760d: $80
	nop                                              ; $760e: $00
	pop  af                                          ; $760f: $f1
	add  b                                           ; $7610: $80
	nop                                              ; $7611: $00
	add  b                                           ; $7612: $80
	rrca                                             ; $7613: $0f
	add  b                                           ; $7614: $80
	rra                                              ; $7615: $1f
	add  hl, bc                                      ; $7616: $09
	daa                                              ; $7617: $27
	inc  h                                           ; $7618: $24
	ld   a, a                                        ; $7619: $7f
	ld   [hl], e                                     ; $761a: $73
	ld   l, a                                        ; $761b: $6f
	ld   a, h                                        ; $761c: $7c
	rst  JumpTable                                         ; $761d: $df
	db   $d3                                         ; $761e: $d3
	rst  JumpTable                                         ; $761f: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7620: $cf
	add  b                                           ; $7621: $80
	sbc  $80                                         ; $7622: $de $80
	sub  $80                                         ; $7624: $d6 $80
	ret  nz                                          ; $7626: $c0

	add  b                                           ; $7627: $80
	call nz, $c880                                   ; $7628: $c4 $80 $c8
	add  b                                           ; $762b: $80
	ldh  [$80], a                                    ; $762c: $e0 $80
	or   b                                           ; $762e: $b0
	add  b                                           ; $762f: $80
	add  b                                           ; $7630: $80
	add  d                                           ; $7631: $82
	nop                                              ; $7632: $00
	add  b                                           ; $7633: $80
	ld   [hl], b                                     ; $7634: $70
	add  hl, bc                                      ; $7635: $09
	ldh  [rAUD4LEN], a                               ; $7636: $e0 $20
	db   $fc                                         ; $7638: $fc
	call z, $3ef6                                    ; $7639: $cc $f6 $3e
	ld   a, [$faca]                                  ; $763c: $fa $ca $fa
	ldh  a, [c]                                      ; $763f: $f2
	add  b                                           ; $7640: $80
	cp   d                                           ; $7641: $ba
	add  b                                           ; $7642: $80
	xor  d                                           ; $7643: $aa
	add  b                                           ; $7644: $80
	ld   [bc], a                                     ; $7645: $02
	add  b                                           ; $7646: $80
	ld   [hl+], a                                    ; $7647: $22
	add  b                                           ; $7648: $80
	ld   [de], a                                     ; $7649: $12
	add  b                                           ; $764a: $80
	ld   b, $80                                      ; $764b: $06 $80
	ld   c, $80                                      ; $764d: $0e $80
	ld   [bc], a                                     ; $764f: $02
	add  b                                           ; $7650: $80
	nop                                              ; $7651: $00
	add  b                                           ; $7652: $80
	rlca                                             ; $7653: $07
	add  b                                           ; $7654: $80
	rra                                              ; $7655: $1f
	add  b                                           ; $7656: $80
	dec  sp                                          ; $7657: $3b
	add  b                                           ; $7658: $80
	inc  a                                           ; $7659: $3c
	add  h                                           ; $765a: $84
	ld   a, a                                        ; $765b: $7f
	adc  b                                           ; $765c: $88
	ld   a, l                                        ; $765d: $7d
	add  b                                           ; $765e: $80
	dec  a                                           ; $765f: $3d
	add  b                                           ; $7660: $80
	dec  c                                           ; $7661: $0d
	add  b                                           ; $7662: $80
	ld   bc, $0080                                   ; $7663: $01 $80 $00
	add  b                                           ; $7666: $80
	add  b                                           ; $7667: $80
	add  b                                           ; $7668: $80
	ldh  [rTAC], a                                   ; $7669: $e0 $07
	ld   hl, sp-$1c                                  ; $766b: $f8 $e4
	db   $fc                                         ; $766d: $fc
	call c, $e0bc                                    ; $766e: $dc $bc $e0
	ld   a, [hl]                                     ; $7671: $7e
	ld   e, $80                                      ; $7672: $1e $80
	ld   a, [hl]                                     ; $7674: $7e
	add  d                                           ; $7675: $82
	ld   e, d                                        ; $7676: $5a
	add  b                                           ; $7677: $80
	jr   @-$7e                                       ; $7678: $18 $80

	db   $10                                         ; $767a: $10
	add  b                                           ; $767b: $80
	jr   nz, jr_02c_7604                             ; $767c: $20 $86

	nop                                              ; $767e: $00
	add  b                                           ; $767f: $80
	rrca                                             ; $7680: $0f
	add  b                                           ; $7681: $80
	rra                                              ; $7682: $1f
	add  b                                           ; $7683: $80
	cpl                                              ; $7684: $2f
	add  hl, bc                                      ; $7685: $09
	ld   h, a                                        ; $7686: $67
	ld   h, b                                        ; $7687: $60
	ld   a, a                                        ; $7688: $7f
	ld   [hl], a                                     ; $7689: $77
	rst  $28                                         ; $768a: $ef
	db   $fc                                         ; $768b: $fc
	rst  JumpTable                                         ; $768c: $df
	db   $d3                                         ; $768d: $d3
	rst  JumpTable                                         ; $768e: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $768f: $cf
	add  b                                           ; $7690: $80
	sbc  $82                                         ; $7691: $de $82
	sub  $80                                         ; $7693: $d6 $80
	ret  nz                                          ; $7695: $c0

	add  b                                           ; $7696: $80
	jp   nc, $a080                                   ; $7697: $d2 $80 $a0

	add  b                                           ; $769a: $80
	add  h                                           ; $769b: $84
	add  d                                           ; $769c: $82
	nop                                              ; $769d: $00
	add  d                                           ; $769e: $82
	ldh  a, [$09]                                    ; $769f: $f0 $09
	db   $e4                                         ; $76a1: $e4
	inc  h                                           ; $76a2: $24
	cp   $ce                                         ; $76a3: $fe $ce
	or   $3e                                         ; $76a5: $f6 $3e
	ld   a, [$faca]                                  ; $76a7: $fa $ca $fa
	ldh  a, [c]                                      ; $76aa: $f2
	add  b                                           ; $76ab: $80
	cp   d                                           ; $76ac: $ba
	add  d                                           ; $76ad: $82
	xor  d                                           ; $76ae: $aa
	add  b                                           ; $76af: $80
	ld   [bc], a                                     ; $76b0: $02
	add  b                                           ; $76b1: $80
	ld   c, d                                        ; $76b2: $4a
	add  b                                           ; $76b3: $80
	ld   [bc], a                                     ; $76b4: $02
	add  b                                           ; $76b5: $80
	ld   [hl+], a                                    ; $76b6: $22
	add  b                                           ; $76b7: $80
	nop                                              ; $76b8: $00
	add  b                                           ; $76b9: $80
	rrca                                             ; $76ba: $0f
	add  b                                           ; $76bb: $80
	rra                                              ; $76bc: $1f
	add  hl, bc                                      ; $76bd: $09
	daa                                              ; $76be: $27
	inc  h                                           ; $76bf: $24
	ld   a, a                                        ; $76c0: $7f
	ld   [hl], e                                     ; $76c1: $73
	ld   l, a                                        ; $76c2: $6f
	ld   a, h                                        ; $76c3: $7c
	rst  JumpTable                                         ; $76c4: $df
	db   $d3                                         ; $76c5: $d3
	rst  JumpTable                                         ; $76c6: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76c7: $cf
	add  b                                           ; $76c8: $80
	sbc  $80                                         ; $76c9: $de $80
	sub  $80                                         ; $76cb: $d6 $80
	ret  nc                                          ; $76cd: $d0

	add  d                                           ; $76ce: $82
	ret  nz                                          ; $76cf: $c0

	add  b                                           ; $76d0: $80
	pop  hl                                          ; $76d1: $e1
	add  b                                           ; $76d2: $80
	or   b                                           ; $76d3: $b0
	add  b                                           ; $76d4: $80
	add  b                                           ; $76d5: $80
	add  d                                           ; $76d6: $82
	nop                                              ; $76d7: $00
	add  b                                           ; $76d8: $80
	ld   [hl], b                                     ; $76d9: $70
	add  hl, bc                                      ; $76da: $09
	ldh  [rAUD4LEN], a                               ; $76db: $e0 $20
	db   $fc                                         ; $76dd: $fc
	call z, $3ef6                                    ; $76de: $cc $f6 $3e
	ld   a, [$faca]                                  ; $76e1: $fa $ca $fa
	ldh  a, [c]                                      ; $76e4: $f2
	add  b                                           ; $76e5: $80
	cp   d                                           ; $76e6: $ba
	add  b                                           ; $76e7: $80
	xor  d                                           ; $76e8: $aa
	add  b                                           ; $76e9: $80
	ld   a, [bc]                                     ; $76ea: $0a
	add  d                                           ; $76eb: $82
	ld   [bc], a                                     ; $76ec: $02
	add  b                                           ; $76ed: $80
	add  [hl]                                        ; $76ee: $86
	add  b                                           ; $76ef: $80
	adc  [hl]                                        ; $76f0: $8e
	dec  bc                                          ; $76f1: $0b
	ld   [bc], a                                     ; $76f2: $02
	ld   e, d                                        ; $76f3: $5a
	rlca                                             ; $76f4: $07
	ld   a, c                                        ; $76f5: $79
	ld   bc, $0006                                   ; $76f6: $01 $06 $00
	ld   [hl], e                                     ; $76f9: $73
	nop                                              ; $76fa: $00
	ld   a, [de]                                     ; $76fb: $1a
	nop                                              ; $76fc: $00
	ret  nz                                          ; $76fd: $c0

	add  c                                           ; $76fe: $81
	nop                                              ; $76ff: $00
	inc  b                                           ; $7700: $04
	ld   h, a                                        ; $7701: $67
	nop                                              ; $7702: $00
	ld   e, l                                        ; $7703: $5d
	ld   b, b                                        ; $7704: $40
	and  b                                           ; $7705: $a0
	add  c                                           ; $7706: $81
	nop                                              ; $7707: $00
	inc  d                                           ; $7708: $14
	ld   h, b                                        ; $7709: $60
	nop                                              ; $770a: $00
	jr   c, jr_02c_770d                              ; $770b: $38 $00

jr_02c_770d:
	dec  b                                           ; $770d: $05
	nop                                              ; $770e: $00
	ld   c, $00                                      ; $770f: $0e $00
	cp   $00                                         ; $7711: $fe $00
	push hl                                          ; $7713: $e5
	ldh  [$9e], a                                    ; $7714: $e0 $9e
	add  b                                           ; $7716: $80
	ld   h, b                                        ; $7717: $60
	nop                                              ; $7718: $00
	adc  [hl]                                        ; $7719: $8e
	nop                                              ; $771a: $00
	jr   jr_02c_771d                                 ; $771b: $18 $00

jr_02c_771d:
	inc  bc                                          ; $771d: $03
	add  c                                           ; $771e: $81
	nop                                              ; $771f: $00
	inc  b                                           ; $7720: $04
	and  $00                                         ; $7721: $e6 $00
	ld   a, [$0502]                                  ; $7723: $fa $02 $05
	add  c                                           ; $7726: $81
	nop                                              ; $7727: $00
	inc  d                                           ; $7728: $14
	ld   b, $00                                      ; $7729: $06 $00
	inc  e                                           ; $772b: $1c
	nop                                              ; $772c: $00
	ldh  [rP1], a                                    ; $772d: $e0 $00
	ld   [hl], b                                     ; $772f: $70
	nop                                              ; $7730: $00
	ld   a, a                                        ; $7731: $7f
	nop                                              ; $7732: $00
	and  $06                                         ; $7733: $e6 $06
	add  hl, sp                                      ; $7735: $39
	ld   bc, $0006                                   ; $7736: $01 $06 $00

jr_02c_7739:
	ld   [hl], e                                     ; $7739: $73
	nop                                              ; $773a: $00
	ld   a, [de]                                     ; $773b: $1a
	nop                                              ; $773c: $00
	ret  nz                                          ; $773d: $c0

	add  c                                           ; $773e: $81
	nop                                              ; $773f: $00
	inc  b                                           ; $7740: $04

jr_02c_7741:
	ld   h, a                                        ; $7741: $67
	nop                                              ; $7742: $00
	ld   e, l                                        ; $7743: $5d
	ld   b, b                                        ; $7744: $40
	and  b                                           ; $7745: $a0
	add  c                                           ; $7746: $81
	nop                                              ; $7747: $00
	inc  d                                           ; $7748: $14
	ld   h, b                                        ; $7749: $60
	nop                                              ; $774a: $00
	jr   c, jr_02c_774d                              ; $774b: $38 $00

jr_02c_774d:
	dec  b                                           ; $774d: $05
	nop                                              ; $774e: $00
	ld   c, $00                                      ; $774f: $0e $00
	cp   $00                                         ; $7751: $fe $00
	rst  $20                                         ; $7753: $e7
	ldh  [$9c], a                                    ; $7754: $e0 $9c
	add  b                                           ; $7756: $80

jr_02c_7757:
	ld   h, b                                        ; $7757: $60
	nop                                              ; $7758: $00
	adc  [hl]                                        ; $7759: $8e
	nop                                              ; $775a: $00
	jr   jr_02c_775d                                 ; $775b: $18 $00

jr_02c_775d:
	inc  bc                                          ; $775d: $03
	add  c                                           ; $775e: $81
	nop                                              ; $775f: $00
	inc  b                                           ; $7760: $04
	and  $00                                         ; $7761: $e6 $00
	ld   a, [$0502]                                  ; $7763: $fa $02 $05
	add  c                                           ; $7766: $81
	nop                                              ; $7767: $00
	inc  d                                           ; $7768: $14
	ld   b, $00                                      ; $7769: $06 $00
	inc  e                                           ; $776b: $1c
	nop                                              ; $776c: $00
	ldh  [rP1], a                                    ; $776d: $e0 $00
	ld   [hl], b                                     ; $776f: $70
	nop                                              ; $7770: $00
	ld   a, a                                        ; $7771: $7f
	nop                                              ; $7772: $00
	jr   nz, jr_02c_7775                             ; $7773: $20 $00

jr_02c_7775:
	cp   c                                           ; $7775: $b9
	ld   bc, $0046                                   ; $7776: $01 $46 $00
	ld   [hl], e                                     ; $7779: $73
	nop                                              ; $777a: $00
	ld   a, [de]                                     ; $777b: $1a
	nop                                              ; $777c: $00
	ret  nz                                          ; $777d: $c0

	add  c                                           ; $777e: $81
	nop                                              ; $777f: $00
	inc  b                                           ; $7780: $04
	ld   h, a                                        ; $7781: $67
	nop                                              ; $7782: $00
	ld   e, l                                        ; $7783: $5d
	ld   b, b                                        ; $7784: $40
	and  b                                           ; $7785: $a0
	add  c                                           ; $7786: $81
	nop                                              ; $7787: $00
	inc  d                                           ; $7788: $14
	ld   h, b                                        ; $7789: $60
	nop                                              ; $778a: $00
	jr   c, jr_02c_778d                              ; $778b: $38 $00

jr_02c_778d:
	dec  b                                           ; $778d: $05
	nop                                              ; $778e: $00
	ld   c, $00                                      ; $778f: $0e $00
	cp   $00                                         ; $7791: $fe $00
	inc  b                                           ; $7793: $04
	nop                                              ; $7794: $00
	sbc  l                                           ; $7795: $9d
	add  b                                           ; $7796: $80
	ld   h, d                                        ; $7797: $62
	nop                                              ; $7798: $00
	adc  [hl]                                        ; $7799: $8e
	nop                                              ; $779a: $00
	jr   jr_02c_779d                                 ; $779b: $18 $00

jr_02c_779d:
	inc  bc                                          ; $779d: $03
	add  c                                           ; $779e: $81
	nop                                              ; $779f: $00
	inc  b                                           ; $77a0: $04
	and  $00                                         ; $77a1: $e6 $00
	ld   a, [$0502]                                  ; $77a3: $fa $02 $05
	add  c                                           ; $77a6: $81
	nop                                              ; $77a7: $00
	ld   a, [bc]                                     ; $77a8: $0a
	ld   b, $00                                      ; $77a9: $06 $00
	inc  e                                           ; $77ab: $1c
	nop                                              ; $77ac: $00
	ldh  [rP1], a                                    ; $77ad: $e0 $00
	ld   [hl], b                                     ; $77af: $70
	nop                                              ; $77b0: $00
	ld   a, a                                        ; $77b1: $7f
	nop                                              ; $77b2: $00
	rst  $38                                         ; $77b3: $ff
	add  b                                           ; $77b4: $80
	nop                                              ; $77b5: $00
	add  b                                           ; $77b6: $80
	jr   jr_02c_7739                                 ; $77b7: $18 $80

	ld   e, $01                                      ; $77b9: $1e $01
	dec  l                                           ; $77bb: $2d
	ld   a, [hl+]                                    ; $77bc: $2a
	add  b                                           ; $77bd: $80
	jr   nc, jr_02c_7741                             ; $77be: $30 $81

	ld   [hl], a                                     ; $77c0: $77
	nop                                              ; $77c1: $00
	ld   [hl], b                                     ; $77c2: $70
	add  b                                           ; $77c3: $80
	db   $10                                         ; $77c4: $10
	add  b                                           ; $77c5: $80
	dec  c                                           ; $77c6: $0d
	add  d                                           ; $77c7: $82
	dec  l                                           ; $77c8: $2d
	add  b                                           ; $77c9: $80
	dec  c                                           ; $77ca: $0d
	add  b                                           ; $77cb: $80
	dec  b                                           ; $77cc: $05
	inc  bc                                          ; $77cd: $03
	nop                                              ; $77ce: $00
	ld   b, $00                                      ; $77cf: $06 $00
	ld   b, $82                                      ; $77d1: $06 $82
	nop                                              ; $77d3: $00
	add  b                                           ; $77d4: $80
	jr   jr_02c_7757                                 ; $77d5: $18 $80

	ld   a, b                                        ; $77d7: $78
	ld   bc, $14f4                                   ; $77d8: $01 $f4 $14
	add  b                                           ; $77db: $80
	inc  c                                           ; $77dc: $0c
	add  c                                           ; $77dd: $81
	xor  $00                                         ; $77de: $ee $00
	ld   c, $80                                      ; $77e0: $0e $80
	ld   [$f080], sp                                 ; $77e2: $08 $80 $f0
	add  d                                           ; $77e5: $82
	db   $f4                                         ; $77e6: $f4
	add  b                                           ; $77e7: $80
	ldh  a, [$80]                                    ; $77e8: $f0 $80
	ldh  [$0e], a                                    ; $77ea: $e0 $0e
	nop                                              ; $77ec: $00
	ld   h, b                                        ; $77ed: $60
	nop                                              ; $77ee: $00
	ld   h, b                                        ; $77ef: $60
	nop                                              ; $77f0: $00
	ld   e, b                                        ; $77f1: $58

jr_02c_77f2:
	rlca                                             ; $77f2: $07
	ld   a, c                                        ; $77f3: $79
	ld   bc, $0014                                   ; $77f4: $01 $14 $00
	ld   a, a                                        ; $77f7: $7f
	inc  bc                                          ; $77f8: $03
	ld   a, [bc]                                     ; $77f9: $0a
	ld   [bc], a                                     ; $77fa: $02
	add  b                                           ; $77fb: $80

jr_02c_77fc:
	nop                                              ; $77fc: $00
	add  b                                           ; $77fd: $80
	ld   bc, $0080                                   ; $77fe: $01 $80 $00
	nop                                              ; $7801: $00
	dec  c                                           ; $7802: $0d
	add  e                                           ; $7803: $83
	nop                                              ; $7804: $00

jr_02c_7805:
	inc  de                                          ; $7805: $13
	ld   [hl], b                                     ; $7806: $70
	nop                                              ; $7807: $00
	jr   nc, jr_02c_780a                             ; $7808: $30 $00

jr_02c_780a:
	dec  b                                           ; $780a: $05
	nop                                              ; $780b: $00
	ld   c, $00                                      ; $780c: $0e $00
	cp   $00                                         ; $780e: $fe $00
	push hl                                          ; $7810: $e5
	ldh  [$9e], a                                    ; $7811: $e0 $9e
	add  b                                           ; $7813: $80
	ld   l, b                                        ; $7814: $68
	nop                                              ; $7815: $00
	ld   a, [hl]                                     ; $7816: $7e
	nop                                              ; $7817: $00
	stop                                             ; $7818: $10 $00
	add  b                                           ; $781a: $80
	ret  nz                                          ; $781b: $c0

	inc  b                                           ; $781c: $04
	and  b                                           ; $781d: $a0
	add  b                                           ; $781e: $80
	jr   nz, jr_02c_7821                             ; $781f: $20 $00

jr_02c_7821:
	ldh  a, [$83]                                    ; $7821: $f0 $83
	nop                                              ; $7823: $00
	ld   [de], a                                     ; $7824: $12

jr_02c_7825:
	ld   c, $00                                      ; $7825: $0e $00
	inc  c                                           ; $7827: $0c
	nop                                              ; $7828: $00
	ldh  [rP1], a                                    ; $7829: $e0 $00
	ld   [hl], b                                     ; $782b: $70
	nop                                              ; $782c: $00
	ld   a, a                                        ; $782d: $7f
	nop                                              ; $782e: $00
	and  a                                           ; $782f: $a7
	rlca                                             ; $7830: $07
	ld   a, c                                        ; $7831: $79
	ld   bc, $0014                                   ; $7832: $01 $14 $00
	ld   a, h                                        ; $7835: $7c
	nop                                              ; $7836: $00
	dec  bc                                          ; $7837: $0b
	add  c                                           ; $7838: $81
	inc  bc                                          ; $7839: $03
	add  b                                           ; $783a: $80
	ld   bc, $0080                                   ; $783b: $01 $80 $00
	nop                                              ; $783e: $00
	dec  c                                           ; $783f: $0d
	add  e                                           ; $7840: $83
	nop                                              ; $7841: $00
	inc  de                                          ; $7842: $13
	ld   [hl], b                                     ; $7843: $70
	nop                                              ; $7844: $00
	jr   nc, jr_02c_7847                             ; $7845: $30 $00

jr_02c_7847:
	dec  b                                           ; $7847: $05
	nop                                              ; $7848: $00
	ld   c, $00                                      ; $7849: $0e $00
	cp   $00                                         ; $784b: $fe $00
	push hl                                          ; $784d: $e5
	ldh  [$9e], a                                    ; $784e: $e0 $9e
	add  b                                           ; $7850: $80
	ld   l, b                                        ; $7851: $68
	nop                                              ; $7852: $00
	ld   a, [hl]                                     ; $7853: $7e
	nop                                              ; $7854: $00
	stop                                             ; $7855: $10 $00
	add  b                                           ; $7857: $80
	ret  nz                                          ; $7858: $c0

	inc  b                                           ; $7859: $04
	and  b                                           ; $785a: $a0
	add  b                                           ; $785b: $80
	jr   nz, jr_02c_785e                             ; $785c: $20 $00

jr_02c_785e:
	ldh  a, [$83]                                    ; $785e: $f0 $83
	nop                                              ; $7860: $00
	ld   a, [bc]                                     ; $7861: $0a
	ld   c, $00                                      ; $7862: $0e $00
	inc  c                                           ; $7864: $0c
	nop                                              ; $7865: $00
	ldh  [rP1], a                                    ; $7866: $e0 $00
	ld   [hl], b                                     ; $7868: $70
	nop                                              ; $7869: $00
	ld   a, a                                        ; $786a: $7f
	nop                                              ; $786b: $00
	rst  $38                                         ; $786c: $ff
	add  b                                           ; $786d: $80
	nop                                              ; $786e: $00
	add  b                                           ; $786f: $80
	jr   jr_02c_77f2                                 ; $7870: $18 $80

	inc  c                                           ; $7872: $0c
	add  b                                           ; $7873: $80
	jr   nc, jr_02c_77fc                             ; $7874: $30 $86

	jr   c, jr_02c_77fc                              ; $7876: $38 $84

	dec  [hl]                                        ; $7878: $35
	add  d                                           ; $7879: $82

jr_02c_787a:
	dec  b                                           ; $787a: $05
	inc  bc                                          ; $787b: $03
	nop                                              ; $787c: $00
	ld   b, $00                                      ; $787d: $06 $00
	ld   b, $82                                      ; $787f: $06 $82
	nop                                              ; $7881: $00
	add  b                                           ; $7882: $80
	jr   jr_02c_7805                                 ; $7883: $18 $80

	ld   [hl], b                                     ; $7885: $70

jr_02c_7886:
	add  b                                           ; $7886: $80
	inc  c                                           ; $7887: $0c
	add  d                                           ; $7888: $82
	inc  e                                           ; $7889: $1c
	add  b                                           ; $788a: $80
	inc  a                                           ; $788b: $3c
	add  b                                           ; $788c: $80
	inc  e                                           ; $788d: $1c
	add  h                                           ; $788e: $84
	db   $ec                                         ; $788f: $ec
	add  d                                           ; $7890: $82
	ldh  [$0d], a                                    ; $7891: $e0 $0d
	nop                                              ; $7893: $00
	ld   h, b                                        ; $7894: $60
	nop                                              ; $7895: $00
	ld   h, b                                        ; $7896: $60
	nop                                              ; $7897: $00
	jr   jr_02c_787a                                 ; $7898: $18 $e0

	sbc  h                                           ; $789a: $9c
	add  b                                           ; $789b: $80
	ld   h, e                                        ; $789c: $63
	nop                                              ; $789d: $00
	adc  [hl]                                        ; $789e: $8e
	nop                                              ; $789f: $00
	jr   jr_02c_7825                                 ; $78a0: $18 $83

	nop                                              ; $78a2: $00
	ld   [bc], a                                     ; $78a3: $02
	ldh  [rP1], a                                    ; $78a4: $e0 $00
	ld   hl, sp-$7f                                  ; $78a6: $f8 $81
	nop                                              ; $78a8: $00
	inc  c                                           ; $78a9: $0c
	rlca                                             ; $78aa: $07
	nop                                              ; $78ab: $00
	ld   b, $00                                      ; $78ac: $06 $00
	jr   jr_02c_78b0                                 ; $78ae: $18 $00

jr_02c_78b0:
	ldh  [rP1], a                                    ; $78b0: $e0 $00
	ld   [hl], b                                     ; $78b2: $70
	nop                                              ; $78b3: $00
	ld   a, a                                        ; $78b4: $7f
	nop                                              ; $78b5: $00
	rst  $38                                         ; $78b6: $ff
	add  c                                           ; $78b7: $81
	nop                                              ; $78b8: $00
	ld   b, $e0                                      ; $78b9: $06 $e0
	nop                                              ; $78bb: $00
	and  b                                           ; $78bc: $a0
	add  b                                           ; $78bd: $80
	ld   b, b                                        ; $78be: $40
	nop                                              ; $78bf: $00
	add  b                                           ; $78c0: $80
	sub  c                                           ; $78c1: $91
	nop                                              ; $78c2: $00
	ld   [bc], a                                     ; $78c3: $02
	ldh  [rP1], a                                    ; $78c4: $e0 $00
	ldh  [$80], a                                    ; $78c6: $e0 $80
	nop                                              ; $78c8: $00
	add  b                                           ; $78c9: $80
	jr   @-$7e                                       ; $78ca: $18 $80

	ld   a, b                                        ; $78cc: $78
	ld   bc, $16f6                                   ; $78cd: $01 $f6 $16
	add  b                                           ; $78d0: $80
	ld   c, $81                                      ; $78d1: $0e $81
	xor  $81                                         ; $78d3: $ee $81
	ld   c, $84                                      ; $78d5: $0e $84
	or   $80                                         ; $78d7: $f6 $80
	ldh  a, [$80]                                    ; $78d9: $f0 $80
	ldh  [$0d], a                                    ; $78db: $e0 $0d
	nop                                              ; $78dd: $00
	ld   h, b                                        ; $78de: $60
	nop                                              ; $78df: $00
	ld   h, b                                        ; $78e0: $60
	nop                                              ; $78e1: $00
	ld   a, [de]                                     ; $78e2: $1a
	ldh  [$9d], a                                    ; $78e3: $e0 $9d
	add  b                                           ; $78e5: $80
	ld   h, d                                        ; $78e6: $62
	ld   [bc], a                                     ; $78e7: $02
	adc  b                                           ; $78e8: $88
	nop                                              ; $78e9: $00
	ld   e, $83                                      ; $78ea: $1e $83
	nop                                              ; $78ec: $00
	ld   [de], a                                     ; $78ed: $12
	ldh  [rP1], a                                    ; $78ee: $e0 $00
	ld   hl, sp+$00                                  ; $78f0: $f8 $00
	inc  bc                                          ; $78f2: $03
	nop                                              ; $78f3: $00
	inc  b                                           ; $78f4: $04
	nop                                              ; $78f5: $00
	ld   b, $00                                      ; $78f6: $06 $00
	jr   jr_02c_78fa                                 ; $78f8: $18 $00

jr_02c_78fa:
	ldh  [rP1], a                                    ; $78fa: $e0 $00
	ld   [hl], b                                     ; $78fc: $70
	nop                                              ; $78fd: $00
	ld   a, a                                        ; $78fe: $7f
	nop                                              ; $78ff: $00
	rst  $38                                         ; $7900: $ff
	add  b                                           ; $7901: $80
	nop                                              ; $7902: $00
	add  b                                           ; $7903: $80
	jr   jr_02c_7886                                 ; $7904: $18 $80

	ld   a, b                                        ; $7906: $78
	ld   bc, $10f0                                   ; $7907: $01 $f0 $10
	add  b                                           ; $790a: $80
	ld   c, $81                                      ; $790b: $0e $81
	xor  $81                                         ; $790d: $ee $81
	ld   c, $84                                      ; $790f: $0e $84
	or   $80                                         ; $7911: $f6 $80
	ldh  a, [$80]                                    ; $7913: $f0 $80
	ldh  [rTIMA], a                                  ; $7915: $e0 $05

jr_02c_7917:
	nop                                              ; $7917: $00
	ld   h, b                                        ; $7918: $60
	nop                                              ; $7919: $00
	ld   h, b                                        ; $791a: $60
	nop                                              ; $791b: $00
	ret  nz                                          ; $791c: $c0

	add  b                                           ; $791d: $80
	nop                                              ; $791e: $00
	add  b                                           ; $791f: $80
	add  b                                           ; $7920: $80
	ld   bc, $3800                                   ; $7921: $01 $00 $38
	add  c                                           ; $7924: $81
	nop                                              ; $7925: $00
	ld   [bc], a                                     ; $7926: $02
	cp   b                                           ; $7927: $b8
	add  b                                           ; $7928: $80
	ldh  [$81], a                                    ; $7929: $e0 $81
	ret  nz                                          ; $792b: $c0

	add  d                                           ; $792c: $82
	nop                                              ; $792d: $00
	inc  c                                           ; $792e: $0c
	stop                                             ; $792f: $10 $00
	ld   [$8400], sp                                 ; $7931: $08 $00 $84
	nop                                              ; $7934: $00
	ld   b, d                                        ; $7935: $42
	nop                                              ; $7936: $00
	ld   h, b                                        ; $7937: $60
	inc  a                                           ; $7938: $3c
	sbc  l                                           ; $7939: $9d
	nop                                              ; $793a: $00
	rst  $38                                         ; $793b: $ff
	rst  $38                                         ; $793c: $ff
	nop                                              ; $793d: $00
	sub  h                                           ; $793e: $94
	nop                                              ; $793f: $00
	add  b                                           ; $7940: $80
	ld   e, $80                                      ; $7941: $1e $80
	jr   c, @-$7e                                    ; $7943: $38 $80

	ld   [hl], b                                     ; $7945: $70
	add  b                                           ; $7946: $80
	ldh  [$0c], a                                    ; $7947: $e0 $0c
	ld   bc, $0100                                   ; $7949: $01 $00 $01
	nop                                              ; $794c: $00
	inc  bc                                          ; $794d: $03
	nop                                              ; $794e: $00
	inc  b                                           ; $794f: $04
	ld   bc, $0009                                   ; $7950: $01 $09 $00
	ld   [$0800], sp                                 ; $7953: $08 $00 $08
	add  c                                           ; $7956: $81
	nop                                              ; $7957: $00
	add  d                                           ; $7958: $82
	ld   [bc], a                                     ; $7959: $02
	ld   c, $0a                                      ; $795a: $0e $0a
	ld   [bc], a                                     ; $795c: $02
	ld   a, [de]                                     ; $795d: $1a
	inc  bc                                          ; $795e: $03
	dec  sp                                          ; $795f: $3b
	ld   a, [de]                                     ; $7960: $1a
	dec  b                                           ; $7961: $05
	ld   bc, $1846                                   ; $7962: $01 $46 $18
	sbc  d                                           ; $7965: $9a
	inc  e                                           ; $7966: $1c
	ld   [bc], a                                     ; $7967: $02
	nop                                              ; $7968: $00
	ld   e, $84                                      ; $7969: $1e $84
	nop                                              ; $796b: $00
	add  b                                           ; $796c: $80
	pop  hl                                          ; $796d: $e1
	ld   bc, $4606                                   ; $796e: $01 $06 $46
	add  c                                           ; $7971: $81
	ld   b, b                                        ; $7972: $40
	add  b                                           ; $7973: $80
	ld   d, b                                        ; $7974: $50
	add  c                                           ; $7975: $81
	stop                                             ; $7976: $10 $00
	ld   d, b                                        ; $7978: $50
	add  b                                           ; $7979: $80
	ld   [hl], h                                     ; $797a: $74
	add  b                                           ; $797b: $80
	ld   a, h                                        ; $797c: $7c
	nop                                              ; $797d: $00
	cp   b                                           ; $797e: $b8
	add  c                                           ; $797f: $81
	ld   hl, sp-$80                                  ; $7980: $f8 $80
	nop                                              ; $7982: $00
	ld   [$003f], sp                                 ; $7983: $08 $3f $00
	ld   b, b                                        ; $7986: $40
	nop                                              ; $7987: $00
	add  b                                           ; $7988: $80
	nop                                              ; $7989: $00
	add  b                                           ; $798a: $80
	nop                                              ; $798b: $00
	ld   b, b                                        ; $798c: $40
	add  c                                           ; $798d: $81
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	jr   nz, jr_02c_7917                             ; $7990: $20 $85

	nop                                              ; $7992: $00
	nop                                              ; $7993: $00
	jr   nz, jr_02c_7917                             ; $7994: $20 $81

	nop                                              ; $7996: $00
	nop                                              ; $7997: $00
	ld   b, b                                        ; $7998: $40
	add  c                                           ; $7999: $81
	nop                                              ; $799a: $00
	nop                                              ; $799b: $00
	add  b                                           ; $799c: $80
	add  c                                           ; $799d: $81
	nop                                              ; $799e: $00
	ld   [bc], a                                     ; $799f: $02
	ld   bc, $0200                                   ; $79a0: $01 $00 $02
	add  c                                           ; $79a3: $81
	nop                                              ; $79a4: $00
	nop                                              ; $79a5: $00
	inc  bc                                          ; $79a6: $03
	sub  l                                           ; $79a7: $95
	nop                                              ; $79a8: $00
	ld   a, [bc]                                     ; $79a9: $0a
	inc  bc                                          ; $79aa: $03
	nop                                              ; $79ab: $00
	db   $fc                                         ; $79ac: $fc
	rra                                              ; $79ad: $1f
	ld   a, a                                        ; $79ae: $7f
	rrca                                             ; $79af: $0f
	sbc  a                                           ; $79b0: $9f
	inc  bc                                          ; $79b1: $03
	rrca                                             ; $79b2: $0f
	nop                                              ; $79b3: $00
	ld   [bc], a                                     ; $79b4: $02
	sub  c                                           ; $79b5: $91
	nop                                              ; $79b6: $00
	ld   [bc], a                                     ; $79b7: $02
	inc  bc                                          ; $79b8: $03
	ld   bc, $80fc                                   ; $79b9: $01 $fc $80
	nop                                              ; $79bc: $00
	add  b                                           ; $79bd: $80
	ld   a, d                                        ; $79be: $7a
	ld   [bc], a                                     ; $79bf: $02
	ld   [bc], a                                     ; $79c0: $02
	inc  bc                                          ; $79c1: $03
	nop                                              ; $79c2: $00
	add  [hl]                                        ; $79c3: $86
	db   $fc                                         ; $79c4: $fc
	adc  l                                           ; $79c5: $8d
	nop                                              ; $79c6: $00
	inc  bc                                          ; $79c7: $03
	db   $ec                                         ; $79c8: $ec
	db   $ed                                         ; $79c9: $ed
	nop                                              ; $79ca: $00
	rst  $38                                         ; $79cb: $ff
	sbc  e                                           ; $79cc: $9b
	nop                                              ; $79cd: $00
	ld   [bc], a                                     ; $79ce: $02
	cp   $00                                         ; $79cf: $fe $00
	cp   $89                                         ; $79d1: $fe $89
	nop                                              ; $79d3: $00
	add  b                                           ; $79d4: $80
	inc  a                                           ; $79d5: $3c
	add  b                                           ; $79d6: $80
	ld   [hl], b                                     ; $79d7: $70
	add  b                                           ; $79d8: $80
	ldh  [$80], a                                    ; $79d9: $e0 $80
	ld   b, b                                        ; $79db: $40
	adc  h                                           ; $79dc: $8c
	nop                                              ; $79dd: $00
	inc  c                                           ; $79de: $0c
	rrca                                             ; $79df: $0f
	nop                                              ; $79e0: $00
	ld   [$1800], sp                                 ; $79e1: $08 $00 $18
	nop                                              ; $79e4: $00
	jr   nz, jr_02c_79ef                             ; $79e5: $20 $08

	ld   c, b                                        ; $79e7: $48
	rlca                                             ; $79e8: $07
	ld   b, a                                        ; $79e9: $47
	nop                                              ; $79ea: $00
	ld   b, d                                        ; $79eb: $42
	add  c                                           ; $79ec: $81
	ld   [bc], a                                     ; $79ed: $02
	add  b                                           ; $79ee: $80

jr_02c_79ef:
	ld   [de], a                                     ; $79ef: $12
	add  b                                           ; $79f0: $80
	db   $10                                         ; $79f1: $10
	ld   [bc], a                                     ; $79f2: $02
	ld   d, b                                        ; $79f3: $50
	ld   [de], a                                     ; $79f4: $12
	inc  de                                          ; $79f5: $13
	add  b                                           ; $79f6: $80
	dec  de                                          ; $79f7: $1b
	ld   [bc], a                                     ; $79f8: $02
	inc  de                                          ; $79f9: $13
	call $800f                                       ; $79fa: $cd $0f $80
	ld   b, a                                        ; $79fd: $47
	nop                                              ; $79fe: $00
	rst  $38                                         ; $79ff: $ff
	add  c                                           ; $7a00: $81
	nop                                              ; $7a01: $00
	ld   b, $f0                                      ; $7a02: $06 $f0
	nop                                              ; $7a04: $00
	ld   [$0400], sp                                 ; $7a05: $08 $00 $04
	nop                                              ; $7a08: $00
	ld   [bc], a                                     ; $7a09: $02
	add  b                                           ; $7a0a: $80
	ld   [$3001], sp                                 ; $7a0b: $08 $01 $30
	ld   sp, $0081                                   ; $7a0e: $31 $81 $00
	add  d                                           ; $7a11: $82
	add  b                                           ; $7a12: $80
	ld   bc, $8081                                   ; $7a13: $01 $81 $80
	add  b                                           ; $7a16: $80
	and  b                                           ; $7a17: $a0
	ld   bc, $e0e2                                   ; $7a18: $01 $e2 $e0
	add  b                                           ; $7a1b: $80
	ret  nz                                          ; $7a1c: $c0

	ld   [bc], a                                     ; $7a1d: $02
	call nz, $f8c0                                   ; $7a1e: $c4 $c0 $f8
	add  c                                           ; $7a21: $81
	nop                                              ; $7a22: $00
	nop                                              ; $7a23: $00
	ld   bc, $0081                                   ; $7a24: $01 $81 $00
	nop                                              ; $7a27: $00
	ld   [bc], a                                     ; $7a28: $02
	add  c                                           ; $7a29: $81
	nop                                              ; $7a2a: $00
	nop                                              ; $7a2b: $00
	dec  b                                           ; $7a2c: $05
	add  c                                           ; $7a2d: $81
	nop                                              ; $7a2e: $00
	nop                                              ; $7a2f: $00
	ld   b, $8b                                      ; $7a30: $06 $8b
	nop                                              ; $7a32: $00
	inc  b                                           ; $7a33: $04
	rlca                                             ; $7a34: $07
	nop                                              ; $7a35: $00
	ldh  [rP1], a                                    ; $7a36: $e0 $00
	jr   @-$7e                                       ; $7a38: $18 $80

	ld   h, [hl]                                     ; $7a3a: $66
	add  c                                           ; $7a3b: $81
	ld   a, $04                                      ; $7a3c: $3e $04
	rst  $38                                         ; $7a3e: $ff
	dec  e                                           ; $7a3f: $1d
	ccf                                              ; $7a40: $3f
	inc  bc                                          ; $7a41: $03
	rla                                              ; $7a42: $17
	add  c                                           ; $7a43: $81
	rlca                                             ; $7a44: $07
	add  d                                           ; $7a45: $82
	nop                                              ; $7a46: $00
	inc  b                                           ; $7a47: $04
	stop                                             ; $7a48: $10 $00
	jr   nz, jr_02c_7a4c                             ; $7a4a: $20 $00

jr_02c_7a4c:
	ld   bc, $0081                                   ; $7a4c: $01 $81 $00
	inc  b                                           ; $7a4f: $04
	ld   h, b                                        ; $7a50: $60
	inc  a                                           ; $7a51: $3c
	sbc  l                                           ; $7a52: $9d
	nop                                              ; $7a53: $00
	rrca                                             ; $7a54: $0f
	add  b                                           ; $7a55: $80
	nop                                              ; $7a56: $00
	add  b                                           ; $7a57: $80
	ldh  [$81], a                                    ; $7a58: $e0 $81
	nop                                              ; $7a5a: $00
	add  [hl]                                        ; $7a5b: $86
	ldh  [$84], a                                    ; $7a5c: $e0 $84
	nop                                              ; $7a5e: $00
	nop                                              ; $7a5f: $00
	ld   [$0081], sp                                 ; $7a60: $08 $81 $00
	inc  d                                           ; $7a63: $14
	add  h                                           ; $7a64: $84
	nop                                              ; $7a65: $00
	ret  nz                                          ; $7a66: $c0

	ld   a, b                                        ; $7a67: $78
	dec  sp                                          ; $7a68: $3b
	nop                                              ; $7a69: $00
	rst  $38                                         ; $7a6a: $ff
	nop                                              ; $7a6b: $00
	ld   e, $00                                      ; $7a6c: $1e $00
	ld   de, $3000                                   ; $7a6e: $11 $00 $30
	nop                                              ; $7a71: $00
	ld   b, b                                        ; $7a72: $40
	db   $10                                         ; $7a73: $10
	sub  b                                           ; $7a74: $90
	ld   c, $8e                                      ; $7a75: $0e $8e
	nop                                              ; $7a77: $00
	add  h                                           ; $7a78: $84
	add  c                                           ; $7a79: $81
	inc  b                                           ; $7a7a: $04
	add  b                                           ; $7a7b: $80
	dec  h                                           ; $7a7c: $25
	add  b                                           ; $7a7d: $80
	ld   hl, $a102                                   ; $7a7e: $21 $02 $a1
	dec  h                                           ; $7a81: $25
	daa                                              ; $7a82: $27
	add  b                                           ; $7a83: $80
	scf                                              ; $7a84: $37
	dec  b                                           ; $7a85: $05
	daa                                              ; $7a86: $27
	ld   e, e                                        ; $7a87: $5b
	rra                                              ; $7a88: $1f
	cpl                                              ; $7a89: $2f
	rrca                                             ; $7a8a: $0f
	rra                                              ; $7a8b: $1f
	add  c                                           ; $7a8c: $81
	nop                                              ; $7a8d: $00
	ld   b, $e0                                      ; $7a8e: $06 $e0
	nop                                              ; $7a90: $00
	stop                                             ; $7a91: $10 $00
	ld   [$0400], sp                                 ; $7a93: $08 $00 $04
	add  b                                           ; $7a96: $80
	db   $10                                         ; $7a97: $10
	ld   bc, $6260                                   ; $7a98: $01 $60 $62
	add  l                                           ; $7a9b: $85
	nop                                              ; $7a9c: $00
	ld   bc, $0002                                   ; $7a9d: $01 $02 $00
	add  b                                           ; $7aa0: $80
	ld   b, b                                        ; $7aa1: $40
	ld   bc, $c0c4                                   ; $7aa2: $01 $c4 $c0
	add  b                                           ; $7aa5: $80
	add  b                                           ; $7aa6: $80
	ld   [bc], a                                     ; $7aa7: $02
	adc  b                                           ; $7aa8: $88
	add  b                                           ; $7aa9: $80
	ldh  a, [$91]                                    ; $7aaa: $f0 $91
	nop                                              ; $7aac: $00
	add  b                                           ; $7aad: $80
	ld   bc, $7f80                                   ; $7aae: $01 $80 $7f
	add  b                                           ; $7ab1: $80
	rra                                              ; $7ab2: $1f
	add  d                                           ; $7ab3: $82
	nop                                              ; $7ab4: $00
	ld   [bc], a                                     ; $7ab5: $02
	ld   a, a                                        ; $7ab6: $7f
	nop                                              ; $7ab7: $00
	ld   a, a                                        ; $7ab8: $7f

jr_02c_7ab9:
	adc  a                                           ; $7ab9: $8f
	nop                                              ; $7aba: $00
	ld   b, $0f                                      ; $7abb: $06 $0f
	nop                                              ; $7abd: $00
	ldh  a, [$80]                                    ; $7abe: $f0 $80
	adc  a                                           ; $7ac0: $8f
	add  b                                           ; $7ac1: $80
	ld   [hl], b                                     ; $7ac2: $70
	add  e                                           ; $7ac3: $83
	nop                                              ; $7ac4: $00
	ld   b, $ff                                      ; $7ac5: $06 $ff
	nop                                              ; $7ac7: $00
	ldh  a, [rP1]                                    ; $7ac8: $f0 $00
	inc  b                                           ; $7aca: $04
	nop                                              ; $7acb: $00
	db   $10                                         ; $7acc: $10
	add  c                                           ; $7acd: $81
	nop                                              ; $7ace: $00
	ld   bc, $1121                                   ; $7acf: $01 $21 $11
	add  b                                           ; $7ad2: $80
	dec  d                                           ; $7ad3: $15
	ld   a, [de]                                     ; $7ad4: $1a
	ld   d, h                                        ; $7ad5: $54
	inc  [hl]                                        ; $7ad6: $34
	dec  [hl]                                        ; $7ad7: $35
	ld   hl, $00a0                                   ; $7ad8: $21 $a0 $00
	ret  nc                                          ; $7adb: $d0

	ret  nz                                          ; $7adc: $c0

	jr   nc, jr_02c_7adf                             ; $7add: $30 $00

jr_02c_7adf:
	pop  hl                                          ; $7adf: $e1
	nop                                              ; $7ae0: $00
	ld   [bc], a                                     ; $7ae1: $02
	nop                                              ; $7ae2: $00
	ld   b, b                                        ; $7ae3: $40
	nop                                              ; $7ae4: $00
	ret  nz                                          ; $7ae5: $c0

	ld   a, b                                        ; $7ae6: $78
	dec  sp                                          ; $7ae7: $3b
	nop                                              ; $7ae8: $00
	rra                                              ; $7ae9: $1f
	nop                                              ; $7aea: $00
	db   $10                                         ; $7aeb: $10
	ld   h, b                                        ; $7aec: $60
	ld   l, b                                        ; $7aed: $68
	ld   [hl], b                                     ; $7aee: $70
	ld   [hl], h                                     ; $7aef: $74
	add  b                                           ; $7af0: $80
	ld   e, b                                        ; $7af1: $58
	ld   bc, $3b38                                   ; $7af2: $01 $38 $3b
	add  b                                           ; $7af5: $80
	ld   a, b                                        ; $7af6: $78
	ld   [bc], a                                     ; $7af7: $02
	jr   nc, jr_02c_7ab9                             ; $7af8: $30 $bf

	add  b                                           ; $7afa: $80
	add  d                                           ; $7afb: $82
	nop                                              ; $7afc: $00
	nop                                              ; $7afd: $00
	ld   [$0081], sp                                 ; $7afe: $08 $81 $00
	ld   [$0084], sp                                 ; $7b01: $08 $84 $00
	ld   b, d                                        ; $7b04: $42
	nop                                              ; $7b05: $00
	ld   h, b                                        ; $7b06: $60
	inc  a                                           ; $7b07: $3c
	sbc  l                                           ; $7b08: $9d
	nop                                              ; $7b09: $00
	rst  $38                                         ; $7b0a: $ff
	adc  a                                           ; $7b0b: $8f
	nop                                              ; $7b0c: $00
	add  [hl]                                        ; $7b0d: $86
	inc  b                                           ; $7b0e: $04
	add  h                                           ; $7b0f: $84
	nop                                              ; $7b10: $00
	dec  c                                           ; $7b11: $0d
	jp   $2200                                       ; $7b12: $c3 $00 $22


	nop                                              ; $7b15: $00
	sub  d                                           ; $7b16: $92
	nop                                              ; $7b17: $00
	ld   l, h                                        ; $7b18: $6c
	ld   bc, $0011                                   ; $7b19: $01 $11 $00
	ld   [$0800], sp                                 ; $7b1c: $08 $00 $08
	nop                                              ; $7b1f: $00
	add  d                                           ; $7b20: $82
	ld   [bc], a                                     ; $7b21: $02
	add  c                                           ; $7b22: $81
	nop                                              ; $7b23: $00
	ld   bc, $1302                                   ; $7b24: $01 $02 $13

jr_02c_7b27:
	add  d                                           ; $7b27: $82
	dec  bc                                          ; $7b28: $0b

jr_02c_7b29:
	ld   bc, $1c0d                                   ; $7b29: $01 $0d $1c
	add  b                                           ; $7b2c: $80
	ld   b, $05                                      ; $7b2d: $06 $05
	rlca                                             ; $7b2f: $07
	ret  z                                           ; $7b30: $c8

	nop                                              ; $7b31: $00
	ld   a, $00                                      ; $7b32: $3e $00
	ld   bc, $0084                                   ; $7b34: $01 $84 $00
	add  b                                           ; $7b37: $80
	ld   [bc], a                                     ; $7b38: $02
	add  b                                           ; $7b39: $80
	inc  a                                           ; $7b3a: $3c
	add  c                                           ; $7b3b: $81
	nop                                              ; $7b3c: $00
	add  d                                           ; $7b3d: $82
	add  b                                           ; $7b3e: $80
	add  b                                           ; $7b3f: $80
	and  b                                           ; $7b40: $a0
	add  b                                           ; $7b41: $80
	ldh  [$82], a                                    ; $7b42: $e0 $82
	ret  nz                                          ; $7b44: $c0

	add  b                                           ; $7b45: $80
	nop                                              ; $7b46: $00
	nop                                              ; $7b47: $00
	rst  $38                                         ; $7b48: $ff
	add  e                                           ; $7b49: $83
	nop                                              ; $7b4a: $00
	ld   [bc], a                                     ; $7b4b: $02
	add  b                                           ; $7b4c: $80
	nop                                              ; $7b4d: $00
	ld   b, b                                        ; $7b4e: $40
	add  c                                           ; $7b4f: $81
	nop                                              ; $7b50: $00
	nop                                              ; $7b51: $00
	jr   nz, @-$79                                   ; $7b52: $20 $85

	nop                                              ; $7b54: $00
	db   $10                                         ; $7b55: $10
	jr   nz, jr_02c_7b58                             ; $7b56: $20 $00

jr_02c_7b58:
	jr   nz, jr_02c_7b5a                             ; $7b58: $20 $00

jr_02c_7b5a:
	jr   jr_02c_7b5c                                 ; $7b5a: $18 $00

jr_02c_7b5c:
	ld   d, b                                        ; $7b5c: $50
	db   $10                                         ; $7b5d: $10
	add  $00                                         ; $7b5e: $c6 $00
	add  c                                           ; $7b60: $81
	ld   [hl], b                                     ; $7b61: $70
	adc  b                                           ; $7b62: $88
	inc  bc                                          ; $7b63: $03
	rlca                                             ; $7b64: $07
	nop                                              ; $7b65: $00
	ld   [bc], a                                     ; $7b66: $02

jr_02c_7b67:
	adc  e                                           ; $7b67: $8b
	nop                                              ; $7b68: $00
	nop                                              ; $7b69: $00
	ld   [bc], a                                     ; $7b6a: $02
	add  a                                           ; $7b6b: $87
	nop                                              ; $7b6c: $00
	ld   [bc], a                                     ; $7b6d: $02
	ld   b, $03                                      ; $7b6e: $06 $03
	ld   sp, hl                                      ; $7b70: $f9
	add  b                                           ; $7b71: $80
	nop                                              ; $7b72: $00
	add  b                                           ; $7b73: $80
	ld   a, e                                        ; $7b74: $7b
	add  b                                           ; $7b75: $80
	inc  bc                                          ; $7b76: $03
	inc  bc                                          ; $7b77: $03
	ld   bc, $fcfd                                   ; $7b78: $01 $fd $fc
	db   $fd                                         ; $7b7b: $fd
	add  e                                           ; $7b7c: $83
	db   $fc                                         ; $7b7d: $fc
	add  h                                           ; $7b7e: $84
	nop                                              ; $7b7f: $00
	inc  b                                           ; $7b80: $04
	stop                                             ; $7b81: $10 $00
	jr   nz, jr_02c_7b85                             ; $7b83: $20 $00

jr_02c_7b85:
	db   $10                                         ; $7b85: $10
	add  c                                           ; $7b86: $81
	nop                                              ; $7b87: $00
	inc  c                                           ; $7b88: $0c
	jr   nz, jr_02c_7b67                             ; $7b89: $20 $dc

	db   $dd                                         ; $7b8b: $dd
	nop                                              ; $7b8c: $00
	inc  b                                           ; $7b8d: $04
	ldh  a, [$fb]                                    ; $7b8e: $f0 $fb
	ldh  [$f0], a                                    ; $7b90: $e0 $f0
	add  b                                           ; $7b92: $80
	ldh  [rP1], a                                    ; $7b93: $e0 $00
	add  b                                           ; $7b95: $80
	sub  e                                           ; $7b96: $93
	nop                                              ; $7b97: $00
	inc  bc                                          ; $7b98: $03
	rst  $38                                         ; $7b99: $ff
	nop                                              ; $7b9a: $00
	ccf                                              ; $7b9b: $3f
	ld   b, b                                        ; $7b9c: $40
	add  b                                           ; $7b9d: $80
	ld   h, b                                        ; $7b9e: $60
	ld   bc, $70f0                                   ; $7b9f: $01 $f0 $70
	add  b                                           ; $7ba2: $80
	jr   nc, jr_02c_7b27                             ; $7ba3: $30 $82

	jr   jr_02c_7b29                                 ; $7ba5: $18 $82

	ld   [$008c], sp                                 ; $7ba7: $08 $8c $00
	db   $10                                         ; $7baa: $10
	ld   hl, sp+$00                                  ; $7bab: $f8 $00
	ld   hl, sp+$00                                  ; $7bad: $f8 $00
	ld   [bc], a                                     ; $7baf: $02
	nop                                              ; $7bb0: $00
	ld   b, $00                                      ; $7bb1: $06 $00
	ld   [bc], a                                     ; $7bb3: $02
	nop                                              ; $7bb4: $00
	ld   bc, $0800                                   ; $7bb5: $01 $00 $08
	nop                                              ; $7bb8: $00
	db   $10                                         ; $7bb9: $10
	ld   [$8028], sp                                 ; $7bba: $08 $28 $80
	ld   [$0402], sp                                 ; $7bbd: $08 $02 $04
	ld   b, l                                        ; $7bc0: $45
	ld   bc, $0980                                   ; $7bc1: $01 $80 $09
	ld   [bc], a                                     ; $7bc4: $02
	jp   hl                                          ; $7bc5: $e9


	add  hl, bc                                      ; $7bc6: $09
	add  c                                           ; $7bc7: $81
	add  b                                           ; $7bc8: $80
	ld   bc, $0500                                   ; $7bc9: $01 $00 $05
	add  b                                           ; $7bcc: $80
	rlca                                             ; $7bcd: $07
	ld   [bc], a                                     ; $7bce: $02
	rla                                              ; $7bcf: $17
	inc  bc                                          ; $7bd0: $03
	rrca                                             ; $7bd1: $0f
	add  e                                           ; $7bd2: $83
	nop                                              ; $7bd3: $00
	ld   b, $f0                                      ; $7bd4: $06 $f0
	nop                                              ; $7bd6: $00
	inc  c                                           ; $7bd7: $0c
	nop                                              ; $7bd8: $00
	ld   [bc], a                                     ; $7bd9: $02
	nop                                              ; $7bda: $00
	ld   bc, $0482                                   ; $7bdb: $01 $82 $04
	add  b                                           ; $7bde: $80
	jr   c, jr_02c_7be1                              ; $7bdf: $38 $00

jr_02c_7be1:
	nop                                              ; $7be1: $00
	add  b                                           ; $7be2: $80
	db   $10                                         ; $7be3: $10
	add  b                                           ; $7be4: $80
	sbc  b                                           ; $7be5: $98
	add  b                                           ; $7be6: $80
	add  b                                           ; $7be7: $80
	rlca                                             ; $7be8: $07
	add  l                                           ; $7be9: $85
	push de                                          ; $7bea: $d5
	rst  JumpTable                                         ; $7beb: $df
	sbc  a                                           ; $7bec: $9f
	adc  c                                           ; $7bed: $89
	sbc  b                                           ; $7bee: $98
	rst  $38                                         ; $7bef: $ff
	ld   bc, $0680                                   ; $7bf0: $01 $80 $06
	add  b                                           ; $7bf3: $80

jr_02c_7bf4:
	dec  c                                           ; $7bf4: $0d
	add  b                                           ; $7bf5: $80
	ld   e, $82                                      ; $7bf6: $1e $82
	inc  a                                           ; $7bf8: $3c
	add  d                                           ; $7bf9: $82
	ld   a, b                                        ; $7bfa: $78
	add  b                                           ; $7bfb: $80
	ld   d, b                                        ; $7bfc: $50
	add  b                                           ; $7bfd: $80
	ret  nc                                          ; $7bfe: $d0

	add  h                                           ; $7bff: $84
	add  b                                           ; $7c00: $80
	sbc  h                                           ; $7c01: $9c
	nop                                              ; $7c02: $00

jr_02c_7c03:
	add  b                                           ; $7c03: $80
	ld   bc, $0f80                                   ; $7c04: $01 $80 $0f
	add  b                                           ; $7c07: $80
	ld   a, $04                                      ; $7c08: $3e $04
	rst  $38                                         ; $7c0a: $ff
	nop                                              ; $7c0b: $00
	cp   $00                                         ; $7c0c: $fe $00
	ld   bc, $0081                                   ; $7c0e: $01 $81 $00
	nop                                              ; $7c11: $00
	ld   bc, $0081                                   ; $7c12: $01 $81 $00
	nop                                              ; $7c15: $00
	ld   [bc], a                                     ; $7c16: $02
	add  c                                           ; $7c17: $81
	ld   bc, $0511                                   ; $7c18: $01 $11 $05
	ld   [bc], a                                     ; $7c1b: $02
	ld   a, [bc]                                     ; $7c1c: $0a
	ld   [bc], a                                     ; $7c1d: $02
	ld   e, $0c                                      ; $7c1e: $1e $0c
	ld   a, [bc]                                     ; $7c20: $0a
	ld   [$0066], sp                                 ; $7c21: $08 $66 $00
	adc  b                                           ; $7c24: $88
	add  b                                           ; $7c25: $80
	db   $f4                                         ; $7c26: $f4
	add  b                                           ; $7c27: $80
	inc  c                                           ; $7c28: $0c
	rlca                                             ; $7c29: $07
	di                                               ; $7c2a: $f3
	nop                                              ; $7c2b: $00
	add  b                                           ; $7c2c: $80
	db   $fc                                         ; $7c2d: $fc
	inc  b                                           ; $7c2e: $04
	nop                                              ; $7c2f: $00
	inc  bc                                          ; $7c30: $03
	inc  hl                                          ; $7c31: $23
	inc  bc                                          ; $7c32: $03
	ld   c, a                                        ; $7c33: $4f
	add  c                                           ; $7c34: $81
	ld   c, l                                        ; $7c35: $4d
	inc  bc                                          ; $7c36: $03
	ld   c, e                                        ; $7c37: $4b
	ld   c, d                                        ; $7c38: $4a
	ld   h, [hl]                                     ; $7c39: $66
	ld   b, [hl]                                     ; $7c3a: $46
	add  [hl]                                        ; $7c3b: $86
	nop                                              ; $7c3c: $00
	jr   jr_02c_7c4f                                 ; $7c3d: $18 $10

	nop                                              ; $7c3f: $00
	jr   z, jr_02c_7c42                              ; $7c40: $28 $00

jr_02c_7c42:
	inc  b                                           ; $7c42: $04
	nop                                              ; $7c43: $00
	ld   [bc], a                                     ; $7c44: $02
	add  b                                           ; $7c45: $80
	cp   [hl]                                        ; $7c46: $be
	nop                                              ; $7c47: $00
	rst  $38                                         ; $7c48: $ff
	nop                                              ; $7c49: $00
	add  b                                           ; $7c4a: $80
	nop                                              ; $7c4b: $00
	ld   b, [hl]                                     ; $7c4c: $46
	add  b                                           ; $7c4d: $80
	cp   b                                           ; $7c4e: $b8

jr_02c_7c4f:
	ret  nz                                          ; $7c4f: $c0

	add  $c0                                         ; $7c50: $c6 $c0
	ret  c                                           ; $7c52: $d8

	add  b                                           ; $7c53: $80
	ldh  [rP1], a                                    ; $7c54: $e0 $00
	add  b                                           ; $7c56: $80
	add  e                                           ; $7c57: $83
	nop                                              ; $7c58: $00
	inc  c                                           ; $7c59: $0c
	add  b                                           ; $7c5a: $80
	nop                                              ; $7c5b: $00
	ld   b, b                                        ; $7c5c: $40
	nop                                              ; $7c5d: $00
	jr   nz, jr_02c_7c60                             ; $7c5e: $20 $00

jr_02c_7c60:
	db   $10                                         ; $7c60: $10
	jr   nz, jr_02c_7c03                             ; $7c61: $20 $a0

	ldh  [$6e], a                                    ; $7c63: $e0 $6e
	nop                                              ; $7c65: $00
	cp   $91                                         ; $7c66: $fe $91
	nop                                              ; $7c68: $00
	add  [hl]                                        ; $7c69: $86
	jr   nz, jr_02c_7bf4                             ; $7c6a: $20 $88

	nop                                              ; $7c6c: $00
	ld   b, $3b                                      ; $7c6d: $06 $3b
	nop                                              ; $7c6f: $00
	inc  h                                           ; $7c70: $24
	nop                                              ; $7c71: $00
	jr   nz, jr_02c_7c74                             ; $7c72: $20 $00

jr_02c_7c74:
	ld   b, b                                        ; $7c74: $40
	add  c                                           ; $7c75: $81
	jr   nz, jr_02c_7c7a                             ; $7c76: $20 $02

	and  b                                           ; $7c78: $a0
	db   $10                                         ; $7c79: $10

jr_02c_7c7a:
	inc  d                                           ; $7c7a: $14
	add  c                                           ; $7c7b: $81
	inc  b                                           ; $7c7c: $04

jr_02c_7c7d:
	add  b                                           ; $7c7d: $80
	inc  h                                           ; $7c7e: $24

jr_02c_7c7f:
	add  b                                           ; $7c7f: $80
	inc  b                                           ; $7c80: $04
	ld   b, $86                                      ; $7c81: $06 $86
	rla                                              ; $7c83: $17
	rra                                              ; $7c84: $1f
	ld   e, $5e                                      ; $7c85: $1e $5e
	ld   c, $3f                                      ; $7c87: $0e $3f
	add  e                                           ; $7c89: $83
	nop                                              ; $7c8a: $00
	inc  b                                           ; $7c8b: $04
	ret  nz                                          ; $7c8c: $c0

	nop                                              ; $7c8d: $00
	jr   nc, jr_02c_7c90                             ; $7c8e: $30 $00

jr_02c_7c90:
	ld   [$0080], sp                                 ; $7c90: $08 $80 $00
	ld   bc, $1410                                   ; $7c93: $01 $10 $14
	add  b                                           ; $7c96: $80
	db   $10                                         ; $7c97: $10
	add  b                                           ; $7c98: $80
	ldh  [rP1], a                                    ; $7c99: $e0 $00
	nop                                              ; $7c9b: $00
	add  b                                           ; $7c9c: $80
	add  b                                           ; $7c9d: $80
	add  b                                           ; $7c9e: $80
	ret  nz                                          ; $7c9f: $c0

	add  b                                           ; $7ca0: $80
	nop                                              ; $7ca1: $00
	ld   bc, $5414                                   ; $7ca2: $01 $14 $54
	add  b                                           ; $7ca5: $80
	ld   a, h                                        ; $7ca6: $7c
	ld   [bc], a                                     ; $7ca7: $02
	inc  h                                           ; $7ca8: $24
	ld   h, b                                        ; $7ca9: $60
	ld   hl, sp-$7d                                  ; $7caa: $f8 $83
	nop                                              ; $7cac: $00
	add  d                                           ; $7cad: $82
	add  b                                           ; $7cae: $80
	add  b                                           ; $7caf: $80
	ret  nz                                          ; $7cb0: $c0

	add  b                                           ; $7cb1: $80
	ldh  [$80], a                                    ; $7cb2: $e0 $80
	ld   [hl], b                                     ; $7cb4: $70
	add  b                                           ; $7cb5: $80
	jr   c, jr_02c_7cc2                              ; $7cb6: $38 $0a

	inc  e                                           ; $7cb8: $1c
	db   $10                                         ; $7cb9: $10
	ld   [bc], a                                     ; $7cba: $02
	nop                                              ; $7cbb: $00
	add  hl, bc                                      ; $7cbc: $09
	nop                                              ; $7cbd: $00
	inc  b                                           ; $7cbe: $04
	nop                                              ; $7cbf: $00
	ld   [bc], a                                     ; $7cc0: $02
	nop                                              ; $7cc1: $00

jr_02c_7cc2:
	ld   bc, $0081                                   ; $7cc2: $01 $81 $00
	ld   b, $0f                                      ; $7cc5: $06 $0f
	nop                                              ; $7cc7: $00
	ld   [$0800], sp                                 ; $7cc8: $08 $00 $08
	nop                                              ; $7ccb: $00
	db   $10                                         ; $7ccc: $10
	add  b                                           ; $7ccd: $80
	nop                                              ; $7cce: $00
	ld   bc, $2808                                   ; $7ccf: $01 $08 $28
	add  b                                           ; $7cd2: $80
	inc  b                                           ; $7cd3: $04
	nop                                              ; $7cd4: $00
	nop                                              ; $7cd5: $00
	add  b                                           ; $7cd6: $80
	ld   bc, $0980                                   ; $7cd7: $01 $80 $09
	add  b                                           ; $7cda: $80
	ld   bc, $2101                                   ; $7cdb: $01 $01 $21
	dec  b                                           ; $7cde: $05
	add  b                                           ; $7cdf: $80
	rlca                                             ; $7ce0: $07
	ld   c, $87                                      ; $7ce1: $0e $87
	rlca                                             ; $7ce3: $07
	ld   d, e                                        ; $7ce4: $53
	rlca                                             ; $7ce5: $07
	dec  hl                                          ; $7ce6: $2b
	inc  bc                                          ; $7ce7: $03
	ld   d, b                                        ; $7ce8: $50
	ld   b, b                                        ; $7ce9: $40
	rst  $30                                         ; $7cea: $f7
	nop                                              ; $7ceb: $00
	cp   b                                           ; $7cec: $b8
	nop                                              ; $7ced: $00
	ld   b, h                                        ; $7cee: $44
	nop                                              ; $7cef: $00
	ld   [bc], a                                     ; $7cf0: $02
	add  b                                           ; $7cf1: $80
	nop                                              ; $7cf2: $00
	ld   bc, $0504                                   ; $7cf3: $01 $04 $05
	add  b                                           ; $7cf6: $80
	jr   jr_02c_7cf9                                 ; $7cf7: $18 $00

jr_02c_7cf9:
	nop                                              ; $7cf9: $00
	add  b                                           ; $7cfa: $80
	jr   nz, jr_02c_7c7d                             ; $7cfb: $20 $80

	jr   nc, jr_02c_7c7f                             ; $7cfd: $30 $80

	nop                                              ; $7cff: $00
	add  hl, bc                                      ; $7d00: $09
	add  l                                           ; $7d01: $85
	sub  l                                           ; $7d02: $95
	sbc  a                                           ; $7d03: $9f
	rst  JumpTable                                         ; $7d04: $df
	db   $dd                                         ; $7d05: $dd
	sbc  h                                           ; $7d06: $9c
	ld   [$f4f8], a                                  ; $7d07: $ea $f8 $f4
	ldh  a, [$80]                                    ; $7d0a: $f0 $80
	nop                                              ; $7d0c: $00
	nop                                              ; $7d0d: $00
	ld   hl, sp-$65                                  ; $7d0e: $f8 $9b
	nop                                              ; $7d10: $00
	inc  b                                           ; $7d11: $04
	rst  $38                                         ; $7d12: $ff
	nop                                              ; $7d13: $00
	ld   h, b                                        ; $7d14: $60
	ld   h, d                                        ; $7d15: $62
	add  e                                           ; $7d16: $83
	add  b                                           ; $7d17: $80
	nop                                              ; $7d18: $00
	dec  b                                           ; $7d19: $05
	jr   nc, jr_02c_7d8d                             ; $7d1a: $30 $71

	jr   jr_02c_7d58                                 ; $7d1c: $18 $3a

	ld   [bc], a                                     ; $7d1e: $02
	ld   a, [de]                                     ; $7d1f: $1a
	add  c                                           ; $7d20: $81
	inc  bc                                          ; $7d21: $03
	nop                                              ; $7d22: $00
	ld   bc, $008b                                   ; $7d23: $01 $8b $00
	ld   b, $0c                                      ; $7d26: $06 $0c
	ld   b, $f2                                      ; $7d28: $06 $f2
	nop                                              ; $7d2a: $00
	inc  bc                                          ; $7d2b: $03
	ld   h, b                                        ; $7d2c: $60
	ld   h, d                                        ; $7d2d: $62
	add  c                                           ; $7d2e: $81
	inc  b                                           ; $7d2f: $04
	ld   bc, $6e65                                   ; $7d30: $01 $65 $6e
	add  b                                           ; $7d33: $80
	ld   c, $0c                                      ; $7d34: $0e $0c
	ld   a, $36                                      ; $7d36: $3e $36
	or   a                                           ; $7d38: $b7
	or   h                                           ; $7d39: $b4
	ld   b, $00                                      ; $7d3a: $06 $00
	ld   [bc], a                                     ; $7d3c: $02
	nop                                              ; $7d3d: $00
	ld   bc, $0400                                   ; $7d3e: $01 $00 $04
	nop                                              ; $7d41: $00
	inc  bc                                          ; $7d42: $03
	add  e                                           ; $7d43: $83
	nop                                              ; $7d44: $00
	inc  b                                           ; $7d45: $04
	add  b                                           ; $7d46: $80
	ldh  a, [rPCM34]                                 ; $7d47: $f0 $77
	nop                                              ; $7d49: $00
	rst  $38                                         ; $7d4a: $ff
	adc  a                                           ; $7d4b: $8f
	nop                                              ; $7d4c: $00
	add  d                                           ; $7d4d: $82
	ld   bc, $008c                                   ; $7d4e: $01 $8c $00
	inc  c                                           ; $7d51: $0c
	rrca                                             ; $7d52: $0f
	nop                                              ; $7d53: $00
	ld   [$1800], sp                                 ; $7d54: $08 $00 $18
	nop                                              ; $7d57: $00

jr_02c_7d58:
	jr   nz, jr_02c_7d62                             ; $7d58: $20 $08

	ld   c, b                                        ; $7d5a: $48
	rlca                                             ; $7d5b: $07
	ld   b, a                                        ; $7d5c: $47
	nop                                              ; $7d5d: $00
	ld   b, d                                        ; $7d5e: $42
	add  c                                           ; $7d5f: $81
	ld   [bc], a                                     ; $7d60: $02
	add  b                                           ; $7d61: $80

jr_02c_7d62:
	ld   [de], a                                     ; $7d62: $12
	add  b                                           ; $7d63: $80
	db   $10                                         ; $7d64: $10
	ld   [bc], a                                     ; $7d65: $02
	ld   d, b                                        ; $7d66: $50
	ld   [de], a                                     ; $7d67: $12
	inc  de                                          ; $7d68: $13
	add  b                                           ; $7d69: $80
	dec  de                                          ; $7d6a: $1b
	inc  bc                                          ; $7d6b: $03
	inc  de                                          ; $7d6c: $13
	dec  l                                           ; $7d6d: $2d
	rrca                                             ; $7d6e: $0f
	rra                                              ; $7d6f: $1f
	add  e                                           ; $7d70: $83
	nop                                              ; $7d71: $00
	ld   b, $f0                                      ; $7d72: $06 $f0
	nop                                              ; $7d74: $00
	ld   [$0400], sp                                 ; $7d75: $08 $00 $04
	nop                                              ; $7d78: $00
	ld   [bc], a                                     ; $7d79: $02
	add  b                                           ; $7d7a: $80
	ld   [$3001], sp                                 ; $7d7b: $08 $01 $30
	ld   sp, $0081                                   ; $7d7e: $31 $81 $00
	add  d                                           ; $7d81: $82
	add  b                                           ; $7d82: $80
	ld   bc, $8081                                   ; $7d83: $01 $81 $80
	add  b                                           ; $7d86: $80
	and  b                                           ; $7d87: $a0
	ld   bc, $e0e2                                   ; $7d88: $01 $e2 $e0
	add  b                                           ; $7d8b: $80
	ret  nz                                          ; $7d8c: $c0

jr_02c_7d8d:
	nop                                              ; $7d8d: $00
	db   $fc                                         ; $7d8e: $fc
	adc  e                                           ; $7d8f: $8b
	nop                                              ; $7d90: $00
	add  b                                           ; $7d91: $80
	ret  nz                                          ; $7d92: $c0

	add  b                                           ; $7d93: $80
	ld   a, a                                        ; $7d94: $7f
	add  b                                           ; $7d95: $80
	rra                                              ; $7d96: $1f
	adc  b                                           ; $7d97: $88
	nop                                              ; $7d98: $00
	ld   [bc], a                                     ; $7d99: $02
	rst  $38                                         ; $7d9a: $ff
	nop                                              ; $7d9b: $00
	rst  $38                                         ; $7d9c: $ff
	add  l                                           ; $7d9d: $85
	nop                                              ; $7d9e: $00
	nop                                              ; $7d9f: $00
	ld   bc, $0081                                   ; $7da0: $01 $81 $00
	nop                                              ; $7da3: $00
	ld   [bc], a                                     ; $7da4: $02
	add  c                                           ; $7da5: $81
	ld   bc, $fd01                                   ; $7da6: $01 $01 $fd
	nop                                              ; $7da9: $00
	add  b                                           ; $7daa: $80
	ld   b, $02                                      ; $7dab: $06 $02
	ld   sp, hl                                      ; $7dad: $f9
	nop                                              ; $7dae: $00
	rlca                                             ; $7daf: $07
	add  c                                           ; $7db0: $81
	nop                                              ; $7db1: $00
	dec  b                                           ; $7db2: $05
	ld   [bc], a                                     ; $7db3: $02
	nop                                              ; $7db4: $00
	ld   b, $03                                      ; $7db5: $06 $03
	ld   sp, hl                                      ; $7db7: $f9
	nop                                              ; $7db8: $00
	add  b                                           ; $7db9: $80
	ld   a, h                                        ; $7dba: $7c
	ld   [bc], a                                     ; $7dbb: $02
	add  b                                           ; $7dbc: $80
	nop                                              ; $7dbd: $00
	ret  nz                                          ; $7dbe: $c0

	add  b                                           ; $7dbf: $80
	ld   b, $81                                      ; $7dc0: $06 $81
	rlca                                             ; $7dc2: $07
	ld   [bc], a                                     ; $7dc3: $02

jr_02c_7dc4:
	rra                                              ; $7dc4: $1f
	dec  de                                          ; $7dc5: $1b
	ld   e, a                                        ; $7dc6: $5f
	add  b                                           ; $7dc7: $80
	ld   e, l                                        ; $7dc8: $5d
	ld   [bc], a                                     ; $7dc9: $02
	ld   e, h                                        ; $7dca: $5c
	ld   b, e                                        ; $7dcb: $43
	inc  bc                                          ; $7dcc: $03
	add  d                                           ; $7dcd: $82
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	db   $10                                         ; $7dd0: $10
	add  c                                           ; $7dd1: $81
	nop                                              ; $7dd2: $00
	ld   [$0008], sp                                 ; $7dd3: $08 $08 $00
	inc  c                                           ; $7dd6: $0c
	rst  ToBoot                                         ; $7dd7: $c7
	db   $d3                                         ; $7dd8: $d3
	nop                                              ; $7dd9: $00
	ld   a, a                                        ; $7dda: $7f
	nop                                              ; $7ddb: $00
	add  b                                           ; $7ddc: $80
	add  c                                           ; $7ddd: $81
	nop                                              ; $7dde: $00
	ld   [bc], a                                     ; $7ddf: $02
	add  b                                           ; $7de0: $80
	nop                                              ; $7de1: $00
	ld   b, b                                        ; $7de2: $40
	add  c                                           ; $7de3: $81
	add  b                                           ; $7de4: $80
	nop                                              ; $7de5: $00
	and  b                                           ; $7de6: $a0
	add  c                                           ; $7de7: $81
	ret  nz                                          ; $7de8: $c0

	nop                                              ; $7de9: $00
	sbc  $81                                         ; $7dea: $de $81
	nop                                              ; $7dec: $00
	ld   [bc], a                                     ; $7ded: $02
	cp   $00                                         ; $7dee: $fe $00
	add  b                                           ; $7df0: $80
	add  c                                           ; $7df1: $81
	nop                                              ; $7df2: $00
	nop                                              ; $7df3: $00
	ld   b, b                                        ; $7df4: $40
	add  b                                           ; $7df5: $80
	nop                                              ; $7df6: $00
	inc  bc                                          ; $7df7: $03
	add  b                                           ; $7df8: $80
	cp   [hl]                                        ; $7df9: $be
	nop                                              ; $7dfa: $00
	cp   $91                                         ; $7dfb: $fe $91
	nop                                              ; $7dfd: $00
	add  [hl]                                        ; $7dfe: $86
	ld   b, b                                        ; $7dff: $40
	add  [hl]                                        ; $7e00: $86
	nop                                              ; $7e01: $00
	add  b                                           ; $7e02: $80
	ld   b, $80                                      ; $7e03: $06 $80
	inc  bc                                          ; $7e05: $03
	sub  h                                           ; $7e06: $94
	nop                                              ; $7e07: $00

Call_02c_7e08:
	ld   [bc], a                                     ; $7e08: $02
	rlca                                             ; $7e09: $07
	nop                                              ; $7e0a: $00
	rlca                                             ; $7e0b: $07
	add  e                                           ; $7e0c: $83
	nop                                              ; $7e0d: $00
	nop                                              ; $7e0e: $00
	rst  $38                                         ; $7e0f: $ff
	add  c                                           ; $7e10: $81
	ld   hl, sp+$00                                  ; $7e11: $f8 $00
	rlca                                             ; $7e13: $07
	sub  c                                           ; $7e14: $91
	nop                                              ; $7e15: $00
	ld   [bc], a                                     ; $7e16: $02
	rst  $38                                         ; $7e17: $ff
	nop                                              ; $7e18: $00
	rst  $38                                         ; $7e19: $ff
	add  c                                           ; $7e1a: $81
	nop                                              ; $7e1b: $00
	inc  bc                                          ; $7e1c: $03
	inc  bc                                          ; $7e1d: $03
	nop                                              ; $7e1e: $00
	rst  $38                                         ; $7e1f: $ff
	inc  bc                                          ; $7e20: $03
	add  b                                           ; $7e21: $80
	dec  de                                          ; $7e22: $1b
	ld   [bc], a                                     ; $7e23: $02
	ldh  [rP1], a                                    ; $7e24: $e0 $00
	rra                                              ; $7e26: $1f
	adc  l                                           ; $7e27: $8d
	nop                                              ; $7e28: $00
	inc  b                                           ; $7e29: $04
	ld   bc, $fe00                                   ; $7e2a: $01 $00 $fe
	nop                                              ; $7e2d: $00
	ldh  [$81], a                                    ; $7e2e: $e0 $81
	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	ldh  [$80], a                                    ; $7e32: $e0 $80
	ld   e, $80                                      ; $7e34: $1e $80
	ld   a, [hl]                                     ; $7e36: $7e
	inc  bc                                          ; $7e37: $03
	ld   a, h                                        ; $7e38: $7c
	ld   a, a                                        ; $7e39: $7f
	inc  bc                                          ; $7e3a: $03
	rst  $28                                         ; $7e3b: $ef
	add  c                                           ; $7e3c: $81
	rrca                                             ; $7e3d: $0f
	add  b                                           ; $7e3e: $80
	nop                                              ; $7e3f: $00
	nop                                              ; $7e40: $00
	jr   nz, jr_02c_7dc4                             ; $7e41: $20 $81

	nop                                              ; $7e43: $00
	ld   a, [bc]                                     ; $7e44: $0a
	ld   b, e                                        ; $7e45: $43
	nop                                              ; $7e46: $00
	inc  b                                           ; $7e47: $04
	nop                                              ; $7e48: $00
	add  b                                           ; $7e49: $80
	nop                                              ; $7e4a: $00
	add  b                                           ; $7e4b: $80
	ldh  a, [rPCM34]                                 ; $7e4c: $f0 $77
	nop                                              ; $7e4e: $00
	rst  $38                                         ; $7e4f: $ff
	rst  $38                                         ; $7e50: $ff
	nop                                              ; $7e51: $00
	rst  $38                                         ; $7e52: $ff
	nop                                              ; $7e53: $00
	rst  $38                                         ; $7e54: $ff
	nop                                              ; $7e55: $00
	ld   a, [$8000]                                  ; $7e56: $fa $00 $80
	ld   a, [bc]                                     ; $7e59: $0a
	add  b                                           ; $7e5a: $80
	dec  b                                           ; $7e5b: $05
	adc  d                                           ; $7e5c: $8a
	nop                                              ; $7e5d: $00
	add  b                                           ; $7e5e: $80
	xor  d                                           ; $7e5f: $aa
	add  b                                           ; $7e60: $80
	ld   d, l                                        ; $7e61: $55
	add  b                                           ; $7e62: $80
	ld   [bc], a                                     ; $7e63: $02

jr_02c_7e64:
	add  b                                           ; $7e64: $80
	dec  b                                           ; $7e65: $05
	add  b                                           ; $7e66: $80
	nop                                              ; $7e67: $00
	add  b                                           ; $7e68: $80
	ld   d, l                                        ; $7e69: $55
	add  d                                           ; $7e6a: $82
	nop                                              ; $7e6b: $00
	add  b                                           ; $7e6c: $80
	xor  d                                           ; $7e6d: $aa
	add  b                                           ; $7e6e: $80
	ld   d, l                                        ; $7e6f: $55
	add  b                                           ; $7e70: $80
	xor  d                                           ; $7e71: $aa
	add  b                                           ; $7e72: $80
	ld   d, l                                        ; $7e73: $55
	add  b                                           ; $7e74: $80
	ld   [bc], a                                     ; $7e75: $02
	add  b                                           ; $7e76: $80
	ld   d, h                                        ; $7e77: $54
	add  b                                           ; $7e78: $80
	xor  d                                           ; $7e79: $aa
	add  b                                           ; $7e7a: $80
	nop                                              ; $7e7b: $00
	add  b                                           ; $7e7c: $80
	xor  d                                           ; $7e7d: $aa
	add  b                                           ; $7e7e: $80
	ld   d, l                                        ; $7e7f: $55
	add  b                                           ; $7e80: $80
	xor  d                                           ; $7e81: $aa
	add  b                                           ; $7e82: $80
	ld   d, l                                        ; $7e83: $55
	add  b                                           ; $7e84: $80
	xor  d                                           ; $7e85: $aa
	add  b                                           ; $7e86: $80
	ld   d, l                                        ; $7e87: $55
	add  b                                           ; $7e88: $80
	xor  d                                           ; $7e89: $aa
	add  c                                           ; $7e8a: $81
	nop                                              ; $7e8b: $00

jr_02c_7e8c:
	ld   [bc], a                                     ; $7e8c: $02
	rst  $38                                         ; $7e8d: $ff
	or   b                                           ; $7e8e: $b0
	cp   a                                           ; $7e8f: $bf
	add  b                                           ; $7e90: $80
	ccf                                              ; $7e91: $3f
	rla                                              ; $7e92: $17
	scf                                              ; $7e93: $37
	ccf                                              ; $7e94: $3f
	inc  a                                           ; $7e95: $3c
	ccf                                              ; $7e96: $3f
	ei                                               ; $7e97: $fb
	rst  $38                                         ; $7e98: $ff
	push af                                          ; $7e99: $f5
	rst  $30                                         ; $7e9a: $f7
	ld   a, l                                        ; $7e9b: $7d
	ld   a, a                                        ; $7e9c: $7f
	cp   a                                           ; $7e9d: $bf
	rst  $38                                         ; $7e9e: $ff
	ccf                                              ; $7e9f: $3f
	rst  $38                                         ; $7ea0: $ff
	ccf                                              ; $7ea1: $3f
	rst  $38                                         ; $7ea2: $ff
	ld   a, a                                        ; $7ea3: $7f
	rst  $38                                         ; $7ea4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ea5: $cf
	rst  $38                                         ; $7ea6: $ff
	xor  a                                           ; $7ea7: $af
	rst  $38                                         ; $7ea8: $ff
	ld   a, a                                        ; $7ea9: $7f
	rst  $38                                         ; $7eaa: $ff
	add  b                                           ; $7eab: $80
	ld   a, a                                        ; $7eac: $7f
	ld   bc, $fcdc                                   ; $7ead: $01 $dc $fc
	add  b                                           ; $7eb0: $80
	ld   sp, hl                                      ; $7eb1: $f9
	add  b                                           ; $7eb2: $80
	ld   hl, sp-$7e                                  ; $7eb3: $f8 $82
	pop  hl                                          ; $7eb5: $e1
	add  d                                           ; $7eb6: $82
	ldh  [$80], a                                    ; $7eb7: $e0 $80
	add  b                                           ; $7eb9: $80
	rlca                                             ; $7eba: $07
	dec  hl                                          ; $7ebb: $2b
	ld   hl, $3f22                                   ; $7ebc: $21 $22 $3f
	ld   l, l                                        ; $7ebf: $6d
	ld   a, a                                        ; $7ec0: $7f
	ld   a, e                                        ; $7ec1: $7b
	ld   a, [hl]                                     ; $7ec2: $7e
	add  b                                           ; $7ec3: $80
	ld   a, $80                                      ; $7ec4: $3e $80
	or   [hl]                                        ; $7ec6: $b6
	add  b                                           ; $7ec7: $80
	ld   l, [hl]                                     ; $7ec8: $6e
	add  b                                           ; $7ec9: $80
	dec  b                                           ; $7eca: $05
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	adc  c                                           ; $7ecd: $89
	rst  $38                                         ; $7ece: $ff
	add  b                                           ; $7ecf: $80
	ldh  [$80], a                                    ; $7ed0: $e0 $80
	ld   a, [$ff8a]                                  ; $7ed2: $fa $8a $ff
	add  b                                           ; $7ed5: $80
	ld   a, a                                        ; $7ed6: $7f
	add  b                                           ; $7ed7: $80
	rla                                              ; $7ed8: $17
	sbc  [hl]                                        ; $7ed9: $9e
	rst  $38                                         ; $7eda: $ff
	ret  nz                                          ; $7edb: $c0

	nop                                              ; $7edc: $00
	add  b                                           ; $7edd: $80
	and  b                                           ; $7ede: $a0
	add  b                                           ; $7edf: $80
	nop                                              ; $7ee0: $00
	add  b                                           ; $7ee1: $80
	jr   jr_02c_7e64                                 ; $7ee2: $18 $80

	call nc, $bc00                                   ; $7ee4: $d4 $00 $bc
	add  c                                           ; $7ee7: $81
	ld   a, h                                        ; $7ee8: $7c
	ld   [bc], a                                     ; $7ee9: $02
	ld   a, [hl]                                     ; $7eea: $7e
	cp   $40                                         ; $7eeb: $fe $40
	sbc  e                                           ; $7eed: $9b
	nop                                              ; $7eee: $00
	ld   [bc], a                                     ; $7eef: $02
	ld   b, $00                                      ; $7ef0: $06 $00
	ld   b, $83                                      ; $7ef2: $06 $83
	nop                                              ; $7ef4: $00
	add  b                                           ; $7ef5: $80
	jr   nc, jr_02c_7f01                             ; $7ef6: $30 $09

	inc  [hl]                                        ; $7ef8: $34
	ld   a, h                                        ; $7ef9: $7c
	ld   h, d                                        ; $7efa: $62
	sbc  $eb                                         ; $7efb: $de $eb
	rst  $38                                         ; $7efd: $ff
	rst  ToBoot                                         ; $7efe: $c7
	rst  $38                                         ; $7eff: $ff
	add  hl, sp                                      ; $7f00: $39

jr_02c_7f01:
	ld   e, $82                                      ; $7f01: $1e $82
	nop                                              ; $7f03: $00
	add  b                                           ; $7f04: $80
	ld   [$3080], sp                                 ; $7f05: $08 $80 $30
	nop                                              ; $7f08: $00
	jr   nz, jr_02c_7e8c                             ; $7f09: $20 $81

	jr   nc, @+$03                                   ; $7f0b: $30 $01

	ld   de, $8201                                   ; $7f0d: $11 $01 $82
	ccf                                              ; $7f10: $3f
	inc  b                                           ; $7f11: $04
	ld   a, e                                        ; $7f12: $7b
	ld   a, a                                        ; $7f13: $7f
	adc  h                                           ; $7f14: $8c
	adc  d                                           ; $7f15: $8a
	ld   [bc], a                                     ; $7f16: $02
	add  e                                           ; $7f17: $83
	nop                                              ; $7f18: $00
	add  b                                           ; $7f19: $80
	rst  $38                                         ; $7f1a: $ff
	add  b                                           ; $7f1b: $80
	and  b                                           ; $7f1c: $a0
	add  b                                           ; $7f1d: $80
	ret  nz                                          ; $7f1e: $c0

	dec  b                                           ; $7f1f: $05
	ld   [hl], b                                     ; $7f20: $70
	ldh  a, [$30]                                    ; $7f21: $f0 $30
	ldh  a, [rLYC]                                   ; $7f23: $f0 $45
	dec  b                                           ; $7f25: $05
	add  d                                           ; $7f26: $82
	nop                                              ; $7f27: $00
	add  b                                           ; $7f28: $80
	ldh  a, [$80]                                    ; $7f29: $f0 $80
	rlca                                             ; $7f2b: $07
	add  b                                           ; $7f2c: $80
	inc  bc                                          ; $7f2d: $03
	add  b                                           ; $7f2e: $80
	nop                                              ; $7f2f: $00
	add  b                                           ; $7f30: $80
	ld   h, b                                        ; $7f31: $60
	add  b                                           ; $7f32: $80
	ld   h, [hl]                                     ; $7f33: $66
	nop                                              ; $7f34: $00
	ld   b, b                                        ; $7f35: $40
	add  c                                           ; $7f36: $81
	ld   h, b                                        ; $7f37: $60
	ld   [bc], a                                     ; $7f38: $02
	ld   b, c                                        ; $7f39: $41
	ld   h, c                                        ; $7f3a: $61
	rst  $38                                         ; $7f3b: $ff
	add  c                                           ; $7f3c: $81
	nop                                              ; $7f3d: $00
	add  b                                           ; $7f3e: $80
	ld   bc, $4a80                                   ; $7f3f: $01 $80 $4a
	add  b                                           ; $7f42: $80
	ld   bc, $0084                                   ; $7f43: $01 $84 $00
	add  b                                           ; $7f46: $80
	dec  b                                           ; $7f47: $05
	add  b                                           ; $7f48: $80
	ld   a, [hl+]                                    ; $7f49: $2a
	add  b                                           ; $7f4a: $80
	ld   d, l                                        ; $7f4b: $55
	add  b                                           ; $7f4c: $80
	xor  d                                           ; $7f4d: $aa
	add  b                                           ; $7f4e: $80
	ld   d, l                                        ; $7f4f: $55
	add  b                                           ; $7f50: $80
	add  b                                           ; $7f51: $80
	add  d                                           ; $7f52: $82
	nop                                              ; $7f53: $00
	add  b                                           ; $7f54: $80
	rst  $38                                         ; $7f55: $ff
	add  b                                           ; $7f56: $80
	cp   a                                           ; $7f57: $bf
	add  b                                           ; $7f58: $80
	ld   d, a                                        ; $7f59: $57
	add  b                                           ; $7f5a: $80
	xor  d                                           ; $7f5b: $aa
	add  b                                           ; $7f5c: $80
	ld   d, l                                        ; $7f5d: $55
	add  b                                           ; $7f5e: $80
	xor  d                                           ; $7f5f: $aa
	add  b                                           ; $7f60: $80
	ld   bc, $0280                                   ; $7f61: $01 $80 $02
	add  h                                           ; $7f64: $84
	rst  $38                                         ; $7f65: $ff
	add  b                                           ; $7f66: $80
	cp   a                                           ; $7f67: $bf
	add  b                                           ; $7f68: $80
	ld   e, a                                        ; $7f69: $5f
	add  b                                           ; $7f6a: $80
	cp   a                                           ; $7f6b: $bf
	add  b                                           ; $7f6c: $80
	ld   a, a                                        ; $7f6d: $7f
	add  b                                           ; $7f6e: $80
	rst  $38                                         ; $7f6f: $ff
	cp   [hl]                                        ; $7f70: $be
	nop                                              ; $7f71: $00
	or   d                                           ; $7f72: $b2
	ld   [hl], c                                     ; $7f73: $71
	xor  l                                           ; $7f74: $ad
	db   $10                                         ; $7f75: $10
	sbc  a                                           ; $7f76: $9f
	ld   c, $df                                      ; $7f77: $0e $df
	ld   h, e                                        ; $7f79: $63
	or   d                                           ; $7f7a: $b2
	ld   [hl], c                                     ; $7f7b: $71
	xor  l                                           ; $7f7c: $ad
	db   $10                                         ; $7f7d: $10
	db   $fc                                         ; $7f7e: $fc
	ld   l, b                                        ; $7f7f: $68
	rst  JumpTable                                         ; $7f80: $df
	ld   h, e                                        ; $7f81: $63
	or   d                                           ; $7f82: $b2
	ld   [hl], c                                     ; $7f83: $71
	xor  l                                           ; $7f84: $ad
	db   $10                                         ; $7f85: $10
	sbc  a                                           ; $7f86: $9f
	inc  bc                                          ; $7f87: $03
	rst  JumpTable                                         ; $7f88: $df
	ld   h, e                                        ; $7f89: $63
	xor  l                                           ; $7f8a: $ad
	db   $10                                         ; $7f8b: $10
	sbc  a                                           ; $7f8c: $9f
	ld   c, $fc                                      ; $7f8d: $0e $fc
	ld   l, b                                        ; $7f8f: $68
	rst  JumpTable                                         ; $7f90: $df
	ld   h, e                                        ; $7f91: $63
	nop                                              ; $7f92: $00
	nop                                              ; $7f93: $00
	nop                                              ; $7f94: $00
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	nop                                              ; $7f98: $00
	nop                                              ; $7f99: $00
	rst  $38                                         ; $7f9a: $ff
	ld   a, a                                        ; $7f9b: $7f
	ld   h, e                                        ; $7f9c: $63
	inc  d                                           ; $7f9d: $14
	cp   a                                           ; $7f9e: $bf
	inc  [hl]                                        ; $7f9f: $34
	dec  [hl]                                        ; $7fa0: $35
	halt                                             ; $7fa1: $76
	or   d                                           ; $7fa2: $b2
	ld   [hl], c                                     ; $7fa3: $71
	ld   h, e                                        ; $7fa4: $63
	inc  d                                           ; $7fa5: $14
	rst  $38                                         ; $7fa6: $ff
	inc  bc                                          ; $7fa7: $03
	ld   c, e                                        ; $7fa8: $4b
	ld   c, h                                        ; $7fa9: $4c
	rst  $38                                         ; $7faa: $ff
	ld   a, a                                        ; $7fab: $7f
	ld   h, e                                        ; $7fac: $63
	inc  d                                           ; $7fad: $14
	rst  $38                                         ; $7fae: $ff
	inc  bc                                          ; $7faf: $03
	ld   sp, $0046                                   ; $7fb0: $31 $46 $00
	nop                                              ; $7fb3: $00
	nop                                              ; $7fb4: $00
	nop                                              ; $7fb5: $00
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	nop                                              ; $7fb8: $00
	nop                                              ; $7fb9: $00
	nop                                              ; $7fba: $00
	nop                                              ; $7fbb: $00
	nop                                              ; $7fbc: $00
	nop                                              ; $7fbd: $00
	nop                                              ; $7fbe: $00
	nop                                              ; $7fbf: $00
	nop                                              ; $7fc0: $00
	nop                                              ; $7fc1: $00
	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	nop                                              ; $7fc4: $00
	nop                                              ; $7fc5: $00
	nop                                              ; $7fc6: $00
	nop                                              ; $7fc7: $00
	nop                                              ; $7fc8: $00
	nop                                              ; $7fc9: $00
	db   $e4                                         ; $7fca: $e4
	inc  bc                                          ; $7fcb: $03
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	rst  $38                                         ; $7fce: $ff
	ld   a, a                                        ; $7fcf: $7f
	and  l                                           ; $7fd0: $a5
	inc  d                                           ; $7fd1: $14
	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	nop                                              ; $7fd4: $00
	nop                                              ; $7fd5: $00
	nop                                              ; $7fd6: $00
	nop                                              ; $7fd7: $00
	nop                                              ; $7fd8: $00
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	nop                                              ; $7fdc: $00
	nop                                              ; $7fdd: $00
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	nop                                              ; $7fe0: $00
	nop                                              ; $7fe1: $00
	nop                                              ; $7fe2: $00
	nop                                              ; $7fe3: $00
	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	nop                                              ; $7fe6: $00
	nop                                              ; $7fe7: $00
	nop                                              ; $7fe8: $00
	nop                                              ; $7fe9: $00
	nop                                              ; $7fea: $00
	nop                                              ; $7feb: $00
	nop                                              ; $7fec: $00
	nop                                              ; $7fed: $00
	nop                                              ; $7fee: $00
	nop                                              ; $7fef: $00
	nop                                              ; $7ff0: $00
	nop                                              ; $7ff1: $00
	rst  $38                                         ; $7ff2: $ff
	ld   a, a                                        ; $7ff3: $7f
	rst  JumpTable                                         ; $7ff4: $df
	ld   e, l                                        ; $7ff5: $5d
	dec  b                                           ; $7ff6: $05
	add  hl, hl                                      ; $7ff7: $29
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
